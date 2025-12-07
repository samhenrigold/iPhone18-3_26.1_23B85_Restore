@interface PreferencesDataMigrator
- (BOOL)performMigration;
- (float)migrationProgress;
- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud;
- (void)_performCombinedLocationSettingsMigrationForBundles:(id)bundles key:(id)key enable:(id)enable;
- (void)_performImproveMapsSettingsMigration;
- (void)_performIsAppAndAccessoryAnalyticsAllowedRemovalMigration;
- (void)_performLocationBasedAlertSettingsMigration;
- (void)_performLocationHomeKitSettingsMigration;
- (void)_performLocationRoutingAndTrafficSettingsMigration;
- (void)_performLocationWifiBluetoothUWBSettingsMigration;
- (void)_performLockdownModeMigration;
- (void)_performPeaceRestrictionsPinMigration;
- (void)_performSydneyHTTP3DeveloperOptInMigration;
- (void)_performSystemCustomizationSettingsMigration;
- (void)_performTigrisAutoBrightnessMigration;
- (void)_performTigrisHWAutoLockMigration;
- (void)_performTigrisSoundSettingsMigration;
- (void)_performYukonRevertSoundSettingsMigration;
@end

@implementation PreferencesDataMigrator

- (float)migrationProgress
{
  result = 0.0;
  if (self->_done)
  {
    return 1.0;
  }

  return result;
}

- (void)_performTigrisAutoBrightnessMigration
{
  if (([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup])
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ranTigrisAutoBrightnessMigrator11.0", @"com.apple.Preferences", 0);
    if (!AppBooleanValue)
    {
      v4 = sub_F18(AppBooleanValue);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Running Auto-Brightness migration", v5, 2u);
      }

      CFPreferencesSetAppValue(@"BKEnableALS", 0, @"com.apple.backboardd");
      CFPreferencesSynchronize(@"com.apple.backboardd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }
  }

  CFPreferencesSetAppValue(@"ranTigrisAutoBrightnessMigrator11.0", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_performTigrisHWAutoLockMigration
{
  if (PSIsPearlAvailable())
  {
    if (([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup])
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ranTigrisHWAutoLockMigrator11.0", @"com.apple.Preferences", 0);
      if (!AppBooleanValue)
      {
        v4 = sub_F18(AppBooleanValue);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Running Auto-Lock migration.", v8, 2u);
        }

        v5 = +[MCProfileConnection sharedConnection];
        v6 = MCFeatureAutoLockTime;
        v7 = [v5 defaultValueForSetting:MCFeatureAutoLockTime];
        [v5 setValue:v7 forSetting:v6];
      }
    }

    CFPreferencesSetAppValue(@"ranTigrisHWAutoLockMigrator11.0", kCFBooleanTrue, @"com.apple.Preferences");
  }
}

- (void)_performLocationBasedAlertSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController locationBasedAlertBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationBasedAlertsMigrationVersionHash"];
}

- (void)_performLocationHomeKitSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController homeKitBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationHomeKitMigrationVersionHash"];
}

- (void)_performLocationRoutingAndTrafficSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController routingAndTrafficBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationRoutingAndTrafficMigrationVersionHash"];
}

- (void)_performLocationWifiBluetoothUWBSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController wirelessBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationWifiBluetoothUWBMigrationVersionHash"];
}

- (void)_performSystemCustomizationSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController systemCustomizationBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationSystemCustomizationMigrationVersionHash"];
}

- (void)_performImproveMapsSettingsMigration
{
  v3 = GEOGetDefaultInteger() == 2;
  v5 = +[PUILocationSystemServicesListController improveMapsBundles];
  v4 = [NSNumber numberWithBool:v3];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v5 key:@"locationImproveMapsMigrationVersionHash" enable:v4];
}

- (void)_performCombinedLocationSettingsMigrationForBundles:(id)bundles key:(id)key enable:(id)enable
{
  selfCopy = self;
  bundlesCopy = bundles;
  key = key;
  enableCopy = enable;
  v8 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = bundlesCopy;
  v9 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v70;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v70 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v69 + 1) + 8 * i);
        v14 = +[NSFileManager defaultManager];
        v15 = [v14 fileExistsAtPath:v13];

        if (v15)
        {
          [v8 addObject:v13];
        }

        else
        {
          v17 = sub_F18(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            keyCopy7 = key;
            v77 = 2114;
            v78 = v13;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Bundle for key %{public}@ in the bundle list but not on disk: %{public}@", buf, 0x16u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v18 = [v8 componentsJoinedByString:{@", "}];
    v19 = [v18 hash];

    keyCopy6 = key;
    if (([(PreferencesDataMigrator *)selfCopy didUpgrade]& 1) != 0 || (v21 = [(PreferencesDataMigrator *)selfCopy didRestoreFromBackup], v21))
    {
      v58 = v19;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(key, @"com.apple.Preferences", 0);
      v23 = sub_F18(AppIntegerValue);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [NSNumber numberWithInteger:AppIntegerValue];
        *buf = 138543618;
        keyCopy7 = key;
        v77 = 2114;
        v78 = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Running combined location settings migration for key: %{public}@ from hash %{public}@", buf, 0x16u);
      }

      v25 = CLCopyAppsUsingLocation();
      v26 = v25;
      if (enableCopy)
      {
        bOOLValue = [enableCopy BOOLValue];
        v28 = bOOLValue;
      }

      else
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v31 = v25;
        v32 = [(PreferencesDataMigrator *)v31 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v32)
        {
          v33 = v32;
          selfCopy = v26;
          v34 = *v66;
          while (2)
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v66 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v65 + 1) + 8 * j);
              selfCopy = [(PreferencesDataMigrator *)v31 objectForKeyedSubscript:v36, selfCopy];
              v38 = [selfCopy objectForKeyedSubscript:@"BundlePath"];

              v39 = [v8 objectAtIndexedSubscript:0];
              v40 = [v38 isEqualToString:v39];

              if (v40)
              {
                v41 = [(PreferencesDataMigrator *)v31 objectForKeyedSubscript:v36];
                v28 = [CLLocationManager isEntityAuthorizedForLocationDictionary:v41];

                goto LABEL_33;
              }
            }

            v33 = [(PreferencesDataMigrator *)v31 countByEnumeratingWithState:&v65 objects:v74 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }

          v28 = 0;
LABEL_33:
          keyCopy6 = key;
          v26 = selfCopy;
        }

        else
        {
          v28 = 0;
        }
      }

      v42 = sub_F18(bOOLValue);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = @"OFF";
        if (v28)
        {
          v43 = @"ON";
        }

        *buf = 138543618;
        keyCopy7 = keyCopy6;
        v77 = 2114;
        v78 = v43;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "State for key %{public}@ was %{public}@", buf, 0x16u);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v44 = v26;
      v45 = [(PreferencesDataMigrator *)v44 countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v62;
        if (v28)
        {
          v48 = 4;
        }

        else
        {
          v48 = 1;
        }

        do
        {
          for (k = 0; k != v46; k = k + 1)
          {
            if (*v62 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v50 = *(*(&v61 + 1) + 8 * k);
            selfCopy2 = [(PreferencesDataMigrator *)v44 objectForKeyedSubscript:v50, selfCopy];
            v52 = [selfCopy2 objectForKeyedSubscript:@"BundlePath"];

            if ([v8 containsObject:v52])
            {
              v53 = [(PreferencesDataMigrator *)v44 objectForKeyedSubscript:v50];
              [CLLocationManager setEntityAuthorization:v48 forLocationDictionary:v53];
            }
          }

          v46 = [(PreferencesDataMigrator *)v44 countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v46);
      }

      keyCopy6 = key;
      v19 = v58;
    }

    v54 = sub_F18(v21);
    v30 = enableCopy;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [NSNumber numberWithInteger:v19];
      *buf = 138543618;
      keyCopy7 = keyCopy6;
      v77 = 2114;
      v78 = v55;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "Ran combined location settings migration for key %{public}@ for version hash %{public}@", buf, 0x16u);
    }

    v29 = [NSNumber numberWithInteger:v19];
    CFPreferencesSetAppValue(keyCopy6, v29, @"com.apple.Preferences");
  }

  else
  {
    v29 = sub_F18(0);
    keyCopy6 = key;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      keyCopy7 = key;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Skipping combined location settings migration for key: %{public}@ because there are no bundles on disk", buf, 0xCu);
    }

    v30 = enableCopy;
  }
}

- (void)_performTigrisSoundSettingsMigration
{
  if (!CFPreferencesGetAppBooleanValue(@"ranSoundMigrator11.0", @"com.apple.Preferences", 0) && [(PreferencesDataMigrator *)self didMigrateBackupFromDifferentDevice])
  {
    v3 = SHSSoundsPreferencesDomain;
    CFPreferencesSetAppValue(SHSCanAdjustVolumeUsingButtonsPreferencesKey, 0, SHSSoundsPreferencesDomain);
    CFPreferencesSynchronize(v3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.preferences.sounds.buttons-can-change-ringer-volume.changed", 0, 0, 1u);

    CFPreferencesSetAppValue(@"ranSoundMigrator11.0", kCFBooleanTrue, @"com.apple.Preferences");
  }
}

- (void)_performYukonRevertSoundSettingsMigration
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ranSoundMigrator13.0", @"com.apple.Preferences", 0);
  v3 = AppBooleanValue;
  v4 = sub_F18(AppBooleanValue);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v3 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: _performYukonRevertSoundSettingsMigration: %{BOOL}d", buf, 8u);
  }

  if (!v3)
  {
    keyExistsAndHasValidFormat = 0;
    v5 = SHSSoundsPreferencesDomain;
    v6 = CFPreferencesGetAppBooleanValue(SHSCanAdjustVolumeUsingButtonsPreferencesForSpringBoardKey, SHSSoundsPreferencesDomain, &keyExistsAndHasValidFormat);
    v7 = sub_F18(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = keyExistsAndHasValidFormat;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: isNewDefaultValid: %{BOOL}d newDefault: %{BOOL}d", buf, 0xEu);
    }

    if (keyExistsAndHasValidFormat)
    {
      CFPreferencesSetValue(SHSCanAdjustVolumeUsingButtonsPreferencesKey, [NSNumber numberWithUnsignedChar:v6], v5, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }
  }

  CFPreferencesSetAppValue(@"ranSoundMigrator13.0", kCFBooleanTrue, @"com.apple.Preferences");
  CFPreferencesSetAppValue(@"ranSoundMigrator12.0", 0, @"com.apple.Preferences");
}

- (void)_performPeaceRestrictionsPinMigration
{
  if ((([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup]) && !CFPreferencesGetAppBooleanValue(@"ranRestrictionsPINMigrator12.0", @"com.apple.Preferences", 0))
  {
    +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];
  }

  CFPreferencesSetAppValue(@"ranRestrictionsPINMigrator12.0", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_performSydneyHTTP3DeveloperOptInMigration
{
  if (([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup])
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ranHTTP3DeveloperOptInMigrator16.0", @"com.apple.Preferences", 0);
    if (!AppBooleanValue)
    {
      v4 = sub_F18(AppBooleanValue);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Running HTTP/3 developer opt-in migration", v5, 2u);
      }

      CFPreferencesSetAppValue(@"CFNetworkHTTP3Override", 0, @"Apple Global Domain");
    }
  }

  CFPreferencesSetAppValue(@"ranHTTP3DeveloperOptInMigrator16.0", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_performLockdownModeMigration
{
  v2 = sub_F18(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Running Lockdown Mode's migrateIfNeeded…", v6, 2u);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_C308;
  v10 = qword_C308;
  if (!qword_C308)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_27C0;
    v6[3] = &unk_82D0;
    v6[4] = &v7;
    sub_27C0(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  shared = [v3 shared];
  [shared migrateIfNeededWithCompletion:&stru_82A8];
}

- (void)_performIsAppAndAccessoryAnalyticsAllowedRemovalMigration
{
  if ((([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup]) && !CFPreferencesGetAppBooleanValue(@"isAppAndAccessoryAnalyticsAllowedRemoval", @"com.apple.Preferences", 0))
  {
    v3 = +[MCProfileConnection sharedConnection];
    [v3 removeBoolSetting:MCFeatureAppAndAccessoryAnalyticsAllowed];
  }

  CFPreferencesSetAppValue(@"isAppAndAccessoryAnalyticsAllowedRemoval", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  keyCopy = key;
  domainCopy = domain;
  toKeyCopy = toKey;
  toDomainCopy = toDomain;
  v15 = CFPreferencesCopyAppValue(keyCopy, domainCopy);
  v16 = CFPreferencesCopyAppValue(toKeyCopy, toDomainCopy);
  v17 = v16;
  if (v15)
  {
    v18 = sub_F18(v16);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v26 = 138412546;
        v27 = domainCopy;
        v28 = 2112;
        v29 = keyCopy;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Removing defunct pref '%@' '%@'", &v26, 0x16u);
      }
    }

    else
    {
      if (v19)
      {
        v26 = 138413058;
        v27 = domainCopy;
        v28 = 2112;
        v29 = keyCopy;
        v30 = 2112;
        v31 = toDomainCopy;
        v32 = 2112;
        v33 = toKeyCopy;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Migrating pref '%@' '%@' => '%@' '%@'", &v26, 0x2Au);
      }

      CFPreferencesSetAppValue(toKeyCopy, v15, toDomainCopy);
    }

    CFPreferencesSetAppValue(keyCopy, 0, domainCopy);
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (cloudCopy)
  {
    v20 = [[NSUserDefaults alloc] initWithSuiteName:domainCopy];
    v21 = [v20 objectForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[NSUserDefaults alloc] initWithSuiteName:toDomainCopy];
      v23 = [v22 objectForKey:toKeyCopy];
      v24 = sub_F18(v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          v26 = 138412546;
          v27 = domainCopy;
          v28 = 2112;
          v29 = keyCopy;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Removing defunct cloud pref '%@' '%@'", &v26, 0x16u);
        }
      }

      else
      {
        if (v25)
        {
          v26 = 138413058;
          v27 = domainCopy;
          v28 = 2112;
          v29 = keyCopy;
          v30 = 2112;
          v31 = toDomainCopy;
          v32 = 2112;
          v33 = toKeyCopy;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Migrating cloud pref from '%@' '%@' => '%@' %@'", &v26, 0x2Au);
        }

        [v22 setBool:objc_msgSend(v21 forKey:{"BOOLValue"), toKeyCopy}];
      }

      [v20 removeObjectForKey:keyCopy];
    }
  }
}

- (BOOL)performMigration
{
  didRestoreFromBackup = [(PreferencesDataMigrator *)self didRestoreFromBackup];
  didUpgrade = [(PreferencesDataMigrator *)self didUpgrade];
  didMigrateBackupFromDifferentDevice = [(PreferencesDataMigrator *)self didMigrateBackupFromDifferentDevice];
  v6 = didMigrateBackupFromDifferentDevice;
  v7 = sub_F18(didMigrateBackupFromDifferentDevice);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109632;
    DWORD1(buf) = didRestoreFromBackup;
    WORD4(buf) = 1024;
    *(&buf + 10) = didUpgrade;
    HIWORD(buf) = 1024;
    LODWORD(v23) = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: didRestore=%d, didUpgrade=%d, didMigrateFromDifferentDevice=%d", &buf, 0x14u);
  }

  v9 = sub_F18(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CFCopySystemVersionString();
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Running %@", &buf, 0xCu);
  }

  [(PreferencesDataMigrator *)self _performTigrisAutoBrightnessMigration];
  [(PreferencesDataMigrator *)self _performTigrisHWAutoLockMigration];
  [(PreferencesDataMigrator *)self _performPeaceRestrictionsPinMigration];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v11 = qword_C318;
  v21 = qword_C318;
  if (!qword_C318)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v23 = sub_2978;
    v24 = &unk_82D0;
    v25 = &v18;
    sub_2978(&buf);
    v11 = v19[3];
  }

  v12 = v11;
  _Block_object_dispose(&v18, 8);
  sharedManager = [v11 sharedManager];
  isMultiUser = [sharedManager isMultiUser];

  if ((isMultiUser & 1) == 0)
  {
    PSMigrateSoundsDefaults_10_0();
  }

  [(PreferencesDataMigrator *)self _performTigrisSoundSettingsMigration];
  [(PreferencesDataMigrator *)self _performYukonRevertSoundSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationHomeKitSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationBasedAlertSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationRoutingAndTrafficSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationWifiBluetoothUWBSettingsMigration];
  [(PreferencesDataMigrator *)self _performSystemCustomizationSettingsMigration];
  [(PreferencesDataMigrator *)self _performImproveMapsSettingsMigration];
  [(PreferencesDataMigrator *)self _performSydneyHTTP3DeveloperOptInMigration];
  [(PreferencesDataMigrator *)self _performLockdownModeMigration];
  _performIsAppAndAccessoryAnalyticsAllowedRemovalMigration = [(PreferencesDataMigrator *)self _performIsAppAndAccessoryAnalyticsAllowedRemovalMigration];
  self->_done = 1;
  v16 = sub_F18(_performIsAppAndAccessoryAnalyticsAllowedRemovalMigration);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: Finished.", &buf, 2u);
  }

  return 1;
}

@end