@interface MapsSettingsWalkingController
- (id)_avoidBusyRoads:(id)roads;
- (id)_avoidHills:(id)hills;
- (id)_avoidStairs:(id)stairs;
- (id)specifiers;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MapsSettingsWalkingController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MapsSettingsWalkingController;
  [(MapsSettingsWalkingController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v4 = [v3 localizedStringForKey:@"Walking Label [Settings]" value:@"localized string not found" table:0];

  [(MapsSettingsWalkingController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MapsSettingsWalkingController;
  [(MapsSettingsWalkingController *)&v9 viewDidAppear:appear];
  v4 = MapsSettingsWalkingTitle();
  v5 = AppsSettingsTitle();
  v10[0] = v5;
  v6 = MapsSettingsRootTitle();
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Maps/WalkingLinkPreferenceID"];
  [(MapsSettingsWalkingController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Maps" title:v4 localizedNavigationComponents:v7 deepLink:v8];
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v5 = [v4 localizedStringForKey:@"Avoid Group Label [Settings]" value:@"localized string not found" table:0];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  [v3 addObject:v6];
  v7 = 0;
  if (MapsWalkPreferencesCurrentCountrySupportsAvoidHills())
  {
    v8 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v9 = [v8 localizedStringForKey:@"Avoid Hills Switch Label [Settings]" value:@"localized string not found" table:0];
    v7 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"_setAvoidHills:specifier:" get:"_avoidHills:" detail:0 cell:6 edit:0];

    [v7 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v7 setProperty:@"MapsDefaultWalkingAvoidHillsKey" forKey:PSDefaultsKey];
    [v3 addObject:v7];
  }

  if (MapsWalkPreferencesCurrentCountrySupportsAvoidBusyRoads())
  {
    v10 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v11 = [v10 localizedStringForKey:@"Avoid Busy Roads Switch Label [Settings]" value:@"localized string not found" table:0];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setAvoidBusyRoads:specifier:" get:"_avoidBusyRoads:" detail:0 cell:6 edit:0];

    [v12 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v12 setProperty:@"MapsDefaultWalkingAvoidBusyRoadsKey" forKey:PSDefaultsKey];
    [v3 addObject:v12];
    v7 = v12;
  }

  v13 = MapsWalkPreferencesCurrentCountrySupportsAvoidStairs();
  if (v13)
  {
    v15 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v16 = [v15 localizedStringForKey:@"Avoid Stairs Switch Label [Settings]" value:@"localized string not found" table:0];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"_setAvoidStairs:specifier:" get:"_avoidStairs:" detail:0 cell:6 edit:0];

    [v17 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v17 setProperty:@"MapsDefaultWalkingAvoidStairsKey" forKey:PSDefaultsKey];
    v13 = [v3 addObject:v17];
    v7 = v17;
  }

  isPedestrianARModeSupported = _isPedestrianARModeSupported(v13, v14);
  if (isPedestrianARModeSupported)
  {
    isPedestrianARModeSupported = MapsFeature_IsEnabled_PedestrianAR();
    if (isPedestrianARModeSupported)
    {
      v20 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v21 = [v20 localizedStringForKey:@"Directions In The Real World Section Title [Settings]" value:@"localized string not found" table:0];
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:0 cell:0 edit:0];

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [v22 setProperty:v24 forKey:PSFooterCellClassGroupKey];

      [v3 addObject:v22];
      v25 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
      v26 = [v25 localizedStringForKey:@"Directions In The Real World Raise to View Switch Label [Settings]" value:@"localized string not found" table:0];
      v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setRaiseToStartPedestrianAR:specifier:" get:"raiseToStartPedestrianAR:" detail:0 cell:6 edit:0];

      [v27 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v27 setProperty:@"MapsEnablePedestrianARRaiseToStart" forKey:PSDefaultsKey];
      [v3 addObject:v27];

      v7 = v27;
    }
  }

  if (_currentDeviceSupportsVIO(isPedestrianARModeSupported, v19) && GEOConfigGetBOOL())
  {
    v28 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v29 = [v28 localizedStringForKey:@"Optical Heading Section Title [Settings]" value:@"localized string not found" table:0];
    v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v31 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v32 = [v31 localizedStringForKey:@"Optical Heading Section Footer [Settings]" value:@"localized string not found" table:0];
    [v30 setProperty:v32 forKey:PSFooterTextGroupKey];

    [v3 addObject:v30];
    v33 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v34 = [v33 localizedStringForKey:@"Optical Heading Switch Label [Settings]" value:@"localized string not found" table:0];
    v35 = [PSSpecifier preferenceSpecifierNamed:v34 target:self set:"setOpticalHeading:specifier:" get:"opticalHeading:" detail:0 cell:6 edit:0];

    [v35 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v35 setProperty:@"MapsWalkingEnableImageBasedHeading" forKey:PSDefaultsKey];
    [v3 addObject:v35];

    v7 = v35;
  }

  v36 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v37 = [v36 localizedStringForKey:@"Walking" value:@"localized string not found" table:0];

  [(MapsSettingsWalkingController *)self setSpecifiers:v3];

  return v3;
}

- (id)_avoidHills:(id)hills
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultWalkingAvoidHillsKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (id)_avoidBusyRoads:(id)roads
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultWalkingAvoidBusyRoadsKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (id)_avoidStairs:(id)stairs
{
  v3 = [MapsSettings valueForDefaultsKey:@"MapsDefaultWalkingAvoidStairsKey"];
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

@end