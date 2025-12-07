@interface AMAlwaysOnDisplaySettingsViewController
- (BOOL)_isMotionToWakeAllowed;
- (BOOL)_isNightModeRequired;
- (id)_ambientDefaults;
- (id)_ambientFeatureName;
- (id)_motionToWakeSpecifierGroup;
- (id)_nightModeEnabled:(id)enabled;
- (id)specifiers;
- (void)_updateModeSelectionFromPreferencesAnimated:(BOOL)animated;
- (void)_updateSpecifiersFromPreferences;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AMAlwaysOnDisplaySettingsViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AMAlwaysOnDisplaySettingsViewController;
  viewDidLoad = [(AMAlwaysOnDisplaySettingsViewController *)&v6 viewDidLoad];
  v4 = AMAmbientSettingsBundle(viewDidLoad);
  v5 = [v4 localizedStringForKey:@"ALWAYS_ON_DISPLAY_OPTIONS" value:&stru_86A0 table:@"AmbientSettings"];
  [(AMAlwaysOnDisplaySettingsViewController *)self setTitle:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AMAlwaysOnDisplaySettingsViewController;
  [(AMAlwaysOnDisplaySettingsViewController *)&v4 viewDidAppear:appear];
  [(AMAlwaysOnDisplaySettingsViewController *)self emitNavigationEvent];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v40 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = AMAmbientSettingsBundle(v4);
    v6 = [v5 localizedStringForKey:@"TURN_DISPLAY_OFF_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
    v7 = [PSSpecifier groupSpecifierWithID:@"ALWAYS_ON_DISPLAY_MODE" name:v6];

    [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    objc_storeStrong(&self->_modeGroupSpecifier, v7);
    v39 = v7;
    v8 = AMAmbientSettingsBundle([v4 addObject:v7]);
    v9 = [v8 localizedStringForKey:@"ALWAYS_ON_DISPLAY_TURN_OFF_AUTOMATICALLY" value:&stru_86A0 table:@"AmbientSettings"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v11 = PSIDKey;
    [v10 setProperty:@"ALWAYS_ON_DISPLAY_TURN_OFF_AUTOMATICALLY" forKey:PSIDKey];
    objc_storeStrong(&self->_modeAutomaticallySpecifier, v10);
    v38 = v10;
    v12 = AMAmbientSettingsBundle([v4 addObject:v10]);
    v13 = [v12 localizedStringForKey:@"ALWAYS_ON_DISPLAY_TURN_OFF_AFTER_IDLE" value:&stru_86A0 table:@"AmbientSettings"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:@"ALWAYS_ON_DISPLAY_TURN_OFF_AFTER_IDLE" forKey:v11];
    objc_storeStrong(&self->_modeAfterIdleSpecifier, v14);
    v37 = v14;
    v15 = AMAmbientSettingsBundle([v4 addObject:v14]);
    v16 = [v15 localizedStringForKey:@"ALWAYS_ON_DISPLAY_TURN_OFF_NEVER" value:&stru_86A0 table:@"AmbientSettings"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setProperty:@"ALWAYS_ON_DISPLAY_TURN_OFF_NEVER" forKey:v11];
    objc_storeStrong(&self->_modeNeverSpecifier, v17);
    v18 = AMAmbientSettingsBundle([v4 addObject:v17]);
    v19 = [v18 localizedStringForKey:@"AT_NIGHT_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
    v20 = [PSSpecifier groupSpecifierWithID:@"AT_NIGHT" name:v19];

    v22 = AMAmbientSettingsBundle(v21);
    v23 = [v22 localizedStringForKey:@"NIGHT_MODE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
    _ambientFeatureName = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientFeatureName];
    v25 = [NSString stringWithFormat:v23, _ambientFeatureName];
    [v20 setProperty:v25 forKey:PSFooterTextGroupKey];

    v36 = v20;
    v26 = AMAmbientSettingsBundle([v4 addObject:v20]);
    v27 = [v26 localizedStringForKey:@"NIGHT_MODE_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
    v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:"setPreferenceValue:specifier:" get:"_nightModeEnabled:" detail:0 cell:6 edit:0];

    [v28 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v28 setProperty:@"NIGHT_MODE_ENABLED" forKey:v11];
    [v28 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
    [v28 setProperty:@"AMNightModeEnabled" forKey:PSKeyNameKey];
    [v28 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
    objc_storeStrong(&self->_nightModeEnabledSpecifier, v28);
    [v4 addObject:v28];
    if ([(AMAlwaysOnDisplaySettingsViewController *)self _isMotionToWakeAllowed])
    {
      _motionToWakeSpecifierGroup = [(AMAlwaysOnDisplaySettingsViewController *)self _motionToWakeSpecifierGroup];
      [v4 addObjectsFromArray:_motionToWakeSpecifierGroup];
    }

    objc_storeStrong(&self->PSListController_opaque[v40], v4);
    [(AMAlwaysOnDisplaySettingsViewController *)self _updateSpecifiersFromPreferences];
    [(BSDefaultObserver *)self->_observerToken invalidate];
    _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
    objc_initWeak(&location, self);
    v31 = [NSString stringWithUTF8String:"alwaysOnMode"];
    v32 = &_dispatch_main_q;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1EFC;
    v41[3] = &unk_84F0;
    objc_copyWeak(&v42, &location);
    v33 = [_ambientDefaults observeDefault:v31 onQueue:&_dispatch_main_q withBlock:v41];
    observerToken = self->_observerToken;
    self->_observerToken = v33;

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);

    v3 = *&self->PSListController_opaque[v40];
  }

  return v3;
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_observerToken invalidate];
  v3.receiver = self;
  v3.super_class = AMAlwaysOnDisplaySettingsViewController;
  [(AMAlwaysOnDisplaySettingsViewController *)&v3 dealloc];
}

- (id)_motionToWakeSpecifierGroup
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"MOTION_TO_WAKE_GROUP"];
  v5 = AMAmbientSettingsBundle(v4);
  v6 = [v5 localizedStringForKey:@"MOTION_TO_WAKE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  _ambientFeatureName = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientFeatureName];
  v8 = [NSString stringWithFormat:v6, _ambientFeatureName];
  [v4 setProperty:v8 forKey:PSFooterTextGroupKey];

  v9 = AMAmbientSettingsBundle([v3 addObject:v4]);
  v10 = [v9 localizedStringForKey:@"MOTION_TO_WAKE_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v11 setProperty:@"MOTION_TO_WAKE_ENABLED" forKey:PSIDKey];
  [v11 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v11 setProperty:@"AMMotionToWakeEnabled" forKey:PSKeyNameKey];
  [v11 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
  [v3 addObject:v11];

  return v3;
}

- (void)_updateSpecifiersFromPreferences
{
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  alwaysOnMode = [_ambientDefaults alwaysOnMode];

  if (alwaysOnMode > 2)
  {
    v7 = 0;
    v6 = &stru_86A0;
  }

  else
  {
    v5 = off_8530[alwaysOnMode];
    v6 = off_8548[alwaysOnMode];
    v7 = *&self->PSListController_opaque[*v5];
  }

  v15 = v7;
  v8 = [(PSSpecifier *)self->_modeGroupSpecifier setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
  modeGroupSpecifier = self->_modeGroupSpecifier;
  v10 = AMAmbientSettingsBundle(v8);
  v11 = [@"ALWAYS_ON_DISPLAY_TURN_OFF_FOOTER" stringByAppendingString:v6];
  v12 = [v10 localizedStringForKey:v11 value:&stru_86A0 table:@"AmbientSettings"];
  [(PSSpecifier *)modeGroupSpecifier setProperty:v12 forKey:PSFooterTextGroupKey];

  v13 = [(AMAlwaysOnDisplaySettingsViewController *)self specifierForID:@"NIGHT_MODE_ENABLED"];
  v14 = [NSNumber numberWithInt:[(AMAlwaysOnDisplaySettingsViewController *)self _isNightModeRequired]^ 1];
  [v13 setProperty:v14 forKey:PSEnabledKey];
}

- (void)_updateModeSelectionFromPreferencesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [PSSpecifierUpdates updatesWithSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
  [(AMAlwaysOnDisplaySettingsViewController *)self _updateSpecifiersFromPreferences];
  [(AMAlwaysOnDisplaySettingsViewController *)self reloadSpecifier:self->_modeGroupSpecifier];
  _isMotionToWakeAllowed = [(AMAlwaysOnDisplaySettingsViewController *)self _isMotionToWakeAllowed];
  _motionToWakeSpecifierGroup = [(AMAlwaysOnDisplaySettingsViewController *)self _motionToWakeSpecifierGroup];
  firstObject = [_motionToWakeSpecifierGroup firstObject];
  identifier = [firstObject identifier];
  v10 = [(AMAlwaysOnDisplaySettingsViewController *)self indexOfSpecifierID:identifier];

  if (_isMotionToWakeAllowed && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 insertContiguousSpecifiers:_motionToWakeSpecifierGroup afterSpecifierWithID:@"NIGHT_MODE_ENABLED"];
  }

  else
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 1;
    }

    else
    {
      v11 = _isMotionToWakeAllowed;
    }

    if ((v11 & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = _motionToWakeSpecifierGroup;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            identifier2 = [*(*(&v19 + 1) + 8 * i) identifier];
            [v5 removeSpecifierWithID:identifier2];
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }
    }
  }

  [v5 reloadSpecifier:{self->_nightModeEnabledSpecifier, v19}];
  context = [v5 context];
  [context setAnimated:animatedCopy];

  [(AMAlwaysOnDisplaySettingsViewController *)self performSpecifierUpdates:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AMAlwaysOnDisplaySettingsViewController;
  pathCopy = path;
  [(AMAlwaysOnDisplaySettingsViewController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AMAlwaysOnDisplaySettingsViewController *)self indexForIndexPath:pathCopy, v12.receiver, v12.super_class];

  v8 = [(AMAlwaysOnDisplaySettingsViewController *)self specifierAtIndex:v7];
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  v10 = _ambientDefaults;
  if (v8 == self->_modeNeverSpecifier)
  {
    v11 = 2;
    goto LABEL_7;
  }

  if (v8 == self->_modeAfterIdleSpecifier)
  {
    v11 = 0;
    goto LABEL_7;
  }

  if (v8 == self->_modeAutomaticallySpecifier)
  {
    v11 = 1;
LABEL_7:
    [_ambientDefaults setAlwaysOnMode:v11];
  }
}

- (id)_ambientFeatureName
{
  v2 = AMAmbientSettingsBundle(self);
  v3 = [v2 localizedStringForKey:@"AMBIENT_FEATURE_NAME" value:&stru_86A0 table:@"AmbientSettings"];

  return v3;
}

- (id)_ambientDefaults
{
  if (qword_C7D8[0] != -1)
  {
    sub_51C4();
  }

  v3 = qword_C7D0;

  return v3;
}

- (BOOL)_isNightModeRequired
{
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  v3 = [_ambientDefaults alwaysOnMode] == &dword_0 + 2;

  return v3;
}

- (BOOL)_isMotionToWakeAllowed
{
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  v3 = [_ambientDefaults alwaysOnMode] == &dword_0 + 1 && _AXSAttentionAwarenessFeaturesEnabled() != 0;

  return v3;
}

- (id)_nightModeEnabled:(id)enabled
{
  if ([(AMAlwaysOnDisplaySettingsViewController *)self _isNightModeRequired])
  {
    v4 = [NSNumber numberWithInt:1];
  }

  else
  {
    _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
    v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [_ambientDefaults nightModeEnabled]);
  }

  return v4;
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.StandBy/ALWAYS_ON_DISPLAY_OPTIONS"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"ALWAYS_ON_DISPLAY_OPTIONS" table:@"AmbientSettings" locale:v5 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"AMBIENT_FEATURE_NAME" table:@"AmbientSettings" locale:v10 bundleURL:bundleURL2];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(AMAlwaysOnDisplaySettingsViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.standby" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

@end