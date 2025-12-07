@interface TopLevelSettingsController
+ (id)_deeplinkForSpecifierName:(id)name;
+ (id)preferencesExtendedLocalizedName:(id)name defaultValue:(id)value;
- (BOOL)_isDebugMode;
- (BOOL)_okayToShowCellularPlaybackAndDownloadSettings;
- (NSArray)preferredSubtitleLanguageCodes;
- (NSArray)selectedAudioLanguages;
- (NSNumber)useDefaultSubtitleLanguages;
- (TopLevelSettingsController)init;
- (TopLevelSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_accessStatusForSpecifier:(id)specifier;
- (id)_autoPlayNextVideoPreferenceSpecifier;
- (id)_descriptionForExternalScreenType:(unsigned int)type;
- (id)_devicePreferenceSpecifiers;
- (id)_gdprSpecifiers;
- (id)_loadingSpecifiers;
- (id)_permissionSpecifiersWithRedirect;
- (id)accountModificationsAllowed;
- (id)availableAudioLanguageTitles:(id)titles;
- (id)downloadLanguageSpecifierSubtext:(id)subtext;
- (id)downloadQualitySpecifier;
- (id)downloadsCompatibleWithAVAdapter:(id)adapter;
- (id)homeSharingAppleID;
- (id)playbackQualityWifiSpecifier;
- (id)postPlayAutoPlayNextVideo;
- (id)preferredAudioLanguageCode:(id)code;
- (id)preferredPlaybackDimensionality;
- (id)preferredPurchaseResolution:(id)resolution;
- (id)showAppAppearance:(id)appearance;
- (id)showDownloadQualityCellular:(id)cellular;
- (id)showDownloadQualityWifi:(id)wifi;
- (id)showPlaybackQualityCellular:(id)cellular;
- (id)showPlaybackQualityWifi:(id)wifi;
- (id)specifiers;
- (id)sportsScoreSpoilersAllowed;
- (id)systemAllowTVCellularDataEnabledForSpecifier:(id)specifier;
- (id)upNextEnabled;
- (id)upNextLockupsUseCoverArt;
- (id)useCellularDataDownload:(id)download;
- (id)useCellularDataPlayback:(id)playback;
- (int64_t)_alertStyle;
- (void)_addPrivacyFooterToGroup:(id)group;
- (void)_appAppearanceDidChange:(id)change;
- (void)_externalScreenTypeDidChange:(id)change;
- (void)_performSetOperationWithUndo:(id)undo oldValue:(id)value specifier:(id)specifier actionName:(id)name setSelector:(SEL)selector;
- (void)_sceneWillConnect:(id)connect;
- (void)_setAppAppearance:(id)appearance specifier:(id)specifier;
- (void)_setDownloadsCompatibleWithAVAdapter:(id)adapter specifier:(id)specifier;
- (void)_setPlayHistoryEnabled:(id)enabled;
- (void)_setPostPlayAutoPlayNextVideo:(id)video;
- (void)_setPreferredAudioLanguageCode:(id)code;
- (void)_setPreferredPlaybackDimensionality:(id)dimensionality;
- (void)_setPreferredPurchaseResolution:(id)resolution specifier:(id)specifier;
- (void)_setPreferredSubtitleLanguageCodes:(id)codes;
- (void)_setSelectedAudioLanguages:(id)languages;
- (void)_setShowDownloadQualityCellular:(id)cellular specifier:(id)specifier;
- (void)_setShowDownloadQualityWifi:(id)wifi specifier:(id)specifier;
- (void)_setShowPlaybackQualityCellular:(id)cellular specifier:(id)specifier;
- (void)_setShowPlaybackQualityWifi:(id)wifi specifier:(id)specifier;
- (void)_setSportsScoreSpoilersAllowed:(id)allowed;
- (void)_setUpNextLockupsUseCoverArt:(id)art;
- (void)_setUseCellularDataDownload:(id)download specifier:(id)specifier;
- (void)_setUseCellularDataPlayback:(id)playback specifier:(id)specifier;
- (void)_setUseDefaultSubtitleLanguages:(id)languages;
- (void)_showPrivacySheet:(id)sheet;
- (void)_syncDevicePreferenceValues;
- (void)_updateCellularQualitySpecifiersAnimated:(BOOL)animated shouldUpdateUsingTableView:(BOOL)view forPlayback:(BOOL)playback;
- (void)_updateCellularSpecifierVisibility:(id)visibility shouldUpdateUsingTableView:(BOOL)view animated:(BOOL)animated mutableSpecifiers:(id)specifiers;
- (void)_updateCellularSpecifiersAnimated:(BOOL)animated shouldUpdateUsingTableView:(BOOL)view;
- (void)_updateHomeSharingSpecifiersAnimated:(BOOL)animated shouldUpdateUsingTableView:(BOOL)view;
- (void)_updateRestrictions;
- (void)_updateUIAfterChangingCellularUse:(id)use specifier:(id)specifier;
- (void)checkSettingsAndReloadWithCompletion:(id)completion;
- (void)dealloc;
- (void)homeSharingSignInButtonAction:(id)action;
- (void)homeSharingSignOutButtonAction:(id)action;
- (void)setAppAppearance:(id)appearance specifier:(id)specifier;
- (void)setDownloadsCompatibleWithAVAdapter:(id)adapter specifier:(id)specifier;
- (void)setPlayHistoryEnabled:(id)enabled;
- (void)setPostPlayAutoPlayNextVideo:(id)video;
- (void)setPreferredAudioLanguageCode:(id)code;
- (void)setPreferredPlaybackDimensionality:(id)dimensionality;
- (void)setPreferredPurchaseResolution:(id)resolution specifier:(id)specifier;
- (void)setPreferredSubtitleLanguageCodes:(id)codes;
- (void)setSelectedAudioLanguages:(id)languages;
- (void)setShowDownloadQualityCellular:(id)cellular specifier:(id)specifier;
- (void)setShowDownloadQualityWifi:(id)wifi specifier:(id)specifier;
- (void)setShowPlaybackQualityCellular:(id)cellular specifier:(id)specifier;
- (void)setShowPlaybackQualityWifi:(id)wifi specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)setSportsScoreSpoilersAllowed:(id)allowed;
- (void)setSystemAllowTVCellularDataEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setUpNextLockupsUseCoverArt:(id)art;
- (void)setUseCellularDataDownload:(id)download specifier:(id)specifier;
- (void)setUseCellularDataPlayback:(id)playback specifier:(id)specifier;
- (void)setUseDefaultSubtitleLanguages:(id)languages;
- (void)sharedInit;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TopLevelSettingsController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(&self->_accountChangeNotificationToken + 4)];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(&self->_mcEffectiveSettingsChangedNotification + 4)];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = TopLevelSettingsController;
  [(TVSettingsListMonitorController *)&v6 dealloc];
}

- (TopLevelSettingsController)init
{
  v5.receiver = self;
  v5.super_class = TopLevelSettingsController;
  v2 = [(TopLevelSettingsController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TopLevelSettingsController *)v2 sharedInit];
  }

  return v3;
}

- (TopLevelSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = TopLevelSettingsController;
  v4 = [(TVSettingsListMonitorController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(TopLevelSettingsController *)v4 sharedInit];
  }

  return v5;
}

- (void)sharedInit
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[SSAccountStore defaultStore];
  v5 = +[NSOperationQueue mainQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_72F4;
  v33[3] = &unk_20A28;
  objc_copyWeak(&v34, &location);
  v6 = [v3 addObserverForName:SSAccountStoreChangedNotification object:v4 queue:v5 usingBlock:v33];
  v7 = *(&self->_accountChangeNotificationToken + 4);
  *(&self->_accountChangeNotificationToken + 4) = v6;

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSOperationQueue mainQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_7334;
  v31[3] = &unk_20A28;
  objc_copyWeak(&v32, &location);
  v10 = [v8 addObserverForName:MCEffectiveSettingsChangedNotification object:0 queue:v9 usingBlock:v31];
  v11 = *(&self->_mcEffectiveSettingsChangedNotification + 4);
  *(&self->_mcEffectiveSettingsChangedNotification + 4) = v10;

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_sceneWillConnect:" name:UISceneWillConnectNotification object:0];

  MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications();
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_externalScreenTypeDidChange:" name:kMRMediaRemoteExternalScreenTypeDidChangeNotification object:0];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_appAppearanceDidChange:" name:@"TVSettingsAppAppearanceSettingDidChangeNotification" object:0];

  v15 = &_dispatch_main_q;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_7374;
  v29 = &unk_20A50;
  objc_copyWeak(&v30, &location);
  MRMediaRemoteGetExternalScreenType();

  v16 = +[UIApplication sharedApplication];
  LODWORD(v9) = [v16 tvSettings_isNonLightningAVAdapterConnected];

  if (v9)
  {
    NSLog(@"A non-Lightning AV adapter is connected");
    v17 = +[WLKSystemPreferencesStore sharedPreferences];
    [v17 setHasAVAdapterEvenBeenConnected:1];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = *(&self->_permissionsSpecifiers + 4);
  v19 = [v18 countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v19)
  {
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [(TopLevelSettingsController *)self reloadSpecifier:*(*(&v22 + 1) + 8 * v21) animated:0, v22];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v19);
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = TopLevelSettingsController;
  [(TopLevelSettingsController *)&v13 viewWillAppear:appear];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(&self->_permissionsSpecifiers + 4);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(TopLevelSettingsController *)self reloadSpecifier:*(*(&v9 + 1) + 8 * v8) animated:0, v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = TopLevelSettingsController;
  [(TopLevelSettingsController *)&v9 viewDidAppear:appear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.tv"];
  v5 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"SETTINGS_TITLE_APPS" defaultValue:@"Apps"];
  if (WLKIsRegulatedSKU())
  {
    v6 = @"SETTINGS_TITLE_VIDEOS";
  }

  else
  {
    v6 = @"SETTINGS_TITLE_TV";
  }

  v7 = [TopLevelSettingsController preferencesExtendedLocalizedName:v6 defaultValue:&stru_21328];
  if (objc_opt_respondsToSelector())
  {
    NSLog(@"TVSettingsLog - Emitting navigation event for Top Level application settings");
    v10 = v5;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [(TopLevelSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.tv" title:v7 localizedNavigationComponents:v8 deepLink:v4];
  }
}

- (id)accountModificationsAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] != 2;

  return [NSNumber numberWithBool:v3];
}

- (void)setSpecifier:(id)specifier
{
  v3.receiver = self;
  v3.super_class = TopLevelSettingsController;
  [(TopLevelSettingsController *)&v3 setSpecifier:specifier];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if ([*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count] && *(&self->_libraryOnly + 2))
  {
LABEL_67:
    v95 = *&self->super.PSListController_opaque[v3];
    goto LABEL_68;
  }

  v4 = +[WLKSettingsAMSBagTracker sharedTracker];
  isNowPlayingEnabled = [v4 isNowPlayingEnabled];
  *(&self->_libraryOnly + 4) = [isNowPlayingEnabled BOOLValue] ^ 1;

  v6 = +[SSAccountStore defaultStore];
  activeAccount = [v6 activeAccount];

  v8 = +[WLKSettingsStore sharedSettings];
  v9 = sub_7478(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(&self->_libraryOnly + 4);
    *buf = 67109376;
    v118 = v10;
    v119 = 1024;
    v120 = activeAccount != 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Settings: Create specifier, libraryOnly = %d, activeAccount exist = %d", buf, 0xEu);
  }

  if (*(&self->_libraryOnly + 4) || *(&self->_libraryOnly + 2) || ([v8 lastSyncDate], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v102 = v3;
    v101 = v8;
    v12 = objc_alloc_init(NSMutableArray);
    v13 = [(TopLevelSettingsController *)self loadSpecifiersFromPlistName:@"TVSettings" target:self];
    if (v13)
    {
      [v12 addObjectsFromArray:v13];
    }

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SETTINGS_TITLE_TV" value:&stru_21328 table:@"TVSettings"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_21328;
    }

    v18 = v17;

    if (WLKIsRegulatedSKU())
    {
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"SETTINGS_TITLE_VIDEOS" value:&stru_21328 table:@"TVSettings"];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = &stru_21328;
      }

      v23 = v22;

      v18 = v23;
    }

    v100 = v13;
    [(TopLevelSettingsController *)self setTitle:v18];
    v24 = +[NSMutableArray array];
    v104 = activeAccount;
    if (activeAccount)
    {
      v116[0] = @"com.apple.videos:PurchaseResolutionGroup";
      v116[1] = @"com.apple.videos:PreferredPurchaseResolution";
      v116[2] = @"com.apple.videos:HomeSharingFooter";
      v116[3] = @"com.apple.videos:HomeSharingSignOutButton";
      v116[4] = @"com.apple.videos:HomeSharingSignInButton";
      [NSArray arrayWithObjects:v116 count:5];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v25 = v112 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v109 objects:v115 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v110;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v110 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [v12 specifierForID:*(*(&v109 + 1) + 8 * i)];
            [v24 addObject:v30];
            [v12 removeObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v109 objects:v115 count:16];
        }

        while (v27);
      }

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v31 = [v12 specifierForID:@"com.apple.videos:AutoDownloads"];
        [v12 removeObject:v31];
      }

      v32 = v104;
      if (!*(&self->_libraryOnly + 4))
      {
        _devicePreferenceSpecifiers = [(TopLevelSettingsController *)self _devicePreferenceSpecifiers];
        [v12 addObjectsFromArray:_devicePreferenceSpecifiers];
      }

      _autoPlayNextVideoPreferenceSpecifier = [(TopLevelSettingsController *)self _autoPlayNextVideoPreferenceSpecifier];
      [v12 addObjectsFromArray:_autoPlayNextVideoPreferenceSpecifier];

      [v12 addObjectsFromArray:v24];
      if (!self->_didSyncDevicePreferenceValues)
      {
        self->_didSyncDevicePreferenceValues = 1;
        [(TopLevelSettingsController *)self _syncDevicePreferenceValues];
      }
    }

    else
    {
      v114[0] = @"com.apple.videos:PurchaseResolutionGroup";
      v114[1] = @"com.apple.videos:PreferredPurchaseResolution";
      v114[2] = @"com.apple.videos:HomeSharingFooter";
      v114[3] = @"com.apple.videos:HomeSharingSignOutButton";
      v114[4] = @"com.apple.videos:HomeSharingSignInButton";
      [NSArray arrayWithObjects:v114 count:5];
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v25 = v108 = 0u;
      v35 = [v25 countByEnumeratingWithState:&v105 objects:v113 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v106;
        do
        {
          for (j = 0; j != v36; j = j + 1)
          {
            if (*v106 != v37)
            {
              objc_enumerationMutation(v25);
            }

            v39 = [v12 specifierForID:*(*(&v105 + 1) + 8 * j)];
            [v24 addObject:v39];
            [v12 removeObject:v39];
          }

          v36 = [v25 countByEnumeratingWithState:&v105 objects:v113 count:16];
        }

        while (v36);
      }

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v40 = [v12 specifierForID:@"com.apple.videos:AutoDownloads"];
        [v12 removeObject:v40];
      }

      _autoPlayNextVideoPreferenceSpecifier2 = [(TopLevelSettingsController *)self _autoPlayNextVideoPreferenceSpecifier];
      [v12 addObjectsFromArray:_autoPlayNextVideoPreferenceSpecifier2];

      [v12 addObjectsFromArray:v24];
      v32 = 0;
    }

    if (!v32 || *(&self->_libraryOnly + 4))
    {
      v42 = [v12 specifierForID:@"com.apple.videos:PurchaseResolutionGroup"];
      [(TopLevelSettingsController *)self _addPrivacyFooterToGroup:v42];
    }

    v103 = v18;
    _permissionSpecifiersWithRedirect = [(TopLevelSettingsController *)self _permissionSpecifiersWithRedirect];
    if ([_permissionSpecifiersWithRedirect count])
    {
      v44 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [_permissionSpecifiersWithRedirect count]);
      [v12 insertObjects:_permissionSpecifiersWithRedirect atIndexes:v44];
    }

    v99 = _permissionSpecifiersWithRedirect;
    v45 = [v12 specifierForID:@"com.apple.videos:CellularDataMode"];
    v46 = *(&self->_playbackCellularSpecifier + 4);
    *(&self->_playbackCellularSpecifier + 4) = v45;

    v47 = [v12 specifierForID:@"com.apple.videos:PlaybackQualityWifi"];
    v48 = *(&self->_playbackQualityWifiSpecifier + 4);
    *(&self->_playbackQualityWifiSpecifier + 4) = v47;

    v49 = [v12 specifierForID:@"com.apple.videos:PlaybackQualityCellular"];
    v50 = *(&self->_playbackQualityCellularSpecifier + 4);
    *(&self->_playbackQualityCellularSpecifier + 4) = v49;

    v51 = [v12 specifierForID:@"com.apple.videos:CellularDataModeDownload"];
    v52 = *(&self->_downloadCellularSpecifier + 4);
    *(&self->_downloadCellularSpecifier + 4) = v51;

    v53 = [v12 specifierForID:@"com.apple.videos:DownloadQualityWifi"];
    v54 = *(&self->_downloadQualityWifiSpecifier + 4);
    *(&self->_downloadQualityWifiSpecifier + 4) = v53;

    v55 = [v12 specifierForID:@"com.apple.videos:DownloadQualityCellular"];
    v56 = *(&self->_downloadQualityCellularSpecifier + 4);
    *(&self->_downloadQualityCellularSpecifier + 4) = v55;

    v57 = [v12 specifierForID:@"com.apple.videos:AppAppearance"];
    v58 = *(&self->_appAppearanceSpecifier + 4);
    *(&self->_appAppearanceSpecifier + 4) = v57;

    if (SSDeviceIsHDRCapable())
    {
      v59 = MGGetBoolAnswer();
      v60 = [NSBundle bundleForClass:objc_opt_class()];
      v61 = v60;
      if (v59)
      {
        v62 = @"DOWNLOAD_QUALITY_SELECTION_FOOTER";
      }

      else
      {
        v62 = @"DOWNLOAD_QUALITY_SELECTION_FOOTER_NO_HDR_OVER_ADAPTER";
      }

      v63 = [v60 localizedStringForKey:v62 value:&stru_21328 table:@"TVSettings"];

      v64 = PSStaticTextMessageKey;
      [*(&self->_downloadQualityWifiSpecifier + 4) setProperty:v63 forKey:PSStaticTextMessageKey];
      [*(&self->_downloadQualityCellularSpecifier + 4) setProperty:v63 forKey:v64];
      if (MGGetBoolAnswer())
      {
        v65 = @"STREAMING_QUALITY_SELECTION_FOOTER";
      }

      else
      {
        v65 = @"STREAMING_QUALITY_SELECTION_FOOTER_NO_HDR_OVER_ADAPTER";
      }

      v66 = [NSBundle bundleForClass:objc_opt_class()];
      v67 = [v66 localizedStringForKey:v65 value:&stru_21328 table:@"TVSettings"];

      [*(&self->_playbackQualityWifiSpecifier + 4) setProperty:v67 forKey:v64];
    }

    else
    {
      v64 = PSStaticTextMessageKey;
    }

    v68 = *(&self->_playbackQualityCellularSpecifier + 4);
    v69 = [NSBundle bundleForClass:objc_opt_class()];
    v70 = [v69 localizedStringForKey:@"PLAYBACK_QUALITY_CELLULAR_FOOTER" value:&stru_21328 table:@"TVSettings"];
    [v68 setProperty:v70 forKey:v64];

    v71 = *(&self->_appAppearanceSpecifier + 4);
    v72 = [NSBundle bundleForClass:objc_opt_class()];
    v73 = [v72 localizedStringForKey:@"APP_APPEARANCE_FOOTER" value:&stru_21328 table:@"TVSettings"];
    [v71 setProperty:v73 forKey:v64];

    v74 = +[WLKSystemPreferencesStore sharedPreferences];
    hasAVAdapterEvenBeenConnected = [v74 hasAVAdapterEvenBeenConnected];

    if (![(TopLevelSettingsController *)self _isDebugMode]&& (hasAVAdapterEvenBeenConnected & 1) == 0)
    {
      v76 = [v12 indexOfSpecifierWithID:@"com.apple.videos:AVAdapterGroup"];
      if (v76 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 removeObjectAtIndex:v76];
      }

      v77 = [v12 indexOfSpecifierWithID:@"com.apple.videos:DownloadsCompatibleWithAVAdapter"];
      if (v77 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 removeObjectAtIndex:v77];
      }
    }

    v78 = [v12 specifierForID:@"com.apple.videos:HomeSharingSignOutButton"];
    v79 = *(&self->_homeSharingSignOutButtonSpecifier + 4);
    *(&self->_homeSharingSignOutButtonSpecifier + 4) = v78;

    v80 = [v12 specifierForID:@"com.apple.videos:HomeSharingSignInButton"];
    v81 = *(&self->_homeSharingSignInButtonSpecifier + 4);
    *(&self->_homeSharingSignInButtonSpecifier + 4) = v80;

    v82 = *(&self->_homeSharingSignInButtonSpecifier + 4);
    v83 = [NSBundle bundleForClass:objc_opt_class()];
    v84 = [v83 localizedStringForKey:@"HOME_SHARING_SIGN_IN" value:&stru_21328 table:@"TVSettings"];
    [v82 setName:v84];

    if ([(TopLevelSettingsController *)self _isDebugMode])
    {
      NSLog(@"TVSettingsLog - debug mode is enabled. All specifiers will be visible");
      homeSharingAppleID = [(TopLevelSettingsController *)self homeSharingAppleID];
      v86 = homeSharingAppleID;
      v87 = @"Sign Out";
      if (homeSharingAppleID)
      {
        v87 = homeSharingAppleID;
      }

      v88 = v87;

      [*(&self->_homeSharingSignOutButtonSpecifier + 4) setName:v88];
    }

    v89 = [v12 specifierForID:@"com.apple.videos:HomeSharingFooter"];
    v90 = *(&self->_homeSharingGroupSpecifier + 4);
    *(&self->_homeSharingGroupSpecifier + 4) = v89;

    v91 = *(&self->_homeSharingGroupSpecifier + 4);
    v92 = [NSBundle bundleForClass:objc_opt_class()];
    v93 = [v92 localizedStringForKey:@"HOME_SHARING" value:&stru_21328 table:@"TVSettings"];
    [v91 setName:v93];

    v3 = v102;
    v94 = *&self->super.PSListController_opaque[v102];
    *&self->super.PSListController_opaque[v102] = v12;

    [(TopLevelSettingsController *)self _updateHomeSharingSpecifiersAnimated:0 shouldUpdateUsingTableView:0];
    [(TopLevelSettingsController *)self _updateCellularSpecifiersAnimated:0 shouldUpdateUsingTableView:0];
    [(TopLevelSettingsController *)self _updateCellularQualitySpecifiersAnimated:0 shouldUpdateUsingTableView:0 forPlayback:1];
    [(TopLevelSettingsController *)self _updateCellularQualitySpecifiersAnimated:0 shouldUpdateUsingTableView:0 forPlayback:0];
    [(TopLevelSettingsController *)self _updateRestrictions];

    goto LABEL_67;
  }

  _loadingSpecifiers = [(TopLevelSettingsController *)self _loadingSpecifiers];
  v98 = *&self->super.PSListController_opaque[v3];
  *&self->super.PSListController_opaque[v3] = _loadingSpecifiers;

  [(TopLevelSettingsController *)self checkSettingsAndReloadWithCompletion:0];
  v95 = *&self->super.PSListController_opaque[v3];

LABEL_68:

  return v95;
}

- (BOOL)_isDebugMode
{
  v2 = WLKSystemSettingsDebugOverride();
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)_loadingSpecifiers
{
  v2 = [PSSpecifier groupSpecifierWithID:@"LoadingGroup"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"LOADING" value:&stru_21328 table:@"TVSettings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:6 edit:0];

  v6 = [NSNumber numberWithBool:1];
  [v5 setProperty:v6 forKey:PSControlIsLoadingKey];

  v9[0] = v2;
  v9[1] = v5;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

- (void)checkSettingsAndReloadWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_86E8;
  block[3] = &unk_20A78;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_permissionSpecifiersWithRedirect
{
  v3 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.tv"];
  v4 = *(&self->_appPolicy + 4);
  *(&self->_appPolicy + 4) = v3;

  v5 = [*(&self->_appPolicy + 4) specifiersForPolicyOptions:0x10000800001 force:0];
  v6 = *(&self->_permissionsSpecifiers + 4);
  *(&self->_permissionsSpecifiers + 4) = v5;

  v7 = [*(&self->_appPolicy + 4) specifiersForPolicyOptions:0x8000 force:0];
  lastObject = [v7 lastObject];

  if (lastObject)
  {
    v9 = *(&self->_permissionsSpecifiers + 4);
    if (v9)
    {
      v10 = [v9 arrayByAddingObject:lastObject];
    }

    else
    {
      v17 = lastObject;
      v10 = [NSArray arrayWithObjects:&v17 count:1];
    }

    v11 = *(&self->_permissionsSpecifiers + 4);
    *(&self->_permissionsSpecifiers + 4) = v10;

    v12 = [[PSSpecifierRedirecter alloc] initWithSpecifier:lastObject];
    v13 = *(&self->_permissionSpecifierRedirecter + 4);
    *(&self->_permissionSpecifierRedirecter + 4) = v12;

    objc_storeWeak(&lastObject[OBJC_IVAR___PSSpecifier_target], self);
    *&lastObject[OBJC_IVAR___PSSpecifier_getter] = "systemAllowTVCellularDataEnabledForSpecifier:";
    *&lastObject[OBJC_IVAR___PSSpecifier_setter] = "setSystemAllowTVCellularDataEnabled:forSpecifier:";
  }

  v14 = *(&self->_permissionsSpecifiers + 4);
  v15 = v14;

  return v14;
}

- (void)_addPrivacyFooterToGroup:(id)group
{
  groupCopy = group;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [groupCopy setProperty:v6 forKey:PSFooterCellClassGroupKey];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v7 localizedStringForKey:@"PRIVACY_FOOTER_FORMAT_CONTINUE_WATCHING" value:&stru_21328 table:@"TVSettings"];

  v8 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.tvapp"];
  flow = [v8 flow];
  localizedButtonTitle = [flow localizedButtonTitle];

  v11 = [NSString stringWithFormat:v15, localizedButtonTitle];
  [groupCopy setProperty:v11 forKey:PSFooterHyperlinkViewTitleKey];
  v17.location = [v11 rangeOfString:localizedButtonTitle];
  v12 = NSStringFromRange(v17);
  [groupCopy setProperty:v12 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v13 = [NSValue valueWithNonretainedObject:self];
  [groupCopy setProperty:v13 forKey:PSFooterHyperlinkViewTargetKey];

  v14 = NSStringFromSelector("_showPrivacySheet:");
  [groupCopy setProperty:v14 forKey:PSFooterHyperlinkViewActionKey];
}

- (id)_gdprSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"GDPR_GROUP"];
  [(TopLevelSettingsController *)self _addPrivacyFooterToGroup:v4];
  [v3 addObject:v4];

  return v3;
}

- (id)_autoPlayNextVideoPreferenceSpecifier
{
  v3 = +[NSMutableArray array];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"AutoPlayNextVideoGroup"];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"POST_PLAY_AUTO_PLAY_NEXT_VIDEO_DESCRIPTION" value:&stru_21328 table:@"TVSettings"];
    [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

    [v3 addObject:v4];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"POST_PLAY_AUTO_PLAY_NEXT_VIDEO" value:&stru_21328 table:@"TVSettings"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setPostPlayAutoPlayNextVideo:" get:"postPlayAutoPlayNextVideo" detail:0 cell:6 edit:0];

    [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v9 setProperty:@"com.apple.videos:AutoPlayNextVideo" forKey:PSIDKey];
    [v3 addObject:v9];
  }

  return v3;
}

- (id)_devicePreferenceSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"DevicePreferencesGroup"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PRIVATE_SPORTS_GROUP_NAME" value:&stru_21328 table:@"TVSettings"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_21328;
  }

  [v4 setName:v8];

  [(TopLevelSettingsController *)self _addPrivacyFooterToGroup:v4];
  [v3 addObject:v4];
  if (*(&self->_libraryOnly + 3))
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SPORTS_SPOILERS_ALLOWED" value:&stru_21328 table:@"TVSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setSportsScoreSpoilersAllowed:" get:"sportsScoreSpoilersAllowed" detail:0 cell:6 edit:0];

    v12 = PSAllowMultilineTitleKey;
    [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v13 = PSIDKey;
    [v11 setProperty:@"com.apple.videos:SportsSpoilers" forKey:PSIDKey];
    [v3 addObject:v11];
  }

  else
  {
    v12 = PSAllowMultilineTitleKey;
    v13 = PSIDKey;
  }

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"PRIVATE_MODE" value:&stru_21328 table:@"TVSettings"];
  v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setPlayHistoryEnabled:" get:"upNextEnabled" detail:0 cell:6 edit:0];

  [v16 setProperty:&__kCFBooleanTrue forKey:v12];
  [v16 setProperty:@"com.apple.videos:UsePlayHistory" forKey:v13];
  [v3 addObject:v16];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [v17 localizedStringForKey:@"CONTINUE_WATCHING_ART_TITLE" value:&stru_21328 table:?];

    v33 = v3;
    v18 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:"setUpNextLockupsUseCoverArt:" get:"upNextLockupsUseCoverArt" detail:objc_opt_class() cell:2 edit:0];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"UP_NEXT_ART_STILL_FRAME" value:&stru_21328 table:@"TVSettings"];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_21328;
    }

    v34[0] = v22;
    v31 = v13;
    v23 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"UP_NEXT_ART_POSTER_ART" value:&stru_21328 table:@"TVSettings"];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_21328;
    }

    v34[1] = v26;
    v27 = [NSArray arrayWithObjects:v34 count:2];
    [v18 setValues:&off_236D8 titles:v27];

    [v18 setProperty:&__kCFBooleanTrue forKey:v12];
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"CONTINUE_WATCHING_ART_DESCRIPTION" value:&stru_21328 table:@"TVSettings"];

    [v18 setProperty:v29 forKey:PSStaticTextMessageKey];
    [v18 setProperty:@"com.apple.videos:UpNextDisplay" forKey:v31];
    [v33 addObject:v18];

    v3 = v33;
  }

  return v3;
}

- (void)_syncDevicePreferenceValues
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9584;
  block[3] = &unk_20AA0;
  v4 = v3;
  v11 = v4;
  dispatch_async(v2, block);
  dispatch_group_enter(v4);
  v7[1] = _NSConcreteStackBlock;
  v7[2] = 3221225472;
  v7[3] = sub_95D4;
  v7[4] = &unk_20AC8;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  WLKFetchIsSportsEnabled();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_9638;
  v6[3] = &unk_20AF0;
  objc_copyWeak(v7, &location);
  dispatch_group_notify(v5, &_dispatch_main_q, v6);
  objc_destroyWeak(v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_showPrivacySheet:(id)sheet
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.tvapp"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (int64_t)_alertStyle
{
  v3 = [UITraitCollection traitCollectionWithHorizontalSizeClass:2];
  traitCollection = [(TopLevelSettingsController *)self traitCollection];
  v5 = [traitCollection containsTraitsInCollection:v3];

  return v5;
}

- (id)_accessStatusForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = +[WLKSettingsStore sharedSettings];
  channelID = [userInfo channelID];
  externalID = [userInfo externalID];
  v7 = [v4 settingsForChannelID:channelID externalID:externalID];

  if ([v7 accessStatus] == &dword_0 + 1)
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  return v8;
}

- (id)upNextEnabled
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 privateModeEnabled] ^ 1);

  return v3;
}

- (void)_setPlayHistoryEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  v4 = +[WLKSystemPreferencesStore sharedPreferences];
  [v4 setPrivateModeEnabled:bOOLValue ^ 1];
}

- (void)setPlayHistoryEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  privateModeEnabled = [v5 privateModeEnabled];

  v8 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_PRIVATE_MODE_ENABLED" defaultValue:@"Toggle Play History Enabled"];
  v7 = [NSNumber numberWithBool:privateModeEnabled ^ 1];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:enabledCopy oldValue:v7 specifier:0 actionName:v8 setSelector:"_setPlayHistoryEnabled:"];
}

- (id)sportsScoreSpoilersAllowed
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 sportsScoreSpoilersAllowed]);

  return v3;
}

- (void)_setSportsScoreSpoilersAllowed:(id)allowed
{
  allowedCopy = allowed;
  bOOLValue = [allowedCopy BOOLValue];
  v6 = +[WLKSystemPreferencesStore sharedPreferences];
  [v6 setSportsScoreSpoilersAllowed:bOOLValue];

  v8 = sub_7478(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = bOOLValue;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Settings Show Sports Scores value changed to %d", v10, 8u);
  }

  v9 = +[PluginAnalytics sharedInstance];
  [v9 recordSettingsChange:@"showSportsScores" value:allowedCopy];

  [(TopLevelSettingsController *)self reloadSpecifierID:@"com.apple.videos:SportsSpoilers"];
}

- (void)setSportsScoreSpoilersAllowed:(id)allowed
{
  allowedCopy = allowed;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  sportsScoreSpoilersAllowed = [v5 sportsScoreSpoilersAllowed];

  v8 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_SHOW_SPORTS_SCORES" defaultValue:@"Toggle Show Sports Scores"];
  v7 = [NSNumber numberWithBool:sportsScoreSpoilersAllowed];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:allowedCopy oldValue:v7 specifier:0 actionName:v8 setSelector:"_setSportsScoreSpoilersAllowed:"];
}

- (id)postPlayAutoPlayNextVideo
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 postPlayAutoPlayNextVideo]);

  return v3;
}

- (void)_setPostPlayAutoPlayNextVideo:(id)video
{
  bOOLValue = [video BOOLValue];
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  [v5 setPostPlayAutoPlayNextVideo:bOOLValue];

  [(TopLevelSettingsController *)self reloadSpecifierID:@"com.apple.videos:AutoPlayNextVideo"];
}

- (void)setPostPlayAutoPlayNextVideo:(id)video
{
  videoCopy = video;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  postPlayAutoPlayNextVideo = [v5 postPlayAutoPlayNextVideo];

  v8 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_AUTOPLAY_NEXT_VIDEO" defaultValue:@"Toggle Auto Play Next Video"];
  v7 = [NSNumber numberWithBool:postPlayAutoPlayNextVideo];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:videoCopy oldValue:v7 specifier:0 actionName:v8 setSelector:"_setPostPlayAutoPlayNextVideo:"];
}

- (id)upNextLockupsUseCoverArt
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 upNextLockupsUseCoverArt]);

  return v3;
}

- (void)_setUpNextLockupsUseCoverArt:(id)art
{
  artCopy = art;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  bOOLValue = [artCopy BOOLValue];

  [v5 setUpNextLockupsUseCoverArt:bOOLValue];

  [(TopLevelSettingsController *)self reloadSpecifierID:@"com.apple.videos:UpNextDisplay"];
}

- (void)setUpNextLockupsUseCoverArt:(id)art
{
  artCopy = art;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  upNextLockupsUseCoverArt = [v5 upNextLockupsUseCoverArt];

  v8 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_CONTINUE_WATCHING_DISPLAY" defaultValue:@"Change Continue Watching Display Selection"];
  v7 = [NSNumber numberWithBool:upNextLockupsUseCoverArt];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:artCopy oldValue:v7 specifier:0 actionName:v8 setSelector:"_setUpNextLockupsUseCoverArt:"];
}

- (id)homeSharingAppleID
{
  v2 = +[HSAccountStore defaultStore];
  appleID = [v2 appleID];

  return appleID;
}

- (id)systemAllowTVCellularDataEnabledForSpecifier:(id)specifier
{
  v4 = *(&self->_permissionSpecifierRedirecter + 4);
  if (v4)
  {
    v4 = [v4 performGetter:specifier];
    v3 = vars8;
  }

  return v4;
}

- (void)setSystemAllowTVCellularDataEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v7 = *(&self->_permissionSpecifierRedirecter + 4);
  if (v7)
  {
    [v7 performSetter:enabledCopy specifier:specifierCopy];
  }

  [(TopLevelSettingsController *)self _updateUIAfterChangingCellularUse:enabledCopy specifier:specifierCopy];
}

- (id)useCellularDataPlayback:(id)playback
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 useCellularDataPlayback]);

  return v4;
}

+ (id)_deeplinkForSpecifierName:(id)name
{
  v3 = [@"settings-navigation://com.apple.Settings.Apps/com.apple.tv/" stringByAppendingString:name];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

+ (id)preferencesExtendedLocalizedName:(id)name defaultValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [v9 initWithKey:nameCopy defaultValue:valueCopy table:@"TVSettings" locale:v10 bundleURL:bundleURL];

  return v11;
}

- (void)_performSetOperationWithUndo:(id)undo oldValue:(id)value specifier:(id)specifier actionName:(id)name setSelector:(SEL)selector
{
  undoCopy = undo;
  valueCopy = value;
  specifierCopy = specifier;
  nameCopy = name;
  if (valueCopy != undoCopy)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_A4D4;
    v31[3] = &unk_20B18;
    v16 = specifierCopy;
    v32 = v16;
    selectorCopy = selector;
    v17 = objc_retainBlock(v31);
    if (v16)
    {
      identifier = [v16 identifier];
    }

    else
    {
      identifier = @"NO_SPECIFIER";
    }

    NSLog(@"TVSettingsLog - setting specifier %@ to value %@", identifier, undoCopy);
    (v17[2])(v17, self, undoCopy);
    navigationController = [(TopLevelSettingsController *)self navigationController];
    visibleViewController = [navigationController visibleViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = visibleViewController;
      v21 = [valueCopy copy];
      objc_initWeak(&location, self);
      v22 = [TopLevelSettingsController _deeplinkForSpecifierName:identifier];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_A4F8;
      v25[3] = &unk_20B40;
      objc_copyWeak(&v29, &location);
      v26 = identifier;
      v23 = v21;
      v27 = v23;
      v28 = v17;
      [v24 pe_registerUndoActionName:nameCopy associatedDeepLink:v22 undoAction:v25];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_setUseCellularDataPlayback:(id)playback specifier:(id)specifier
{
  specifierCopy = specifier;
  playbackCopy = playback;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:playbackCopy specifier:specifierCopy];

  v9 = +[WLKSystemPreferencesStore sharedPreferences];
  bOOLValue = [playbackCopy BOOLValue];

  [v9 setUseCellularDataPlayback:bOOLValue];

  [(TopLevelSettingsController *)self _updateCellularQualitySpecifiersAnimated:1 shouldUpdateUsingTableView:1 forPlayback:1];
}

- (void)setUseCellularDataPlayback:(id)playback specifier:(id)specifier
{
  specifierCopy = specifier;
  playbackCopy = playback;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  useCellularDataPlayback = [v8 useCellularDataPlayback];

  v11 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_USE_CELLULAR_PLAYBACK" defaultValue:@"Toggle Use Cellular for Streaming"];
  v10 = [NSNumber numberWithBool:useCellularDataPlayback];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:playbackCopy oldValue:v10 specifier:specifierCopy actionName:v11 setSelector:"_setUseCellularDataPlayback:specifier:"];
}

- (id)showPlaybackQualityWifi:(id)wifi
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  wifiQualityPlayback = [v3 wifiQualityPlayback];

  return wifiQualityPlayback;
}

- (void)_setShowPlaybackQualityWifi:(id)wifi specifier:(id)specifier
{
  specifierCopy = specifier;
  wifiCopy = wifi;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:wifiCopy specifier:specifierCopy];

  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  stringValue = [wifiCopy stringValue];

  [v8 setWifiQualityPlayback:stringValue];
  [(TopLevelSettingsController *)self reloadSpecifier:specifierCopy];
}

- (void)setShowPlaybackQualityWifi:(id)wifi specifier:(id)specifier
{
  specifierCopy = specifier;
  wifiCopy = wifi;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  wifiQualityPlayback = [v8 wifiQualityPlayback];

  v9 = WLKIsRegulatedSKU();
  v10 = @"UNDO_WIFI_QUALITY_PLAYBACK";
  if (v9)
  {
    v10 = @"UNDO_WLAN_QUALITY_PLAYBACK";
  }

  v11 = v10;
  if (WLKIsRegulatedSKU())
  {
    v12 = @"Change Streaming WLAN Quality";
  }

  else
  {
    v12 = @"Change Streaming Wi-Fi Quality";
  }

  v13 = [TopLevelSettingsController preferencesExtendedLocalizedName:v11 defaultValue:v12];

  [(TopLevelSettingsController *)self _performSetOperationWithUndo:wifiCopy oldValue:wifiQualityPlayback specifier:specifierCopy actionName:v13 setSelector:"_setShowPlaybackQualityWifi:specifier:"];
}

- (id)showPlaybackQualityCellular:(id)cellular
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  cellularQualityPlayback = [v3 cellularQualityPlayback];

  return cellularQualityPlayback;
}

- (void)_setShowPlaybackQualityCellular:(id)cellular specifier:(id)specifier
{
  specifierCopy = specifier;
  cellularCopy = cellular;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:cellularCopy specifier:specifierCopy];

  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  stringValue = [cellularCopy stringValue];

  [v8 setCellularQualityPlayback:stringValue];
  [(TopLevelSettingsController *)self reloadSpecifier:specifierCopy];
}

- (void)setShowPlaybackQualityCellular:(id)cellular specifier:(id)specifier
{
  specifierCopy = specifier;
  cellularCopy = cellular;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  cellularQualityPlayback = [v8 cellularQualityPlayback];

  v9 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_CELLULAR_QUALITY_PLAYBACK" defaultValue:@"Change Streaming Cellular Quality"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:cellularCopy oldValue:cellularQualityPlayback specifier:specifierCopy actionName:v9 setSelector:"_setShowPlaybackQualityCellular:specifier:"];
}

- (id)useCellularDataDownload:(id)download
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 useCellularDataDownload]);

  return v4;
}

- (void)_setUseCellularDataDownload:(id)download specifier:(id)specifier
{
  specifierCopy = specifier;
  downloadCopy = download;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:downloadCopy specifier:specifierCopy];

  v9 = +[WLKSystemPreferencesStore sharedPreferences];
  bOOLValue = [downloadCopy BOOLValue];

  [v9 setUseCellularDataDownload:bOOLValue];

  [(TopLevelSettingsController *)self _updateCellularQualitySpecifiersAnimated:1 shouldUpdateUsingTableView:1 forPlayback:0];
}

- (void)setUseCellularDataDownload:(id)download specifier:(id)specifier
{
  specifierCopy = specifier;
  downloadCopy = download;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  useCellularDataDownload = [v8 useCellularDataDownload];

  v11 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_USE_CELLULAR_DOWNLOADS" defaultValue:@"Toggle Use Cellular Data for Downloads"];
  v10 = [NSNumber numberWithBool:useCellularDataDownload];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:downloadCopy oldValue:v10 specifier:specifierCopy actionName:v11 setSelector:"_setUseCellularDataDownload:specifier:"];
}

- (id)showDownloadQualityWifi:(id)wifi
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  wifiQualityDownload = [v3 wifiQualityDownload];

  return wifiQualityDownload;
}

- (void)_setShowDownloadQualityWifi:(id)wifi specifier:(id)specifier
{
  specifierCopy = specifier;
  wifiCopy = wifi;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:wifiCopy specifier:specifierCopy];

  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  stringValue = [wifiCopy stringValue];
  [v8 setWifiQualityDownload:stringValue];

  LODWORD(v8) = [VideosDownloadQualityValueBestQuality isEqualToString:wifiCopy];
  if (v8)
  {
    v10 = &__kCFBooleanTrue;
  }

  else
  {
    v10 = &__kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"VideosAllowHDREnabledSetting", v10, @"com.apple.mobileipod");
  CFPreferencesAppSynchronize(@"com.apple.mobileipod");
  [(TopLevelSettingsController *)self reloadSpecifier:specifierCopy];
  notify_post("com.apple.mobileipod-prefsChanged");
}

- (void)setShowDownloadQualityWifi:(id)wifi specifier:(id)specifier
{
  specifierCopy = specifier;
  wifiCopy = wifi;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  wifiQualityDownload = [v8 wifiQualityDownload];

  v9 = WLKIsRegulatedSKU();
  v10 = @"UNDO_WIFI_QUALITY_DOWNLOADS";
  if (v9)
  {
    v10 = @"UNDO_WLAN_QUALITY_DOWNLOADS";
  }

  v11 = v10;
  if (WLKIsRegulatedSKU())
  {
    v12 = @"Change Download WLAN Quality";
  }

  else
  {
    v12 = @"Change Download Wi-Fi Quality";
  }

  v13 = [TopLevelSettingsController preferencesExtendedLocalizedName:v11 defaultValue:v12];

  [(TopLevelSettingsController *)self _performSetOperationWithUndo:wifiCopy oldValue:wifiQualityDownload specifier:specifierCopy actionName:v13 setSelector:"_setShowDownloadQualityWifi:specifier:"];
}

- (id)showDownloadQualityCellular:(id)cellular
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  cellularQualityDownload = [v3 cellularQualityDownload];

  return cellularQualityDownload;
}

- (void)_setShowDownloadQualityCellular:(id)cellular specifier:(id)specifier
{
  specifierCopy = specifier;
  cellularCopy = cellular;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:cellularCopy specifier:specifierCopy];

  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  stringValue = [cellularCopy stringValue];

  [v8 setCellularQualityDownload:stringValue];
  [(TopLevelSettingsController *)self reloadSpecifier:specifierCopy];
}

- (void)setShowDownloadQualityCellular:(id)cellular specifier:(id)specifier
{
  specifierCopy = specifier;
  cellularCopy = cellular;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  cellularQualityDownload = [v8 cellularQualityDownload];

  v9 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_CELLULAR_QUALITY_DOWNLOAD" defaultValue:@"Change Download Cellular Quality"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:cellularCopy oldValue:cellularQualityDownload specifier:specifierCopy actionName:v9 setSelector:"_setShowDownloadQualityCellular:specifier:"];
}

- (void)_setAppAppearance:(id)appearance specifier:(id)specifier
{
  specifierCopy = specifier;
  appearanceCopy = appearance;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:appearanceCopy specifier:specifierCopy];

  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  stringValue = [appearanceCopy stringValue];

  [v8 setAppAppearance:stringValue];
  [(TopLevelSettingsController *)self reloadSpecifier:specifierCopy];
}

- (void)setAppAppearance:(id)appearance specifier:(id)specifier
{
  specifierCopy = specifier;
  appearanceCopy = appearance;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  appAppearance = [v8 appAppearance];

  v9 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_APP_APPEARANCE" defaultValue:@"Change App Appearance Setting"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:appearanceCopy oldValue:appAppearance specifier:specifierCopy actionName:v9 setSelector:"_setAppAppearance:specifier:"];
}

- (id)showAppAppearance:(id)appearance
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  appAppearance = [v3 appAppearance];

  return appAppearance;
}

- (id)preferredPurchaseResolution:(id)resolution
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  purchaseResolution = [v3 purchaseResolution];

  return purchaseResolution;
}

- (void)_setPreferredPurchaseResolution:(id)resolution specifier:(id)specifier
{
  specifierCopy = specifier;
  resolutionCopy = resolution;
  rootController = [(TopLevelSettingsController *)self rootController];
  [rootController setPreferenceValue:resolutionCopy specifier:specifierCopy];

  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  stringValue = [resolutionCopy stringValue];

  [v8 setPurchaseResolution:stringValue];
  [(TopLevelSettingsController *)self reloadSpecifier:specifierCopy];
}

- (void)setPreferredPurchaseResolution:(id)resolution specifier:(id)specifier
{
  specifierCopy = specifier;
  resolutionCopy = resolution;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  purchaseResolution = [v8 purchaseResolution];

  v9 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_VIDEO_DEFINITION" defaultValue:@"Change Video Defintion"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:resolutionCopy oldValue:purchaseResolution specifier:specifierCopy actionName:v9 setSelector:"_setPreferredPurchaseResolution:specifier:"];
}

- (id)downloadsCompatibleWithAVAdapter:(id)adapter
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 downloadsCompatibleWithAVAdapter]);

  return v4;
}

- (void)_setDownloadsCompatibleWithAVAdapter:(id)adapter specifier:(id)specifier
{
  specifierCopy = specifier;
  adapterCopy = adapter;
  v7 = +[WLKSystemPreferencesStore sharedPreferences];
  bOOLValue = [adapterCopy BOOLValue];

  [v7 setDownloadsCompatibleWithAVAdapter:bOOLValue];
  [(TopLevelSettingsController *)self reloadSpecifier:specifierCopy];
}

- (void)setDownloadsCompatibleWithAVAdapter:(id)adapter specifier:(id)specifier
{
  specifierCopy = specifier;
  adapterCopy = adapter;
  v8 = +[WLKSystemPreferencesStore sharedPreferences];
  downloadsCompatibleWithAVAdapter = [v8 downloadsCompatibleWithAVAdapter];

  v11 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_DOWNLOADS_COMPATIBLE_WITH_AV" defaultValue:@"Toggle Downloads Compatible With AV Adapter"];
  v10 = [NSNumber numberWithBool:downloadsCompatibleWithAVAdapter];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:adapterCopy oldValue:v10 specifier:specifierCopy actionName:v11 setSelector:"_setDownloadsCompatibleWithAVAdapter:specifier:"];
}

- (NSArray)selectedAudioLanguages
{
  v3 = *(&self->_selectedAudioLanguages + 4);
  if (v3)
  {
    goto LABEL_13;
  }

  v4 = +[WLKSystemPreferencesStore sharedPreferences];
  selectedAudioLanguagesDownload = [v4 selectedAudioLanguagesDownload];

  if (![(NSArray *)selectedAudioLanguagesDownload count])
  {
    v12[0] = @"ORIGINAL_AUDIO_LANGUAGE";
    v12[1] = @"DEVICE_AUDIO_LANGUAGE";
    v6 = [NSArray arrayWithObjects:v12 count:2];
    goto LABEL_6;
  }

  if ([(NSArray *)selectedAudioLanguagesDownload containsObject:@"DEFAULT_LANGUAGE"])
  {
    v6 = [(NSArray *)selectedAudioLanguagesDownload mutableCopy];
    [(NSArray *)v6 removeObject:@"DEFAULT_LANGUAGE"];
    [(NSArray *)v6 insertObject:@"ORIGINAL_AUDIO_LANGUAGE" atIndex:0];
    [(NSArray *)v6 insertObject:@"DEVICE_AUDIO_LANGUAGE" atIndex:1];
LABEL_6:

    selectedAudioLanguagesDownload = v6;
  }

  if ([(NSArray *)selectedAudioLanguagesDownload containsObject:@"DEVICE_AUDIO_LANGUAGE"])
  {
    v7 = +[NSLocale preferredLanguages];
    firstObject = [v7 firstObject];

    if (firstObject && [(NSArray *)selectedAudioLanguagesDownload containsObject:firstObject])
    {
      v9 = [(NSArray *)selectedAudioLanguagesDownload mutableCopy];
      [(NSArray *)v9 removeObject:firstObject];

      selectedAudioLanguagesDownload = v9;
    }
  }

  v10 = *(&self->_selectedAudioLanguages + 4);
  *(&self->_selectedAudioLanguages + 4) = selectedAudioLanguagesDownload;

  v3 = *(&self->_selectedAudioLanguages + 4);
LABEL_13:

  return v3;
}

- (void)_setSelectedAudioLanguages:(id)languages
{
  languagesCopy = languages;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  [v5 setSelectedAudioLanguagesDownload:languagesCopy];

  v6 = *(&self->_selectedAudioLanguages + 4);
  *(&self->_selectedAudioLanguages + 4) = languagesCopy;
  v7 = languagesCopy;

  v8 = +[NSNotificationCenter defaultCenter];

  [v8 postNotificationName:@"PreferredAudioLanguagesDidChangeNotification" object:self];

  [(TopLevelSettingsController *)self reloadSpecifiers];
}

- (void)setSelectedAudioLanguages:(id)languages
{
  languagesCopy = languages;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  selectedAudioLanguagesDownload = [v5 selectedAudioLanguagesDownload];

  v6 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_AUDIO_LANGUAGE_OPERATION" defaultValue:@"Modify Audio Languages"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:languagesCopy oldValue:selectedAudioLanguagesDownload specifier:0 actionName:v6 setSelector:"_setSelectedAudioLanguages:"];
}

- (NSArray)preferredSubtitleLanguageCodes
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  subtitleAudioLanguagesDownload = [v2 subtitleAudioLanguagesDownload];

  return subtitleAudioLanguagesDownload;
}

- (void)_setPreferredSubtitleLanguageCodes:(id)codes
{
  codesCopy = codes;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  [v5 setSubtitleAudioLanguagesDownload:codesCopy];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"PreferredSubtitleLanguagesDidChangeNotification" object:self];
}

- (void)setPreferredSubtitleLanguageCodes:(id)codes
{
  codesCopy = codes;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  subtitleAudioLanguagesDownload = [v5 subtitleAudioLanguagesDownload];

  v6 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_SUBTITLE_LANGUAGE_OPERATION" defaultValue:@"Modify Subtitle Languages"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:codesCopy oldValue:subtitleAudioLanguagesDownload specifier:0 actionName:v6 setSelector:"_setPreferredSubtitleLanguageCodes:"];
}

- (NSNumber)useDefaultSubtitleLanguages
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 subtitleDefaultLanguageEnabledDownload]);

  return v3;
}

- (void)_setUseDefaultSubtitleLanguages:(id)languages
{
  languagesCopy = languages;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  bOOLValue = [languagesCopy BOOLValue];

  [v5 setSubtitleDefaultLanguageEnabledDownload:bOOLValue];
}

- (void)setUseDefaultSubtitleLanguages:(id)languages
{
  languagesCopy = languages;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  subtitleDefaultLanguageEnabledDownload = [v5 subtitleDefaultLanguageEnabledDownload];

  v8 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_DEFAULT_SUBTITLE_LANGUAGES" defaultValue:@"Toggle Default Subtitle Languages"];
  v7 = [NSNumber numberWithBool:subtitleDefaultLanguageEnabledDownload];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:languagesCopy oldValue:v7 specifier:0 actionName:v8 setSelector:"_setUseDefaultSubtitleLanguages:"];
}

- (id)preferredPlaybackDimensionality
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  preferredPlaybackDimensionality = [v2 preferredPlaybackDimensionality];

  return preferredPlaybackDimensionality;
}

- (void)_setPreferredPlaybackDimensionality:(id)dimensionality
{
  dimensionalityCopy = dimensionality;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  [v5 setPreferredPlaybackDimensionality:dimensionalityCopy];

  [(TopLevelSettingsController *)self reloadSpecifierID:@"com.apple.videos:VideosPlaybackMode"];
}

- (void)setPreferredPlaybackDimensionality:(id)dimensionality
{
  dimensionalityCopy = dimensionality;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  preferredPlaybackDimensionality = [v5 preferredPlaybackDimensionality];

  v6 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_PREFERRED_PLAYBACK" defaultValue:@"Toggle Preferred Playback Dimensionality"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:dimensionalityCopy oldValue:preferredPlaybackDimensionality specifier:0 actionName:v6 setSelector:"_setPreferredPlaybackDimensionality:"];
}

- (void)homeSharingSignInButtonAction:(id)action
{
  actionCopy = action;
  parentController = [(TopLevelSettingsController *)self parentController];
  v6 = parentController;
  if (parentController)
  {
    selfCopy = parentController;
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  v9 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v9 setIsEphemeral:1];
  [v9 setPresentingViewController:v8];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"HOME_SHARING" value:&stru_21328 table:@"TVSettings"];
  [v9 setReason:v11];

  objc_initWeak(&location, self);
  v12 = objc_alloc_init(AKAppleIDAuthenticationController);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_C15C;
  v14[3] = &unk_20BB8;
  objc_copyWeak(&v16, &location);
  v14[4] = self;
  v13 = v8;
  v15 = v13;
  [v12 authenticateWithContext:v9 completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)homeSharingSignOutButtonAction:(id)action
{
  actionCopy = action;
  parentController = [(TopLevelSettingsController *)self parentController];
  v6 = parentController;
  if (parentController)
  {
    selfCopy = parentController;
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  objc_initWeak(&location, self);
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"HOME_SHARING_APPLE_ID" value:&stru_21328 table:@"TVSettings"];
  homeSharingAppleID = [(TopLevelSettingsController *)self homeSharingAppleID];
  v12 = [UIAlertController alertControllerWithTitle:v10 message:homeSharingAppleID preferredStyle:1];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_21328 table:@"TVSettings"];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v12 addAction:v15];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"HOME_SHARING_SIGN_OUT" value:&stru_21328 table:@"TVSettings"];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_C800;
  v22 = &unk_20BE0;
  objc_copyWeak(&v23, &location);
  v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:&v19];
  [v12 addAction:{v18, v19, v20, v21, v22}];

  [(TopLevelSettingsController *)v8 presentViewController:v12 animated:1 completion:0];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

- (void)_updateUIAfterChangingCellularUse:(id)use specifier:(id)specifier
{
  [(TopLevelSettingsController *)self _updateCellularSpecifiersAnimated:1 shouldUpdateUsingTableView:1];
  [(TopLevelSettingsController *)self _updateCellularQualitySpecifiersAnimated:1 shouldUpdateUsingTableView:1 forPlayback:1];

  [(TopLevelSettingsController *)self _updateCellularQualitySpecifiersAnimated:1 shouldUpdateUsingTableView:1 forPlayback:0];
}

- (void)_updateCellularSpecifiersAnimated:(BOOL)animated shouldUpdateUsingTableView:(BOOL)view
{
  viewCopy = view;
  animatedCopy = animated;
  v7 = animated && view;
  if (animated && view)
  {
    [(TopLevelSettingsController *)self beginUpdates];
  }

  downloadQualitySpecifier = [(TopLevelSettingsController *)self downloadQualitySpecifier];
  if (viewCopy)
  {
    [(TopLevelSettingsController *)self reloadSpecifier:downloadQualitySpecifier animated:animatedCopy];
  }

  v8 = OBJC_IVAR___PSListController__specifiers;
  v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  [(TopLevelSettingsController *)self _updateCellularSpecifierVisibility:*(&self->_downloadCellularSpecifier + 4) shouldUpdateUsingTableView:viewCopy animated:animatedCopy mutableSpecifiers:v9];
  playbackQualityWifiSpecifier = [(TopLevelSettingsController *)self playbackQualityWifiSpecifier];
  if (viewCopy)
  {
    [(TopLevelSettingsController *)self reloadSpecifier:playbackQualityWifiSpecifier animated:animatedCopy];
    [(TopLevelSettingsController *)self _updateCellularSpecifierVisibility:*(&self->_playbackCellularSpecifier + 4) shouldUpdateUsingTableView:1 animated:animatedCopy mutableSpecifiers:v9];
    if (v7)
    {
      [(TopLevelSettingsController *)self endUpdates];
    }
  }

  else
  {
    [(TopLevelSettingsController *)self _updateCellularSpecifierVisibility:*(&self->_playbackCellularSpecifier + 4) shouldUpdateUsingTableView:0 animated:animatedCopy mutableSpecifiers:v9];
    if (([*&self->super.PSListController_opaque[v8] isEqualToArray:v9] & 1) == 0 && *&self->super.PSListController_opaque[v8] != v9)
    {
      v11 = [v9 copy];
      v12 = *&self->super.PSListController_opaque[v8];
      *&self->super.PSListController_opaque[v8] = v11;
    }
  }
}

- (void)_updateCellularSpecifierVisibility:(id)visibility shouldUpdateUsingTableView:(BOOL)view animated:(BOOL)animated mutableSpecifiers:(id)specifiers
{
  animatedCopy = animated;
  viewCopy = view;
  visibilityCopy = visibility;
  specifiersCopy = specifiers;
  if ([(TopLevelSettingsController *)self _okayToShowCellularPlaybackAndDownloadSettings]|| [(TopLevelSettingsController *)self _isDebugMode])
  {
    v12 = OBJC_IVAR___PSListController__specifiers;
    v13 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    identifier = [visibilityCopy identifier];
    v15 = [v13 specifierForID:identifier];

    if (!v15)
    {
      identifier2 = [visibilityCopy identifier];
      v17 = [identifier2 isEqualToString:@"com.apple.videos:CellularDataMode"];

      if (v17)
      {
        v18 = @"com.apple.videos:PlaybackQualityGroup";
      }

      else
      {
        identifier3 = [visibilityCopy identifier];
        v20 = [identifier3 isEqualToString:@"com.apple.videos:CellularDataModeDownload"];

        if (v20)
        {
          v18 = @"com.apple.videos:DownloadQualityGroup";
        }

        else
        {
          identifier4 = [visibilityCopy identifier];
          v22 = [identifier4 isEqualToString:@"com.apple.videos:AppAppearance"];

          if (!v22)
          {
            goto LABEL_16;
          }

          v18 = @"com.apple.videos:AppAppearanceGroup";
        }
      }

      v23 = [*&self->super.PSListController_opaque[v12] specifierForID:v18];
      if (v23)
      {
        v24 = v23;
        if (viewCopy)
        {
          [(TopLevelSettingsController *)self insertSpecifier:visibilityCopy afterSpecifier:v23 animated:animatedCopy];
        }

        else
        {
          v25 = [*&self->super.PSListController_opaque[v12] indexOfObject:v23];
          v26 = [specifiersCopy count];
          if (v25 + 1 < v26)
          {
            v27 = v25 + 1;
          }

          else
          {
            v27 = v26;
          }

          [specifiersCopy insertObject:visibilityCopy atIndex:v27];
        }

LABEL_22:

        goto LABEL_23;
      }

LABEL_16:
      v24 = sub_7478(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = visibilityCopy;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "[TVLog] Error: No group found for invalid cellular specifier used for visibility update %@", &v28, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else if (viewCopy)
  {
    [(TopLevelSettingsController *)self removeSpecifier:visibilityCopy animated:animatedCopy];
  }

  else
  {
    [specifiersCopy removeObject:visibilityCopy];
  }

LABEL_23:
}

- (void)_updateCellularQualitySpecifiersAnimated:(BOOL)animated shouldUpdateUsingTableView:(BOOL)view forPlayback:(BOOL)playback
{
  playbackCopy = playback;
  viewCopy = view;
  animatedCopy = animated;
  v9 = animated && view;
  if (animated && view)
  {
    [(TopLevelSettingsController *)self beginUpdates];
  }

  v10 = &OBJC_IVAR___TopLevelSettingsController__downloadQualityCellularSpecifier;
  if (playbackCopy)
  {
    v10 = &OBJC_IVAR___TopLevelSettingsController__playbackQualityCellularSpecifier;
  }

  v11 = *&self->super.PSListController_opaque[*v10];
  v12 = +[WLKSystemPreferencesStore sharedPreferences];
  v13 = v12;
  if (playbackCopy)
  {
    useCellularDataPlayback = [v12 useCellularDataPlayback];
  }

  else
  {
    useCellularDataPlayback = [v12 useCellularDataDownload];
  }

  v15 = useCellularDataPlayback;

  if ([(TopLevelSettingsController *)self _okayToShowCellularPlaybackAndDownloadSettings]&& v15)
  {
    v16 = &self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    v17 = [*v16 mutableCopy];
LABEL_12:
    v20 = *v16;
    identifier = [v11 identifier];
    v22 = [v20 specifierForID:identifier];

    if (v22)
    {
      if (viewCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (playbackCopy)
    {
      v23 = @"com.apple.videos:CellularDataMode";
    }

    else
    {
      v23 = @"com.apple.videos:CellularDataModeDownload";
    }

    v24 = [*v16 specifierForID:v23];
    if (v24)
    {
      v25 = v24;
      if (viewCopy)
      {
        [(TopLevelSettingsController *)self insertSpecifier:v11 afterSpecifier:v24 animated:animatedCopy];
      }

      else
      {
        v27 = [*v16 indexOfObject:v24];
        v28 = [v17 count];
        if (v27 + 1 < v28)
        {
          v29 = v27 + 1;
        }

        else
        {
          v29 = v28;
        }

        [v17 insertObject:v11 atIndex:v29];
      }

      if (viewCopy)
      {
LABEL_14:
        if (!v9)
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      goto LABEL_34;
    }

    v26 = sub_7478(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_124CC(v11, v26);
    }

    goto LABEL_37;
  }

  _isDebugMode = [(TopLevelSettingsController *)self _isDebugMode];
  v16 = &self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v19 = [*v16 mutableCopy];
  v17 = v19;
  if (_isDebugMode)
  {
    goto LABEL_12;
  }

  if (!viewCopy)
  {
    [v19 removeObject:v11];
LABEL_34:
    if (([*v16 isEqualToArray:v17] & 1) == 0 && *v16 != v17)
    {
      v30 = [v17 copy];
      v31 = *v16;
      *v16 = v30;
    }

    goto LABEL_37;
  }

  [(TopLevelSettingsController *)self removeSpecifier:v11 animated:animatedCopy];
  if (v9)
  {
LABEL_24:
    [(TopLevelSettingsController *)self endUpdates];
  }

LABEL_37:
}

- (void)_updateHomeSharingSpecifiersAnimated:(BOOL)animated shouldUpdateUsingTableView:(BOOL)view
{
  viewCopy = view;
  animatedCopy = animated;
  v7 = animated && view;
  if (animated && view)
  {
    [(TopLevelSettingsController *)self beginUpdates];
  }

  v8 = +[HSAccountStore defaultStore];
  groupID = [v8 groupID];

  v9 = OBJC_IVAR___PSListController__specifiers;
  v10 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(NSMutableArray);
  }

  v13 = v12;

  v14 = [*&self->super.PSListController_opaque[v9] specifierForID:@"com.apple.videos:HomeSharingFooter"];
  _isDebugMode = [(TopLevelSettingsController *)self _isDebugMode];
  if (groupID)
  {
    if ((_isDebugMode & 1) == 0)
    {
      v16 = *(&self->_homeSharingSignInButtonSpecifier + 4);
      if (viewCopy)
      {
        [(TopLevelSettingsController *)self removeSpecifier:v16 animated:animatedCopy];
      }

      else
      {
        [v13 removeObject:v16];
      }
    }

    v32 = v14;
    v18 = animatedCopy;
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"HOME_SHARING_APPLE_ID_BUTTON" value:&stru_21328 table:@"TVSettings"];
    homeSharingAppleID = [(TopLevelSettingsController *)self homeSharingAppleID];
    v22 = [NSString stringWithFormat:@"%@ %@", v20, homeSharingAppleID];
    [*(&self->_homeSharingSignOutButtonSpecifier + 4) setName:v22];

    v23 = [*&self->super.PSListController_opaque[v9] specifierForID:@"com.apple.videos:HomeSharingSignOutButton"];

    animatedCopy = v18;
    if (v23)
    {
      v14 = v32;
      if (viewCopy)
      {
        [(TopLevelSettingsController *)self reloadSpecifier:*(&self->_homeSharingSignOutButtonSpecifier + 4) animated:animatedCopy];
      }
    }

    else if (viewCopy)
    {
      v14 = v32;
      [(TopLevelSettingsController *)self insertSpecifier:*(&self->_homeSharingSignOutButtonSpecifier + 4) afterSpecifier:v32 animated:animatedCopy];
    }

    else
    {
      v14 = v32;
      v24 = [*&self->super.PSListController_opaque[v9] indexOfObject:v32];
      v25 = [v13 count];
      if (v24 + 1 < v25)
      {
        v26 = v24 + 1;
      }

      else
      {
        v26 = v25;
      }

      [v13 insertObject:*(&self->_homeSharingSignOutButtonSpecifier + 4) atIndex:v26];
    }

    [v14 setObject:&stru_21328 forKeyedSubscript:PSFooterTextGroupKey];
    if (viewCopy)
    {
LABEL_24:
      [(TopLevelSettingsController *)self reloadSpecifier:v14 animated:animatedCopy];
      if (v7)
      {
        [(TopLevelSettingsController *)self endUpdates];
      }

      goto LABEL_35;
    }
  }

  else
  {
    if ((_isDebugMode & 1) == 0)
    {
      v17 = *(&self->_homeSharingSignOutButtonSpecifier + 4);
      if (viewCopy)
      {
        [(TopLevelSettingsController *)self removeSpecifier:v17 animated:animatedCopy];
      }

      else
      {
        [v13 removeObject:v17];
      }
    }

    v27 = [*&self->super.PSListController_opaque[v9] specifierForID:@"com.apple.videos:HomeSharingSignInButton"];

    if (!v27)
    {
      [(TopLevelSettingsController *)self insertSpecifier:*(&self->_homeSharingSignInButtonSpecifier + 4) afterSpecifier:v14 animated:animatedCopy];
    }

    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"HOME_SHARING_FOOTER" value:&stru_21328 table:@"TVSettings"];
    [v14 setObject:v29 forKeyedSubscript:PSFooterTextGroupKey];

    if (viewCopy)
    {
      goto LABEL_24;
    }
  }

  if (![v13 count])
  {

    v13 = 0;
  }

  if (([*&self->super.PSListController_opaque[v9] isEqualToArray:v13] & 1) == 0 && *&self->super.PSListController_opaque[v9] != v13)
  {
    v30 = [v13 copy];
    v31 = *&self->super.PSListController_opaque[v9];
    *&self->super.PSListController_opaque[v9] = v30;
  }

LABEL_35:
}

- (void)_updateRestrictions
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] != 2;

  v5 = *(&self->_homeSharingSignInButtonSpecifier + 4);
  v6 = [NSNumber numberWithBool:v4];
  v7 = PSEnabledKey;
  [v5 setProperty:v6 forKey:PSEnabledKey];

  v8 = *(&self->_homeSharingSignOutButtonSpecifier + 4);
  v9 = [NSNumber numberWithBool:v4];
  [v8 setProperty:v9 forKey:v7];
}

- (id)downloadLanguageSpecifierSubtext:(id)subtext
{
  selectedAudioLanguages = [(TopLevelSettingsController *)self selectedAudioLanguages];
  v5 = [selectedAudioLanguages count];

  if (v5 != &dword_0 + 1)
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"LANGUAGE_COUNT" value:&stru_21328 table:@"TVSettings"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_21328;
    }

    v14 = v13;

    firstObject = [NSNumber numberWithInt:v5];
    v15 = [NSNumberFormatter localizedStringFromNumber:firstObject numberStyle:1];
    v9 = [NSString stringWithFormat:v14, v15];

    goto LABEL_12;
  }

  selectedAudioLanguages2 = [(TopLevelSettingsController *)self selectedAudioLanguages];
  firstObject = [selectedAudioLanguages2 firstObject];

  if ([firstObject isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ORIGINAL_AUDIO_LANGUAGE" value:&stru_21328 table:@"TVSettings"];
LABEL_10:

    goto LABEL_12;
  }

  if ([firstObject isEqualToString:@"DEVICE_AUDIO_LANGUAGE"])
  {
    v8 = +[NSLocale preferredLanguages];
    firstObject2 = [v8 firstObject];
    v9 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:firstObject2];

    goto LABEL_10;
  }

  v9 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:firstObject];
LABEL_12:

  return v9;
}

- (id)preferredAudioLanguageCode:(id)code
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  audioLanguageCodeIncludingSentinel = [v3 audioLanguageCodeIncludingSentinel];

  return audioLanguageCodeIncludingSentinel;
}

- (void)_setPreferredAudioLanguageCode:(id)code
{
  codeCopy = code;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  stringValue = [codeCopy stringValue];

  [v5 setAudioLanguageCode:stringValue];

  [(TopLevelSettingsController *)self reloadSpecifiers];
}

- (void)setPreferredAudioLanguageCode:(id)code
{
  codeCopy = code;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  audioLanguageCodeIncludingSentinel = [v5 audioLanguageCodeIncludingSentinel];

  v6 = [TopLevelSettingsController preferencesExtendedLocalizedName:@"UNDO_SELECTED_AUDIO_LANGUAGE" defaultValue:@"Change Audio Language"];
  [(TopLevelSettingsController *)self _performSetOperationWithUndo:codeCopy oldValue:audioLanguageCodeIncludingSentinel specifier:0 actionName:v6 setSelector:"_setPreferredAudioLanguageCode:"];
}

- (id)availableAudioLanguageTitles:(id)titles
{
  titlesCopy = titles;
  v5 = objc_alloc_init(NSMutableArray);
  v16 = titlesCopy;
  v6 = [(TopLevelSettingsController *)self availableAudioLanguageCodes:titlesCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = VideosLanguagesAutoSentinelValue;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isEqualToString:v10])
        {
          v13 = [NSBundle bundleForClass:objc_opt_class()];
          v14 = [v13 localizedStringForKey:@"AUTO_PREFERRED_AUDIO_LANGUAGE" value:&stru_21328 table:@"TVSettings"];

          if (v14)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v14 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v12];
          if (v14)
          {
            goto LABEL_11;
          }
        }

        v14 = v12;
LABEL_11:
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_externalScreenTypeDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:kMRMediaRemoteExternalScreenTypeUserInfoKey];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [(TopLevelSettingsController *)self _descriptionForExternalScreenType:unsignedIntValue];
  NSLog(@"External screen type did change to %@", v7);

  if (unsignedIntValue == 2)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DAE8;
    block[3] = &unk_20AF0;
    objc_copyWeak(&v9, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_appAppearanceDidChange:(id)change
{
  appAppearanceSpecifier = [(TopLevelSettingsController *)self appAppearanceSpecifier];
  [(TopLevelSettingsController *)self reloadSpecifier:appAppearanceSpecifier];
}

- (void)_sceneWillConnect:(id)connect
{
  object = [connect object];
  if ([object tvSettings_isNonLightningSecondScreenScene])
  {
    NSLog(@"A non-Lightning AV adapter was connected");
    v4 = +[WLKSystemPreferencesStore sharedPreferences];
    [v4 setHasAVAdapterEvenBeenConnected:1];

    [(TopLevelSettingsController *)self reloadSpecifiers];
  }
}

- (id)_descriptionForExternalScreenType:(unsigned int)type
{
  if (type > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_20C20[type];
  }
}

- (BOOL)_okayToShowCellularPlaybackAndDownloadSettings
{
  v2 = MGGetBoolAnswer();
  v3 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.tv"];
  v4 = [v3 specifiersForPolicyOptions:0x8000 force:0];
  lastObject = [v4 lastObject];

  if (lastObject)
  {
    performGetter = [lastObject performGetter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [performGetter BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return v2 & bOOLValue;
}

- (id)downloadQualitySpecifier
{
  v3 = MGGetBoolAnswer();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"DOWNLOAD_QUALITY_WLAN";
  }

  else
  {
    v6 = @"DOWNLOAD_QUALITY_WIFI";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_21328 table:@"TVSettings"];

  v8 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"com.apple.videos:DownloadQualityWifi"];
  [v8 setProperty:v7 forKey:PSTitleKey];
  [v8 setName:v7];

  return v8;
}

- (id)playbackQualityWifiSpecifier
{
  v3 = MGGetBoolAnswer();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"PLAYBACK_QUALITY_WLAN";
  }

  else
  {
    v6 = @"PLAYBACK_QUALITY_WIFI";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_21328 table:@"TVSettings"];

  v8 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"com.apple.videos:PlaybackQualityWifi"];
  [v8 setProperty:v7 forKey:PSTitleKey];
  [v8 setName:v7];

  return v8;
}

@end