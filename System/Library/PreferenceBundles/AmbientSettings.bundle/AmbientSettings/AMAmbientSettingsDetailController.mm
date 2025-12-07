@interface AMAmbientSettingsDetailController
- (id)_alwaysOnDisplayLinkSpecifier;
- (id)_ambientFeatureName;
- (id)_ambientModeGroupSpecifier;
- (id)_ambientModeSpecifier;
- (id)_nightModeSwitchSpecifier;
- (id)_notificationsPreviewSpecifier;
- (id)_notificationsSpecifier;
- (id)_primaryDisplayGroupSpecifier;
- (id)_primaryNotificationsGroupSpecifier;
- (id)_secondaryDisplayGroupSpecifier;
- (id)_secondaryNotificationsGroupSpecifier;
- (id)_updatesForSpecifiers:(id)specifiers ambientModeEnabled:(BOOL)enabled animated:(BOOL)animated;
- (id)specifiers;
- (void)_setAmbientModeEnabled:(id)enabled specifier:(id)specifier;
- (void)_setNotificationsEnabled:(id)enabled specifier:(id)specifier;
- (void)emitNavigationEvent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AMAmbientSettingsDetailController

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  _ambientModeGroupSpecifier = [(AMAmbientSettingsDetailController *)self _ambientModeGroupSpecifier];
  [v3 addObject:_ambientModeGroupSpecifier];
  _ambientModeSpecifier = [(AMAmbientSettingsDetailController *)self _ambientModeSpecifier];
  [v3 addObject:_ambientModeSpecifier];
  performGetter = [_ambientModeSpecifier performGetter];
  bOOLValue = [performGetter BOOLValue];

  v8 = [(AMAmbientSettingsDetailController *)self _updatesForSpecifiers:v3 ambientModeEnabled:bOOLValue animated:0];
  currentSpecifiers = [v8 currentSpecifiers];
  [v3 setArray:currentSpecifiers];

  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v12 = v3;

  v13 = *&self->PSListController_opaque[v10];
  v14 = v13;

  return v13;
}

- (id)_ambientModeGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithName:&stru_86A0];
  v4 = AMAmbientSettingsBundle([v3 setProperty:@"AMBIENT_MODE_ENABLED_GROUP" forKey:PSIDKey]);
  v5 = [v4 localizedStringForKey:@"AMBIENT_MODE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  _ambientFeatureName = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v7 = [NSString stringWithFormat:v5, _ambientFeatureName];
  [v3 setProperty:v7 forKey:PSFooterTextGroupKey];

  return v3;
}

- (id)_primaryDisplayGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithID:@"PRIMARY_DISPLAY_GROUP"];
  _supportsAlwaysOn = [(AMAmbientSettingsDetailController *)self _supportsAlwaysOn];
  if ((_supportsAlwaysOn & 1) == 0)
  {
    v5 = AMAmbientSettingsBundle(_supportsAlwaysOn);
    v6 = [v5 localizedStringForKey:@"DISPLAY_SETTINGS_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
    [v3 setName:v6];

    v8 = AMAmbientSettingsBundle(v7);
    v9 = [v8 localizedStringForKey:@"NIGHT_MODE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
    _ambientFeatureName = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
    v11 = [NSString stringWithFormat:v9, _ambientFeatureName];
    [v3 setProperty:v11 forKey:PSFooterTextGroupKey];
  }

  return v3;
}

- (id)_secondaryDisplayGroupSpecifier
{
  v2 = [PSSpecifier groupSpecifierWithName:&stru_86A0];
  [v2 setProperty:@"SECONDARY_DISPLAY_GROUP" forKey:PSIDKey];

  return v2;
}

- (id)_ambientModeSpecifier
{
  _ambientFeatureName = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v4 = [PSSpecifier preferenceSpecifierNamed:_ambientFeatureName target:self set:"_setAmbientModeEnabled:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v4 setProperty:@"AMBIENT_MODE_ENABLED" forKey:PSIDKey];
  [v4 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v4 setProperty:@"AMEnableAmbientMode" forKey:PSKeyNameKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];

  return v4;
}

- (id)_alwaysOnDisplayLinkSpecifier
{
  v2 = AMAmbientSettingsBundle(self);
  v3 = [v2 localizedStringForKey:@"ALWAYS_ON_DISPLAY_OPTIONS" value:&stru_86A0 table:@"AmbientSettings"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
  [v4 setProperty:@"ALWAYS_ON_DISPLAY_OPTIONS" forKey:PSIDKey];

  return v4;
}

- (id)_nightModeSwitchSpecifier
{
  v3 = AMAmbientSettingsBundle(self);
  v4 = [v3 localizedStringForKey:@"NIGHT_MODE_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v5 setProperty:@"BUMP_TO_WAKE_ENABLED" forKey:PSIDKey];
  [v5 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v5 setProperty:@"AMNightModeEnabled" forKey:PSKeyNameKey];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];

  return v5;
}

- (id)_primaryNotificationsGroupSpecifier
{
  v3 = AMAmbientSettingsBundle(self);
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  _ambientFeatureName = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v6 = [NSString stringWithFormat:v4, _ambientFeatureName];

  v8 = AMAmbientSettingsBundle(v7);
  v9 = [v8 localizedStringForKey:@"NOTIFICATIONS_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
  v10 = [PSSpecifier groupSpecifierWithName:v9];

  [v10 setProperty:@"PRIMARY_NOTIFICATION_GROUP" forKey:PSIDKey];
  [v10 setProperty:v6 forKey:PSFooterTextGroupKey];

  return v10;
}

- (id)_secondaryNotificationsGroupSpecifier
{
  v3 = AMAmbientSettingsBundle(self);
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_PREVIEW_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  _ambientFeatureName = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  v6 = [NSString stringWithFormat:v4, _ambientFeatureName];

  v7 = [PSSpecifier groupSpecifierWithName:&stru_86A0];
  [v7 setProperty:@"SECONDARY_NOTIFICATIONS_GROUP" forKey:PSIDKey];
  [v7 setProperty:v6 forKey:PSFooterTextGroupKey];

  return v7;
}

- (id)_notificationsSpecifier
{
  v3 = AMAmbientSettingsBundle(self);
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"_setNotificationsEnabled:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v5 setProperty:@"NOTIFICATIONS_ENABLED" forKey:PSIDKey];
  [v5 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v5 setProperty:@"AMNotificationsEnabled" forKey:PSKeyNameKey];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];

  return v5;
}

- (id)_notificationsPreviewSpecifier
{
  v3 = AMAmbientSettingsBundle(self);
  v4 = [v3 localizedStringForKey:@"NOTIFICATIONS_PREVIEW" value:&stru_86A0 table:@"AmbientSettings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v5 setProperty:@"NOTIFICATIONS_PREVIEW" forKey:PSIDKey];
  [v5 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v5 setProperty:@"AMNotificationsPreviewOnTapOnlyEnabled" forKey:PSKeyNameKey];
  [v5 setProperty:&__kCFBooleanFalse forKey:PSDefaultValueKey];

  return v5;
}

- (id)_updatesForSpecifiers:(id)specifiers ambientModeEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  specifiersCopy = specifiers;
  v9 = [PSSpecifierUpdates updatesWithSpecifiers:specifiersCopy];
  _supportsAlwaysOn = [(AMAmbientSettingsDetailController *)self _supportsAlwaysOn];
  if (enabledCopy)
  {
    v11 = _supportsAlwaysOn;
    v12 = objc_alloc_init(NSMutableArray);
    _primaryDisplayGroupSpecifier = [(AMAmbientSettingsDetailController *)self _primaryDisplayGroupSpecifier];
    [v12 addObject:_primaryDisplayGroupSpecifier];

    if (v11)
    {
      [(AMAmbientSettingsDetailController *)self _alwaysOnDisplayLinkSpecifier];
    }

    else
    {
      _nightModeSwitchSpecifier = [(AMAmbientSettingsDetailController *)self _nightModeSwitchSpecifier];
      [v12 addObject:_nightModeSwitchSpecifier];

      [(AMAmbientSettingsDetailController *)self _secondaryDisplayGroupSpecifier];
    }
    v15 = ;
    [v12 addObject:v15];

    _primaryNotificationsGroupSpecifier = [(AMAmbientSettingsDetailController *)self _primaryNotificationsGroupSpecifier];
    [v12 addObject:_primaryNotificationsGroupSpecifier];

    _notificationsSpecifier = [(AMAmbientSettingsDetailController *)self _notificationsSpecifier];
    [v12 addObject:_notificationsSpecifier];
    performGetter = [_notificationsSpecifier performGetter];
    bOOLValue = [performGetter BOOLValue];

    if (bOOLValue)
    {
      _secondaryNotificationsGroupSpecifier = [(AMAmbientSettingsDetailController *)self _secondaryNotificationsGroupSpecifier];
      [v12 addObject:_secondaryNotificationsGroupSpecifier];

      _notificationsPreviewSpecifier = [(AMAmbientSettingsDetailController *)self _notificationsPreviewSpecifier];
      [v12 addObject:_notificationsPreviewSpecifier];
    }

    [v9 insertContiguousSpecifiers:v12 afterSpecifierWithID:@"AMBIENT_MODE_ENABLED"];
  }

  else
  {
    [v9 removeSpecifiersInRange:{objc_msgSend(specifiersCopy, "indexOfSpecifierWithID:", @"PRIMARY_DISPLAY_GROUP", objc_msgSend(specifiersCopy, "count") - 2}];
  }

  context = [v9 context];
  [context setAnimated:animatedCopy];

  return v9;
}

- (void)_setAmbientModeEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  CFPreferencesSetAppValue(@"AMEnableAmbientMode", enabledCopy, @"com.apple.ambient");
  v6 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  bOOLValue = [enabledCopy BOOLValue];

  v8 = [(AMAmbientSettingsDetailController *)self _updatesForSpecifiers:v6 ambientModeEnabled:bOOLValue animated:1];
  [(AMAmbientSettingsDetailController *)self performSpecifierUpdates:v8];
}

- (void)_setNotificationsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  CFPreferencesSetAppValue(@"AMNotificationsEnabled", enabledCopy, @"com.apple.ambient");
  v6 = OBJC_IVAR___PSListController__specifiers;
  v12 = [PSSpecifierUpdates updatesWithSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue)
  {
    v8 = objc_alloc_init(NSMutableArray);
    _secondaryNotificationsGroupSpecifier = [(AMAmbientSettingsDetailController *)self _secondaryNotificationsGroupSpecifier];
    [v8 addObject:_secondaryNotificationsGroupSpecifier];

    _notificationsPreviewSpecifier = [(AMAmbientSettingsDetailController *)self _notificationsPreviewSpecifier];
    [v8 addObject:_notificationsPreviewSpecifier];

    [v12 insertContiguousSpecifiers:v8 afterSpecifierWithID:@"NOTIFICATIONS_ENABLED"];
  }

  else
  {
    [v12 removeSpecifiersInRange:{objc_msgSend(*&self->PSListController_opaque[v6], "indexOfSpecifierWithID:", @"SECONDARY_NOTIFICATIONS_GROUP", 2}];
  }

  context = [v12 context];
  [context setAnimated:1];

  [(AMAmbientSettingsDetailController *)self performSpecifierUpdates:v12];
}

- (id)_ambientFeatureName
{
  v2 = AMAmbientSettingsBundle(self);
  v3 = [v2 localizedStringForKey:@"AMBIENT_FEATURE_NAME" value:&stru_86A0 table:@"AmbientSettings"];

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AMAmbientSettingsDetailController;
  [(AMAmbientSettingsDetailController *)&v4 viewDidLoad];
  _ambientFeatureName = [(AMAmbientSettingsDetailController *)self _ambientFeatureName];
  [(AMAmbientSettingsDetailController *)self setTitle:_ambientFeatureName];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AMAmbientSettingsDetailController;
  [(AMAmbientSettingsDetailController *)&v4 viewDidAppear:appear];
  [(AMAmbientSettingsDetailController *)self emitNavigationEvent];
}

- (void)emitNavigationEvent
{
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.StandBy"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v5 bundleURL];
  v7 = [v3 initWithKey:@"AMBIENT_FEATURE_NAME" table:@"AmbientSettings" locale:v4 bundleURL:bundleURL];

  [(AMAmbientSettingsDetailController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.standby" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

@end