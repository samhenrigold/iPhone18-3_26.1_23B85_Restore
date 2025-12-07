@interface HPSSpatialProfileManager
+ (BOOL)isProfileExisting;
+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)device;
+ (BOOL)isProxCardShowed;
+ (BOOL)isSettingsEnrollmentSupported;
+ (id)profileEnrollmentViewController;
+ (id)profileManagementSpecifier;
+ (id)spatialProfileStatus;
+ (void)setProxCardShowed:(BOOL)showed;
+ (void)setProxCardShowed:(BOOL)showed forDevice:(id)device;
@end

@implementation HPSSpatialProfileManager

+ (BOOL)isSettingsEnrollmentSupported
{
  v23 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v2 = MGCopyAnswer();
    bOOLValue = [v2 BOOLValue];
    v4 = MGGetStringAnswer();
    v5 = [v4 isEqualToString:@"iPhone"];
    v6 = MGGetBoolAnswer();
    v7 = v6;
    v8 = bOOLValue & v5;
    v9 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "No";
      if (v8)
      {
        v11 = "Yes";
      }

      else
      {
        v11 = "No";
      }

      if (bOOLValue)
      {
        v12 = "Yes";
      }

      else
      {
        v12 = "No";
      }

      v15 = 136315906;
      v16 = v11;
      if (v5)
      {
        v13 = "Yes";
      }

      else
      {
        v13 = "No";
      }

      v17 = 2080;
      v18 = v12;
      v19 = 2080;
      v20 = v13;
      if (v7)
      {
        v10 = "Yes";
      }

      v21 = 2080;
      v22 = v10;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Feature Enabled, Local Support: %s, HW Support: %s, is iPhone: %s iPhone with ANE: %s", &v15, 0x2Au);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)device
{
  v55 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v17 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[HPSSpatialProfileManager isProxCardEnrollmentSupportedForDevice:];
    }

    v18 = 0;
LABEL_50:

    goto LABEL_51;
  }

  if (_os_feature_enabled_impl())
  {
    selfCopy = self;
    isSettingsEnrollmentSupported = [self isSettingsEnrollmentSupported];
    v38 = +[HPSSpatialProfileManager isProxCardShowed];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    pairedDevices = [mEMORY[0x277CF3248] pairedDevices];

    v7 = [pairedDevices countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v7)
    {
      v8 = *v43;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(pairedDevices);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        address = [v10 address];
        uppercaseString = [address uppercaseString];
        uppercaseString2 = [deviceCopy uppercaseString];
        v14 = [uppercaseString isEqualToString:uppercaseString2];

        if (v14)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [pairedDevices countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      getSpatialAudioPlatformSupport = [v10 getSpatialAudioPlatformSupport];
      v20 = getSpatialAudioPlatformSupport;
      v16 = getSpatialAudioPlatformSupport == 1;
      v21 = sharedBluetoothSettingsLogComponent(getSpatialAudioPlatformSupport);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "NO";
        if (v20 == 1)
        {
          v22 = "YES";
        }

        *buf = 138412546;
        *&buf[4] = deviceCopy;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        _os_log_impl(&dword_251143000, v21, OS_LOG_TYPE_DEFAULT, "Spatial Profile: %@, Remote Support: %s", buf, 0x16u);
      }

      if ((isSettingsEnrollmentSupported & (v20 == 1)) == 1)
      {
        isProfileExisting = [selfCopy isProfileExisting];
        v18 = (isProfileExisting | v38) ^ 1;
        v16 = 1;
        goto LABEL_23;
      }
    }

    else
    {
LABEL_11:

      v16 = 0;
    }

    v18 = 0;
LABEL_23:
    if (!v38)
    {
      isProfileExisting = _os_feature_enabled_impl();
      if (isProfileExisting)
      {
        v23 = [objc_alloc(MEMORY[0x277D0F968]) initWithCameraSession:0];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v47) = 0;
        v24 = dispatch_group_create();
        dispatch_group_enter(v24);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __67__HPSSpatialProfileManager_isProxCardEnrollmentSupportedForDevice___block_invoke;
        v39[3] = &unk_2796AE1D8;
        v41 = buf;
        v25 = v24;
        v40 = v25;
        [v23 downloadHRTFAsset:1 withCompletion:v39];
        v26 = dispatch_time(0, 500000000);
        v27 = dispatch_group_wait(v25, v26);
        v28 = sharedBluetoothSettingsLogComponent(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = @"timed out";
          if (!v27)
          {
            v29 = @"succeeded";
          }

          *v52 = 138412290;
          v53 = v29;
          _os_log_impl(&dword_251143000, v28, OS_LOG_TYPE_DEFAULT, "Spatial Profile: downloadAsset %@", v52, 0xCu);
        }

        if (v18)
        {
          v18 = *(*&buf[8] + 24);
        }

        else
        {
          v18 = 0;
        }

        _Block_object_dispose(buf, 8);
      }
    }

    v17 = sharedBluetoothSettingsLogComponent(isProfileExisting);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if (v18)
      {
        v30 = "Yes";
      }

      else
      {
        v30 = "No";
      }

      if (isSettingsEnrollmentSupported)
      {
        v31 = "Yes";
      }

      else
      {
        v31 = "No";
      }

      if (v16)
      {
        v32 = "Yes";
      }

      else
      {
        v32 = "No";
      }

      if ([selfCopy isProfileExisting])
      {
        v33 = "Yes";
      }

      else
      {
        v33 = "No";
      }

      *buf = 136316162;
      if (v38)
      {
        v34 = "Yes";
      }

      else
      {
        v34 = "No";
      }

      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      *&buf[22] = 2080;
      v47 = v32;
      v48 = 2080;
      v49 = v33;
      v50 = 2080;
      v51 = v34;
      _os_log_impl(&dword_251143000, v17, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Overall Support: %s => Feature Enabled, Local Support: %s, Remote Support: %s, Profile Existing: %s, Prox Card Presented: %s", buf, 0x34u);
    }

    goto LABEL_50;
  }

  v18 = 0;
LABEL_51:

  return v18 & 1;
}

void __67__HPSSpatialProfileManager_isProxCardEnrollmentSupportedForDevice___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = sharedBluetoothSettingsLogComponent(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = a2;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: downloadHRTFAsset isDownloaded %d, path %@, error %@", v10, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    CFPreferencesSetAppValue(@"downloadAssetPath", v7, @"com.apple.BTServer");
    CFPreferencesAppSynchronize(@"com.apple.BTServer");
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (void)setProxCardShowed:(BOOL)showed forDevice:(id)device
{
  showedCopy = showed;
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    v6 = MEMORY[0x277CBED28];
    if (!showedCopy)
    {
      v6 = MEMORY[0x277CBED10];
    }

    CFPreferencesSetAppValue(@"isSpatialProfileShowed", *v6, @"com.apple.BTServer");
    v7 = CFPreferencesAppSynchronize(@"com.apple.BTServer");
    v8 = sharedBluetoothSettingsLogComponent(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "NO";
      if (showedCopy)
      {
        v9 = "YES";
      }

      v10 = 136315394;
      v11 = v9;
      v12 = 2112;
      v13 = deviceCopy;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Set Prox Card Showd to %s for Device: %@", &v10, 0x16u);
    }
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[HPSSpatialProfileManager setProxCardShowed:forDevice:];
    }
  }
}

+ (void)setProxCardShowed:(BOOL)showed
{
  showedCopy = showed;
  v10 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBED10];
  if (showed)
  {
    v4 = MEMORY[0x277CBED28];
  }

  CFPreferencesSetAppValue(@"isSpatialProfileShowed", *v4, @"com.apple.BTServer");
  v5 = CFPreferencesAppSynchronize(@"com.apple.BTServer");
  v6 = sharedBluetoothSettingsLogComponent(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (showedCopy)
    {
      v7 = "YES";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: update prox card status via Enrollment : %s ", &v8, 0xCu);
  }
}

+ (BOOL)isProxCardShowed
{
  v14 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"isSpatialProfileShowed", @"com.apple.BTServer", &keyExistsAndHasValidFormat);
  v3 = AppBooleanValue;
  v4 = sharedBluetoothSettingsLogComponent(AppBooleanValue);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "YES";
    if (v3)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (!keyExistsAndHasValidFormat)
    {
      v5 = "NO";
    }

    *buf = 136315394;
    v11 = v6;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Check if prox card is shown, showed %s %s ", buf, 0x16u);
  }

  if (v3)
  {
    v7 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

+ (id)profileEnrollmentViewController
{
  v10 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    v2 = objc_alloc_init(HPSSpatialProfileEnrollmentController);
LABEL_7:
    v6 = [[HPSSpatialProfileNavigationController alloc] initWithRootViewController:v2];
    goto LABEL_8;
  }

  v2 = objc_alloc_init(HPSSpatialProfileSingeStepEnrollmentController);
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  v3 = CFPreferencesCopyAppValue(@"downloadAssetPath", @"com.apple.BTServer");
  v4 = sharedBluetoothSettingsLogComponent(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: settting savedHRTFAssetPath %@", &v8, 0xCu);
    }

    [(HPSSpatialProfileEnrollmentController *)v2 setDownloadAssetPath:v3];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[HPSSpatialProfileManager profileEnrollmentViewController];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)profileManagementSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel_spatialProfileStatus detail:objc_opt_class() cell:2 edit:0];

  return v6;
}

+ (id)spatialProfileStatus
{
  if ([self isProfileExisting])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"ON" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  }

  else
  {
    v3 = &stru_286339F58;
  }

  return v3;
}

+ (BOOL)isProfileExisting
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CF3260]);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __45__HPSSpatialProfileManager_isProfileExisting__block_invoke;
  v14 = &unk_2796AE200;
  v16 = &v17;
  v4 = v3;
  v15 = v4;
  [v2 fetchSoundProfileRecordWithCompletion:&v11];

  v5 = dispatch_time(0, 1000000000);
  v6 = dispatch_group_wait(v4, v5);
  v7 = sharedBluetoothSettingsLogComponent(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v18 + 24);
    *buf = 67109120;
    v22 = v8;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: isProfileExisting %i", buf, 8u);
  }

  [v2 invalidate];
  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9 & 1;
}

void __45__HPSSpatialProfileManager_isProfileExisting__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sharedBluetoothSettingsLogComponent(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __45__HPSSpatialProfileManager_isProfileExisting__block_invoke_cold_1(v7, v8);
    }

LABEL_4:

    goto LABEL_5;
  }

  v9 = sharedBluetoothSettingsLogComponent(0);
  v8 = v9;
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __45__HPSSpatialProfileManager_isProfileExisting__block_invoke_cold_2();
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 soundProfileData];
    v13 = 134217984;
    v14 = [v10 length];
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: isProfileExisting Profile Data Size: %lu", &v13, 0xCu);
  }

  v11 = [v5 soundProfileData];
  v12 = [v11 length];

  if (v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 32));
}

void __45__HPSSpatialProfileManager_isProfileExisting__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, "Spatial Profile: isProfileExisting Error: %@", &v2, 0xCu);
}

@end