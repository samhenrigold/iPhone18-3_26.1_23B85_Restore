@interface REMSettingsController
+ (id)specifierForDefaultListWithTarget:(id)target;
- (BOOL)saveAppBadgeCountCriteriaIfNeeded;
- (BOOL)saveTodayNotificationFireTimeIfNeeded;
- (BOOL)shouldHideGrocerySectionIfNeeded;
- (REMSettingsController)init;
- (id)_accountSpecifiers;
- (id)_appPolicySpecifiersShouldIncludeAccountSpecifier:(BOOL)specifier;
- (id)clearCategorizationDetailText;
- (id)datePickerForSpecifier:(id)specifier;
- (id)defaultListName:(id)name;
- (id)disableAssignmentNotifications:(id)notifications;
- (id)enableAutoCompleteReminders:(id)reminders;
- (id)localizedPlacardSubtitle;
- (id)localizedPlacardTitle;
- (id)placardSpecifiersWithTitle:(id)title subtitle:(id)subtitle applicationIdentifier:(id)identifier;
- (id)shouldIncludeRemindersDueTodayInBadgeCount:(id)count;
- (id)showRemindersAsOverdue:(id)overdue;
- (id)specifiers;
- (id)timeZoneOverrideState:(id)state;
- (id)todayNotificationFooterText;
- (id)todayNotificationTimeSet:(id)set;
- (id)todayNotificationTimeString;
- (void)clearCategorizationButtonDidTapped:(id)tapped;
- (void)datePickerChanged:(id)changed;
- (void)datePickerEditingDidEnd:(id)end;
- (void)decreaseMinuteIntervalIfNeededForDatePicker:(id)picker;
- (void)didTapTodayNotificationTimeButton:(id)button;
- (void)performClearAction;
- (void)queryTimeZoneOverrideName;
- (void)refreshExternallyModifiableSpecifiers;
- (void)reloadTodayNotificationSpecifiers:(BOOL)specifiers;
- (void)saveAndWakeDaemon;
- (void)setDisableAssignmentNotifications:(id)notifications specifier:(id)specifier;
- (void)setEnableAutoCompleteReminders:(id)reminders specifier:(id)specifier;
- (void)setShouldIncludeRemindersDueTodayInBadgeCount:(id)count specifier:(id)specifier;
- (void)setShowRemindersAsOverdue:(id)overdue specifier:(id)specifier;
- (void)setTodayNotificationTimeSet:(id)set specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation REMSettingsController

- (REMSettingsController)init
{
  v9.receiver = self;
  v9.super_class = REMSettingsController;
  v2 = [(REMSettingsController *)&v9 init];
  if (v2)
  {
    v3 = [PSSystemPolicyForApp alloc];
    v4 = [v3 initWithBundleIdentifier:REMAppBundleIdentifier];
    appPolicy = v2->_appPolicy;
    v2->_appPolicy = v4;

    if (objc_opt_respondsToSelector())
    {
      [(PSSystemPolicyForApp *)v2->_appPolicy setDelegate:v2];
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = REMSettingsController;
  [(REMSettingsController *)&v5 viewWillAppear:appear];
  [(REMSettingsController *)self queryTimeZoneOverrideName];
  timeZoneOverride = [(REMSettingsController *)self timeZoneOverride];
  [(REMSettingsController *)self reloadSpecifier:timeZoneOverride];
}

- (void)viewDidAppear:(BOOL)appear
{
  v41.receiver = self;
  v41.super_class = REMSettingsController;
  [(REMSettingsController *)&v41 viewDidAppear:appear];
  v4 = [NSURL URLWithString:REMSettingsNavigationDeepLinkGeneralPath];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Reminders" table:0 locale:v6 bundleURL:bundleURL];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Apps" table:0 locale:v11 bundleURL:bundleURL2];

  v15 = REMAppBundleIdentifier;
  v42 = v14;
  v16 = [NSArray arrayWithObjects:&v42 count:1];
  [(REMSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v15 title:v9 localizedNavigationComponents:v16 deepLink:v4];

  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_39CC;
  v40[3] = &unk_35210;
  v40[4] = self;
  v18 = [daemonUserDefaults observePreferredDefaultListIDWithBlock:v40];
  [(REMSettingsController *)self setDaemonUserDefaultsDefaultListObserver:v18];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_3A24;
  v39[3] = &unk_35238;
  v39[4] = self;
  v20 = [daemonUserDefaults2 observeTodayNotificationFireTimeWithBlock:v39];
  [(REMSettingsController *)self setDaemonUserDefaultsTodayNotificationObserver:v20];

  daemonUserDefaults3 = [(REMSettingsController *)self daemonUserDefaults];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_3A94;
  v38[3] = &unk_35260;
  v38[4] = self;
  v22 = [daemonUserDefaults3 observeShouldIncludeRemindersDueTodayInBadgeCountWithBlock:v38];
  [(REMSettingsController *)self setDaemonUserDefaultsIncludeDueTodayObserver:v22];

  daemonUserDefaults4 = [(REMSettingsController *)self daemonUserDefaults];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_3AEC;
  v37[3] = &unk_35260;
  v37[4] = self;
  v24 = [daemonUserDefaults4 observeShowRemindersAsOverdueWithBlock:v37];
  [(REMSettingsController *)self setDaemonUserDefaultsShowReminderAsOverdueObserver:v24];

  daemonUserDefaults5 = [(REMSettingsController *)self daemonUserDefaults];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_3B44;
  v36[3] = &unk_35260;
  v36[4] = self;
  v26 = [daemonUserDefaults5 observeTimeZoneOverrideEnabledWithBlock:v36];
  [(REMSettingsController *)self setDaemonUserDefaultsTimeZoneOverrideEnabledObserver:v26];

  daemonUserDefaults6 = [(REMSettingsController *)self daemonUserDefaults];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_3B9C;
  v35[3] = &unk_35288;
  v35[4] = self;
  v28 = [daemonUserDefaults6 observeTimeZoneOverrideWithBlock:v35];
  [(REMSettingsController *)self setDaemonUserDefaultsTimeZoneOverrideObserver:v28];

  daemonUserDefaults7 = [(REMSettingsController *)self daemonUserDefaults];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_3BF4;
  v34[3] = &unk_35260;
  v34[4] = self;
  v30 = [daemonUserDefaults7 observeEnableAssignmentNotificationsWithBlock:v34];
  [(REMSettingsController *)self setDaemonUserDefaultsMuteNotificationsObserver:v30];

  daemonUserDefaults8 = [(REMSettingsController *)self daemonUserDefaults];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_3C4C;
  v33[3] = &unk_35260;
  v33[4] = self;
  v32 = [daemonUserDefaults8 observeEnableAutoCompleteRemindersWithBlock:v33];
  [(REMSettingsController *)self setDaemonUserDefaultsShowSuggestionsObserver:v32];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = REMSettingsController;
  [(REMSettingsController *)&v4 viewWillDisappear:disappear];
  [(REMSettingsController *)self saveAndWakeDaemon];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_36;
  }

  v137 = OBJC_IVAR___PSListController__specifiers;
  v4 = +[REMUserDefaults daemonUserDefaults];
  [(REMSettingsController *)self setDaemonUserDefaults:v4];

  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  todayNotificationFireTime = [daemonUserDefaults todayNotificationFireTime];
  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:todayNotificationFireTime];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  -[REMSettingsController setInitialShouldIncludeRemindersDueTodayInBadgeCount:](self, "setInitialShouldIncludeRemindersDueTodayInBadgeCount:", [daemonUserDefaults2 shouldIncludeRemindersDueTodayInBadgeCount]);

  [(REMSettingsController *)self setTitle:0];
  v8 = objc_opt_new();
  traitCollection = [(REMSettingsController *)self traitCollection];
  pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if (pe_isSettingsFeatureDescriptionCellSupported)
  {
    _accountSpecifiers = [(REMSettingsController *)self _accountSpecifiers];
    v12 = [_accountSpecifiers specifierForID:@"ACCOUNTS"];
    if (v12)
    {
      v13 = v12;
      v14 = REMSettingsBundleGet(v12);
      v15 = [v14 localizedStringForKey:@"Reminders Accounts" value:&stru_35EE8 table:0];
      [v13 setName:v15];
    }

    else
    {
      v13 = [_accountSpecifiers specifierForID:@"ADD_ACCOUNT"];
    }

    localizedPlacardTitle = [(REMSettingsController *)self localizedPlacardTitle];
    localizedPlacardSubtitle = [(REMSettingsController *)self localizedPlacardSubtitle];
    v18 = [(REMSettingsController *)self placardSpecifiersWithTitle:localizedPlacardTitle subtitle:localizedPlacardSubtitle applicationIdentifier:@"com.apple.reminders"];
    [v8 addObjectsFromArray:v18];

    [v8 addObject:v13];
    v19 = [(REMSettingsController *)self _appPolicySpecifiersShouldIncludeAccountSpecifier:0];
    if ([v19 count])
    {
      [v8 addObjectsFromArray:v19];
    }
  }

  else
  {
    _accountSpecifiers = [(REMSettingsController *)self _appPolicySpecifiersShouldIncludeAccountSpecifier:1];
    if ([_accountSpecifiers count])
    {
      [v8 addObjectsFromArray:_accountSpecifiers];
    }
  }

  v21 = REMSettingsBundleGet(v20);
  v22 = [v21 localizedStringForKey:@"Reminders created outside of a specific list are placed in this list." value:&stru_35EE8 table:0];
  v23 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:v22];

  v24 = [REMSettingsController specifierForDefaultListWithTarget:self];
  [v24 setIdentifier:REMSettingsDefaultListIdentifier];
  [(REMSettingsController *)self setDefaultListSpecifier:v24];
  v145[0] = v23;
  v145[1] = v24;
  v25 = [NSArray arrayWithObjects:v145 count:2];
  [v8 addObjectsFromArray:v25];

  v27 = REMSettingsBundleGet(v26);
  v28 = [v27 localizedStringForKey:@"All-Day Reminders" value:&stru_35EE8 table:0];
  todayNotificationFooterText = [(REMSettingsController *)self todayNotificationFooterText];
  v30 = [REMSettingsUtilities groupSpecifierWithHeader:v28 footer:todayNotificationFooterText];
  [(REMSettingsController *)self setTodayNotificationGroup:v30];

  v32 = REMSettingsBundleGet(v31);
  v33 = [v32 localizedStringForKey:@"Today Notification" value:&stru_35EE8 table:0];
  v34 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v33 target:self cell:6 detail:0 keyName:@"todayNotificationFireTime" defaultValue:&__kCFBooleanTrue scope:0 set:"setTodayNotificationTimeSet:specifier:" get:"todayNotificationTimeSet:"];
  [(REMSettingsController *)self setTodayNotificationEnabledSwitch:v34];

  v35 = REMSettingsTodayNotificationIdentifier;
  todayNotificationEnabledSwitch = [(REMSettingsController *)self todayNotificationEnabledSwitch];
  [todayNotificationEnabledSwitch setIdentifier:v35];

  v38 = REMSettingsBundleGet(v37);
  v39 = [v38 localizedStringForKey:@"Time" value:&stru_35EE8 table:0];
  v40 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:0 get:"todayNotificationTimeString" detail:0 cell:4 edit:0];
  [(REMSettingsController *)self setTodayNotificationTimeButton:v40];

  todayNotificationTimeButton = [(REMSettingsController *)self todayNotificationTimeButton];
  [todayNotificationTimeButton setButtonAction:"didTapTodayNotificationTimeButton:"];

  v42 = objc_opt_class();
  todayNotificationTimeButton2 = [(REMSettingsController *)self todayNotificationTimeButton];
  v44 = PSCellClassKey;
  [todayNotificationTimeButton2 setObject:v42 forKeyedSubscript:PSCellClassKey];

  v45 = [PSSpecifier preferenceSpecifierNamed:&stru_35EE8 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:4 edit:0];
  [(REMSettingsController *)self setTodayNotificationTimePicker:v45];

  v46 = objc_opt_class();
  todayNotificationTimePicker = [(REMSettingsController *)self todayNotificationTimePicker];
  v136 = v44;
  [todayNotificationTimePicker setObject:v46 forKeyedSubscript:v44];

  +[PSDateTimePickerCell preferredHeight];
  v48 = [NSNumber numberWithDouble:?];
  todayNotificationTimePicker2 = [(REMSettingsController *)self todayNotificationTimePicker];
  [todayNotificationTimePicker2 setObject:v48 forKeyedSubscript:PSTableCellHeightKey];

  todayNotificationTimePicker3 = [(REMSettingsController *)self todayNotificationTimePicker];
  [todayNotificationTimePicker3 setTarget:self];

  todayNotificationGroup = [(REMSettingsController *)self todayNotificationGroup];
  v144[0] = todayNotificationGroup;
  todayNotificationEnabledSwitch2 = [(REMSettingsController *)self todayNotificationEnabledSwitch];
  v144[1] = todayNotificationEnabledSwitch2;
  v53 = [NSArray arrayWithObjects:v144 count:2];
  [v8 addObjectsFromArray:v53];

  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (unsavedTodayNotificationFireTime)
  {
    todayNotificationTimeButton3 = [(REMSettingsController *)self todayNotificationTimeButton];
    [v8 addObject:todayNotificationTimeButton3];
  }

  if ([(REMSettingsController *)self todayNotificationTimePickerVisible])
  {
    todayNotificationTimePicker4 = [(REMSettingsController *)self todayNotificationTimePicker];
    [v8 addObject:todayNotificationTimePicker4];
  }

  v58 = REMSettingsBundleGet(v57);
  v59 = [v58 localizedStringForKey:@"Show all-day reminders as overdue starting on the next day." value:&stru_35EE8 table:0];
  v60 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:v59];

  v62 = REMSettingsBundleGet(v61);
  v63 = [v62 localizedStringForKey:@"Show as Overdue" value:&stru_35EE8 table:0];
  v64 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v63 target:self cell:6 detail:0 keyName:@"showRemindersAsOverdue" defaultValue:&__kCFBooleanTrue scope:0 set:"setShowRemindersAsOverdue:specifier:" get:"showRemindersAsOverdue:"];

  [v64 setIdentifier:REMSettingsShowAsOverdueIdentifier];
  [(REMSettingsController *)self setShowAsOverdue:v64];
  v143[0] = v60;
  v143[1] = v64;
  v65 = [NSArray arrayWithObjects:v143 count:2];
  [v8 addObjectsFromArray:v65];

  v66 = rem_feature_enabled();
  if (v66)
  {
    v67 = REMSettingsBundleGet(v66);
    v68 = [v67 localizedStringForKey:@"Set the time zone used to display and create reminders." value:&stru_35EE8 table:0];
    v69 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:v68];

    v71 = REMSettingsBundleGet(v70);
    v72 = [v71 localizedStringForKey:@"Time Zone" value:&stru_35EE8 table:0];

    v73 = [REMSettingsUtilities linkListPreferenceSpecifierNamed:v72 target:self keyName:@"timeZoneOverride" detail:NSClassFromString(@"RemindersSettings.TTRITimeZoneOverrideController") scope:0 get:"timeZoneOverrideState:"];
    v74 = REMSettingsBundleGet([v73 setIdentifier:REMSettingsTimeZoneOverrideIdentifier]);
    v75 = [v74 localizedStringForKey:@"Set the time zone used to display and create reminders." value:&stru_35EE8 table:0];
    [v73 setProperty:v75 forKey:PSFooterCellClassGroupKey];

    [(REMSettingsController *)self setTimeZoneOverride:v73];
    v142[0] = v69;
    v142[1] = v73;
    v76 = [NSArray arrayWithObjects:v142 count:2];
    [v8 addObjectsFromArray:v76];
  }

  v77 = REMSettingsBundleGet(v66);
  v78 = [v77 localizedStringForKey:@"Badge Count" value:&stru_35EE8 table:0];
  v79 = REMSettingsBundleGet(v78);
  v80 = [v79 localizedStringForKey:@"Include both overdue and due today items in badge count." value:&stru_35EE8 table:0];
  v81 = [REMSettingsUtilities groupSpecifierWithHeader:v78 footer:v80];

  v83 = REMSettingsBundleGet(v82);
  v84 = [v83 localizedStringForKey:@"Include Due Today" value:&stru_35EE8 table:0];
  v85 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v84 target:self cell:6 detail:0 keyName:@"shouldIncludeRemindersDueTodayInBadgeCount" defaultValue:&__kCFBooleanFalse scope:0 set:"setShouldIncludeRemindersDueTodayInBadgeCount:specifier:" get:"shouldIncludeRemindersDueTodayInBadgeCount:"];

  v135 = PSAllowMultilineTitleKey;
  [v85 setProperty:&__kCFBooleanTrue forKey:?];
  [v85 setIdentifier:REMSettingsIncludeDueTodayIdentifier];
  [(REMSettingsController *)self setIncludeRemindersDueTodayInBadgeCount:v85];
  v141[0] = v81;
  v141[1] = v85;
  v86 = [NSArray arrayWithObjects:v141 count:2];
  [v8 addObjectsFromArray:v86];

  v88 = REMSettingsBundleGet(v87);
  v89 = [v88 localizedStringForKey:@"Assigned Reminders" value:&stru_35EE8 table:0];
  v90 = [REMSettingsUtilities groupSpecifierWithHeader:v89 footer:0];

  v92 = REMSettingsBundleGet(v91);
  v93 = [v92 localizedStringForKey:@"Mute Notifications" value:&stru_35EE8 table:0];
  v94 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v93 target:self cell:6 detail:0 keyName:@"disableAssignmentNotifications:" defaultValue:&__kCFBooleanFalse scope:0 set:"setDisableAssignmentNotifications:specifier:" get:"disableAssignmentNotifications:"];

  [v94 setIdentifier:REMSettingsMuteNotificationsIdentifier];
  [(REMSettingsController *)self setDisableAssignmentNotifications:v94];
  v140[0] = v90;
  v140[1] = v94;
  v95 = [NSArray arrayWithObjects:v140 count:2];
  [v8 addObjectsFromArray:v95];

  v97 = REMSettingsBundleGet(v96);
  v98 = [v97 localizedStringForKey:@"When Adding Reminders" value:&stru_35EE8 table:0];

  v99 = [REMSettingsUtilities groupSpecifierWithHeader:v98 footer:0];
  v100 = REMSettingsBundleGet(v99);
  v101 = [v100 localizedStringForKey:@"Show Suggestions" value:&stru_35EE8 table:0];
  v102 = [REMSettingsUtilities standardPreferenceSpecifierNamed:v101 target:self cell:6 detail:0 keyName:@"enableAutoCompleteReminders:" defaultValue:&__kCFBooleanTrue scope:0 set:"setEnableAutoCompleteReminders:specifier:" get:"enableAutoCompleteReminders:"];

  [v102 setIdentifier:REMSettingsShowSuggestionsIdentifier];
  [(REMSettingsController *)self setEnableAutoCompleteReminders:v102];
  v139[0] = v99;
  v139[1] = v102;
  v103 = [NSArray arrayWithObjects:v139 count:2];
  [v8 addObjectsFromArray:v103];

  if (rem_feature_enabled())
  {
    v104 = +[_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper supportsAutoCategorizationGenerativeModels];
    shouldHideGrocerySectionIfNeeded = [(REMSettingsController *)self shouldHideGrocerySectionIfNeeded];
    if ((shouldHideGrocerySectionIfNeeded & 1) == 0)
    {
      if (v104)
      {
        v106 = @"Categorization";
      }

      else
      {
        v106 = @"Grocery Categorization";
      }

      goto LABEL_24;
    }
  }

  else
  {
    shouldHideGrocerySectionIfNeeded = [(REMSettingsController *)self shouldHideGrocerySectionIfNeeded];
    v104 = 0;
    if ((shouldHideGrocerySectionIfNeeded & 1) == 0)
    {
      v106 = @"Grocery Categorization";
LABEL_24:
      v107 = REMSettingsBundleGet(shouldHideGrocerySectionIfNeeded);
      v108 = [v107 localizedStringForKey:v106 value:&stru_35EE8 table:0];

      v110 = REMSettingsBundleGet(v109);
      v111 = [v110 localizedStringForKey:@"Add an additional language to automatically place grocery items into categories." value:&stru_35EE8 table:0];
      v112 = [REMSettingsUtilities groupSpecifierWithHeader:v108 footer:v111];

      [v8 addObject:v112];
      v113 = NSClassFromString(@"RemindersSettings.TTRIGroceryAddLanguageController");
      if (v113)
      {
        v114 = v113;
        v115 = REMSettingsBundleGet(v113);
        v116 = [v115 localizedStringForKey:@"Add Language" value:&stru_35EE8 table:0];
        v117 = [PSSpecifier preferenceSpecifierNamed:v116 target:self set:0 get:0 detail:v114 cell:2 edit:v114];

        v119 = REMSettingsBundleGet(v118);
        v120 = [v119 localizedStringForKey:@"Add an additional language to automatically place grocery items into categories." value:&stru_35EE8 table:0];
        [v117 setProperty:v120 forKey:PSFooterCellClassGroupKey];

        [v117 setProperty:&__kCFBooleanTrue forKey:v135];
        [v117 setIdentifier:REMSettingsGroceryAddLanguageIdentifier];
        [v8 addObject:v117];
      }
    }
  }

  if (![(REMSettingsController *)self shouldHideGrocerySectionIfNeeded]|| v104)
  {
    clearCategorizationDetailText = [(REMSettingsController *)self clearCategorizationDetailText];
    v122 = [REMSettingsUtilities groupSpecifierWithHeader:0 footer:clearCategorizationDetailText];

    if (v104)
    {
      v124 = REMSettingsBundleGet(v123);
      v125 = v124;
      v126 = @"Reset Categories";
    }

    else
    {
      v127 = rem_feature_enabled();
      v128 = v127;
      v124 = REMSettingsBundleGet(v127);
      v125 = v124;
      if (v128)
      {
        v126 = @"Reset Grocery Categories";
      }

      else
      {
        v126 = @"Clear Categorization History";
      }
    }

    v129 = [v124 localizedStringForKey:v126 value:&stru_35EE8 table:0];

    v130 = [REMSettingsUtilities standardButtonSpecifierNamed:v129 target:self selector:"clearCategorizationButtonDidTapped:"];
    [v130 setObject:NSClassFromString(@"RemindersSettings.TTRIClearCategorizationHistoryCell") forKeyedSubscript:v136];
    [v130 setIdentifier:REMSettingsGroceryResetCategoriesIdentifier];
    v138[0] = v122;
    v138[1] = v130;
    v131 = [NSArray arrayWithObjects:v138 count:2];
    [v8 addObjectsFromArray:v131];
  }

  v132 = [v8 copy];
  v133 = *&self->PSListController_opaque[v137];
  *&self->PSListController_opaque[v137] = v132;

  v3 = *&self->PSListController_opaque[v137];
LABEL_36:

  return v3;
}

- (id)placardSpecifiersWithTitle:(id)title subtitle:(id)subtitle applicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  subtitleCopy = subtitle;
  titleCopy = title;
  v11 = +[NSMutableArray array];
  v12 = +[PSSpecifier emptyGroupSpecifier];
  v13 = PSIDKey;
  [v12 setProperty:@"PLACARD_GROUP" forKey:PSIDKey];
  [v11 addObject:v12];
  v14 = [PSSpecifier preferenceSpecifierNamed:titleCopy target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v14 setProperty:@"PLACARD" forKey:v13];
  [v14 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v14 setProperty:subtitleCopy forKey:PSTableCellSubtitleTextKey];

  [v14 setProperty:identifierCopy forKey:PSLazyIconAppID];
  [v11 addObject:v14];
  v15 = [v11 copy];

  return v15;
}

- (id)localizedPlacardTitle
{
  v2 = REMSettingsBundleGet(self);
  v3 = [v2 localizedStringForKey:@"Reminders" value:&stru_35EE8 table:0];

  return v3;
}

- (id)localizedPlacardSubtitle
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];
  v4 = @"helpkit://open?topic=f898416824ef";
  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v4 = @"helpkit://open?topic=ipad3cd77052";
  }

  v5 = v4;

  v7 = REMSettingsBundleGet(v6);
  v8 = [v7 localizedStringForKey:@"Add or remove accounts value:manage Siri & Search and location access table:{and customize how your reminders work. [Learn more…](%@)", &stru_35EE8, 0}];
  v9 = [NSString stringWithFormat:v8, v5];

  return v9;
}

+ (id)specifierForDefaultListWithTarget:(id)target
{
  targetCopy = target;
  v4 = REMSettingsBundleGet(targetCopy);
  v5 = [v4 localizedStringForKey:@"Default List" value:&stru_35EE8 table:0];

  v6 = [REMSettingsUtilities linkListPreferenceSpecifierNamed:v5 target:targetCopy keyName:@"preferredDefaultListID" detail:objc_opt_class() scope:0 get:"defaultListName:"];

  return v6;
}

- (id)_appPolicySpecifiersShouldIncludeAccountSpecifier:(BOOL)specifier
{
  if (specifier)
  {
    v3 = 176226305;
  }

  else
  {
    v3 = 42008577;
  }

  appPolicy = [(REMSettingsController *)self appPolicy];
  v5 = [appPolicy specifiersForPolicyOptions:v3 force:0];

  return v5;
}

- (id)_accountSpecifiers
{
  appPolicy = [(REMSettingsController *)self appPolicy];
  v3 = [appPolicy specifiersForPolicyOptions:0x8000000 force:0];

  return v3;
}

- (void)saveAndWakeDaemon
{
  saveTodayNotificationFireTimeIfNeeded = [(REMSettingsController *)self saveTodayNotificationFireTimeIfNeeded];
  saveAppBadgeCountCriteriaIfNeeded = [(REMSettingsController *)self saveAppBadgeCountCriteriaIfNeeded];
  if ((saveTodayNotificationFireTimeIfNeeded & 1) != 0 || saveAppBadgeCountCriteriaIfNeeded)
  {
    v6 = objc_alloc_init(REMStore);
    v5 = [v6 fetchDefaultListWithError:0];
  }
}

- (id)defaultListName:(id)name
{
  v3 = objc_alloc_init(REMStore);
  v10 = 0;
  v4 = [v3 fetchDefaultListWithError:&v10];
  displayName = [v4 displayName];
  v6 = displayName;
  if (displayName)
  {
    v7 = displayName;
  }

  else
  {
    v7 = &stru_35EE8;
  }

  v8 = v7;

  return v7;
}

- (id)todayNotificationTimeSet:(id)set
{
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  v4 = unsavedTodayNotificationFireTime != 0;

  return [NSNumber numberWithBool:v4];
}

- (void)setTodayNotificationTimeSet:(id)set specifier:(id)specifier
{
  specifierCopy = specifier;
  setCopy = set;
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#TODAY_NOTIFICATIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v10 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v13 bundleURL];
  v15 = [v11 initWithKey:@"Toggle Today Notifications Settings" table:0 locale:v12 bundleURL:bundleURL];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_5560;
  v20[3] = &unk_352B0;
  v20[4] = self;
  v16 = unsavedTodayNotificationFireTime;
  v21 = v16;
  v17 = specifierCopy;
  v22 = v17;
  v18 = objc_retainBlock(v20);
  [(REMSettingsController *)self pe_registerUndoActionName:v15 associatedDeepLink:v10 undoAction:v18];
  LODWORD(v13) = [setCopy BOOLValue];

  v19 = 0;
  if (v13)
  {
    v19 = [REMDaemonUserDefaults todayNotificationFireTimeFromStorageNumber:0];
  }

  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:v19];
  [(REMSettingsController *)self setTodayNotificationTimePickerVisible:0];
  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:1];
}

- (void)didTapTodayNotificationTimeButton:(id)button
{
  [(REMSettingsController *)self setTodayNotificationTimePickerVisible:[(REMSettingsController *)self todayNotificationTimePickerVisible]^ 1];

  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:1];
}

- (id)datePickerForSpecifier:(id)specifier
{
  v4 = objc_alloc_init(UIDatePicker);
  [v4 setDatePickerMode:0];
  [v4 setMinuteInterval:5];
  [v4 setPreferredDatePickerStyle:1];
  [v4 setRoundsToMinuteInterval:0];
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (unsavedTodayNotificationFireTime)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = [v6 dateFromComponents:unsavedTodayNotificationFireTime];

    if (v7)
    {
      [v4 setDate:v7];
      [(REMSettingsController *)self decreaseMinuteIntervalIfNeededForDatePicker:v4];
    }
  }

  [v4 addTarget:self action:"datePickerEditingDidEnd:" forControlEvents:0x40000];

  return v4;
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  v8 = REMCheckedDynamicCast();

  date = [v8 date];
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:96 fromDate:date];

  [(REMSettingsController *)self setUnsavedTodayNotificationFireTime:v7];
  [(REMSettingsController *)self reloadTodayNotificationSpecifiers:0];
}

- (void)datePickerEditingDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  v5 = REMCheckedDynamicCast();

  [(REMSettingsController *)self decreaseMinuteIntervalIfNeededForDatePicker:v5];
}

- (void)decreaseMinuteIntervalIfNeededForDatePicker:(id)picker
{
  pickerCopy = picker;
  if ([pickerCopy minuteInterval] != &dword_0 + 1)
  {
    date = [pickerCopy date];
    v4 = +[NSCalendar currentCalendar];
    v5 = [v4 component:64 fromDate:date];

    if (v5 % [pickerCopy minuteInterval])
    {
      [pickerCopy setMinuteInterval:1];
    }
  }
}

- (BOOL)saveTodayNotificationFireTimeIfNeeded
{
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  todayNotificationFireTime = [daemonUserDefaults todayNotificationFireTime];

  if (unsavedTodayNotificationFireTime != todayNotificationFireTime)
  {
    unsavedTodayNotificationFireTime2 = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
    daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
    [daemonUserDefaults2 setTodayNotificationFireTime:unsavedTodayNotificationFireTime2];
  }

  return unsavedTodayNotificationFireTime != todayNotificationFireTime;
}

- (id)todayNotificationTimeString
{
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  if (unsavedTodayNotificationFireTime)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setTimeStyle:1];
    [v3 setDateStyle:0];
    v4 = +[NSCalendar currentCalendar];
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
    v6 = [v4 dateBySettingHour:objc_msgSend(unsavedTodayNotificationFireTime minute:"hour") second:objc_msgSend(unsavedTodayNotificationFireTime ofDate:"minute") options:{0, v5, 0}];
    v7 = [v3 stringFromDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)todayNotificationFooterText
{
  v2 = REMSettingsBundleGet(self);
  v3 = [v2 localizedStringForKey:@"Set a time to show a notification when there are all-day reminders (with no specified time)." value:&stru_35EE8 table:0];

  return v3;
}

- (void)reloadTodayNotificationSpecifiers:(BOOL)specifiers
{
  specifiersCopy = specifiers;
  unsavedTodayNotificationFireTime = [(REMSettingsController *)self unsavedTodayNotificationFireTime];
  todayNotificationTimeButton = [(REMSettingsController *)self todayNotificationTimeButton];
  v6 = [(REMSettingsController *)self containsSpecifier:todayNotificationTimeButton];

  if (unsavedTodayNotificationFireTime)
  {
    if (v6)
    {
      objc_opt_class();
      todayNotificationTimeButton2 = [(REMSettingsController *)self todayNotificationTimeButton];
      v8 = [(REMSettingsController *)self cachedCellForSpecifier:todayNotificationTimeButton2];
      todayNotificationTimeButton3 = REMCheckedDynamicCast();

      if (todayNotificationTimeButton3)
      {
        todayNotificationTimeString = [(REMSettingsController *)self todayNotificationTimeString];
        detailTextLabel = [todayNotificationTimeButton3 detailTextLabel];
        [detailTextLabel setText:todayNotificationTimeString];
      }

      else
      {
        todayNotificationTimeString = [(REMSettingsController *)self todayNotificationTimeButton];
        [(REMSettingsController *)self reloadSpecifier:todayNotificationTimeString animated:specifiersCopy];
      }
    }

    else
    {
      todayNotificationTimeButton3 = [(REMSettingsController *)self todayNotificationTimeButton];
      todayNotificationTimeString = [(REMSettingsController *)self todayNotificationEnabledSwitch];
      [(REMSettingsController *)self insertSpecifier:todayNotificationTimeButton3 afterSpecifier:todayNotificationTimeString animated:specifiersCopy];
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    todayNotificationTimeButton3 = [(REMSettingsController *)self todayNotificationTimeButton];
    [(REMSettingsController *)self removeSpecifier:todayNotificationTimeButton3 animated:specifiersCopy];
  }

LABEL_11:
  todayNotificationTimePickerVisible = [(REMSettingsController *)self todayNotificationTimePickerVisible];
  todayNotificationTimePicker = [(REMSettingsController *)self todayNotificationTimePicker];
  v14 = [(REMSettingsController *)self containsSpecifier:todayNotificationTimePicker];

  if (todayNotificationTimePickerVisible)
  {
    if (v14)
    {
      goto LABEL_17;
    }

    todayNotificationTimePicker2 = [(REMSettingsController *)self todayNotificationTimePicker];
    todayNotificationTimeButton4 = [(REMSettingsController *)self todayNotificationTimeButton];
    [(REMSettingsController *)self insertSpecifier:todayNotificationTimePicker2 afterSpecifier:todayNotificationTimeButton4 animated:specifiersCopy];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_17;
    }

    todayNotificationTimePicker2 = [(REMSettingsController *)self todayNotificationTimePicker];
    [(REMSettingsController *)self removeSpecifier:todayNotificationTimePicker2 animated:specifiersCopy];
  }

LABEL_17:
}

- (void)refreshExternallyModifiableSpecifiers
{
  if (*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    defaultListSpecifier = [(REMSettingsController *)self defaultListSpecifier];
    [(REMSettingsController *)self reloadSpecifier:defaultListSpecifier];
  }
}

- (id)timeZoneOverrideState:(id)state
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  timeZoneOverrideEnabled = [daemonUserDefaults timeZoneOverrideEnabled];

  v7 = REMSettingsBundleGet(v6);
  v8 = [v7 localizedStringForKey:@"Automatic" value:&stru_35EE8 table:0];

  if (timeZoneOverrideEnabled)
  {
    timeZoneOverrideName = [(REMSettingsController *)self timeZoneOverrideName];
  }

  else
  {
    timeZoneOverrideName = v8;
  }

  v10 = timeZoneOverrideName;

  return v10;
}

- (void)queryTimeZoneOverrideName
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  timeZoneOverride = [daemonUserDefaults timeZoneOverride];

  v5 = [NSTimeZone timeZoneWithName:timeZoneOverride];
  v6 = [GEORegionStore alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithLocale:v7];

  objc_initWeak(&location, self);
  name = [v5 name];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5FA4;
  v10[3] = &unk_352D8;
  objc_copyWeak(&v11, &location);
  [v8 regionsWithTimeZoneName:name types:8 sort:2 cursor:v10 finished:&stru_35318];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)disableAssignmentNotifications:(id)notifications
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [daemonUserDefaults enableAssignmentNotifications] ^ 1);

  return v4;
}

- (void)setDisableAssignmentNotifications:(id)notifications specifier:(id)specifier
{
  notificationsCopy = notifications;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  enableAssignmentNotifications = [daemonUserDefaults enableAssignmentNotifications];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#MUTE_NOTIFICATIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Mute Notifications Settings" table:0 locale:v11 bundleURL:bundleURL];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_62C4;
  v17[3] = &unk_35340;
  v17[4] = self;
  v18 = enableAssignmentNotifications;
  v15 = objc_retainBlock(v17);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  LODWORD(v11) = [notificationsCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setEnableAssignmentNotifications:v11 ^ 1];
}

- (id)clearCategorizationDetailText
{
  v2 = rem_feature_enabled();
  if (v2)
  {
    v3 = +[_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper supportsAutoCategorizationGenerativeModels];
    v4 = v3;
    v5 = REMSettingsBundleGet(v3);
    v6 = v5;
    if (v4)
    {
      v7 = @"If you manually moved items in your grocery or auto-categorized lists, you can clear the learned categorization for new items you add. Lists shared with you won’t be affected.";
    }

    else
    {
      v7 = @"If you manually moved items in your grocery lists, you can clear the learned categorization for new items you add. Lists shared with you won’t be affected.";
    }
  }

  else
  {
    v5 = REMSettingsBundleGet(v2);
    v6 = v5;
    v7 = @"Clearing manual categorization for your grocery lists applies to all of your devices and grocery lists you’ve shared. Lists shared with you will not be affected";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_35EE8 table:0];

  return v8;
}

- (void)clearCategorizationButtonDidTapped:(id)tapped
{
  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == &dword_0 + 1)
  {
    clearCategorizationDetailText = [(REMSettingsController *)self clearCategorizationDetailText];
  }

  else
  {
    clearCategorizationDetailText = 0;
  }

  v6 = [UIAlertController alertControllerWithTitle:0 message:clearCategorizationDetailText preferredStyle:0];
  if (rem_feature_enabled() && (v7 = +[_TtC19ReminderKitInternal35REMModelsAvailabilityManagerWrapper supportsAutoCategorizationGenerativeModels], v7))
  {
    v8 = REMSettingsBundleGet(v7);
    v9 = v8;
    v10 = @"Reset Categories";
  }

  else
  {
    v11 = rem_feature_enabled();
    v12 = v11;
    v8 = REMSettingsBundleGet(v11);
    v9 = v8;
    if (v12)
    {
      v10 = @"Reset Grocery Categories";
    }

    else
    {
      v10 = @"Clear Categorization History";
    }
  }

  v13 = [v8 localizedStringForKey:v10 value:&stru_35EE8 table:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_6614;
  v19[3] = &unk_35368;
  v19[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v19];
  [v6 addAction:v14];

  v16 = REMSettingsBundleGet(v15);
  v17 = [v16 localizedStringForKey:@"Cancel" value:&stru_35EE8 table:0];
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:&stru_353A8];
  [v6 addAction:v18];

  [(REMSettingsController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)performClearAction
{
  v2 = objc_alloc_init(REMStore);
  [v2 clearAutoCategorizationLocalCorrectionsOfListsOwnedByCurrentUserWithCompletionHandler:&stru_353C8];
}

- (id)showRemindersAsOverdue:(id)overdue
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [daemonUserDefaults showRemindersAsOverdue]);

  return v4;
}

- (void)setShowRemindersAsOverdue:(id)overdue specifier:(id)specifier
{
  overdueCopy = overdue;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  showRemindersAsOverdue = [daemonUserDefaults showRemindersAsOverdue];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#SHOW_AS_OVERDUE", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Show As Overdue Settings" table:0 locale:v11 bundleURL:bundleURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_693C;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = showRemindersAsOverdue;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  bOOLValue = [overdueCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setShowRemindersAsOverdue:bOOLValue];
}

- (id)enableAutoCompleteReminders:(id)reminders
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [daemonUserDefaults enableAutoCompleteReminders]);

  return v4;
}

- (void)setEnableAutoCompleteReminders:(id)reminders specifier:(id)specifier
{
  remindersCopy = reminders;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  enableAutoCompleteReminders = [daemonUserDefaults enableAutoCompleteReminders];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#SHOW_SUGGESTIONS", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Show Suggestions Settings" table:0 locale:v11 bundleURL:bundleURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6BC4;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = enableAutoCompleteReminders;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  bOOLValue = [remindersCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setEnableAutoCompleteReminders:bOOLValue];
}

- (BOOL)saveAppBadgeCountCriteriaIfNeeded
{
  initialShouldIncludeRemindersDueTodayInBadgeCount = [(REMSettingsController *)self initialShouldIncludeRemindersDueTodayInBadgeCount];
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  shouldIncludeRemindersDueTodayInBadgeCount = [daemonUserDefaults shouldIncludeRemindersDueTodayInBadgeCount];

  return initialShouldIncludeRemindersDueTodayInBadgeCount ^ shouldIncludeRemindersDueTodayInBadgeCount;
}

- (id)shouldIncludeRemindersDueTodayInBadgeCount:(id)count
{
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [daemonUserDefaults shouldIncludeRemindersDueTodayInBadgeCount]);

  return v4;
}

- (void)setShouldIncludeRemindersDueTodayInBadgeCount:(id)count specifier:(id)specifier
{
  countCopy = count;
  daemonUserDefaults = [(REMSettingsController *)self daemonUserDefaults];
  shouldIncludeRemindersDueTodayInBadgeCount = [daemonUserDefaults shouldIncludeRemindersDueTodayInBadgeCount];

  rEMSettingsNavigationDeepLinkGeneralPath = [NSString stringWithFormat:@"%@#INCLUDE_DUE_TODAY", REMSettingsNavigationDeepLinkGeneralPath];
  v9 = [NSURL URLWithString:rEMSettingsNavigationDeepLinkGeneralPath];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Toggle Include Due Today Settings" table:0 locale:v11 bundleURL:bundleURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_6E9C;
  v18[3] = &unk_35340;
  v18[4] = self;
  v19 = shouldIncludeRemindersDueTodayInBadgeCount;
  v15 = objc_retainBlock(v18);
  [(REMSettingsController *)self pe_registerUndoActionName:v14 associatedDeepLink:v9 undoAction:v15];
  bOOLValue = [countCopy BOOLValue];

  daemonUserDefaults2 = [(REMSettingsController *)self daemonUserDefaults];
  [daemonUserDefaults2 setShouldIncludeRemindersDueTodayInBadgeCount:bOOLValue];
}

- (BOOL)shouldHideGrocerySectionIfNeeded
{
  v2 = objc_alloc_init(REMStore);
  v15 = 0;
  v3 = [v2 fetchAccountsWithError:&v15];
  v4 = v15;
  if (v4)
  {
    v5 = +[REMLog utility];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_234B8(v4, v5);
    }

    goto LABEL_4;
  }

  v7 = [NSPredicate predicateWithBlock:&stru_35408];
  v5 = [v3 filteredArrayUsingPredicate:v7];

  if (![v5 count])
  {
LABEL_4:
    LOBYTE(v6) = 1;
    goto LABEL_10;
  }

  v8 = +[REMUserDefaults daemonUserDefaults];
  preferredLocalizations = [v8 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v11 = firstObject;
  if (firstObject)
  {
    localeIdentifier = firstObject;
  }

  else
  {
    v13 = +[NSLocale currentLocale];
    localeIdentifier = [v13 localeIdentifier];
  }

  v6 = [_TtC19ReminderKitInternal20REMGroceryDummyModel isGrocerySupportedForLocaleWithIdentifier:localeIdentifier]^ 1;
LABEL_10:

  return v6;
}

@end