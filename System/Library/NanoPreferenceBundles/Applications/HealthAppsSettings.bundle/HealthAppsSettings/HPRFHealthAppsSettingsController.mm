@interface HPRFHealthAppsSettingsController
- (BOOL)_shouldShowFitnessJrSpecifier;
- (HPRFHealthAppsSettingsController)init;
- (id)_fitnessJrSpecifiers;
- (id)_groupSpecifiers;
- (id)applicationGroupSpecifiers;
- (id)localizedPaneTitle;
- (id)notificationApplicationSpecifiers;
- (void)_loadFitnessJrValue;
- (void)_loadIsActivitySetup;
- (void)_setFitnessJrToValue:(id)value;
- (void)_triggerNanoSync;
- (void)dealloc;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showFitnessJrPrompt:(id)prompt;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HPRFHealthAppsSettingsController

- (HPRFHealthAppsSettingsController)init
{
  v18.receiver = self;
  v18.super_class = HPRFHealthAppsSettingsController;
  v2 = [(HPRFHealthAppsSettingsController *)&v18 init];
  v3 = v2;
  if (v2)
  {
    localizedPaneTitle = [(HPRFHealthAppsSettingsController *)v2 localizedPaneTitle];
    [(HPRFHealthAppsSettingsController *)v3 setTitle:localizedPaneTitle];

    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v7 = [v5 getAllDevicesWithArchivedAltAccountDevicesMatching:v6];
    firstObject = [v7 firstObject];
    device = v3->_device;
    v3->_device = firstObject;

    v10 = FIUIHealthStoreForDevice();
    healthStore = v3->_healthStore;
    v3->_healthStore = v10;

    v12 = [[FIUIUnitManager alloc] initWithHealthStore:v3->_healthStore];
    v13 = [[FIUIFormattingManager alloc] initWithUnitManager:v12];
    formattingManager = v3->_formattingManager;
    v3->_formattingManager = v13;

    v15 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:v3->_healthStore];
    wheelchairUseCharacteristicCache = v3->_wheelchairUseCharacteristicCache;
    v3->_wheelchairUseCharacteristicCache = v15;

    [(_HKWheelchairUseCharacteristicCache *)v3->_wheelchairUseCharacteristicCache addObserver:v3];
    v3->_isActivitySetup = 0;
    [(HPRFHealthAppsSettingsController *)v3 _loadIsActivitySetup];
    v3->_didSwitchFitnessJrToday = 0;
    [(HPRFHealthAppsSettingsController *)v3 _loadFitnessJrValue];
  }

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HPRFHealthAppsSettingsController;
  [(HPRFHealthAppsSettingsController *)&v4 viewDidLoad];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, nanoLifestylePreferencesDidChange, @"NanoLifestylePreferencesChangedNotification", 0, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = HPRFHealthAppsSettingsController;
  [(HPRFHealthAppsSettingsController *)&v12 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"PANE_TITLE" table:@"HealthAppsSettings" locale:v5 bundleURL:bundleURL];

  bundleIdentifier = [v3 bundleIdentifier];
  bundleIdentifier2 = [v3 bundleIdentifier];
  v10 = [NSString stringWithFormat:@"bridge:root=%@", bundleIdentifier2];
  v11 = [NSURL URLWithString:v10];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:bundleIdentifier title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v11];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HPRFHealthAppsSettingsController;
  [(HPRFHealthAppsSettingsController *)&v8 viewDidAppear:appear];
  if (!self->_device)
  {
    v4 = +[_HKBehavior sharedBehavior];
    isAppleInternalInstall = [v4 isAppleInternalInstall];

    if (isAppleInternalInstall)
    {
      v6 = [UIAlertController alertControllerWithTitle:@"Unexpected state!" message:@"Didn't get an active watch preferredStyle:this is unexpected and will lead to unexpected results. Please file a radar.", 1];
      v7 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [v6 addAction:v7];

      [(HPRFHealthAppsSettingsController *)self presentViewController:v6 animated:1 completion:0];
    }
  }
}

- (void)dealloc
{
  [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache removeObserver:self];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HPRFHealthAppsSettingsController;
  [(HPRFHealthAppsSettingsController *)&v4 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_86F0 table:@"HealthAppsSettings"];

  return v3;
}

- (id)_groupSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(HPRFHealthAppsSettingsController *)self _shouldShowFitnessJrSpecifier])
  {
    _fitnessJrSpecifiers = [(HPRFHealthAppsSettingsController *)self _fitnessJrSpecifiers];
    [v3 addObjectsFromArray:_fitnessJrSpecifiers];
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"HealthAppsGroupSettings" inBundle:v5 target:self stringsTable:@"HealthAppsSettings"];

  [v3 addObjectsFromArray:v18];
  v6 = [HKHealthStore localizationStringSuffixForWheelchairUser:[(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache isWheelchairUser]];
  v7 = [v3 specifierForID:@"STAND_REMINDERS_ENABLED_LABEL"];
  v8 = [@"STAND_REMINDERS_ENABLED_LABEL" stringByAppendingString:v6];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v8 value:&stru_86F0 table:@"HealthAppsSettings"];
  [v7 setName:v10];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v11 = [v3 specifierForID:@"STAND_REMINDERS_ENABLED_FOOTER"];
  v12 = [@"STAND_REMINDERS_ENABLED_FOOTER" stringByAppendingString:v6];
  v13 = [FIUIFormattingManager stringWithNumber:&off_8C40 decimalPrecision:1];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:v12 value:&stru_86F0 table:@"HealthAppsSettings"];
  v16 = [NSString stringWithFormat:v15, v13];

  [v11 setProperty:v16 forKey:PSFooterTextGroupKey];

  return v3;
}

- (id)notificationApplicationSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"HealthAppsSettings" inBundle:v3 target:self stringsTable:@"HealthAppsSettings"];
  v5 = [v4 mutableCopy];

  if (+[_HKBehavior activePairedWatchHasSmartFitnessCoaching])
  {
    v6 = [HKHealthStore localizationStringSuffixForWheelchairUser:[(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache isWheelchairUser]];
    v7 = [v5 specifierForID:@"GOAL_COMPLETIONS_ENABLED_FOOTER"];
    v8 = [@"GOAL_COMPLETIONS_ENABLED_FOOTER_SMART_COACH" stringByAppendingString:v6];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_86F0 table:@"HealthAppsSettings"];
    [v7 setProperty:v10 forKey:PSFooterTextGroupKey];
  }

  if ([(HPRFHealthAppsSettingsController *)self alertingMode])
  {
    _groupSpecifiers = [(HPRFHealthAppsSettingsController *)self _groupSpecifiers];
    v12 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [_groupSpecifiers count]);
    [v5 insertObjects:_groupSpecifiers atIndexes:v12];
  }

  return v5;
}

- (id)applicationGroupSpecifiers
{
  if ([(HPRFHealthAppsSettingsController *)self alertingMode])
  {
    _groupSpecifiers = 0;
  }

  else
  {
    _groupSpecifiers = [(HPRFHealthAppsSettingsController *)self _groupSpecifiers];
  }

  return _groupSpecifiers;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:PSKeyNameKey];
  if (v8)
  {
    if (qword_C7C0 != -1)
    {
      sub_43C8();
    }

    v9 = [qword_C7C8 containsObject:v8];
    if (valueCopy)
    {
      if (v9)
      {
        v10 = [specifierCopy propertyForKey:PSValueKey];
        v11 = [valueCopy isEqual:v10];

        if ((v11 & 1) == 0)
        {
          FIActivityAnalyticsSubmission();
        }
      }
    }
  }

  v12.receiver = self;
  v12.super_class = HPRFHealthAppsSettingsController;
  [(HPRFHealthAppsSettingsController *)&v12 setPreferenceValue:valueCopy specifier:specifierCopy];
}

- (id)_fitnessJrSpecifiers
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FITNESS_JR_FOOTER" value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  v6 = PSIDKey;
  [v3 setObject:v5 forKeyedSubscript:PSIDKey];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FITNESS_JR_FOOTER" value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  [v3 setObject:v8 forKeyedSubscript:PSFooterTextGroupKey];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"FITNESS_JR_LABEL" value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"showFitnessJrPrompt:" get:"getFitnessJrValue" detail:0 cell:6 edit:0];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FITNESS_JR_LABEL" value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  [v11 setObject:v13 forKeyedSubscript:v6];

  [v11 setObject:@"EnableFitnessJr" forKeyedSubscript:PSKeyNameKey];
  v14 = [NSNumber numberWithBool:1];
  [v11 setObject:v14 forKeyedSubscript:PSNotifyNanoKey];

  v17[0] = v3;
  v17[1] = v11;
  v15 = [NSArray arrayWithObjects:v17 count:2];

  return v15;
}

- (void)_loadFitnessJrValue
{
  if (self->_healthStore)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = [HKObjectType categoryTypeForIdentifier:_HKCategoryTypeIdentifierActivityMoveModeChange];
    v5 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:0];
    v6 = [NSSortDescriptor sortDescriptorWithKey:_HKObjectSortIdentifierCreationDate ascending:0];
    v7 = [HKSampleQuery alloc];
    v16[0] = v5;
    v16[1] = v6;
    v8 = [NSArray arrayWithObjects:v16 count:2];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2EEC;
    v13[3] = &unk_8420;
    v9 = v3;
    v14 = v9;
    selfCopy = self;
    v10 = [v7 initWithSampleType:v4 predicate:0 limit:1 sortDescriptors:v8 resultsHandler:v13];

    [(HKHealthStore *)self->_healthStore executeQuery:v10];
    v11 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v9, v11))
    {
      _HKInitializeLogging();
      v12 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
      {
        sub_43DC(v12);
      }

      [(HKHealthStore *)self->_healthStore stopQuery:v10];
    }
  }
}

- (void)_loadIsActivitySetup
{
  if (self->_healthStore)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v3 = dispatch_semaphore_create(0);
    FIUIUserHasExistingMoveGoal();
    v4 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      _HKInitializeLogging();
      v5 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
      {
        sub_4488(v5);
      }
    }

    self->_isActivitySetup = *(v7 + 24);

    _Block_object_dispose(&v6, 8);
  }
}

- (void)showFitnessJrPrompt:(id)prompt
{
  promptCopy = prompt;
  v5 = [promptCopy isEqualToNumber:&off_8C58];
  if (v5)
  {
    v6 = @"TOGGLE_FITNESS_JR_ENABLE_CONFIRM_BUTTON_TEXT";
  }

  else
  {
    v6 = @"TOGGLE_FITNESS_JR_DISABLE_CONFIRM_BUTTON_TEXT";
  }

  v7 = @"TOGGLE_FITNESS_JR_DISABLE_CONFIRM_TITLE";
  if (v5)
  {
    v7 = @"TOGGLE_FITNESS_JR_ENABLE_CONFIRM_TITLE";
  }

  v20 = v7;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TOGGLE_FITNESS_JR_CANCEL_BUTTON_TEXT" value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_35D4;
  v23[3] = &unk_8470;
  v23[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v23];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v6 value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_35DC;
  v21[3] = &unk_8498;
  v21[4] = self;
  v22 = promptCopy;
  v19 = promptCopy;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v21];

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:v20 value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"TOGGLE_FITNESS_JR_CONFIRM_MESSAGE" value:&stru_86F0 table:@"HealthAppsSettings-tinker"];
  v18 = [UIAlertController alertControllerWithTitle:v15 message:v17 preferredStyle:1];

  [v18 addAction:v10];
  [v18 addAction:v13];
  [(HPRFHealthAppsSettingsController *)self presentViewController:v18 animated:1 completion:0];
}

- (void)_setFitnessJrToValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy isEqualToNumber:&off_8C70];
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSDate date];
  v8 = [v6 hk_startOfDateByAddingDays:1 toDate:v7];

  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 components:_HKRequiredCalendarUnitsForCacheIndexDateComponents fromDate:v8];

  v11 = [[FIActivitySettingsController alloc] initWithHealthStore:self->_healthStore];
  [v11 populateExistingCharacteristics];
  [v11 biologicalSex];
  [v11 weight];
  if (v5)
    v29 = {;
    leanBodyMass = [v11 leanBodyMass];
    height = [v11 height];
    [v11 dateOfBirth];
    v14 = valueCopy;
    v16 = v15 = v10;
    [v11 wheelchairUse];
    FIUICalculateBMR();

    v10 = v15;
    valueCopy = v14;

    v17 = FIUIActivityLevelsForBMR();
    v18 = 1;
  }

  else
    v19 = {;
    v20 = [HKUnit gramUnitWithMetricPrefix:9];
    [v19 doubleValueForUnit:v20];

    height2 = [v11 height];
    v22 = [HKUnit meterUnitWithMetricPrefix:7];
    [height2 doubleValueForUnit:v22];

    dateOfBirth = [v11 dateOfBirth];
    FIAgeInYearsForDateOfBirth();

    [v11 wheelchairUse];
    FICMotionConditionForWheelchairUse();
    v17 = FIUIActivityLevelsForFitnessJr();
    v18 = 2;
  }

  v24 = FIActivityMoveModeChangeSampleForDateComponents();
  healthStore = self->_healthStore;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_3970;
  v30[3] = &unk_8510;
  v33 = v8;
  v34 = v18;
  v30[4] = self;
  v31 = valueCopy;
  v32 = v17;
  v26 = v8;
  v27 = v17;
  v28 = valueCopy;
  [(HKHealthStore *)healthStore saveObject:v24 withCompletion:v30];
}

- (void)_triggerNanoSync
{
  v2 = [[HKNanoSyncControl alloc] initWithHealthStore:self->_healthStore];
  [v2 forceNanoSyncWithOptions:0 completion:&stru_8570];
}

- (BOOL)_shouldShowFitnessJrSpecifier
{
  if (self->_isActivitySetup)
  {
    healthStore = self->_healthStore;
    v22 = 0;
    v4 = [(HKHealthStore *)healthStore wheelchairUseWithError:&v22];
    v5 = v22;
    if (v5)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
      {
        sub_46D4();
      }
    }

    else if ([v4 wheelchairUse] == &dword_0 + 2)
    {
      _HKInitializeLogging();
      v8 = HKLogActivity;
      v7 = 0;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController - user is in wheelchair mode", buf, 2u);
        v7 = 0;
      }

      goto LABEL_24;
    }

    if (self->_fitnessJrValue == 1 || self->_didSwitchFitnessJrToday)
    {
      _HKInitializeLogging();
      v9 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        fitnessJrValue = self->_fitnessJrValue;
        didSwitchFitnessJrToday = self->_didSwitchFitnessJrToday;
        *buf = 134218240;
        v24 = fitnessJrValue;
        v25 = 1024;
        v26 = didSwitchFitnessJrToday;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController - _fitnessJrValue %ld _didSwitchFitnessJrToday %d", buf, 0x12u);
      }

      v7 = 1;
      goto LABEL_24;
    }

    v12 = self->_healthStore;
    v21 = 0;
    v13 = [(HKHealthStore *)v12 dateOfBirthComponentsWithError:&v21];
    v14 = v21;
    if (v14)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
      {
        sub_473C();
      }
    }

    else
    {
      if (v13)
      {
        date = [v13 date];
        v16 = FIAgeInYearsForDateOfBirth();
        v17 = kActivityMoveModeMoveTimeMaximumAge;
        v7 = v16 <= kActivityMoveModeMoveTimeMaximumAge;
        _HKInitializeLogging();
        v18 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v24 = v16;
          v25 = 1024;
          v26 = v16 <= v17;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController - ageInYears %lu shouldShowFitnessJrSpecifier %d", buf, 0x12u);
        }

        goto LABEL_23;
      }

      _HKInitializeLogging();
      v20 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController - age unknown; not showing FitnessJr switch", buf, 2u);
      }
    }

    v7 = 0;
LABEL_23:

LABEL_24:
    return v7;
  }

  _HKInitializeLogging();
  v6 = HKLogActivity;
  v7 = 0;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "HPRFHealthAppsSettingsController - activity not setup; not showing FitnessJr switch", buf, 2u);
    return 0;
  }

  return v7;
}

@end