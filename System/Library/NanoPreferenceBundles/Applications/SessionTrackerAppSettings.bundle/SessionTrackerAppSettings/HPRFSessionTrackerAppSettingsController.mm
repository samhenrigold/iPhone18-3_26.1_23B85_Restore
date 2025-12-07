@interface HPRFSessionTrackerAppSettingsController
- (BOOL)_deviceSupportsCyclingAutoStart;
- (HPRFSessionTrackerAppSettingsController)init;
- (id)NFCAlwaysOn:(id)on;
- (id)_createConfigurationDataSourceSpecifiers;
- (id)applicationBundleIdentifier;
- (id)autoPauseItemValue;
- (id)bundle;
- (id)createPowerSpecifiers;
- (id)getGuidedRunPrefetchEnabled:(id)enabled;
- (id)getGuidedWorkoutPrefetchEnabled:(id)enabled;
- (id)isAutoPauseEnabled;
- (id)isConfirmEndWorkoutEnabled;
- (id)isCyclingAutoPauseEnabled;
- (id)isEndRemindersEnabled:(id)enabled;
- (id)isGuidedRunMediaMomentsEnabled:(id)enabled;
- (id)isGuidedWorkoutMediaMomentsEnabled:(id)enabled;
- (id)isMirrorModeEnabled;
- (id)isPrecisionStartEnabled;
- (id)isResumeRemindersEnabled:(id)enabled;
- (id)isRunningAutoPauseEnabled;
- (id)isStartRemindersEnabled:(id)enabled;
- (id)isVoiceFeedbackEnabled:(id)enabled;
- (id)isWorkoutSafetyCheckInEnabled;
- (id)localizedPaneTitle;
- (id)lowPowerModeName;
- (id)selectedLPMIdentifierSwitch;
- (id)selectedMusicViewString:(id)string;
- (id)selectedUltraIdentifier;
- (id)shouldAlertOnWatchWhenMirrored;
- (id)shouldTrackTrainingLoad;
- (id)specifiers;
- (void)_addAboutTextToSpecifier:(id)specifier;
- (void)_addGestureLinkToSpecifier:(id)specifier;
- (void)_addLearnMoreExtendedLowPowerModeTextToSpecifier:(id)specifier;
- (void)_addLearnMoreLowPowerModeTextToSpecifier:(id)specifier;
- (void)_addPreKincaidFooterTextToSpecifier:(id)specifier;
- (void)_openEltonSetting;
- (void)_openPrivacyLink;
- (void)_refreshManagedConfigurationDataSources;
- (void)_showConfigurationDataSourceProviderSpecifiers:(BOOL)specifiers;
- (void)_showLearnMoreAboutLowPowerMode;
- (void)_updateShuffleSelectionInSpecifiers:(id)specifiers;
- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
- (void)dealloc;
- (void)isSubscribedWithCompletion:(id)completion;
- (void)onMessagesAppInstalled;
- (void)onMessagesAppUninstalled;
- (void)reloadSpecifiers;
- (void)setGuidedRunPrefetchEnabled:(id)enabled specifier:(id)specifier;
- (void)setGuidedWorkoutPrefetchEnabled:(id)enabled specifier:(id)specifier;
- (void)setNFCAlwaysOn:(id)on specifier:(id)specifier;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setSelectedLPMIdentifierSwitch:(id)switch;
- (void)setSelectedUltraIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateWorkoutInstallState:(BOOL)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HPRFSessionTrackerAppSettingsController

- (HPRFSessionTrackerAppSettingsController)init
{
  v34.receiver = self;
  v34.super_class = HPRFSessionTrackerAppSettingsController;
  v2 = [(HPRFSessionTrackerAppSettingsController *)&v34 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_BCD8, @"NanoLifestyleSessionTrackerAppPreferencesChangedNotification", 0, 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, v2, sub_BCE0, @"ConnectedGymPreferencesChangedNotification", 0, 0);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v2, sub_BD5C, @"GuidedWorkoutPreferencesChangedNotification", 0, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, sub_BE2C, @"GuidedRunPreferencesChangedNotification", 0, 0);
    v7 = [[HPRFSessionTrackerAppSettingsContext alloc] initWithWheelchairUseCache:v2->_wheelchairUseCharacteristicCache];
    sessionTrackerAppSettingsContext = v2->_sessionTrackerAppSettingsContext;
    v2->_sessionTrackerAppSettingsContext = v7;

    v2->_isSubscribed = 0;
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v11 = [v9 getAllDevicesWithArchivedAltAccountDevicesMatching:v10];
    firstObject = [v11 firstObject];
    device = v2->_device;
    v2->_device = firstObject;

    v2->_isWorkoutAppInstalled = 0;
    v14 = +[ACXDeviceConnection sharedDeviceConnection];
    v15 = v2->_device;
    v33 = 0;
    [v14 getApplicationIsInstalled:&v2->_isWorkoutAppInstalled withBundleID:@"com.apple.SessionTrackerApp" onPairedDevice:v15 error:&v33];
    v16 = v33;

    _HKInitializeLogging();
    v17 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      isWorkoutAppInstalled = v2->_isWorkoutAppInstalled;
      *buf = 67109378;
      v36 = isWorkoutAppInstalled;
      v37 = 2112;
      v38 = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[HPRFSessionTrackerAppSettingsController] workout app installed : %{BOOL}d error: %@", buf, 0x12u);
    }

    v19 = FIUIHealthStoreForDevice();
    healthStore = v2->_healthStore;
    v2->_healthStore = v19;

    v21 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:v2->_healthStore];
    wheelchairUseCharacteristicCache = v2->_wheelchairUseCharacteristicCache;
    v2->_wheelchairUseCharacteristicCache = v21;

    [(_HKWheelchairUseCharacteristicCache *)v2->_wheelchairUseCharacteristicCache addObserver:v2];
    v23 = [objc_alloc(sub_BEFC()) initWithDelegate:v2];
    expressGymKitAvailabilityManager = v2->_expressGymKitAvailabilityManager;
    v2->_expressGymKitAvailabilityManager = v23;

    v2->_activityMoveMode = FIActivityMoveModeWithHealthStore();
    v25 = objc_alloc_init(SMAppDeletionManager);
    appDeletionManager = v2->_appDeletionManager;
    v2->_appDeletionManager = v25;

    [(SMAppDeletionManager *)v2->_appDeletionManager addObserver:v2];
    v27 = +[ACXDeviceConnection sharedDeviceConnection];
    [v27 addObserver:v2];

    v28 = [STASWorkoutVoiceAvailabilityProvider alloc];
    v29 = objc_alloc_init(STASFitnessIntelligenceConnection);
    v30 = [(STASWorkoutVoiceAvailabilityProvider *)v28 initWithConnection:v29];
    workoutVoiceAvailabilityProvider = v2->_workoutVoiceAvailabilityProvider;
    v2->_workoutVoiceAvailabilityProvider = v30;
  }

  return v2;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v6 viewDidLoad];
  if (self->_isWorkoutAppInstalled)
  {
    localizedPaneTitle = [(HPRFSessionTrackerAppSettingsController *)self localizedPaneTitle];
    [(HPRFSessionTrackerAppSettingsController *)self setTitle:localizedPaneTitle];
  }

  else
  {
    localizedPaneTitle = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [localizedPaneTitle localizedStringForKey:@"PANE_TITLE_UNINSTALLED" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [(HPRFSessionTrackerAppSettingsController *)self setTitle:v4];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v5 viewWillAppear:appear];
  +[HPRFSessionTrackerAppSettingsNavigationDonation donateUserVisitForSessionTrackerAppSettings];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_C1A0;
  v4[3] = &unk_35268;
  v4[4] = self;
  [(HPRFSessionTrackerAppSettingsController *)self isSubscribedWithCompletion:v4];
  [(HPRFSessionTrackerAppSettingsController *)self _refreshManagedConfigurationDataSources];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v8 viewDidAppear:appear];
  if (!self->_device)
  {
    v4 = +[_HKBehavior sharedBehavior];
    isAppleInternalInstall = [v4 isAppleInternalInstall];

    if (isAppleInternalInstall)
    {
      v6 = [UIAlertController alertControllerWithTitle:@"Unexpected state!" message:@"Didn't get an active watch preferredStyle:this is unexpected and will lead to unexpected results. Please file a radar.", 1];
      v7 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:0];
      [v6 addAction:v7];

      [(HPRFSessionTrackerAppSettingsController *)self presentViewController:v6 animated:1 completion:0];
    }
  }
}

- (void)dealloc
{
  [(SMAppDeletionManager *)self->_appDeletionManager removeObserver:self];
  v3 = +[ACXDeviceConnection sharedDeviceConnection];
  [v3 removeObserver:self];

  [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache removeObserver:self];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v5 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v3;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFSessionTrackerAppSettingsController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

- (BOOL)_deviceSupportsCyclingAutoStart
{
  device = self->_device;
  v3 = [[NSUUID alloc] initWithUUIDString:@"C5C226E6-01A7-4731-BDDA-D7F62A979D52"];
  LOBYTE(device) = [(NRDevice *)device supportsCapability:v3];

  return device;
}

- (void)setSelectedLPMIdentifierSwitch:(id)switch
{
  [switch BOOLValue];

  FIUISetIsPowerSavingModeEnabled();
}

- (id)selectedLPMIdentifierSwitch
{
  v2 = FIUIIsPowerSavingModeEnabled();

  return [NSNumber numberWithBool:v2];
}

- (void)setSelectedUltraIdentifier:(id)identifier
{
  [identifier BOOLValue];

  FIUISetWorkoutExtendedModeEnabled();
}

- (id)selectedUltraIdentifier
{
  v2 = FIUIIsWorkoutExtendedModeEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)lowPowerModeName
{
  device = self->_device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"C26AD300-9198-11EC-8BC2-0800200C9A66"];
  LODWORD(device) = [(NRDevice *)device supportsCapability:v4];

  if (device)
  {
    v5 = FIUIBundle();
    v6 = v5;
    v7 = @"WORKOUT_MODE_LOW_POWER_LABEL";
    v8 = @"Localizable";
  }

  else
  {
    v9 = self->_device;
    v10 = [[NSUUID alloc] initWithUUIDString:@"F5E0C9C7-CA38-421E-808A-0705258C1EF9"];
    v11 = [(NRDevice *)v9 supportsCapability:v10];

    v5 = FIUIBundle();
    v6 = v5;
    if (v11)
    {
      v7 = @"WORKOUT_LOW_POWER_MODE_LEARN_MORE_TITLE";
      v8 = @"Localizable-meadow";
    }

    else
    {
      v7 = @"POWER_SAVING_MODE_LABEL";
      v8 = @"Localizable";
    }
  }

  v12 = [v5 localizedStringForKey:v7 value:&stru_35B68 table:v8];

  return v12;
}

- (id)createPowerSpecifiers
{
  v3 = objc_opt_new();
  lowPowerModeName = [(HPRFSessionTrackerAppSettingsController *)self lowPowerModeName];
  v5 = [PSSpecifier preferenceSpecifierNamed:lowPowerModeName target:self set:"setSelectedLPMIdentifierSwitch:" get:"selectedLPMIdentifierSwitch" detail:0 cell:6 edit:0];
  v6 = PSValueChangedNotificationKey;
  [v5 setProperty:@"NanoLifestyleSessionTrackerAppPreferencesChangedNotification" forKey:PSValueChangedNotificationKey];
  v7 = PSIDKey;
  [v5 setProperty:@"LPM_SWITCH" forKey:PSIDKey];
  [v3 addObject:v5];
  if (FIUIIsWorkoutExtendedModeSupported())
  {
    v17 = lowPowerModeName;
    v8 = FIUIBundle();
    v9 = [v8 localizedStringForKey:@"WORKOUT_ULTRA_MODE_GROUP_TITLE" value:&stru_35B68 table:@"Localizable"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v10 setProperty:@"ULTRA_GROUP_ID" forKey:v7];
    v11 = FIUIBundle();
    v12 = [v11 localizedStringForKey:@"WORKOUT_ULTRA_MODE_TRACK_RUNNING_FOOTER" value:&stru_35B68 table:@"Localizable"];

    [v10 setProperty:v12 forKey:PSFooterTextGroupKey];
    [v3 addObject:v10];
    v13 = FIUIBundle();
    v14 = [v13 localizedStringForKey:@"WORKOUT_MODE_ULTRA_LABEL" value:&stru_35B68 table:@"Localizable"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setSelectedUltraIdentifier:" get:"selectedUltraIdentifier" detail:0 cell:6 edit:0];

    [v15 setProperty:@"NanoLifestyleSessionTrackerAppPreferencesChangedNotification" forKey:v6];
    [v15 setProperty:@"ULTRA_SWITCH" forKey:v7];
    [v3 addObject:v15];

    lowPowerModeName = v17;
  }

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_85;
  }

  v5 = [(HPRFSessionTrackerAppSettingsController *)self loadSpecifiersFromPlistName:@"SessionTrackerAppSettings" target:self];
  v6 = FIActivityMoveModeWithHealthStore();
  healthStore = self->_healthStore;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HEALTH_SHARING_REQUIRED" value:&stru_35B68 table:@"SessionTrackerAppSettings-tinker"];

  if (healthStore)
  {
    v10 = [v5 specifierForID:@"METRIC_VIEW_FOOTER_ID"];
    [v5 removeObject:v10];
  }

  else
  {
    v11 = [v5 specifierForID:@"METRIC_VIEW_ID"];
    v12 = [NSNumber numberWithBool:0];
    [v11 setProperty:v12 forKey:PSEnabledKey];

    v10 = [v5 specifierForID:@"METRIC_VIEW_FOOTER_ID"];
    [v10 setProperty:v9 forKey:PSFooterTextGroupKey];
  }

  device = self->_device;
  v14 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  v15 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  LODWORD(device) = [(NRDevice *)device supportsCapability:v15];

  v161 = v9;
  if (device)
  {
    v16 = [v5 specifierForID:@"MIRROR_WORKOUTS_GROUP_ID"];
    [v5 removeObject:v16];

    v17 = [v5 specifierForID:@"MIRROR_WORKOUTS_ENABLED_LABEL_ID"];
    [v5 removeObject:v17];

    v18 = [v5 specifierForID:@"IPHONE_MIRRORING_LABEL_ID"];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"IPHONE_MIRRORING_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings-kahana"];
    [v18 setName:v20];
  }

  else
  {
    v21 = [v5 specifierForID:@"IPHONE_MIRRORING_GROUP_ID"];
    [v5 removeObject:v21];

    v18 = [v5 specifierForID:@"IPHONE_MIRRORING_LABEL_ID"];
    [v5 removeObject:v18];
  }

  v22 = [v5 specifierForID:@"POWER_SAVING_MODE_GROUP_ID"];
  [(HPRFSessionTrackerAppSettingsController *)self _addLearnMoreLowPowerModeTextToSpecifier:v22];
  createPowerSpecifiers = [(HPRFSessionTrackerAppSettingsController *)self createPowerSpecifiers];
  v160 = v22;
  [v5 ps_insertObjectsFromArray:? afterObject:?];
  v23 = self->_device;
  v24 = [[NSUUID alloc] initWithUUIDString:@"66DE554B-3959-40C7-88B1-81E8481E3B84"];
  v25 = [(NRDevice *)v23 supportsCapability:v24];

  v26 = self->_device;
  v27 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  LODWORD(v26) = [(NRDevice *)v26 supportsCapability:v27];

  if (v26)
  {
    v28 = _os_feature_enabled_impl();
    if (!v25)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (!v28)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v28 = 0;
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_13:
  v29 = [v5 specifierForID:@"MUSIC_AUTOSTART_FOOTER_ID"];
  [v5 removeObject:v29];

  v30 = [v5 specifierForID:@"MUSIC_AUTOSTART_TITLE_ID"];
  [v5 removeObject:v30];

LABEL_14:
  v31 = self->_device;
  v32 = [[NSUUID alloc] initWithUUIDString:@"97181DA3-0809-43D6-9559-3FDBC5629F62"];
  v33 = [(NRDevice *)v31 supportsCapability:v32];
  if (v6 == 2)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  v35 = [v5 specifierForID:@"NFC_ENABLED_FOOTER_ID"];
  if (v34)
  {
    [(HPRFSessionTrackerAppSettingsController *)self _addAboutTextToSpecifier:v35];
  }

  else
  {
    [v5 removeObject:v35];

    v35 = [v5 specifierForID:@"NFC_ENABLED_LABEL_ID"];
    [v5 removeObject:v35];
  }

  v162 = [v5 specifierForID:@"AUTO_PAUSE_GROUP_ID"];
  if (v162)
  {
    if (v6 == 2)
    {
      v36 = FIUIBundle();
      v37 = v36;
      v38 = @"AUTO_PAUSE_ENABLED_FOOTER_FITNESS_JUNIOR";
      v39 = @"Localizable-tinker";
    }

    else
    {
      v36 = [NSBundle bundleForClass:objc_opt_class()];
      v37 = v36;
      if (v34)
      {
        v38 = @"AUTO_PAUSE_ENABLED_FOOTER";
      }

      else
      {
        v38 = @"AUTO_PAUSE_ENABLED_FOOTER_WITHOUT_SPARTAN";
      }

      v39 = @"SessionTrackerAppSettings";
    }

    v40 = [v36 localizedStringForKey:v38 value:&stru_35B68 table:v39];

    [v162 setProperty:v40 forKey:PSFooterTextGroupKey];
  }

  isWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache isWheelchairUser];
  if (!FIDeviceMeetsMinimumOSVersionGlory() || (isWheelchairUser & 1) != 0 || v6 == 2)
  {
    v42 = [v5 specifierForID:@"REMINDERS_GROUP"];
    [v5 removeObject:v42];

    v43 = [v5 specifierForID:@"AUTO_START_WORKOUT_NOTIFICATIONS_ENABLED_LABEL"];
    [v5 removeObject:v43];

    v44 = [v5 specifierForID:@"RESUME_REMINDERS_ENABLED_LABEL"];
    [v5 removeObject:v44];

    v45 = [v5 specifierForID:@"END_REMINDERS_ENABLED_LABEL"];
    [v5 removeObject:v45];
  }

  v46 = +[NMSMediaPinningManager sharedManager];
  workoutPlaylistID = [v46 workoutPlaylistID];

  if (!workoutPlaylistID)
  {
    selectedAlbumTitle = self->_selectedAlbumTitle;
    self->_selectedAlbumTitle = 0;
  }

  if (v28 & 1 | !+[HPRFSessionTrackerMusicViewController didSelectWorkoutMusicPlaylist])
  {
    v49 = [v5 specifierForID:@"WORKOUT_MUSIC_SHUFFLE_GROUP_ID"];
    [v5 removeObject:v49];

    v50 = [v5 specifierForID:@"WORKOUT_MUSIC_PLAY_FROM_BEGINNING_SETTING_ID"];
    [v5 removeObject:v50];

    v51 = [v5 specifierForID:@"WORKOUT_MUSIC_SHUFFLE_SETTING_ID"];
    [v5 removeObject:v51];
  }

  else
  {
    [(HPRFSessionTrackerAppSettingsController *)self _updateShuffleSelectionInSpecifiers:v5];
    v51 = objc_alloc_init(MPModelLibraryRequest);
    v52 = [MPModelSong kindWithVariants:1];
    v170 = v52;
    v53 = [NSArray arrayWithObjects:&v170 count:1];
    v54 = [MPModelPlaylistEntry kindWithKinds:v53];

    v55 = [MPModelPlaylist kindWithVariants:19 playlistEntryKind:v54 options:0];
    [v51 setItemKind:v55];

    v169 = MPModelPropertyPlaylistName;
    v56 = [NSArray arrayWithObjects:&v169 count:1];
    v57 = [MPPropertySet propertySetWithProperties:v56];
    [v51 setItemProperties:v57];

    v58 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyPlaylistLibraryAddedDate ascending:0];
    v168 = v58;
    v59 = [NSArray arrayWithObjects:&v168 count:1];
    [v51 setItemSortDescriptors:v59];

    v14 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
    v163[0] = _NSConcreteStackBlock;
    v163[1] = 3221225472;
    v163[2] = sub_E144;
    v163[3] = &unk_352E0;
    v164 = v5;
    selfCopy = self;
    [v51 performWithResponseHandler:v163];
  }

  isSubscribed = self->_isSubscribed;
  _HKInitializeLogging();
  v61 = HKLogWorkouts;
  v62 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
  if (isSubscribed)
  {
    v158 = v3;
    if (v62)
    {
      v63 = self->_isSubscribed;
      *buf = 67109120;
      v167 = v63;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "[HPRFSessionTrackerAppSettingsController] seymour settings should have been added: %d", buf, 8u);
    }

    v64 = [v5 specifierForID:@"GUIDED_WORKOUT_PREFETCH_FOOTER_ID"];
    v65 = [NSBundle bundleForClass:objc_opt_class()];
    v157 = [v65 localizedStringForKey:@"GUIDED_WORKOUT_PREFETCH_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings-seymour"];

    v154 = v64;
    v66 = PSFooterTextGroupKey;
    [v64 setProperty:v157 forKey:?];
    v67 = [NSBundle bundleForClass:objc_opt_class()];
    v156 = [v67 localizedStringForKey:@"GUIDED_WORKOUT_PREFETCH_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings-seymour"];

    [v64 setName:v156];
    v68 = [v5 specifierForID:@"GUIDED_WORKOUT_PREFETCH_LABEL_ID"];
    v69 = [NSBundle bundleForClass:objc_opt_class()];
    v155 = [v69 localizedStringForKey:@"GUIDED_WORKOUT_PREFETCH_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings-seymour"];

    v153 = v68;
    [v68 setName:v155];
    v70 = PSAllowMultilineTitleKey;
    [v68 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v152 = [v5 specifierForID:@"GUIDED_WORKOUT_MEDIA_MOMENTS_FOOTER"];
    v71 = [NSBundle bundleForClass:objc_opt_class()];
    v151 = [v71 localizedStringForKey:@"GUIDED_WORKOUT_MEDIA_MOMENTS_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings-seymour"];

    [v152 setProperty:v151 forKey:v66];
    v72 = [v5 specifierForID:@"GUIDED_WORKOUT_MEDIA_MOMENTS_LABEL"];
    v73 = [NSBundle bundleForClass:objc_opt_class()];
    v149 = [v73 localizedStringForKey:@"GUIDED_WORKOUT_MEDIA_MOMENTS_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings-seymour"];

    v150 = v72;
    [v72 setName:v149];
    v74 = v70;
    v146 = v70;
    [v72 setProperty:&__kCFBooleanTrue forKey:v70];
    v75 = [v5 specifierForID:@"GUIDED_RUN_PREFETCH_FOOTER_ID"];
    v76 = [NSBundle bundleForClass:objc_opt_class()];
    v148 = [v76 localizedStringForKey:@"GUIDED_RUN_PREFETCH_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings-breeze"];

    [v75 setProperty:v148 forKey:v66];
    v77 = [NSBundle bundleForClass:objc_opt_class()];
    v147 = [v77 localizedStringForKey:@"GUIDED_RUN_PREFETCH_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings-breeze"];

    [v75 setName:v147];
    v78 = [v5 specifierForID:@"GUIDED_RUN_PREFETCH_LABEL_ID"];
    v79 = [NSBundle bundleForClass:objc_opt_class()];
    v80 = [v79 localizedStringForKey:@"GUIDED_RUN_PREFETCH_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings-breeze"];

    [v78 setName:v80];
    [v78 setProperty:&__kCFBooleanTrue forKey:v74];
    v81 = [v5 specifierForID:@"GUIDED_RUN_MEDIA_MOMENTS_FOOTER"];
    v82 = [NSBundle bundleForClass:objc_opt_class()];
    v83 = [v82 localizedStringForKey:@"GUIDED_RUN_MEDIA_MOMENTS_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings-breeze"];

    [v81 setProperty:v83 forKey:v66];
    v84 = [v5 specifierForID:@"GUIDED_RUN_MEDIA_MOMENTS_LABEL"];
    v85 = [NSBundle bundleForClass:objc_opt_class()];
    v86 = [v85 localizedStringForKey:@"GUIDED_RUN_MEDIA_MOMENTS_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings-breeze"];

    [v84 setName:v86];
    [v84 setProperty:&__kCFBooleanTrue forKey:v146];

    v87 = v154;
    v3 = v158;
    v14 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  }

  else
  {
    if (v62)
    {
      v88 = self->_isSubscribed;
      *buf = 67109120;
      v167 = v88;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "[HPRFSessionTrackerAppSettingsController] seymour settings should have been removed: %d", buf, 8u);
    }

    v89 = [v5 specifierForID:@"GUIDED_WORKOUT_PREFETCH_FOOTER_ID"];
    [v5 removeObject:v89];

    v90 = [v5 specifierForID:@"GUIDED_WORKOUT_PREFETCH_LABEL_ID"];
    [v5 removeObject:v90];

    v91 = [v5 specifierForID:@"GUIDED_WORKOUT_MEDIA_MOMENTS_FOOTER"];
    [v5 removeObject:v91];

    v92 = [v5 specifierForID:@"GUIDED_WORKOUT_MEDIA_MOMENTS_LABEL"];
    [v5 removeObject:v92];

    v93 = [v5 specifierForID:@"GUIDED_RUN_PREFETCH_FOOTER_ID"];
    [v5 removeObject:v93];

    v94 = [v5 specifierForID:@"GUIDED_RUN_PREFETCH_LABEL_ID"];
    [v5 removeObject:v94];

    v95 = [v5 specifierForID:@"GUIDED_RUN_MEDIA_MOMENTS_FOOTER"];
    [v5 removeObject:v95];

    v87 = [v5 specifierForID:@"GUIDED_RUN_MEDIA_MOMENTS_LABEL"];
    [v5 removeObject:v87];
  }

  if (![(STASWorkoutVoiceAvailabilityProvider *)self->_workoutVoiceAvailabilityProvider isFeatureSupported])
  {
    v96 = [v5 specifierForID:@"WORKOUT_VOICE_FEEDBACK_FOOTER"];
    v97 = [NSBundle bundleForClass:objc_opt_class()];
    v98 = [v97 localizedStringForKey:@"WORKOUT_VOICE_FEEDBACK_FOOTER_NO_WORKOUT_BUDDY" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v96 setProperty:v98 forKey:PSFooterTextGroupKey];
  }

  v99 = self->_device;
  v100 = [objc_alloc(v14[400]) initWithUUIDString:@"0D852855-E6CF-45FA-B786-B26BE87FF939"];
  v101 = [(NRDevice *)v99 supportsCapability:v100];

  if (self->_activityMoveMode == 2 || (v101 & 1) == 0)
  {
    v102 = [v5 specifierForID:@"CYCLING_POWER_ZONES_GROUP"];
    [v5 removeObject:v102];

    v103 = [v5 specifierForID:@"CYCLING_POWER_ZONES_BUTTON"];
    [v5 removeObject:v103];
  }

  if ((v101 & 1) == 0)
  {
    v104 = [v5 specifierForID:@"IPHONE_MIRRORING_GROUP_ID"];
    [v5 removeObject:v104];

    v105 = [v5 specifierForID:@"IPHONE_MIRRORING_LABEL_ID"];
    [v5 removeObject:v105];

    v106 = [v5 specifierForID:@"ALERT_ON_WATCH_WHEN_MIRRORED_LABEL_ID"];
    [v5 removeObject:v106];

    v107 = [v5 specifierForID:@"ALERT_ON_WATCH_WHEN_MIRRORED_GROUP_ID"];
    [v5 removeObject:v107];
  }

  if ((FIIsTinkerVegaOrFitnessJunior() & 1) != 0 || (v108 = self->_device, v109 = [objc_alloc(v14[400]) initWithUUIDString:@"210C1233-537B-4A1E-8EE0-253962851B43"], LOBYTE(v108) = -[NRDevice supportsCapability:](v108, "supportsCapability:", v109), v109, (v108 & 1) == 0))
  {
    v110 = [v5 specifierForID:@"TRAINING_LOAD_ENABLED_LABEL_ID"];
    [v5 removeObject:v110];

    v111 = [v5 specifierForID:@"TRAINING_LOAD_GROUP_ID"];
    [v5 removeObject:v111];
  }

  if ((v101 & 1) == 0)
  {
    v112 = [v5 specifierForID:@"WorkoutConfirmEndGroup"];
    [v5 removeObject:v112];

    v113 = [v5 specifierForID:@"WorkoutConfirmEndSwitch"];
    [v5 removeObject:v113];
  }

  if (_os_feature_enabled_impl())
  {
    v114 = +[IMSafetyMonitorCoordinator sharedCoordinator];
    if ([v114 shouldDisallowBasedOnRegulatoryDomain])
    {
    }

    else
    {
      isMessagesAppInstalled = [(SMAppDeletionManager *)self->_appDeletionManager isMessagesAppInstalled];

      if (isMessagesAppInstalled)
      {
        goto LABEL_61;
      }
    }
  }

  v116 = [v5 specifierForID:@"WorkoutSafetyCheckInGroup"];
  [v5 removeObject:v116];

  v117 = [v5 specifierForID:@"WorkoutSafetyCheckInSwitch"];
  [v5 removeObject:v117];

LABEL_61:
  v118 = self->_device;
  v119 = [objc_alloc(v14[400]) initWithUUIDString:@"A97647CC-89CB-4C3C-A144-18371D6DD41F"];
  if (![(NRDevice *)v118 supportsCapability:v119])
  {
LABEL_66:

    goto LABEL_67;
  }

  v120 = self->_device;
  v121 = [objc_alloc(v14[400]) initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];
  if (([(NRDevice *)v120 supportsCapability:v121]& 1) == 0)
  {

    goto LABEL_66;
  }

  active = FIIsActivePairedDeviceSatellitePaired();

  if ((active & 1) == 0)
  {
    v123 = [v5 specifierForID:@"WorkoutDoubleTapToScrollGroup"];
    [(HPRFSessionTrackerAppSettingsController *)self _addGestureLinkToSpecifier:v123];
    goto LABEL_68;
  }

LABEL_67:
  v124 = [v5 specifierForID:@"WorkoutDoubleTapToScrollGroup"];
  [v5 removeObject:v124];

  v123 = [v5 specifierForID:@"WorkoutDoubleTapToScrollSwitch"];
  [v5 removeObject:v123];
LABEL_68:

  v125 = [v5 specifierForID:@"PrecisionStartGroup"];
  v126 = [v5 specifierForID:@"PrecisionStartSwitch"];
  v127 = v126;
  if (v125 && v126)
  {
    v128 = FIUIBundle();
    v129 = [v128 localizedStringForKey:@"PRECISION_START_DESCRIPTION" value:&stru_35B68 table:@"Localizable"];
    [v125 setProperty:v129 forKey:PSFooterTextGroupKey];

    v130 = FIUIBundle();
    v131 = [v130 localizedStringForKey:@"PRECISION_START" value:&stru_35B68 table:@"Localizable"];
    [v127 setName:v131];
  }

  if ([(WOWorkoutConfigurationDataSourcesBridgedModel *)self->_configurationDataSourcesModel hasDataSources])
  {
    _createConfigurationDataSourceSpecifiers = [(HPRFSessionTrackerAppSettingsController *)self _createConfigurationDataSourceSpecifiers];
    [v5 addObjectsFromArray:_createConfigurationDataSourceSpecifiers];
  }

  if (self->_isWorkoutAppInstalled)
  {
    localizedPaneTitle = [(HPRFSessionTrackerAppSettingsController *)self localizedPaneTitle];
    [(HPRFSessionTrackerAppSettingsController *)self setTitle:localizedPaneTitle];
  }

  else
  {
    localizedPaneTitle = [NSBundle bundleForClass:objc_opt_class()];
    v134 = [localizedPaneTitle localizedStringForKey:@"PANE_TITLE_UNINSTALLED" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [(HPRFSessionTrackerAppSettingsController *)self setTitle:v134];
  }

  if (!self->_isWorkoutAppInstalled)
  {
    v135 = [v5 count];
    if (v135)
    {
      v136 = v135 - 1;
      do
      {
        v137 = [v5 objectAtIndex:v136];
        identifier = [v137 identifier];
        v139 = [&off_38760 containsObject:identifier];

        if ((v139 & 1) == 0)
        {
          [v5 removeObjectAtIndex:v136];
        }

        --v136;
      }

      while (v136 != -1);
    }
  }

  v140 = self->_device;
  v141 = [[NSUUID alloc] initWithUUIDString:@"622B6312-95FA-4F09-9148-69E286A9C31F"];
  LOBYTE(v140) = [(NRDevice *)v140 supportsCapability:v141];

  if ((v140 & 1) == 0)
  {
    v142 = [v5 specifierForID:@"BacktrackGroup"];
    [v5 removeObject:v142];

    v143 = [v5 specifierForID:@"BacktrackSwitch"];
    [v5 removeObject:v143];
  }

  v144 = *&self->BPSNotificationAppController_opaque[v3];
  *&self->BPSNotificationAppController_opaque[v3] = v5;

  v4 = *&self->BPSNotificationAppController_opaque[v3];
LABEL_85:

  return v4;
}

- (void)_refreshManagedConfigurationDataSources
{
  device = self->_device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"E8688E98-D216-469E-9B5C-4D33527B0C6F"];
  LODWORD(device) = [(NRDevice *)device supportsCapability:v4];

  if (device)
  {
    if (!self->_configurationDataSourcesModel)
    {
      v5 = objc_alloc_init(WOWorkoutConfigurationDataSourcesBridgedModel);
      configurationDataSourcesModel = self->_configurationDataSourcesModel;
      self->_configurationDataSourcesModel = v5;
    }

    objc_initWeak(&location, self);
    v7 = self->_configurationDataSourcesModel;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E584;
    v8[3] = &unk_35308;
    objc_copyWeak(&v9, &location);
    [(WOWorkoutConfigurationDataSourcesBridgedModel *)v7 reload:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (id)_createConfigurationDataSourceSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"WORKOUT_CONFIGURATION_DATA_SOURCES_GROUP_ID"];
  v4 = +[HPRFWorkoutConfigurationDataSourcesViewController title];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:@"WORKOUT_CONFIGURATION_DATA_SOURCES_ROW_ID"];
  [v5 setUserInfo:self->_configurationDataSourcesModel];
  v8[0] = v3;
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)_showConfigurationDataSourceProviderSpecifiers:(BOOL)specifiers
{
  if (specifiers)
  {
    specifiers = [(HPRFSessionTrackerAppSettingsController *)self specifiers];
    v5 = [specifiers specifierForID:@"WORKOUT_CONFIGURATION_DATA_SOURCES_GROUP_ID"];

    if (!v5)
    {
      _createConfigurationDataSourceSpecifiers = [(HPRFSessionTrackerAppSettingsController *)self _createConfigurationDataSourceSpecifiers];
      specifiers2 = [(HPRFSessionTrackerAppSettingsController *)self specifiers];
      -[HPRFSessionTrackerAppSettingsController insertContiguousSpecifiers:atIndex:animated:](self, "insertContiguousSpecifiers:atIndex:animated:", _createConfigurationDataSourceSpecifiers, [specifiers2 count], 1);

      [(HPRFSessionTrackerAppSettingsController *)self reloadSpecifiers];
    }
  }

  else
  {
    v12 = objc_opt_new();
    specifiers3 = [(HPRFSessionTrackerAppSettingsController *)self specifiers];
    v7 = [specifiers3 specifierForID:@"WORKOUT_CONFIGURATION_DATA_SOURCES_GROUP_ID"];

    if (v7)
    {
      [v12 addObject:v7];
    }

    specifiers4 = [(HPRFSessionTrackerAppSettingsController *)self specifiers];
    v9 = [specifiers4 specifierForID:@"WORKOUT_CONFIGURATION_DATA_SOURCES_ROW_ID"];

    if (v9)
    {
      [v12 addObject:v9];
    }

    if ([v12 count])
    {
      [(HPRFSessionTrackerAppSettingsController *)self removeContiguousSpecifiers:v12];
      [(HPRFSessionTrackerAppSettingsController *)self reloadSpecifiers];
    }
  }
}

- (void)_updateShuffleSelectionInSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v8 = [specifiersCopy specifierForID:@"WORKOUT_MUSIC_SHUFFLE_GROUP_ID"];
  v5 = [specifiersCopy specifierForID:@"WORKOUT_MUSIC_SHUFFLE_SETTING_ID"];
  v6 = [specifiersCopy specifierForID:@"WORKOUT_MUSIC_PLAY_FROM_BEGINNING_SETTING_ID"];

  if (FIUIMusicIsPlaybackModeShuffle())
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  [v8 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
  [(HPRFSessionTrackerAppSettingsController *)self reloadSpecifier:v8];
}

- (void)reloadSpecifiers
{
  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  v4.receiver = self;
  v4.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v4 reloadSpecifiers];
}

- (void)_addLearnMoreLowPowerModeTextToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  device = self->_device;
  v5 = [[NSUUID alloc] initWithUUIDString:@"F5E0C9C7-CA38-421E-808A-0705258C1EF9"];
  if ([(NRDevice *)device supportsCapability:v5])
  {

LABEL_4:
    v8 = FIUIBundle();
    v9 = [v8 localizedStringForKey:@"WORKOUT_LOW_POWER_MODE_FOOTER_NO_LINK" value:&stru_35B68 table:@"Localizable-meadow"];

    [specifierCopy setProperty:v9 forKey:PSFooterTextGroupKey];
    goto LABEL_6;
  }

  v6 = self->_device;
  v7 = [[NSUUID alloc] initWithUUIDString:@"C26AD300-9198-11EC-8BC2-0800200C9A66"];
  LODWORD(v6) = [(NRDevice *)v6 supportsCapability:v7];

  if (v6)
  {
    goto LABEL_4;
  }

  [(HPRFSessionTrackerAppSettingsController *)self _addPreKincaidFooterTextToSpecifier:specifierCopy];
LABEL_6:
}

- (void)_addPreKincaidFooterTextToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = FIActivityMoveModeWithHealthStore();
  device = self->_device;
  v6 = [[NSUUID alloc] initWithUUIDString:@"6AABB66B-8E1B-4CAB-8FC4-AC577BA0AFB0"];
  v7 = [(NRDevice *)device supportsCapability:v6];

  v8 = FIUIBundle();
  v9 = [v8 localizedStringForKey:@"POWER_SAVING_MODE_FOOTER" value:&stru_35B68 table:@"Localizable"];

  isWheelchairUser = [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCharacteristicCache isWheelchairUser];
  if (v7)
  {
    v11 = FIUIBundle();
    v12 = [v11 localizedStringForKey:@"POWER_SAVING_MODE_FOOTER_TRITIUM" value:&stru_35B68 table:@"Localizable-tritium"];

    v9 = v12;
  }

  if (isWheelchairUser)
  {
    v13 = FIUIBundle();
    v14 = [v13 localizedStringForKey:@"POWER_SAVING_MODE_FOOTER_WHEELCHAIR" value:&stru_35B68 table:@"Localizable"];

    if (v7)
    {
      v15 = @"POWER_SAVING_MODE_FOOTER_WHEELCHAIR_TRITIUM";
LABEL_9:
      v17 = FIUIBundle();
      v9 = [v17 localizedStringForKey:v15 value:&stru_35B68 table:@"Localizable-tritium"];

      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v16 = FIUIBundle();
    v14 = [v16 localizedStringForKey:@"POWER_SAVING_MODE_FOOTER_FITNESS_JUNIOR" value:&stru_35B68 table:@"Localizable-tinker"];

    if (v7)
    {
      v15 = @"POWER_SAVING_MODE_FOOTER_FITNESS_WORKOUT_TRITIUM";
      goto LABEL_9;
    }
  }

  v9 = v14;
LABEL_11:
  v18 = self->_device;
  v19 = [[NSUUID alloc] initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
  LODWORD(v18) = [(NRDevice *)v18 supportsCapability:v19];

  if (!v18)
  {
    goto LABEL_22;
  }

  if (isWheelchairUser)
  {
    v20 = FIUIBundle();
    v21 = [v20 localizedStringForKey:@"POWER_SAVING_MODE_FOOTER_WHEELCHAIR_TELEPHONY" value:&stru_35B68 table:@"Localizable-Sashimi"];

    if (v7)
    {
      v22 = @"POWER_SAVING_MODE_FOOTER_WHEELCHAIR_TELEPHONY_TRITIUM";
LABEL_20:
      v25 = FIUIBundle();
      v9 = [v25 localizedStringForKey:v22 value:&stru_35B68 table:@"Localizable-tritium"];

      goto LABEL_22;
    }
  }

  else
  {
    v23 = FIUIBundle();
    v24 = v23;
    if (v4 == 2)
    {
      v21 = [v23 localizedStringForKey:@"POWER_SAVING_MODE_FOOTER_FITNESS_JUNIOR_TELEPHONY" value:&stru_35B68 table:@"Localizable-tinker"];

      if (v7)
      {
        v22 = @"POWER_SAVING_MODE_FOOTER_FITNESS_WORKOUT_TELEPHONY_TRITIUM";
        goto LABEL_20;
      }
    }

    else
    {
      v21 = [v23 localizedStringForKey:@"POWER_SAVING_MODE_FOOTER_TELEPHONY" value:&stru_35B68 table:@"Localizable-Sashimi"];

      if (v7)
      {
        v22 = @"POWER_SAVING_MODE_FOOTER_TELEPHONY_TRITIUM";
        goto LABEL_20;
      }
    }
  }

  v9 = v21;
LABEL_22:
  [specifierCopy setProperty:v9 forKey:PSFooterTextGroupKey];
}

- (void)_showLearnMoreAboutLowPowerMode
{
  v3 = FIUIBundle();
  v4 = [v3 localizedStringForKey:@"WORKOUT_LOW_POWER_MODE_LEARN_MORE_TITLE" value:&stru_35B68 table:@"Localizable-meadow"];

  v5 = FIUIBundle();
  v6 = [v5 localizedStringForKey:@"WORKOUT_LOW_POWER_MODE_LEARN_MORE_MESSAGE" value:&stru_35B68 table:@"Localizable-meadow"];

  v7 = FIUIBundle();
  v8 = [v7 localizedStringForKey:@"WORKOUT_LOW_POWER_MODE_LEARN_MORE_BULLETS" value:&stru_35B68 table:@"Localizable-meadow"];

  v9 = [NSMutableAttributedString alloc];
  v10 = [v6 stringByAppendingString:@"\n\n"];
  v11 = [v9 initWithString:v10];

  v12 = +[NSParagraphStyle defaultParagraphStyle];
  v13 = [v12 mutableCopy];

  [v13 setAlignment:0];
  v14 = [NSAttributedString alloc];
  v20[0] = NSParagraphStyleAttributeName;
  v20[1] = NSForegroundColorAttributeName;
  v21[0] = v13;
  v15 = +[UIColor lightGrayColor];
  v21[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v17 = [v14 initWithString:v8 attributes:v16];

  [v11 appendAttributedString:v17];
  v18 = [[HPRFSessionTrackerAboutViewController alloc] initWithTitle:v4 message:v11];
  v19 = [[UINavigationController alloc] initWithRootViewController:v18];
  [v19 setModalPresentationStyle:2];
  [(HPRFSessionTrackerAppSettingsController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)_addLearnMoreExtendedLowPowerModeTextToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = FIUIBundle();
  v5 = [v4 localizedStringForKey:@"WORKOUT_ULTRA_MODE_FOOTER" value:&stru_35B68 table:@"Localizable"];

  [specifierCopy setProperty:v5 forKey:PSFooterTextGroupKey];
}

- (void)_addAboutTextToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v5 localizedStringForKey:@"ABOUT_GYMKIT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v6 getActivePairedDevice];

  v8 = [getActivePairedDevice valueForProperty:NRDevicePropertyGreenTeaDevice];
  bOOLValue = [v8 BOOLValue];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = v10;
  if (bOOLValue)
  {
    v12 = @"NFC_ENABLED_WITH_NFC_SWITCH_FOOTER";
  }

  else
  {
    v12 = @"NFC_ENABLED_FOOTER";
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  v14 = [NSString stringWithFormat:@"%@ %@", v13, v19];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [specifierCopy setProperty:v16 forKey:PSFooterCellClassGroupKey];

  [specifierCopy setProperty:v14 forKey:PSFooterHyperlinkViewTitleKey];
  v21.location = [v14 rangeOfString:v19];
  v17 = NSStringFromRange(v21);
  [specifierCopy setProperty:v17 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v18 = [NSValue valueWithNonretainedObject:self];
  [specifierCopy setProperty:v18 forKey:PSFooterHyperlinkViewTargetKey];

  [specifierCopy setProperty:@"_openPrivacyLink" forKey:PSFooterHyperlinkViewActionKey];
}

- (void)_openPrivacyLink
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v3 localizedStringForKey:@"ABOUT_GYMKIT_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  v4 = FIUIBundle();
  v5 = [v4 localizedStringForKey:@"GYMKIT_CONSENT_DESCRIPTION" value:&stru_35B68 table:@"Localizable"];

  v6 = [[NSAttributedString alloc] initWithString:v5];
  v7 = [[HPRFSessionTrackerAboutViewController alloc] initWithTitle:v9 message:v6];
  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  [v8 setModalPresentationStyle:2];
  [(HPRFSessionTrackerAppSettingsController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_addGestureLinkToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DOUBLE_TAP_TO_SCROLL_WORKOUT_VIEWS_ENABLED_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"DOUBLE_TAP_TO_SCROLL_WORKOUT_VIEWS_ENABLED_GESTURE_LINK" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  v9.location = [v6 localizedStandardRangeOfString:v8];
  if (v9.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    _HKInitializeLogging();
    v10 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2210C(v10);
    }
  }

  else
  {
    v11 = NSStringFromRange(v9);
    [specifierCopy setProperty:v11 forKey:PSFooterHyperlinkViewLinkRangeKey];
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [specifierCopy setProperty:v13 forKey:PSFooterCellClassGroupKey];

  [specifierCopy setProperty:v6 forKey:PSFooterHyperlinkViewTitleKey];
  v14 = [NSValue valueWithNonretainedObject:self];
  [specifierCopy setProperty:v14 forKey:PSFooterHyperlinkViewTargetKey];

  v15 = NSStringFromSelector("_openEltonSetting");
  [specifierCopy setProperty:v15 forKey:PSFooterHyperlinkViewActionKey];
}

- (void)_openEltonSetting
{
  v3 = [[NSURL alloc] initWithString:@"bridge:root=ELTON_SETTINGS_ID"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (id)selectedMusicViewString:(id)string
{
  selectedAlbumTitle = self->_selectedAlbumTitle;
  if (selectedAlbumTitle)
  {
    v4 = selectedAlbumTitle;
  }

  else
  {
    v4 = +[HPRFSessionTrackerMusicViewController selectedMusicViewString];
  }

  return v4;
}

- (void)isSubscribedWithCompletion:(id)completion
{
  completionCopy = completion;
  sessionTrackerAppSettingsContext = self->_sessionTrackerAppSettingsContext;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F880;
  v7[3] = &unk_35330;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HPRFSessionTrackerAppSettingsContext *)sessionTrackerAppSettingsContext fetchSubscriptionStatusWithCompletion:v7];
}

- (id)getGuidedWorkoutPrefetchEnabled:(id)enabled
{
  v3 = FIUIIsGuidedWorkoutPrefetchEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setGuidedWorkoutPrefetchEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  _FIUISetGuidedWorkoutPrefetchEnabled(bOOLValue);
}

- (id)isGuidedWorkoutMediaMomentsEnabled:(id)enabled
{
  v3 = FIUIIsGuidedWorkoutMediaMomentsEnabled();

  return [NSNumber numberWithBool:v3];
}

- (id)getGuidedRunPrefetchEnabled:(id)enabled
{
  v3 = FIUIIsGuidedRunPrefetchEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setGuidedRunPrefetchEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  _FIUISetGuidedRunPrefetchEnabled(bOOLValue);
}

- (id)isGuidedRunMediaMomentsEnabled:(id)enabled
{
  v3 = FIUIIsGuidedRunMediaMomentsEnabled();

  return [NSNumber numberWithBool:v3];
}

- (id)NFCAlwaysOn:(id)on
{
  v3 = FIUIIsWorkoutNFCAllDayEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setNFCAlwaysOn:(id)on specifier:(id)specifier
{
  onCopy = on;
  if ([onCopy BOOLValue])
  {
    v6 = objc_alloc_init(sub_BEFC());
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_FC0C;
    v7[3] = &unk_35358;
    v8 = onCopy;
    selfCopy = self;
    [v6 allowEnableExpressGymKitWithVisibleViewController:self completion:v7];
  }

  else
  {
    [onCopy BOOLValue];
    FIUISetWorkoutNFCAllDayEnabled();
  }
}

- (id)isStartRemindersEnabled:(id)enabled
{
  FIIsActivePairedDeviceSatellitePaired();
  FIActivityMoveModeWithHealthStore();
  started = FIIsStartRemindersEnabled();

  return [NSNumber numberWithBool:started];
}

- (id)isResumeRemindersEnabled:(id)enabled
{
  FIIsActivePairedDeviceSatellitePaired();
  FIActivityMoveModeWithHealthStore();
  v3 = FIIsResumeRemindersEnabled();

  return [NSNumber numberWithBool:v3];
}

- (id)isEndRemindersEnabled:(id)enabled
{
  FIActivityMoveModeWithHealthStore();
  v3 = FIIsEndRemindersEnabled();

  return [NSNumber numberWithBool:v3];
}

- (id)isConfirmEndWorkoutEnabled
{
  v2 = FIUIShouldConfirmEndingWorkout();

  return [NSNumber numberWithBool:v2];
}

- (id)isAutoPauseEnabled
{
  v2 = FIUIIsAutoPauseEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)isRunningAutoPauseEnabled
{
  v2 = FIUIIsRunningAutoPauseEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)isCyclingAutoPauseEnabled
{
  v2 = FIUIIsCyclingAutoPauseEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)autoPauseItemValue
{
  isAutoPauseEnabled = [(HPRFSessionTrackerAppSettingsController *)self isAutoPauseEnabled];
  bOOLValue = [isAutoPauseEnabled BOOLValue];

  if (bOOLValue)
  {
    v5 = objc_alloc_init(NSMutableArray);
    isRunningAutoPauseEnabled = [(HPRFSessionTrackerAppSettingsController *)self isRunningAutoPauseEnabled];
    bOOLValue2 = [isRunningAutoPauseEnabled BOOLValue];

    if (bOOLValue2)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"AUTOPAUSE_RUNNING" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v5 addObject:v9];
    }

    isCyclingAutoPauseEnabled = [(HPRFSessionTrackerAppSettingsController *)self isCyclingAutoPauseEnabled];
    bOOLValue3 = [isCyclingAutoPauseEnabled BOOLValue];

    if (bOOLValue3)
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"AUTOPAUSE_CYCLING" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v5 addObject:v13];
    }

    v14 = [NSListFormatter localizedStringByJoiningStrings:v5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:PSKeyNameKey];
  if (v8)
  {
    if (qword_412F0 != -1)
    {
      sub_22150();
    }

    v9 = [qword_412F8 containsObject:v8];
    if (valueCopy)
    {
      if (v9)
      {
        v10 = [specifierCopy propertyForKey:PSValueKey];
        v11 = [valueCopy isEqual:v10];

        if ((v11 & 1) == 0)
        {
          v12 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [valueCopy integerValue]);
          FIActivityAnalyticsSubmission();
        }
      }
    }
  }

  v13.receiver = self;
  v13.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v13 setPreferenceValue:valueCopy specifier:specifierCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(HPRFSessionTrackerAppSettingsController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  identifier = [v9 identifier];
  if (([identifier isEqualToString:@"WORKOUT_MUSIC_SHUFFLE_SETTING_ID"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"WORKOUT_MUSIC_PLAY_FROM_BEGINNING_SETTING_ID"))
  {
    [identifier isEqualToString:@"WORKOUT_MUSIC_SHUFFLE_SETTING_ID"];
    FIUISetMusicPlaybackModeShuffle();
  }

  else if ([identifier isEqualToString:@"EnablePowerSavingMode"])
  {
    FIUISetIsPowerSavingModeEnabled();
  }

  else if ([identifier isEqualToString:@"WorkoutExtendedModeEnabled"])
  {
    FIUISetWorkoutExtendedModeEnabled();
  }

  else if ([identifier isEqualToString:@"kWOLPMNoneKey"])
  {
    FIUIClearWorkoutPowerMode();
  }

  v12.receiver = self;
  v12.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v12 reloadSpecifiers];
  v11.receiver = self;
  v11.super_class = HPRFSessionTrackerAppSettingsController;
  [(HPRFSessionTrackerAppSettingsController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)onMessagesAppInstalled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10400;
  block[3] = &unk_35180;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)onMessagesAppUninstalled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1047C;
  block[3] = &unk_35180;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)isVoiceFeedbackEnabled:(id)enabled
{
  v3 = FIUIIsWorkoutVoiceFeedbackEnabled();

  return [NSNumber numberWithBool:v3];
}

- (id)isPrecisionStartEnabled
{
  started = FIUIIsPrecisionStartEnabled();

  return [NSNumber numberWithBool:started];
}

- (id)isWorkoutSafetyCheckInEnabled
{
  v2 = FIUIIsWorkoutSafetyCheckInEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)isMirrorModeEnabled
{
  v2 = FIMirrorModeEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)shouldAlertOnWatchWhenMirrored
{
  v2 = FIAlertOnWatchWhenMirrored();

  return [NSNumber numberWithBool:v2];
}

- (id)shouldTrackTrainingLoad
{
  v2 = FIShouldTrackTrainingLoad();

  return [NSNumber numberWithBool:v2];
}

- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  installedCopy = installed;
  dCopy = d;
  pairingID = [(NRDevice *)self->_device pairingID];
  v9 = [pairingID isEqual:dCopy];

  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = installedCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          bundleIdentifier = [*(*(&v17 + 1) + 8 * v14) bundleIdentifier];
          v16 = [bundleIdentifier isEqualToString:@"com.apple.SessionTrackerApp"];

          if (v16)
          {
            [(HPRFSessionTrackerAppSettingsController *)self updateWorkoutInstallState:1];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  uninstalledCopy = uninstalled;
  dCopy = d;
  pairingID = [(NRDevice *)self->_device pairingID];
  v9 = [pairingID isEqual:dCopy];

  if (v9)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = uninstalledCopy;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v15 + 1) + 8 * v14) isEqualToString:{@"com.apple.SessionTrackerApp", v15}])
          {
            [(HPRFSessionTrackerAppSettingsController *)self updateWorkoutInstallState:0];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)updateWorkoutInstallState:(BOOL)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10960;
  v3[3] = &unk_35380;
  v3[4] = self;
  stateCopy = state;
  dispatch_async(&_dispatch_main_q, v3);
}

@end