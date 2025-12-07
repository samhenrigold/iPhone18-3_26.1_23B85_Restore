@interface BKSettingsController
+ (id)_audioBookSkipSettingsDurationNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value;
+ (id)acknowledgementsSectionSpecifier;
+ (id)specifierForSkipBackwardWithTarget:(id)target;
+ (id)specifierForSkipForwardWithTarget:(id)target;
- (BKSettingsController)init;
- (BOOL)_currentLocalAutomaticDownloadForPurchasesFromOtherDevicesEnabled;
- (BOOL)_isGlobalICloudDriveEnabled;
- (BOOL)_isLiverpoolTCCEnabled;
- (BOOL)_isSignedInToICloud;
- (BOOL)_isSignedInToITunes;
- (BOOL)_isSyncSectionEnabled;
- (BOOL)_isSyncSectionForCloudKitEnabled;
- (BOOL)_isSyncSectionForICloudDriveEnabled;
- (BOOL)_isUbiquityTCCEnabled;
- (BOOL)_shouldShowCellularDataSwitch;
- (id)_allowAutomaticDownloadsForPurchasesFromOtherDevices:(id)devices;
- (id)_cellularAllowAutomaticDownloads:(id)downloads;
- (id)_cellularDataSettingForSpecifier:(id)specifier;
- (id)_cellularSettings;
- (id)_customSwitchSpecifierNamed:(id)named keyName:(id)name defaultValue:(id)value get:(SEL)get set:(SEL)set inAppGroup:(BOOL)group;
- (id)_formattedNetworkLimitAndReloadIfNeeded;
- (id)_getICloudDriveEnabled:(id)enabled;
- (id)_pageTurnStyleOptionNamed:(id)named keyName:(id)name defaultValue:(id)value;
- (id)_specifierWithTitle:(id)title customCell:(id)cell set:(SEL)set get:(SEL)get;
- (id)readSyncSectionForCloudKitPreferenceValue:(id)value;
- (id)readSyncSectionForICloudDrivePreferenceValue:(id)value;
- (id)specifiers;
- (int64_t)_isServiceEnabled:(__CFString *)enabled;
- (void)_addAcknowledgementsSectionSpecifiersToArray:(id)array;
- (void)_addAudiobooksExternalControlsSpecifiersToArray:(id)array;
- (void)_addAudiobooksSectionSpecifiersToArray:(id)array;
- (void)_addAutomaticDownloadsSectionSpecifiersToArray:(id)array;
- (void)_addCellularSectionSpecifiersToArray:(id)array;
- (void)_addClearReadingGoalsDataSpecifiersToArray:(id)array;
- (void)_addPrivacySection:(id)section;
- (void)_addReadingGoalsSectionSpecifiersToArray:(id)array;
- (void)_addReadingInIBooksSectionSpecifiersToArray:(id)array;
- (void)_addReadingMenuSectionSpecifiersToArray:(id)array;
- (void)_addSearchingSection:(id)section;
- (void)_addSyncingSectionSpecifiersToArray:(id)array;
- (void)_clearReadingGoalsData:(id)data;
- (void)_donateSettingsNavigationEvent;
- (void)_iCloudAccountAvailabilityChangedNotification:(id)notification;
- (void)_loadNetworkLimitAndReloadIfNeeded;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)_networkChangedNotification:(id)notification;
- (void)_reloadAutomaticDownloadsSection;
- (void)_reloadCellularDataSection;
- (void)_reloadForLowPowerModeChange;
- (void)_resetAllowedOnlineContent:(id)content;
- (void)_resetAnalyticsUserID:(id)d;
- (void)_setAllowAutomaticDownloadsForPurchasesFromOtherDevices:(id)devices specifier:(id)specifier;
- (void)_setCellularAllowAutomaticDownloads:(id)downloads specifier:(id)specifier;
- (void)_setICloudDriveEnabled:(id)enabled specifier:(id)specifier;
- (void)_setIsAppGroupSpecifier:(id)specifier;
- (void)_setReadingNowEnabled:(id)enabled specifier:(id)specifier;
- (void)_setService:(__CFString *)service enabled:(BOOL)enabled;
- (void)_toggleReadingGoals:(id)goals specifier:(id)specifier;
- (void)_updateAutomaticDownloadsSection;
- (void)_updateCellularDataGroupSpecifierFooterText:(id)text;
- (void)_updateSyncingSectionSpecifiers;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)dealloc;
- (void)selectExternalControlPreference:(id)preference;
- (void)showPrivacyExplanationSheet:(id)sheet;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BKSettingsController

- (BKSettingsController)init
{
  v32.receiver = self;
  v32.super_class = BKSettingsController;
  v2 = [(BKSettingsController *)&v32 init];
  if (v2)
  {
    v3 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.iBooks"];
    appPolicy = v2->_appPolicy;
    v2->_appPolicy = v3;

    v5 = +[BUAccountsProvider sharedProvider];
    [v5 addObserver:v2 accountTypes:1];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_iCloudAccountAvailabilityChangedNotification:" name:NSUbiquityIdentityDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_networkChangedNotification:" name:BUNetworkMonitorInterfaceDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_lowPowerModeChangedNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    v9 = [BUNetworkMonitor alloc];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("BKSettingsController.networkMonitorQueue", v10);
    v12 = [v9 initWithQueue:v11];
    networkMonitor = v2->_networkMonitor;
    v2->_networkMonitor = v12;

    v2->_isNetworkConnected = 0;
    [(BUNetworkMonitor *)v2->_networkMonitor start];
    v14 = +[NSProcessInfo processInfo];
    v2->_isLowPowerMode = [v14 isLowPowerModeEnabled];

    v15 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.iBooks.BooksWidget" kind:@"BooksWidget"];
    timelineController = v2->_timelineController;
    v2->_timelineController = v15;

    v17 = +[BUAppGroup books];
    userDefaults = [v17 userDefaults];
    v19 = [userDefaults objectForKey:@"BKReadingGoalsUserDefaultsKey"];

    if (!v19)
    {
      v20 = +[NSUserDefaults standardUserDefaults];
      v21 = [v20 objectForKey:@"BKReadingGoalsUserDefaultsKey"];

      v22 = +[BUAppGroup books];
      userDefaults2 = [v22 userDefaults];
      [userDefaults2 setObject:v21 forKey:@"BKReadingGoalsUserDefaultsKey"];

      v24 = +[NSUserDefaults standardUserDefaults];
      [v24 removeObjectForKey:@"BKReadingGoalsUserDefaultsKey"];
    }

    v25 = [(BKSettingsController *)v2 _standardSwitchSpecifierNamed:@"New Specifier" keyName:@"BKIncludeBookStoreResultsInSearch" defaultValue:0];
    v31.receiver = v2;
    v31.super_class = BKSettingsController;
    v26 = [(BKSettingsController *)&v31 readPreferenceValue:v25];
    if (!v26 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v27 = [(BKSettingsController *)v2 _standardSwitchSpecifierNamed:@"Old Specifier" keyName:@"BKExcludeBookStoreResultsInSearch" defaultValue:0];
      v28 = [(BKSettingsController *)v2 readPreferenceValue:v27];
      if (objc_opt_respondsToSelector())
      {
        v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v28 BOOLValue] ^ 1);
      }

      else
      {
        v29 = &__kCFBooleanTrue;
      }

      [(BKSettingsController *)v2 setPreferenceValue:v29 specifier:v25];
      [(BKSettingsController *)v2 setPreferenceValue:0 specifier:v27];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[BUAccountsProvider sharedProvider];
  [v4 removeObserver:self accountTypes:1];

  v5.receiver = self;
  v5.super_class = BKSettingsController;
  [(BKSettingsController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BKSettingsController;
  viewDidLoad = [(BKSettingsController *)&v6 viewDidLoad];
  v4 = BKSettingsBundle(viewDidLoad);
  v5 = [v4 localizedStringForKey:@"Books" value:&stru_14E68 table:@"Settings"];
  [(BKSettingsController *)self setTitle:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(BKSettingsController *)self _loadSizeLimitsIfNeeded];
  [(BKSettingsController *)self _reloadCellularDataSection];
  v5.receiver = self;
  v5.super_class = BKSettingsController;
  [(BKSettingsController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKSettingsController;
  [(BKSettingsController *)&v4 viewDidAppear:appear];
  [(BKSettingsController *)self _donateSettingsNavigationEvent];
}

- (void)_reloadForLowPowerModeChange
{
  v3 = +[NSProcessInfo processInfo];
  self->_isLowPowerMode = [v3 isLowPowerModeEnabled];

  [(BKSettingsController *)self _reloadAutomaticDownloadsSection];
}

- (void)_reloadAutomaticDownloadsSection
{
  [(BKSettingsController *)self _updateAutomaticDownloadsSection];
  if (self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier)
  {

    [(BKSettingsController *)self reloadSpecifier:?];
  }
}

- (void)_reloadCellularDataSection
{
  if (self->_cellularDataGroupSpecifier)
  {
    [(BKSettingsController *)self _updateCellularDataGroupSpecifierFooterText:?];
    [(BKSettingsController *)self reloadSpecifier:self->_cellularDataGroupSpecifier];
  }

  if (self->_cellularDownloadsSpecifier)
  {

    [(BKSettingsController *)self reloadSpecifier:?];
  }
}

- (void)_networkChangedNotification:(id)notification
{
  isConnected = [(BUNetworkMonitor *)self->_networkMonitor isConnected];
  v5 = isConnected;
  if (isConnected && !self->_isNetworkConnected)
  {
    [(BKSettingsController *)self _loadSizeLimitsIfNeeded];
  }

  self->_isNetworkConnected = v5;
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_55C8;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_customSwitchSpecifierNamed:(id)named keyName:(id)name defaultValue:(id)value get:(SEL)get set:(SEL)set inAppGroup:(BOOL)group
{
  groupCopy = group;
  valueCopy = value;
  nameCopy = name;
  v16 = [PSSpecifier preferenceSpecifierNamed:named target:self set:set get:get detail:0 cell:6 edit:0];
  [v16 setObject:nameCopy forKeyedSubscript:PSKeyNameKey];

  [v16 setObject:valueCopy forKeyedSubscript:PSDefaultValueKey];
  [v16 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
  [v16 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
  if (groupCopy)
  {
    [(BKSettingsController *)self _setIsAppGroupSpecifier:v16];
  }

  return v16;
}

- (void)_setIsAppGroupSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = +[BUAppGroup books];
  identifier = [v4 identifier];
  [specifierCopy setObject:identifier forKeyedSubscript:PSAppGroupBundleIDKey];

  v7 = +[BUAppGroup books];
  identifier2 = [v7 identifier];
  [specifierCopy setObject:identifier2 forKeyedSubscript:PSContainerBundleIDKey];
}

+ (id)_audioBookSkipSettingsDurationNamed:(id)named target:(id)target keyName:(id)name defaultValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  targetCopy = target;
  namedCopy = named;
  v22 = BKSettingsBundle(namedCopy);
  v9 = [v22 localizedStringForKey:@"10 seconds" value:&stru_14E68 table:@"Settings"];
  v27[0] = v9;
  v10 = BKSettingsBundle(v9);
  v11 = [v10 localizedStringForKey:@"15 seconds" value:&stru_14E68 table:@"Settings"];
  v27[1] = v11;
  v12 = BKSettingsBundle(v11);
  v13 = [v12 localizedStringForKey:@"30 seconds" value:&stru_14E68 table:@"Settings"];
  v27[2] = v13;
  v14 = BKSettingsBundle(v13);
  v15 = [v14 localizedStringForKey:@"45 seconds" value:&stru_14E68 table:@"Settings"];
  v27[3] = v15;
  v16 = BKSettingsBundle(v15);
  v17 = [v16 localizedStringForKey:@"60 seconds" value:&stru_14E68 table:@"Settings"];
  v27[4] = v17;
  v18 = [NSArray arrayWithObjects:v27 count:5];

  LOBYTE(v21) = 1;
  v19 = [BKSettingsUtilities linkListPreferenceSpecifierNamed:namedCopy target:targetCopy keyName:nameCopy defaultValue:valueCopy titles:v18 values:&off_15F30 syncToWatch:v21];

  return v19;
}

- (id)_pageTurnStyleOptionNamed:(id)named keyName:(id)name defaultValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  namedCopy = named;
  v8 = BKSettingsBundle(namedCopy);
  v9 = [v8 localizedStringForKey:@"Slide" value:&stru_14E68 table:@"Settings"];
  v23[0] = v9;
  v10 = BKSettingsBundle(v9);
  v11 = [v10 localizedStringForKey:@"Curl" value:&stru_14E68 table:@"Settings"];
  v23[1] = v11;
  v12 = BKSettingsBundle(v11);
  v13 = [v12 localizedStringForKey:@"Fast Fade" value:&stru_14E68 table:@"Settings"];
  v23[2] = v13;
  v14 = BKSettingsBundle(v13);
  v15 = [v14 localizedStringForKey:@"Scroll" value:&stru_14E68 table:@"Settings"];
  v23[3] = v15;
  v16 = [NSArray arrayWithObjects:v23 count:4];

  LOBYTE(v19) = 0;
  v17 = [BKSettingsUtilities linkListPreferenceSpecifierNamed:namedCopy target:self keyName:nameCopy defaultValue:valueCopy titles:v16 values:&off_15F48 syncToWatch:v19];

  return v17;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = objc_opt_new();
    v5 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:-134348801 force:0];
    [v4 addObjectsFromArray:v5];
    [(BKSettingsController *)self _addAutomaticDownloadsSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addCellularSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addSyncingSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addReadingMenuSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addReadingInIBooksSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addReadingGoalsSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addClearReadingGoalsDataSpecifiersToArray:v4];
    [(BKSettingsController *)self _addSearchingSection:v4];
    [(BKSettingsController *)self _addAudiobooksSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addAudiobooksExternalControlsSpecifiersToArray:v4];
    [(BKSettingsController *)self _addPrivacySection:v4];
    [(BKSettingsController *)self _addAcknowledgementsSectionSpecifiersToArray:v4];
    v6 = [v4 copy];
    v7 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;
  }

  [(BKSettingsController *)self _updateSyncingSectionSpecifiers];
  v8 = *&self->PSListController_opaque[v3];

  return v8;
}

- (void)_addSyncingSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v5 = BKSettingsBundle(arrayCopy);
  v6 = [v5 localizedStringForKey:@"Syncing" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  [v7 setIdentifier:@"SYNCING"];
  syncGroupSpecifier = self->_syncGroupSpecifier;
  self->_syncGroupSpecifier = v7;
  v9 = v7;

  [arrayCopy addObject:v9];
  v23 = [NSMutableArray arrayWithCapacity:1];
  v10 = [NSMutableArray arrayWithCapacity:1];
  v11 = BKSettingsBundle(v10);
  v12 = [v11 localizedStringForKey:@"Home" value:&stru_14E68 table:@"Settings"];

  v13 = [(BKSettingsController *)self _customSwitchSpecifierNamed:v12 keyName:@"BKLibrary.ReadingNow" defaultValue:&__kCFBooleanTrue get:"readSyncSectionForCloudKitPreferenceValue:" set:"_setReadingNowEnabled:specifier:"];
  syncReadingNowSpecifier = self->_syncReadingNowSpecifier;
  self->_syncReadingNowSpecifier = v13;

  [(PSSpecifier *)self->_syncReadingNowSpecifier setIdentifier:@"HOME"];
  v15 = BKSettingsBundle([v23 addObject:self->_syncReadingNowSpecifier]);
  v16 = [v15 localizedStringForKey:@"iCloud Drive" value:&stru_14E68 table:@"Settings"];
  v17 = [(BKSettingsController *)self _customSwitchSpecifierNamed:v16 keyName:@"BCSyncICloudDrive" defaultValue:&__kCFBooleanTrue get:"_getICloudDriveEnabled:" set:"_setICloudDriveEnabled:specifier:"];
  syncICloudDriveSpecifier = self->_syncICloudDriveSpecifier;
  self->_syncICloudDriveSpecifier = v17;

  [v10 addObject:self->_syncICloudDriveSpecifier];
  v19 = [v23 copy];
  syncingForCloudKitSpecifiers = self->_syncingForCloudKitSpecifiers;
  self->_syncingForCloudKitSpecifiers = v19;

  v21 = [v10 copy];
  syncingForICloudDriveSpecifiers = self->_syncingForICloudDriveSpecifiers;
  self->_syncingForICloudDriveSpecifiers = v21;

  [arrayCopy addObjectsFromArray:self->_syncingForCloudKitSpecifiers];
  [arrayCopy addObjectsFromArray:self->_syncingForICloudDriveSpecifiers];
}

- (id)_specifierWithTitle:(id)title customCell:(id)cell set:(SEL)set get:(SEL)get
{
  cellCopy = cell;
  v11 = [PSSpecifier preferenceSpecifierNamed:title target:self set:set get:get detail:0 cell:4 edit:0];
  [v11 setProperty:cellCopy forKey:PSCellClassKey];

  return v11;
}

- (void)_addReadingMenuSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v5 = arrayCopy;
  if (!self->_readingMenuPositionSpecifier)
  {
    v6 = BKSettingsBundle(arrayCopy);
    v7 = [v6 localizedStringForKey:@"Reading Menu Position Options" value:&stru_14E68 table:@"Settings"];
    v8 = [(BKSettingsController *)self _specifierWithTitle:v7 customCell:objc_opt_class() set:"setPreferenceValue:specifier:" get:"readPreferenceValue:"];

    [v8 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
    [v8 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
    readingMenuPositionSpecifier = self->_readingMenuPositionSpecifier;
    self->_readingMenuPositionSpecifier = v8;
  }

  v10 = BKSettingsBundle(arrayCopy);
  v11 = [v10 localizedStringForKey:@"Reading Menu Position" value:&stru_14E68 table:@"Settings"];
  v12 = [PSSpecifier groupSpecifierWithName:v11];

  [v12 setIdentifier:@"MENU_ON_LEFT"];
  v13 = self->_readingMenuPositionSpecifier;
  v15[0] = v12;
  v15[1] = v13;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  [v5 addObjectsFromArray:v14];
}

- (void)_addReadingInIBooksSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v4 = BKSettingsBundle(arrayCopy);
  v5 = [v4 localizedStringForKey:@"Reading" value:? table:?];
  v42 = [PSSpecifier groupSpecifierWithName:v5];

  v7 = BKSettingsBundle(v6);
  v8 = [v7 localizedStringForKey:@"Auto-hyphenation" value:&stru_14E68 table:@"Settings"];
  v9 = [(BKSettingsController *)self _standardSwitchSpecifierNamed:v8 keyName:@"BKAutoHyphenation" defaultValue:&__kCFBooleanTrue];

  v10 = v9;
  v40 = v9;
  v11 = BKSettingsBundle([v9 setIdentifier:@"BKAutoHyphenation"]);
  v12 = [v11 localizedStringForKey:@"Both Margins Advance" value:&stru_14E68 table:@"Settings"];
  v13 = [(BKSettingsController *)self _subtitleSwitchSpecifierNamed:v12 keyName:@"BKLeftTapTurnToNext" defaultValue:&__kCFBooleanFalse];

  v14 = BKSettingsBundle([v13 setIdentifier:@"BKLeftTapTurnToNext"]);
  v15 = [v14 localizedStringForKey:@"Allow tapping either margin to advance the page value:or to move the line guide forward when enabled in the reading menu." table:{&stru_14E68, @"Settings"}];
  v16 = PSTableCellSubtitleTextKey;
  [v13 setObject:v15 forKeyedSubscript:PSTableCellSubtitleTextKey];

  v18 = BKSettingsBundle(v17);
  v19 = [v18 localizedStringForKey:@"Automatically Invert Images" value:&stru_14E68 table:@"Settings"];
  v20 = +[BooksSettings shared];
  filterBrightImagesKey = [v20 filterBrightImagesKey];
  v22 = [(BKSettingsController *)self _subtitleSwitchSpecifierNamed:v19 keyName:filterBrightImagesKey defaultValue:&__kCFBooleanTrue];

  [v22 setIdentifier:@"IMAGE_FILTER"];
  v23 = BKSettingsBundle([(BKSettingsController *)self _setIsAppGroupSpecifier:v22]);
  v24 = [v23 localizedStringForKey:@"In darker themes value:adjust black and white images to improve contrast." table:{&stru_14E68, @"Settings"}];
  [v22 setObject:v24 forKeyedSubscript:v16];

  v43[0] = v42;
  v43[1] = v10;
  v43[2] = v13;
  v43[3] = v22;
  v25 = [NSArray arrayWithObjects:v43 count:4];
  [arrayCopy addObjectsFromArray:v25];

  v27 = BKSettingsBundle(v26);
  v28 = [v27 localizedStringForKey:@"Show Status Bar" value:&stru_14E68 table:@"Settings"];
  v29 = [(BKSettingsController *)self _subtitleSwitchSpecifierNamed:v28 keyName:@"BKReaderShowStatusBar" defaultValue:&__kCFBooleanFalse];

  v30 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v30 userInterfaceIdiom];

  v33 = BKSettingsBundle(v32);
  v34 = v33;
  if (userInterfaceIdiom)
  {
    v35 = @"Always display current time, battery level, and other iPad status info while reading.";
  }

  else
  {
    v35 = @"Always display current time, battery level, and other iPhone status info while reading.";
  }

  v36 = [v33 localizedStringForKey:v35 value:&stru_14E68 table:@"Settings"];
  [v29 setObject:v36 forKeyedSubscript:v16];

  v37 = BKSettingsBundle([arrayCopy addObject:v29]);
  v38 = [v37 localizedStringForKey:@"Page Navigation" value:&stru_14E68 table:@"Settings"];
  v39 = [(BKSettingsController *)self _pageTurnStyleOptionNamed:v38 keyName:@"BKPageTurnStyle" defaultValue:@"slide"];

  [arrayCopy addObject:v39];
}

- (void)_addReadingGoalsSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v5 = BKSettingsBundle(arrayCopy);
  v6 = [v5 localizedStringForKey:@"Reading Goals" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  v9 = BKSettingsBundle(v8);
  v10 = [v9 localizedStringForKey:@"Reading Goals" value:&stru_14E68 table:@"Settings"];
  v11 = [(BKSettingsController *)self _customSwitchSpecifierNamed:v10 keyName:@"BKReadingGoalsUserDefaultsKey" defaultValue:&__kCFBooleanTrue get:"readPreferenceValue:" set:"_toggleReadingGoals:specifier:" inAppGroup:1];

  v13 = BKSettingsBundle(v12);
  v14 = [v13 localizedStringForKey:@"Include PDFs" value:&stru_14E68 table:@"Settings"];
  v15 = [(BKSettingsController *)self _standardSwitchSpecifierNamed:v14 keyName:@"BKReadingGoalsIncludePDFsUserDefaultsKey" defaultValue:&__kCFBooleanFalse];

  [v11 setIdentifier:@"READING_GOALS"];
  target = [v11 target];
  v17 = [target readPreferenceValue:v11];

  if ([v17 BOOLValue])
  {
    v24[0] = v7;
    v24[1] = v11;
    v24[2] = v15;
    v18 = [NSArray arrayWithObjects:v24 count:3];
    v19 = v18;
    v20 = @"Show time spent reading and other achievements in Apple Books. Include time spent reading PDFs";
  }

  else
  {
    v23[0] = v7;
    v23[1] = v11;
    v18 = [NSArray arrayWithObjects:v23 count:2];
    v19 = v18;
    v20 = @"Show time spent reading and other achievements in Apple Books.";
  }

  v21 = BKSettingsBundle(v18);
  v22 = [v21 localizedStringForKey:v20 value:&stru_14E68 table:@"Settings"];

  [v7 setObject:v22 forKeyedSubscript:PSFooterTextGroupKey];
  [arrayCopy addObjectsFromArray:v19];
}

- (void)_toggleReadingGoals:(id)goals specifier:(id)specifier
{
  goalsCopy = goals;
  specifierCopy = specifier;
  target = [specifierCopy target];
  [target setPreferenceValue:goalsCopy specifier:specifierCopy];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6A90;
  v10[3] = &unk_148E8;
  v10[4] = self;
  v11 = goalsCopy;
  v9 = goalsCopy;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_addClearReadingGoalsDataSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v5 = [PSSpecifier groupSpecifierWithName:&stru_14E68];
  v6 = BKSettingsBundle(v5);
  v7 = [v6 localizedStringForKey:@"Time spent reading and reading streak data will be cleared the next time you open Apple Books." value:&stru_14E68 table:@"Settings"];
  [v5 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

  v9 = BKSettingsBundle(v8);
  v10 = [v9 localizedStringForKey:@"Clear Reading Goals Data" value:&stru_14E68 table:@"Settings"];

  LOBYTE(v13) = 0;
  v11 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v10 target:self cell:13 detail:0 keyName:@"BKReadingGoalsShouldClearDataKey" defaultValue:&__kCFBooleanFalse syncToWatch:v13];
  [v11 setIdentifier:@"BKReadingGoalsShouldClearDataKey"];
  [v11 setButtonAction:"_clearReadingGoalsData:"];
  v14[0] = v5;
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [arrayCopy addObjectsFromArray:v12];
}

- (void)_addSearchingSection:(id)section
{
  sectionCopy = section;
  v5 = BKSettingsBundle(sectionCopy);
  v6 = [v5 localizedStringForKey:@"Searching" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  v9 = BKSettingsBundle(v8);
  v10 = [v9 localizedStringForKey:@"Include Book Store results when searching." value:&stru_14E68 table:@"Settings"];
  [v7 setObject:v10 forKeyedSubscript:PSFooterTextGroupKey];

  v12 = BKSettingsBundle(v11);
  v13 = [v12 localizedStringForKey:@"Book Store" value:&stru_14E68 table:@"Settings"];
  v14 = [(BKSettingsController *)self _standardSwitchSpecifierNamed:v13 keyName:@"BKIncludeBookStoreResultsInSearch" defaultValue:&__kCFBooleanTrue];

  [v14 setIdentifier:@"BKIncludeBookStoreResultsInSearch"];
  v16[0] = v7;
  v16[1] = v14;
  v15 = [NSArray arrayWithObjects:v16 count:2];
  [sectionCopy addObjectsFromArray:v15];
}

- (void)_addAudiobooksSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v5 = BKSettingsBundle(arrayCopy);
  v6 = [v5 localizedStringForKey:@"Audiobooks" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  v9 = BKSettingsBundle(v8);
  v10 = [v9 localizedStringForKey:@"Set the number of seconds to skip when you swipe the cover or tap the skip button." value:&stru_14E68 table:@"Settings"];
  [v7 setObject:v10 forKeyedSubscript:PSFooterTextGroupKey];

  [v7 setIdentifier:@"AUDIOBOOKS"];
  v11 = [BKSettingsController specifierForSkipForwardWithTarget:self];
  v12 = [BKSettingsController specifierForSkipBackwardWithTarget:self];
  v14[0] = v7;
  v14[1] = v11;
  v14[2] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:3];
  [arrayCopy addObjectsFromArray:v13];
}

+ (id)specifierForSkipForwardWithTarget:(id)target
{
  targetCopy = target;
  v4 = BKSettingsBundle(targetCopy);
  v5 = [v4 localizedStringForKey:@"Skip Forward" value:&stru_14E68 table:@"Settings"];
  v6 = [BKSettingsController _audioBookSkipSettingsDurationNamed:v5 target:targetCopy keyName:@"BKAudioBookSkipForward" defaultValue:&off_15E60];

  return v6;
}

+ (id)specifierForSkipBackwardWithTarget:(id)target
{
  targetCopy = target;
  v4 = BKSettingsBundle(targetCopy);
  v5 = [v4 localizedStringForKey:@"Skip Back" value:&stru_14E68 table:@"Settings"];
  v6 = [BKSettingsController _audioBookSkipSettingsDurationNamed:v5 target:targetCopy keyName:@"BKAudioBookSkipBackward" defaultValue:&off_15E60];

  return v6;
}

- (void)selectExternalControlPreference:(id)preference
{
  v4 = PSValueKey;
  preferenceCopy = preference;
  v9 = [preferenceCopy objectForKeyedSubscript:v4];
  externalControlGroup = [(BKSettingsController *)self externalControlGroup];
  [(BKSettingsController *)self setPreferenceValue:v9 specifier:externalControlGroup];

  externalControlGroup2 = [(BKSettingsController *)self externalControlGroup];
  [externalControlGroup2 setProperty:preferenceCopy forKey:PSRadioGroupCheckedSpecifierKey];

  externalControlGroup3 = [(BKSettingsController *)self externalControlGroup];
  [(BKSettingsController *)self reloadSpecifier:externalControlGroup3];
}

- (void)_addAudiobooksExternalControlsSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v4 = BKSettingsBundle(arrayCopy);
  v5 = [v4 localizedStringForKey:@"External Controls" value:&stru_14E68 table:?];
  v6 = [PSSpecifier groupSpecifierWithID:@"EXTERNAL_CONTROLS" name:v5];

  [v6 setObject:@"BKRemoteSkipInsteadOfNextTrackDefaultKey" forKeyedSubscript:PSKeyNameKey];
  [v6 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
  [v6 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
  v7 = BKSettingsBundle([v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey]);
  v8 = [v7 localizedStringForKey:@"Headphones and car controls can be used to play the next/previous chapter value:or skip forward/back within the audiobook." table:{&stru_14E68, @"Settings"}];
  [v6 setObject:v8 forKeyedSubscript:PSFooterTextGroupKey];

  v9 = BKSettingsBundle([(BKSettingsController *)self setExternalControlGroup:v6]);
  v10 = [v9 localizedStringForKey:@"Next/Previous" value:&stru_14E68 table:@"Settings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:3 edit:0];

  v12 = PSValueKey;
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:PSValueKey];
  v13 = BKSettingsBundle([v11 setButtonAction:"selectExternalControlPreference:"]);
  v14 = [v13 localizedStringForKey:@"Skip Forward/Back" value:&stru_14E68 table:@"Settings"];
  selfCopy = self;
  v16 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:3 edit:0];

  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:v12];
  [v16 setButtonAction:"selectExternalControlPreference:"];
  v17 = [(BKSettingsController *)selfCopy readPreferenceValue:v6];
  v18 = v17;
  if (!v17 || (v19 = [v17 BOOLValue], v20 = v11, v19))
  {
    v20 = v16;
  }

  [v6 setObject:v20 forKeyedSubscript:PSRadioGroupCheckedSpecifierKey];
  v23[0] = v6;
  v23[1] = v11;
  v23[2] = v16;
  v21 = [NSArray arrayWithObjects:v23 count:3];
  [arrayCopy addObjectsFromArray:v21];
}

- (BOOL)_currentLocalAutomaticDownloadForPurchasesFromOtherDevicesEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];

  v4 = [activeStoreAccount objectForKeyedSubscript:@"automaticDownloadKinds"];
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [[NSSet alloc] initWithArray:v7];
  v9 = [[NSSet alloc] initWithArray:&off_15F60];
  v10 = [v9 isSubsetOfSet:v8];

  return v10;
}

- (id)_allowAutomaticDownloadsForPurchasesFromOtherDevices:(id)devices
{
  devicesCopy = devices;
  if (self->_isLowPowerMode)
  {
    v5 = &__kCFBooleanFalse;
  }

  else
  {
    pendingAllowAutomaticDownloadsNumber = self->_pendingAllowAutomaticDownloadsNumber;
    if (pendingAllowAutomaticDownloadsNumber)
    {
      v7 = pendingAllowAutomaticDownloadsNumber;
    }

    else
    {
      v7 = [NSNumber numberWithBool:[(BKSettingsController *)self _currentLocalAutomaticDownloadForPurchasesFromOtherDevicesEnabled]];
    }

    v5 = v7;
  }

  return v5;
}

- (void)_setAllowAutomaticDownloadsForPurchasesFromOtherDevices:(id)devices specifier:(id)specifier
{
  devicesCopy = devices;
  specifierCopy = specifier;
  bOOLValue = [devicesCopy BOOLValue];
  v9 = [NSNumber numberWithBool:bOOLValue];
  pendingAllowAutomaticDownloadsNumber = self->_pendingAllowAutomaticDownloadsNumber;
  self->_pendingAllowAutomaticDownloadsNumber = v9;

  objc_initWeak(&location, self);
  v11 = +[BLDownloadQueue sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_78B4;
  v12[3] = &unk_14938;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  [v11 setAutomaticDownloadEnabled:bOOLValue uiManager:self withCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_updateAutomaticDownloadsSection
{
  automaticDownloadsForPurchasesFromOtherDevicesSpecifier = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
  if (automaticDownloadsForPurchasesFromOtherDevicesSpecifier)
  {
    if (self->_isLowPowerMode)
    {
      isBookstoreAllowed = 0;
    }

    else
    {
      v5 = +[MCProfileConnection sharedConnection];
      isBookstoreAllowed = [v5 isBookstoreAllowed];

      automaticDownloadsForPurchasesFromOtherDevicesSpecifier = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
    }

    v6 = [NSNumber numberWithBool:isBookstoreAllowed];
    [(PSSpecifier *)automaticDownloadsForPurchasesFromOtherDevicesSpecifier setProperty:v6 forKey:PSEnabledKey];
  }

  if (self->_automaticDownloadsGroupSpecifier)
  {
    v7 = BKSettingsBundle(self);
    v12 = [v7 localizedStringForKey:@"Automatically download new purchases (including free) made on other devices." value:&stru_14E68 table:@"Settings"];

    if (self->_isLowPowerMode)
    {
      v9 = BKSettingsBundle(v8);
      v10 = [v9 localizedStringForKey:@"Automatic Downloads are not available while in Low Power Mode." value:&stru_14E68 table:@"Settings"];

      v11 = v10;
    }

    else
    {
      v11 = v12;
    }

    v13 = v11;
    [(PSSpecifier *)self->_automaticDownloadsGroupSpecifier setProperty:v11 forKey:PSFooterTextGroupKey];
  }
}

- (void)_addAutomaticDownloadsSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v5 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiTunes = [v5 isUserSignedInToiTunes];

  if (isUserSignedInToiTunes)
  {
    v8 = BKSettingsBundle(v7);
    v9 = [v8 localizedStringForKey:@"Automatic Downloads" value:&stru_14E68 table:@"Settings"];
    v10 = [PSSpecifier groupSpecifierWithName:v9];
    automaticDownloadsGroupSpecifier = self->_automaticDownloadsGroupSpecifier;
    self->_automaticDownloadsGroupSpecifier = v10;

    v13 = BKSettingsBundle(v12);
    v14 = [v13 localizedStringForKey:@"Purchases from Other Devices" value:&stru_14E68 table:@"Settings"];
    v15 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v14 target:self cell:6 detail:0 keyName:@"AllowAutoDownloadsForPurchasesFromOtherDevices" defaultValue:&__kCFBooleanFalse set:"_setAllowAutomaticDownloadsForPurchasesFromOtherDevices:specifier:" get:"_allowAutomaticDownloadsForPurchasesFromOtherDevices:"];
    automaticDownloadsForPurchasesFromOtherDevicesSpecifier = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
    self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier = v15;

    [(PSSpecifier *)self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [(BKSettingsController *)self _updateAutomaticDownloadsSection];
    v17 = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
    v19[0] = self->_automaticDownloadsGroupSpecifier;
    v19[1] = v17;
    v18 = [NSArray arrayWithObjects:v19 count:2];
    [arrayCopy addObjectsFromArray:v18];
  }
}

- (BOOL)_shouldShowCellularDataSwitch
{
  if (!MGGetBoolAnswer() || !MGGetBoolAnswer())
  {
    return 0;
  }

  return +[BUCellularSettings shouldShowCellularAutomaticDownloadsSwitch];
}

- (id)_cellularSettings
{
  cellularSettings = self->_cellularSettings;
  if (!cellularSettings)
  {
    v4 = +[BKCellularSettingsUtilities cellularSettingsForCurrentIdentity];
    v5 = self->_cellularSettings;
    self->_cellularSettings = v4;

    cellularSettings = self->_cellularSettings;
  }

  return cellularSettings;
}

- (void)_loadNetworkLimitAndReloadIfNeeded
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_7EB0;
  v2[3] = &unk_14910;
  objc_copyWeak(&v3, &location);
  [BKCellularSettingsUtilities loadNetworkLimitForDownloadKind:@"book" runBlockIfNeedsUpdate:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (id)_formattedNetworkLimitAndReloadIfNeeded
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8064;
  v4[3] = &unk_14910;
  objc_copyWeak(&v5, &location);
  v2 = [BKCellularSettingsUtilities formattedNetworkLimitForDownloadKind:@"book" runBlockIfNeedsUpdate:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)_updateCellularDataGroupSpecifierFooterText:(id)text
{
  textCopy = text;
  v4 = BKSettingsBundle(textCopy);
  v5 = [v4 localizedStringForKey:@"Choose whether books and audiobooks can automatically download over a cellular network." value:&stru_14E68 table:@"Settings"];

  [textCopy setProperty:v5 forKey:PSFooterTextGroupKey];
}

- (id)_cellularAllowAutomaticDownloads:(id)downloads
{
  _cellularSettings = [(BKSettingsController *)self _cellularSettings];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_cellularSettings allowAutomaticDownloads]);

  return v4;
}

- (void)_setCellularAllowAutomaticDownloads:(id)downloads specifier:(id)specifier
{
  downloadsCopy = downloads;
  _cellularSettings = [(BKSettingsController *)self _cellularSettings];
  bOOLValue = [downloadsCopy BOOLValue];

  [_cellularSettings setAllowAutomaticDownloads:bOOLValue];
}

- (id)_cellularDataSettingForSpecifier:(id)specifier
{
  _cellularSettings = [(BKSettingsController *)self _cellularSettings];
  cellularDataPrompt = [_cellularSettings cellularDataPrompt];
  if (!cellularDataPrompt)
  {
    v7 = BKSettingsBundle(0);
    v10 = [v7 localizedStringForKey:@"Ask If Over %@" value:&stru_14E68 table:@"Settings"];
    _formattedNetworkLimitAndReloadIfNeeded = [(BKSettingsController *)self _formattedNetworkLimitAndReloadIfNeeded];
    v9 = [NSString stringWithFormat:v10, _formattedNetworkLimitAndReloadIfNeeded];

    goto LABEL_8;
  }

  if (cellularDataPrompt == &dword_0 + 1)
  {
    v6 = BKSettingsBundle(1);
    v7 = v6;
    v8 = @"Always Ask";
    goto LABEL_6;
  }

  if (cellularDataPrompt == &dword_0 + 2)
  {
    v6 = BKSettingsBundle(2);
    v7 = v6;
    v8 = @"Always Allow";
LABEL_6:
    v9 = [v6 localizedStringForKey:v8 value:&stru_14E68 table:@"Settings"];
LABEL_8:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_addCellularSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  _shouldShowCellularDataSwitch = [(BKSettingsController *)self _shouldShowCellularDataSwitch];
  if (_shouldShowCellularDataSwitch)
  {
    v6 = BKSettingsBundle(_shouldShowCellularDataSwitch);
    v7 = [v6 localizedStringForKey:@"Cellular Data" value:&stru_14E68 table:@"Settings"];
    v8 = [PSSpecifier groupSpecifierWithName:v7];
    cellularDataGroupSpecifier = self->_cellularDataGroupSpecifier;
    self->_cellularDataGroupSpecifier = v8;

    v10 = BKSettingsBundle([(BKSettingsController *)self _updateCellularDataGroupSpecifierFooterText:self->_cellularDataGroupSpecifier]);
    v11 = [v10 localizedStringForKey:@"Automatic Downloads" value:&stru_14E68 table:@"Settings"];
    v12 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v11 target:self cell:6 detail:0 keyName:@"AllowAutoDownloadOnCellular" defaultValue:&__kCFBooleanFalse set:"_setCellularAllowAutomaticDownloads:specifier:" get:"_cellularAllowAutomaticDownloads:"];

    v14 = BKSettingsBundle(v13);
    v15 = [v14 localizedStringForKey:@"Downloads" value:&stru_14E68 table:@"Settings"];
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:"_cellularDataSettingForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
    cellularDownloadsSpecifier = self->_cellularDownloadsSpecifier;
    self->_cellularDownloadsSpecifier = v16;

    v19[0] = self->_cellularDataGroupSpecifier;
    v19[1] = v12;
    v19[2] = self->_cellularDownloadsSpecifier;
    v18 = [NSArray arrayWithObjects:v19 count:3];
    [arrayCopy addObjectsFromArray:v18];
  }
}

- (void)_addPrivacySection:(id)section
{
  sectionCopy = section;
  v4 = BUOnboardingBooksBundleID();
  v36 = [OBBundle bundleWithIdentifier:v4];

  v6 = BKSettingsBundle(v5);
  v7 = [v6 localizedStringForKey:@"Online Content & Privacy" value:&stru_14E68 table:@"Settings"];
  v8 = [PSSpecifier groupSpecifierWithName:v7];

  v10 = BKSettingsBundle(v9);
  v11 = [v10 localizedStringForKey:@"Clear permission for books to access publisher\\U2019s content from the Internet." value:&stru_14E68 table:@"Settings"];
  v12 = PSFooterTextGroupKey;
  [v8 setObject:v11 forKeyedSubscript:PSFooterTextGroupKey];

  v14 = BKSettingsBundle(v13);
  v37 = [v14 localizedStringForKey:@"Reset Access to Online Content" value:&stru_14E68 table:@"Settings"];

  LOBYTE(v32) = 0;
  v15 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v37 target:self cell:13 detail:0 keyName:@"_BCWWebRepExternalLoadApprovalCacheClear" defaultValue:&__kCFBooleanFalse syncToWatch:v32];
  [v15 setIdentifier:@"ALLOW_ONLINE_CONTENT"];
  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v15 setButtonAction:"_resetAllowedOnlineContent:"];
  v39[0] = v8;
  v39[1] = v15;
  v16 = [NSArray arrayWithObjects:v39 count:2];
  [sectionCopy addObjectsFromArray:v16];

  v17 = [PSSpecifier groupSpecifierWithName:0];
  v18 = BKSettingsBundle(v17);
  v19 = [v18 localizedStringForKey:@"Reset the identifier used to report aggregate app usage statistics to Apple." value:&stru_14E68 table:@"Settings"];

  privacyFlow = [v36 privacyFlow];
  localizedButtonTitle = [privacyFlow localizedButtonTitle];

  v22 = [NSString stringWithFormat:@"%@ %@", v19, localizedButtonTitle];
  [v17 setObject:v22 forKeyedSubscript:v12];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [v17 setProperty:v24 forKey:PSFooterCellClassGroupKey];

  v25 = [v19 length];
  v40.length = [localizedButtonTitle length];
  v40.location = v25 + 1;
  v26 = NSStringFromRange(v40);
  [v17 setProperty:v26 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v27 = [NSValue valueWithNonretainedObject:self];
  [v17 setProperty:v27 forKey:PSFooterHyperlinkViewTargetKey];

  v28 = BKSettingsBundle([v17 setProperty:@"showPrivacyExplanationSheet:" forKey:PSFooterHyperlinkViewActionKey]);
  v29 = [v28 localizedStringForKey:@"Reset Identifier" value:&stru_14E68 table:@"Settings"];

  LOBYTE(v33) = 0;
  v30 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v29 target:self cell:13 detail:0 keyName:@"BAResetAnalyticsUserID" defaultValue:&__kCFBooleanFalse syncToWatch:v33];
  [v30 setIdentifier:@"BAResetAnalyticsUserID"];
  [v30 setButtonAction:"_resetAnalyticsUserID:"];
  v38[0] = v17;
  v38[1] = v30;
  v31 = [NSArray arrayWithObjects:v38 count:2];
  [sectionCopy addObjectsFromArray:v31];
}

- (void)_resetAllowedOnlineContent:(id)content
{
  contentCopy = content;
  v5 = BKSettingsBundle(contentCopy);
  v6 = [v5 localizedStringForKey:@"Clear permission for books to access publisher\\U2019s content from the Internet." value:&stru_14E68 table:@"Settings"];

  v7 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:0];
  v8 = BKSettingsBundle(v7);
  v9 = [v8 localizedStringForKey:@"Reset Access to Online Content" value:&stru_14E68 table:@"Settings"];

  objc_initWeak(&location, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_8D34;
  v21 = &unk_14960;
  objc_copyWeak(&v24, &location);
  v10 = contentCopy;
  v22 = v10;
  selfCopy = self;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:&v18];
  v12 = BKSettingsBundle([v7 addAction:{v11, v18, v19, v20, v21}]);
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_14E68 table:@"Settings"];

  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];
  popoverPresentationController = [v7 popoverPresentationController];
  v16 = [v10 objectForKeyedSubscript:PSTableCellKey];
  v17 = v16;
  if (popoverPresentationController && v16)
  {
    [popoverPresentationController setSourceView:v16];
    [v17 bounds];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:3];
  }

  [(BKSettingsController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_resetAnalyticsUserID:(id)d
{
  dCopy = d;
  v5 = BKSettingsBundle(dCopy);
  v6 = [v5 localizedStringForKey:@"Reset Identifier" value:&stru_14E68 table:@"Settings"];

  v7 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:0];
  v8 = BKSettingsBundle(v7);
  v9 = [v8 localizedStringForKey:@"Reset Identifier" value:&stru_14E68 table:@"Settings"];

  objc_initWeak(&location, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_9064;
  v21 = &unk_14960;
  objc_copyWeak(&v24, &location);
  v10 = dCopy;
  v22 = v10;
  selfCopy = self;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:&v18];
  v12 = BKSettingsBundle([v7 addAction:{v11, v18, v19, v20, v21}]);
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_14E68 table:@"Settings"];

  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];
  popoverPresentationController = [v7 popoverPresentationController];
  v16 = [v10 objectForKeyedSubscript:PSTableCellKey];
  v17 = v16;
  if (popoverPresentationController && v16)
  {
    [popoverPresentationController setSourceView:v16];
    [v17 bounds];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:3];
  }

  [(BKSettingsController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)showPrivacyExplanationSheet:(id)sheet
{
  v4 = BUOnboardingAllBundleIDs();
  v5 = BKSettingsLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "showPrivacyExplanationSheet: bundleIdentifiers: %{public}@", &v8, 0xCu);
  }

  if ([v4 count] == &dword_0 + 1)
  {
    firstObject = [v4 firstObject];
    v7 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:firstObject];
  }

  else
  {
    v7 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithIdentifiers:v4];
  }

  [v7 setPresentingViewController:self];
  [v7 present];
}

- (void)_addAcknowledgementsSectionSpecifiersToArray:(id)array
{
  arrayCopy = array;
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = +[BKSettingsController acknowledgementsSectionSpecifier];
  v7[0] = v4;
  v7[1] = v5;
  v6 = [NSArray arrayWithObjects:v7 count:2];
  [arrayCopy addObjectsFromArray:v6];
}

+ (id)acknowledgementsSectionSpecifier
{
  v3 = BKSettingsBundle(self);
  v4 = [v3 localizedStringForKey:@"Acknowledgements" value:&stru_14E68 table:@"Settings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v5 setIdentifier:@"Acknowledgements"];

  return v5;
}

- (void)_updateSyncingSectionSpecifiers
{
  _isSyncSectionForCloudKitEnabled = [(BKSettingsController *)self _isSyncSectionForCloudKitEnabled];
  _isSyncSectionForICloudDriveEnabled = [(BKSettingsController *)self _isSyncSectionForICloudDriveEnabled];
  v5 = +[BURestrictionsProvider sharedInstance];
  isAccountModificationAllowed = [v5 isAccountModificationAllowed];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = self->_syncingForCloudKitSpecifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    if ((_isSyncSectionForCloudKitEnabled & isAccountModificationAllowed) != 0)
    {
      v11 = &__kCFBooleanTrue;
    }

    else
    {
      v11 = &__kCFBooleanFalse;
    }

    v12 = PSEnabledKey;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v33 + 1) + 8 * v13) setObject:v11 forKeyedSubscript:v12];
        v13 = v13 + 1;
      }

      while (v9 != v13);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v14 = _isSyncSectionForCloudKitEnabled | _isSyncSectionForICloudDriveEnabled;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_syncingForICloudDriveSpecifiers;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    if (_isSyncSectionForICloudDriveEnabled & isAccountModificationAllowed)
    {
      v19 = &__kCFBooleanTrue;
    }

    else
    {
      v19 = &__kCFBooleanFalse;
    }

    v20 = PSEnabledKey;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v29 + 1) + 8 * v21) setObject:v19 forKeyedSubscript:{v20, v29}];
        v21 = v21 + 1;
      }

      while (v17 != v21);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  if (v14)
  {
    v23 = [(BKSettingsController *)self readSyncSectionForCloudKitPreferenceValue:self->_syncReadingNowSpecifier];
    if ([v23 BOOLValue])
    {

LABEL_27:
      v24 = @"The Continue and Previous lists in Home sync using your iCloud account. Use iCloud Drive to sync PDFs you’ve added to your library.";
      goto LABEL_28;
    }

    v25 = [(BKSettingsController *)self readSyncSectionForICloudDrivePreferenceValue:self->_syncICloudDriveSpecifier];
    bOOLValue = [v25 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      goto LABEL_27;
    }

    v24 = @"When Home is enabled, your Continue and Previous lists will start syncing to iCloud the next time you open a book.";
  }

  else
  {
    v24 = @"To enable syncing across devices, sign in to iCloud and turn on iCloud Drive in Settings.";
  }

LABEL_28:
  v27 = BKSettingsBundle(v22);
  v28 = [v27 localizedStringForKey:v24 value:&stru_14E68 table:@"Settings"];
  [(PSSpecifier *)self->_syncGroupSpecifier setObject:v28 forKeyedSubscript:PSFooterTextGroupKey];
}

- (void)_clearReadingGoalsData:(id)data
{
  dataCopy = data;
  v5 = BKSettingsBundle(dataCopy);
  v6 = [v5 localizedStringForKey:@"Do you want to clear reading goals data from all of your devices using this iCloud account?" value:&stru_14E68 table:@"Settings"];

  v7 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:0];
  v8 = BKSettingsBundle(v7);
  v9 = [v8 localizedStringForKey:@"Clear Reading Goals Data" value:&stru_14E68 table:@"Settings"];

  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_9960;
  v18[3] = &unk_14988;
  objc_copyWeak(&v20, &location);
  v10 = dataCopy;
  v19 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:v18];
  v12 = BKSettingsBundle([v7 addAction:v11]);
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_14E68 table:@"Settings"];

  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];
  popoverPresentationController = [v7 popoverPresentationController];
  v16 = [v10 objectForKeyedSubscript:PSTableCellKey];
  v17 = v16;
  if (popoverPresentationController && v16)
  {
    [popoverPresentationController setSourceView:v16];
    [v17 bounds];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:3];
  }

  [(BKSettingsController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (BOOL)_isSyncSectionEnabled
{
  if ([(BKSettingsController *)self _isSyncSectionForCloudKitEnabled])
  {
    return 1;
  }

  return [(BKSettingsController *)self _isSyncSectionForICloudDriveEnabled];
}

- (BOOL)_isSyncSectionForCloudKitEnabled
{
  _isSignedInToICloud = [(BKSettingsController *)self _isSignedInToICloud];
  if (_isSignedInToICloud)
  {

    LOBYTE(_isSignedInToICloud) = [(BKSettingsController *)self _isLiverpoolTCCEnabled];
  }

  return _isSignedInToICloud;
}

- (BOOL)_isSyncSectionForICloudDriveEnabled
{
  if (![(BKSettingsController *)self _isSignedInToICloud]|| ![(BKSettingsController *)self _isGlobalICloudDriveEnabled])
  {
    return 0;
  }

  return [(BKSettingsController *)self _isLiverpoolTCCEnabled];
}

- (BOOL)_isSignedInToICloud
{
  v2 = +[BUAccountsProvider sharedProvider];
  primaryAppleAccount = [v2 primaryAppleAccount];

  accountType = [primaryAppleAccount accountType];
  identifier = [accountType identifier];
  v6 = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

  return v6;
}

- (BOOL)_isGlobalICloudDriveEnabled
{
  v2 = +[ACAccountStore bu_sharedAccountStore];
  ams_activeiCloudAccount = [v2 ams_activeiCloudAccount];

  if ([ams_activeiCloudAccount isEnabledForDataclass:kAccountDataclassUbiquity])
  {
    aa_isUsingCloudDocs = [ams_activeiCloudAccount aa_isUsingCloudDocs];
  }

  else
  {
    aa_isUsingCloudDocs = 0;
  }

  return aa_isUsingCloudDocs;
}

- (BOOL)_isLiverpoolTCCEnabled
{
  v3 = [(BKSettingsController *)self _isServiceEnabled:kTCCServiceLiverpool];
  v4 = BKSettingsLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = kTCCServiceLiverpool;
    v6 = @"unknown";
    if (v3 == 2)
    {
      v6 = @"enabled";
    }

    if (v3 == 1)
    {
      v6 = @"disabled";
    }

    v7 = v6;
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "iBooksSettings: %{public}@ is %{public}@", &v12, 0x16u);
  }

  if (v3 == 2)
  {
    LOBYTE(_isUbiquityTCCEnabled2) = 1;
  }

  else
  {
    if (v3 == 1)
    {
      _isUbiquityTCCEnabled = [(BKSettingsController *)self _isUbiquityTCCEnabled];
      if (!_isUbiquityTCCEnabled)
      {
        LOBYTE(_isUbiquityTCCEnabled2) = 0;
        return _isUbiquityTCCEnabled2;
      }

      v9 = BKSettingsLog(_isUbiquityTCCEnabled);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "_isLiverpoolTCCEnabled - liverpool OFF, ubiquity ON --> forcing liverpool ON", &v12, 2u);
      }

      _isUbiquityTCCEnabled2 = 1;
    }

    else
    {
      _isUbiquityTCCEnabled2 = [(BKSettingsController *)self _isUbiquityTCCEnabled];
      v9 = BKSettingsLog(_isUbiquityTCCEnabled2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        LODWORD(v13) = _isUbiquityTCCEnabled2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "_isLiverpoolTCCEnabled - Setting unknown liverpool value to %{BOOL}d", &v12, 8u);
      }
    }

    [(BKSettingsController *)self _setService:kTCCServiceLiverpool enabled:_isUbiquityTCCEnabled2];
  }

  return _isUbiquityTCCEnabled2;
}

- (BOOL)_isUbiquityTCCEnabled
{
  v2 = [(BKSettingsController *)self _isServiceEnabled:kTCCServiceUbiquity];
  v3 = BKSettingsLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = kTCCServiceUbiquity;
    v5 = @"unknown";
    if (v2 == 2)
    {
      v5 = @"enabled";
    }

    if (v2 == 1)
    {
      v5 = @"disabled";
    }

    v6 = v5;
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "iBooksSettings: %{public}@ is %{public}@", &v8, 0x16u);
  }

  return v2 == 2;
}

- (BOOL)_isSignedInToITunes
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];

  ams_DSID = [activeStoreAccount ams_DSID];
  if (ams_DSID)
  {
    username = [activeStoreAccount username];
    v6 = username != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_isServiceEnabled:(__CFString *)enabled
{
  CFBundleGetBundleWithIdentifier(@"com.apple.iBooks");
  v4 = TCCAccessCopyInformationForBundle();
  Count = CFArrayGetCount(v4);
  if (Count)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(ValueAtIndex, kTCCInfoService);
        if (CFStringCompare(Value, enabled, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }

    v12 = CFDictionaryGetValue(ValueAtIndex, kTCCInfoGranted);
    if (CFBooleanGetValue(v12))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  CFRelease(v4);
  return v11;
}

- (void)_setService:(__CFString *)service enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = BKSettingsLog(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (enabledCopy)
    {
      v7 = @"YES";
    }

    v17 = 138412546;
    serviceCopy2 = service;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting %@ to %@.", &v17, 0x16u);
  }

  v8 = TCCAccessSetForBundleId();
  v9 = v8;
  v10 = BKSettingsLog(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"off";
      if (enabledCopy)
      {
        v12 = @"on";
      }

      v17 = 138543618;
      serviceCopy2 = service;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "iBooksSettings: Successfully set %{public}@ to %{public}@", &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_C1DC(service, enabledCopy, v11);
  }

  v13 = notify_post([@"com.apple.librarian.account-token-changed" UTF8String]);
  v14 = v13;
  v15 = BKSettingsLog(v13);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_C27C(v14, v16);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    serviceCopy2 = @"com.apple.librarian.account-token-changed";
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "iBooksSettings: Successfully notify_post(%{public}@)", &v17, 0xCu);
  }
}

- (id)readSyncSectionForCloudKitPreferenceValue:(id)value
{
  valueCopy = value;
  if ([(BKSettingsController *)self _isSyncSectionForCloudKitEnabled])
  {
    target = [valueCopy target];
    v6 = [target readPreferenceValue:valueCopy];
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (id)readSyncSectionForICloudDrivePreferenceValue:(id)value
{
  valueCopy = value;
  if ([(BKSettingsController *)self _isSyncSectionForICloudDriveEnabled])
  {
    target = [valueCopy target];
    v6 = [target readPreferenceValue:valueCopy];
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (void)_setReadingNowEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  enabledCopy = enabled;
  target = [specifierCopy target];
  [target bk_setAndSyncPreferenceToWatch:enabledCopy specifier:specifierCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A40C;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_getICloudDriveEnabled:(id)enabled
{
  v4 = [(BKSettingsController *)self readSyncSectionForICloudDrivePreferenceValue:enabled];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 BOOLValue] & -[BKSettingsController _isUbiquityTCCEnabled](self, "_isUbiquityTCCEnabled"));

  return v5;
}

- (void)_setICloudDriveEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  v7 = [enabled isEqual:&__kCFBooleanTrue];
  [(BKSettingsController *)self _setService:kTCCServiceUbiquity enabled:v7];
  target = [specifierCopy target];
  v9 = [NSNumber numberWithBool:v7];
  [target setPreferenceValue:v9 specifier:specifierCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A594;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_iCloudAccountAvailabilityChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A610;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  if (reason)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A694;
    block[3] = &unk_148C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_donateSettingsNavigationEvent
{
  sub_C508();
  sub_C4F8();
  sub_C4E8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  BKSettingsController._donateSettingsNavigationEvent()();
}

@end