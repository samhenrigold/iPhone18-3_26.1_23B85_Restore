@interface FRNewsSettingsController
+ (BOOL)isBackgroundRefreshEnabled;
+ (BOOL)isSubscribed;
+ (id)specifierForDownloadSettingWithTarget:(id)target;
+ (void)setSubtitleForAutomaticDownloadsSpecifier:(id)specifier;
- (BOOL)isUserSignedIntoICloud;
- (FRNewsSettingsController)init;
- (id)localizedStringResourceWithKey:(id)key;
- (id)offlineModeSubscriberGroupDescription;
- (id)specifiers;
- (void)cancelAction;
- (void)reloadSpecifiersOnMain;
- (void)routeToNewsSubscription;
- (void)setShowStoriesFromFavorites:(id)favorites specifier:(id)specifier;
- (void)setValue:(id)value forSpecifier:(id)specifier;
- (void)showCombinedPrivacyPane;
- (void)showGameCenterPrivacyScreen;
- (void)showSportsSyncingPrivacyScreen;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation FRNewsSettingsController

- (FRNewsSettingsController)init
{
  v13.receiver = self;
  v13.super_class = FRNewsSettingsController;
  v2 = [(FRNewsSettingsController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(FRNewsSportsSyncManager);
    sportsSyncManager = v2->_sportsSyncManager;
    v2->_sportsSyncManager = v3;

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_43E8;
    v11[3] = &unk_10B10;
    v5 = v2;
    v12 = v5;
    v6 = objc_retainBlock(v11);
    (v6[2])(v6, v5);
    v7 = objc_alloc_init(FRNewsDownloadsSettingsController);
    (v6[2])(v6, v7);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v5 selector:"reloadSpecifiersOnMain" name:UIApplicationBackgroundRefreshStatusDidChangeNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v5 selector:"reloadSpecifiersOnMain" name:NSProcessInfoPowerStateDidChangeNotification object:0];
  }

  return v2;
}

+ (BOOL)isBackgroundRefreshEnabled
{
  v2 = +[UIApplication sharedApplication];
  backgroundRefreshStatus = [v2 backgroundRefreshStatus];

  if (backgroundRefreshStatus != &dword_0 + 2)
  {
    return 0;
  }

  v4 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
  v5 = [v4 objectForKey:@"com.apple.news"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__kCFBooleanTrue;
  }

  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = FRNewsSettingsController;
  [(FRNewsSettingsController *)&v10 viewDidAppear:appear];
  [(FRNewsSettingsController *)self reloadSpecifiers];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.news"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"News" table:0 locale:v6 bundleURL:bundleURL];

  if (objc_opt_respondsToSelector())
  {
    [(FRNewsSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.news" title:v9 localizedNavigationComponents:&__NSArray0__struct deepLink:v4];
  }
}

+ (id)specifierForDownloadSettingWithTarget:(id)target
{
  targetCopy = target;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_LINK_TITLE" value:&stru_10EF0 table:@"Localizable"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:targetCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v7 setIdentifier:@"AUTOMATIC_DOWNLOADS_LINK"];
  if (+[FRNewsSettingsController isSubscribed])
  {
    [v7 setObject:NSClassFromString(@"PSSubtitleDisclosureTableCell") forKeyedSubscript:PSCellClassKey];
    v8 = +[NSProcessInfo processInfo];
    v9 = &__kCFBooleanFalse;
    if (([v8 isLowPowerModeEnabled] & 1) == 0 && objc_msgSend(self, "isBackgroundRefreshEnabled"))
    {
      v9 = &__kCFBooleanTrue;
    }

    [v7 setObject:v9 forKeyedSubscript:PSEnabledKey];

    [FRNewsSettingsController setSubtitleForAutomaticDownloadsSpecifier:v7];
  }

  else
  {
    [v7 setDetailControllerClass:0];
    [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:PSEnabledKey];
  }

  return v7;
}

+ (BOOL)isSubscribed
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:FCNewsURLResolutionSubscriptionStatusSharedPreferenceKey];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v98 = OBJC_IVAR___PSListController__specifiers;
    v4 = FRNewsSettingsLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Refreshing News settings items...", buf, 2u);
    }

    v107[0] = _NSConcreteStackBlock;
    v107[1] = 3221225472;
    v107[2] = sub_5B08;
    v107[3] = &unk_10870;
    v107[4] = self;
    v99 = objc_retainBlock(v107);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NEWS_SETTINGS_TITLE" value:&stru_10EF0 table:@"Localizable"];
    [(FRNewsSettingsController *)self setTitle:v6];

    v7 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.news"];
    [(FRNewsSettingsController *)self setAppPolicy:v7];

    appPolicy = [(FRNewsSettingsController *)self appPolicy];
    specifiers = [appPolicy specifiers];
    v103 = [specifiers mutableCopy];

    v10 = NewsCoreUserDefaults();
    v11 = +[FRNewsSettingsController isSubscribed];
    v12 = FCOfflineModeFeatureFlagEnabledKey;
    v13 = [v10 objectForKey:FCOfflineModeFeatureFlagEnabledKey];

    v101 = v10;
    selfCopy = self;
    if (v13 && ![v10 BOOLForKey:v12])
    {
      v26 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_GROUP_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v16 = [PSSpecifier groupSpecifierWithID:@"Download Issues" name:v27];

      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"DOWNLOAD_ISSUES_DESCRIPTION" value:&stru_10EF0 table:@"Localizable"];
      v18 = PSFooterTextGroupKey;
      [v16 setProperty:v29 forKey:PSFooterTextGroupKey];

      v19 = v103;
      [v103 addObject:v16];
      v30 = [NSBundle bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"DOWNLOAD_ISSUES_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v25 = (v99[2])(v99, v31, 6, FCAutomaticIssueDownloadsEnabledKey, &__kCFBooleanTrue);

      [v103 addObject:v25];
      v32 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v32 userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        v34 = [PSSpecifier groupSpecifierWithID:@"Download Audio"];
        v35 = [NSBundle bundleForClass:objc_opt_class()];
        v36 = [v35 localizedStringForKey:@"DOWNLOAD_AUDIO_DESCRIPTION" value:&stru_10EF0 table:@"Localizable"];
        [v34 setProperty:v36 forKey:v18];

        [v103 addObject:v34];
        v37 = [NSBundle bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"DOWNLOAD_AUDIO_TITLE" value:&stru_10EF0 table:@"Localizable"];
        v39 = (v99[2])(v99, v38, 6, FCAutomaticAudioDownloadsEnabledKey, &__kCFBooleanTrue);

        [v103 addObject:v39];
        v19 = v103;
      }
    }

    else
    {
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"NEWS_PLUS_OFFLINE_MODE_GROUP_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v16 = [PSSpecifier groupSpecifierWithID:@"News+ Offline Mode" name:v15];

      if (v11)
      {
        offlineModeSubscriberGroupDescription = [(FRNewsSettingsController *)self offlineModeSubscriberGroupDescription];
        v18 = PSFooterTextGroupKey;
        [v16 setProperty:offlineModeSubscriberGroupDescription forKey:PSFooterTextGroupKey];

        v19 = v103;
        [v103 addObject:v16];
      }

      else
      {
        v20 = [NSBundle bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"NEWS_PLUS_OFFLINE_MODE_GROUP_DESCRIPTION_NON_SUBSCRIBER" value:&stru_10EF0 table:@"Localizable"];
        v18 = PSFooterTextGroupKey;
        [v16 setProperty:v21 forKey:PSFooterTextGroupKey];

        [v103 addObject:v16];
        v22 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"SUBSCRIBE_NEWS_PLUS_TITLE" value:&stru_10EF0 table:@"Localizable"];
        v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

        v19 = v103;
        [v24 setButtonAction:"routeToNewsSubscription"];
        [v103 addObject:v24];
      }

      v25 = [FRNewsSettingsController specifierForDownloadSettingWithTarget:self];
      [v19 addObject:v25];
    }

    v100 = v18;
    if ([v101 BOOLForKey:FCPuzzlesFeatureFlagEnabledKey])
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"GAME_CENTER_GROUP_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v42 = [PSSpecifier groupSpecifierWithID:@"Game Center" name:v41];

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v44 = [v43 localizedStringForKey:@"GAME_CENTER_SETTINGS_GROUP_FOOTER_LINK" value:&stru_10EF0 table:@"Localizable"];

      v45 = [NSBundle bundleForClass:objc_opt_class()];
      v46 = [v45 localizedStringForKey:@"GAME_CENTER_ENABLED_DESCRIPTION" value:&stru_10EF0 table:@"Localizable"];
      v47 = [NSString stringWithFormat:@"%@ %@", v46, v44];

      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      [v42 setProperty:v49 forKey:PSFooterCellClassGroupKey];

      [v42 setProperty:v47 forKey:PSFooterHyperlinkViewTitleKey];
      v109.location = [v47 rangeOfString:v44];
      v50 = NSStringFromRange(v109);
      [v42 setProperty:v50 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v51 = [NSValue valueWithNonretainedObject:self];
      [v42 setProperty:v51 forKey:PSFooterHyperlinkViewTargetKey];

      [v42 setProperty:@"showGameCenterPrivacyScreen" forKey:PSFooterHyperlinkViewActionKey];
      [v103 addObject:v42];
      v52 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = v103;
      v53 = [v52 localizedStringForKey:@"GAME_CENTER_ENABLED_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v54 = [PSSpecifier preferenceSpecifierNamed:v53 target:self set:"setValue:forSpecifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

      v55 = FCPuzzlesSettingsGameCenterEnabledKey;
      [v54 setObject:FCPuzzlesSettingsGameCenterEnabledKey forKeyedSubscript:PSKeyNameKey];
      [v54 setObject:&__kCFBooleanTrue forKeyedSubscript:PSDefaultValueKey];
      v56 = FCDefaultsSuiteName;
      [v54 setObject:FCDefaultsSuiteName forKeyedSubscript:PSDefaultsKey];
      [v54 setObject:v56 forKeyedSubscript:PSContainerBundleIDKey];
      [v54 setIdentifier:v55];
      [v103 addObject:v54];

      v18 = v100;
    }

    isUserSignedIntoICloud = [(FRNewsSettingsController *)self isUserSignedIntoICloud];
    if (isUserSignedIntoICloud)
    {
      v58 = FRNewsSettingsLog(isUserSignedIntoICloud);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "User is signed into iCloud, adding sports syncing settings group", buf, 2u);
      }

      v59 = [NSBundle bundleForClass:objc_opt_class()];
      v60 = [v59 localizedStringForKey:@"SPORTS_SETTINGS_GROUP_FOOTER_LINK" value:&stru_10EF0 table:@"Localizable"];

      v61 = [NSBundle bundleForClass:objc_opt_class()];
      v62 = [v61 localizedStringForKey:@"SPORTS_SETTINGS_GROUP_FOOTER_DESCRIPTION" value:&stru_10EF0 table:@"Localizable"];
      v63 = [NSString stringWithFormat:@"%@ %@", v62, v60];

      v64 = [NSBundle bundleForClass:objc_opt_class()];
      v65 = [v64 localizedStringForKey:@"SPORTS_SETTINGS_GROUP_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v66 = [PSSpecifier groupSpecifierWithID:@"Sports Settings" name:v65];

      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      [v66 setProperty:v68 forKey:PSFooterCellClassGroupKey];

      [v66 setProperty:v63 forKey:PSFooterHyperlinkViewTitleKey];
      v110.location = [v63 rangeOfString:v60];
      v69 = NSStringFromRange(v110);
      [v66 setProperty:v69 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v70 = [NSValue valueWithNonretainedObject:self];
      [v66 setProperty:v70 forKey:PSFooterHyperlinkViewTargetKey];

      [v66 setProperty:@"showSportsSyncingPrivacyScreen" forKey:PSFooterHyperlinkViewActionKey];
      v19 = v103;
      [v103 addObject:v66];
      sportsSyncManager = [(FRNewsSettingsController *)self sportsSyncManager];
      specifier = [sportsSyncManager specifier];
      [v103 addObject:specifier];

      objc_initWeak(buf, self);
      sportsSyncManager2 = [(FRNewsSettingsController *)self sportsSyncManager];
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_5C30;
      v104[3] = &unk_10B38;
      objc_copyWeak(&v105, buf);
      [sportsSyncManager2 prepareWithCompletion:v104];
      v18 = v100;

      objc_destroyWeak(&v105);
      objc_destroyWeak(buf);
    }

    v74 = [NSBundle bundleForClass:objc_opt_class()];
    v75 = [v74 localizedStringForKey:@"TODAY_FEED_GROUP_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v76 = [PSSpecifier groupSpecifierWithID:@"Today Feed" name:v75];

    v77 = [NSBundle bundleForClass:objc_opt_class()];
    v78 = [v77 localizedStringForKey:@"RESTRICT_STORIES_DESCRIPTION" value:&stru_10EF0 table:@"Localizable"];
    [v76 setProperty:v78 forKey:v18];

    [v19 addObject:v76];
    v79 = [NSBundle bundleForClass:objc_opt_class()];
    v80 = [v79 localizedStringForKey:@"RESTRICT_STORIES_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v81 = [PSSpecifier preferenceSpecifierNamed:v80 target:self set:"setShowStoriesFromFavorites:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    v97 = PSAllowMultilineTitleKey;
    [v81 setProperty:&__kCFBooleanTrue forKey:?];
    [v81 setIdentifier:@"showStoriesFromFavoritesSpecifierID"];
    [v81 setObject:FCShowStoriesOnlyFromFavoritesSharedPreferenceKey forKeyedSubscript:PSKeyNameKey];
    [v81 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
    v82 = FCDefaultsSuiteName;
    [v81 setObject:FCDefaultsSuiteName forKeyedSubscript:PSDefaultsKey];
    [v81 setObject:v82 forKeyedSubscript:PSContainerBundleIDKey];
    [v19 addObject:v81];
    v83 = [NSBundle bundleForClass:objc_opt_class()];
    [v83 localizedStringForKey:@"PRIVACY_GROUP_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v85 = v84 = v19;
    v96 = [PSSpecifier groupSpecifierWithID:@"Privacy" name:v85];

    v86 = [NSBundle bundleForClass:objc_opt_class()];
    v87 = [v86 localizedStringForKey:@"PRIVACY_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v88 = [PSSpecifier preferenceSpecifierNamed:v87 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

    [v88 setButtonAction:"showCombinedPrivacyPane"];
    [v88 setProperty:&__kCFBooleanTrue forKey:v97];
    v89 = [NSBundle bundleForClass:objc_opt_class()];
    v90 = [v89 localizedStringForKey:@"RESET_IDENTIFIER_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v91 = (v99[2])(v99, v90, 6, @"reset_identifier", &__kCFBooleanFalse);

    v92 = [NSBundle bundleForClass:objc_opt_class()];
    v93 = [v92 localizedStringForKey:@"RESET_IDENTIFIER_DESCRIPTION" value:&stru_10EF0 table:@"Localizable"];
    [v96 setProperty:v93 forKey:v100];

    [v84 addObject:v96];
    [v84 addObject:v88];
    [v84 addObject:v91];
    v94 = *&selfCopy->PSListController_opaque[v98];
    *&selfCopy->PSListController_opaque[v98] = v84;

    v3 = *&selfCopy->PSListController_opaque[v98];
  }

  return v3;
}

- (void)setValue:(id)value forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  [(FRNewsSettingsController *)self setPreferenceValue:valueCopy specifier:specifierCopy];
  [specifierCopy setObject:valueCopy forKeyedSubscript:PSValueKey];

  [(FRNewsSettingsController *)self reloadSpecifiers];
}

+ (void)setSubtitleForAutomaticDownloadsSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v3 = NewsCoreUserDefaults();
  v4 = FCAutomaticDownloadsEnabledKey;
  v52 = v3;
  v5 = [v3 objectForKey:FCAutomaticDownloadsEnabledKey];

  if (v5)
  {
    v47 = [v52 BOOLForKey:v4] ^ 1;
  }

  else
  {
    v47 = 0;
  }

  v6 = FCAutomaticFeedStoriesDownloadsEnabledKey;
  v7 = [v52 objectForKey:FCAutomaticFeedStoriesDownloadsEnabledKey];

  if (v7)
  {
    v8 = [v52 BOOLForKey:v6] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = FCAutomaticSavedStoriesDownloadsEnabledKey;
  v10 = [v52 objectForKey:FCAutomaticSavedStoriesDownloadsEnabledKey];

  if (v10)
  {
    v11 = [v52 BOOLForKey:v9] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = FCAutomaticIssueDownloadsEnabledKey;
  v13 = [v52 objectForKey:FCAutomaticIssueDownloadsEnabledKey];

  if (v13)
  {
    v14 = [v52 BOOLForKey:v12] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v50 = [v52 BOOLForKey:FCPuzzlesFeatureFlagEnabledKey];
  v15 = FCAutomaticPuzzlesDownloadsEnabledKey;
  v16 = [v52 objectForKey:FCAutomaticPuzzlesDownloadsEnabledKey];

  if (v16)
  {
    v17 = [v52 BOOLForKey:v15];
  }

  else
  {
    v17 = 1;
  }

  v18 = [v52 BOOLForKey:FCFoodFeatureFlagEnabledKey];
  v19 = FCAutomaticRecipesDownloadsEnabledKey;
  v20 = [v52 objectForKey:FCAutomaticRecipesDownloadsEnabledKey];

  if (v20)
  {
    v21 = [v52 BOOLForKey:v19];
  }

  else
  {
    v21 = 1;
  }

  v49 = [v52 BOOLForKey:FCAudioFeatureFlagEnabledKey];
  v22 = FCAutomaticAudioDownloadsEnabledKey;
  v23 = [v52 objectForKey:FCAutomaticAudioDownloadsEnabledKey];

  if (v23)
  {
    v24 = [v52 BOOLForKey:v22];
  }

  else
  {
    v24 = 1;
  }

  v25 = +[NSMutableArray array];
  if (v8)
  {
    if (v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v41 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_SUBTITLE_RECENT" value:&stru_10EF0 table:@"Localizable"];
    [v25 addObject:v42];

    if (v11)
    {
LABEL_24:
      if (v14)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v43 = [NSBundle bundleForClass:objc_opt_class()];
  v44 = [v43 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_SUBTITLE_SAVED" value:&stru_10EF0 table:@"Localizable"];
  [v25 addObject:v44];

  if ((v14 & 1) == 0)
  {
LABEL_25:
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_SUBTITLE_ISSUES" value:&stru_10EF0 table:@"Localizable"];
    [v25 addObject:v27];
  }

LABEL_26:
  if ((v50 & v17) == 1)
  {
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_SUBTITLE_PUZZLES" value:&stru_10EF0 table:@"Localizable"];
    [v25 addObject:v29];
  }

  if ((v18 & v21) == 1)
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_SUBTITLE_RECIPES" value:&stru_10EF0 table:@"Localizable"];
    [v25 addObject:v31];
  }

  if ((v49 & v24) == 1)
  {
    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_SUBTITLE_AUDIO" value:&stru_10EF0 table:@"Localizable"];
    [v25 addObject:v33];
  }

  if (v50)
  {
    v34 = 4;
  }

  else
  {
    v34 = 3;
  }

  v35 = [v25 count];
  v36 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v36 isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = v38;
    v40 = @"AUTOMATIC_DOWNLOADS_SUBTITLE_UNAVAILABLE_LPM";
LABEL_46:
    v46 = [v38 localizedStringForKey:v40 value:&stru_10EF0 table:@"Localizable"];

    goto LABEL_47;
  }

  if (([self isBackgroundRefreshEnabled] & 1) == 0)
  {
    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = v38;
    v40 = @"AUTOMATIC_DOWNLOADS_SUBTITLE_UNAVAILABLE_BAR";
    goto LABEL_46;
  }

  v45 = v47;
  if (!v35)
  {
    v45 = 1;
  }

  if (v45 == 1)
  {
    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = v38;
    v40 = @"AUTOMATIC_DOWNLOADS_SUBTITLE_OFF";
    goto LABEL_46;
  }

  if (v35 == (v34 + v18 + v49))
  {
    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = v38;
    v40 = @"AUTOMATIC_DOWNLOADS_SUBTITLE_ON";
    goto LABEL_46;
  }

  v46 = [v25 componentsJoinedByString:{@", "}];
LABEL_47:
  [specifierCopy setObject:v46 forKeyedSubscript:PSTableCellSubtitleTextKey];
}

- (void)showSportsSyncingPrivacyScreen
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mysports"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showGameCenterPrivacyScreen
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.gamecenter"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (BOOL)isUserSignedIntoICloud
{
  v2 = +[FCAppleAccount sharedAccount];
  isUserSignedInToiCloud = [v2 isUserSignedInToiCloud];

  return isUserSignedInToiCloud;
}

- (void)setShowStoriesFromFavorites:(id)favorites specifier:(id)specifier
{
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = FRNewsSettingsController;
  favoritesCopy = favorites;
  v8 = [(FRNewsSettingsController *)&v27 readPreferenceValue:specifierCopy];
  v9 = [(FRNewsSettingsController *)self localizedStringResourceWithKey:@"Restrict Stories in Today"];
  v10 = [NSURL URLWithString:@"prefs://root=News"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_6878;
  v24[3] = &unk_10898;
  v24[4] = self;
  v11 = v8;
  v25 = v11;
  v12 = specifierCopy;
  v26 = v12;
  [(FRNewsSettingsController *)self pe_registerUndoActionName:v9 associatedDeepLink:v10 undoAction:v24];

  [(FRNewsSettingsController *)self setPreferenceValue:favoritesCopy specifier:v12];
  LODWORD(v9) = [favoritesCopy BOOLValue];

  if (v9)
  {
    v13 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_10EF0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"RESTRICT_STORIES_ALERT_DESCRIPTION" value:&stru_10EF0 table:@"Localizable"];

    v16 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v16 userInterfaceIdiom];

    [v13 setPrompt:v15];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"RESTRICT_STORIES_ALERT_CANCEL_TITLE" value:&stru_10EF0 table:@"Localizable"];
    [v13 setCancelButton:v19];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = v20;
    if (userInterfaceIdiom)
    {
      v22 = [v20 localizedStringForKey:@"RESTRICT_STORIES_ALERT_TITLE_IPAD" value:&stru_10EF0 table:@"Localizable"];
      [v13 setTitle:v22];

      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [v21 localizedStringForKey:@"RESTRICT_STORIES_ALERT_TURN_ON_TITLE_IPAD" value:&stru_10EF0 table:@"Localizable"];
      [v13 setOkButton:v23];
    }

    else
    {
      v23 = [v20 localizedStringForKey:@"RESTRICT_STORIES_ALERT_TITLE_IPHONE" value:&stru_10EF0 table:@"Localizable"];
      [v13 setTitle:v23];
    }

    [v13 setConfirmationAction:"confirmAction"];
    [v13 setConfirmationCancelAction:"cancelAction"];
    [(FRNewsSettingsController *)self showConfirmationViewForSpecifier:v13];
  }

  else
  {
    [(FRNewsSettingsController *)self killNewsApp];
  }
}

- (void)cancelAction
{
  v3 = [(FRNewsSettingsController *)self specifierForID:@"showStoriesFromFavoritesSpecifierID"];
  [(FRNewsSettingsController *)self setPreferenceValue:&__kCFBooleanFalse specifier:v3];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:PSValueKey];
  [(FRNewsSettingsController *)self reloadSpecifier:v3 animated:1];
}

- (void)showCombinedPrivacyPane
{
  v3 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithIdentifiers:&off_12448];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)routeToNewsSubscription
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"applenews:///subscription"];
  [v3 openURL:v2 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)reloadSpecifiersOnMain
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6ABC;
  block[3] = &unk_10BA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)offlineModeSubscriberGroupDescription
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_4 + 2)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"NEWS_PLUS_OFFLINE_MODE_GROUP_DESCRIPTION_VISION_SUBSCRIBER";
    goto LABEL_7;
  }

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"NEWS_PLUS_OFFLINE_MODE_GROUP_DESCRIPTION_IPAD_SUBSCRIBER";
    goto LABEL_7;
  }

  if (!userInterfaceIdiom)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"NEWS_PLUS_OFFLINE_MODE_GROUP_DESCRIPTION_IPHONE_SUBSCRIBER";
LABEL_7:
    v7 = [v4 localizedStringForKey:v6 value:&stru_10EF0 table:@"Localizable"];

    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_A674();
  }

  v7 = @"UNKNOWN";
LABEL_11:

  return v7;
}

- (id)localizedStringResourceWithKey:(id)key
{
  keyCopy = key;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v8 bundleURL];
  v10 = [v6 initWithKey:keyCopy table:0 locale:v7 bundleURL:bundleURL2];

  return v10;
}

@end