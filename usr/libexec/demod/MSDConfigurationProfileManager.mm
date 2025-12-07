@interface MSDConfigurationProfileManager
+ (id)sharedInstance;
- (BOOL)installConfigurationProfile:(id)profile;
- (BOOL)installConfigurationProfileWithData:(id)data;
- (BOOL)installDefaultConfigurationProfile;
- (BOOL)installDemoModeConfigurationProfile;
- (BOOL)installRestrictionsConfigurationProfile:(id)profile;
- (BOOL)isConfigurationProfileInstalled:(id)installed;
- (BOOL)uninstallConfigurationProfile:(id)profile;
- (BOOL)uninstallConfigurationProfileIfNeeded:(id)needed;
- (BOOL)uninstallRestrictionsConfigurationProfile;
- (MSDConfigurationProfileManager)init;
- (void)uninstallAllDemoBundleConfigurationProfiles;
@end

@implementation MSDConfigurationProfileManager

+ (id)sharedInstance
{
  if (qword_1001A55C0 != -1)
  {
    sub_1000C58FC();
  }

  v3 = qword_1001A55B8;

  return v3;
}

- (MSDConfigurationProfileManager)init
{
  v8.receiver = self;
  v8.super_class = MSDConfigurationProfileManager;
  v2 = [(MSDConfigurationProfileManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [(MSDConfigurationProfileManager *)v2 setConfigurationProfilesSupported:v3];

    configurationProfilesSupported = [(MSDConfigurationProfileManager *)v2 configurationProfilesSupported];
    [configurationProfilesSupported addObject:@"com.apple.mobilestoredemo.demoProfile.standardPreferences"];

    configurationProfilesSupported2 = [(MSDConfigurationProfileManager *)v2 configurationProfilesSupported];
    [configurationProfilesSupported2 addObject:@"com.apple.mobilestoredemo.demoMode"];

    configurationProfilesSupported3 = [(MSDConfigurationProfileManager *)v2 configurationProfilesSupported];
    [configurationProfilesSupported3 addObject:@"com.apple.mobilestoredemo.demoProfile.supervisedRestrictions"];
  }

  return v2;
}

- (BOOL)installDefaultConfigurationProfile
{
  initWithDefaultProfile = [[MSDConfigurationProfile alloc] initWithDefaultProfile];
  LOBYTE(self) = [(MSDConfigurationProfileManager *)self installConfigurationProfile:initWithDefaultProfile];

  return self;
}

- (BOOL)installDemoModeConfigurationProfile
{
  initWithDemoModeProfile = [[MSDConfigurationProfile alloc] initWithDemoModeProfile];
  LOBYTE(self) = [(MSDConfigurationProfileManager *)self installConfigurationProfile:initWithDemoModeProfile];

  return self;
}

- (BOOL)installConfigurationProfile:(id)profile
{
  profileCopy = profile;
  profileIdentifier = [profileCopy profileIdentifier];
  v6 = [profileIdentifier isEqualToString:@"com.apple.mobilestoredemo.demoProfile.standardPreferences"];
  if (v6 & 1) != 0 || (v6 = [profileIdentifier isEqualToString:@"com.apple.mobilestoredemo.demoMode"], (v6) || (v6 = objc_msgSend(profileIdentifier, "isEqualToString:", @"com.apple.mobilestoredemo.defaultProfile"), v6))
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = profileIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Installing configuration profile: %{public}@", &v17, 0xCu);
    }

    v8 = [(MSDConfigurationProfileManager *)self uninstallConfigurationProfileIfNeeded:profileIdentifier];
    if (v8)
    {
      getProfileData = [profileCopy getProfileData];
      if (getProfileData)
      {
        v10 = [(MSDConfigurationProfileManager *)self installConfigurationProfileWithData:getProfileData];
        if (v10)
        {
          v11 = 1;
          goto LABEL_10;
        }

        v16 = sub_100063A54(v10);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5950();
        }
      }

      else
      {
        v16 = sub_100063A54(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5990();
        }
      }
    }

    else
    {
      getProfileData = sub_100063A54(v8);
      if (os_log_type_enabled(getProfileData, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5910();
      }
    }

LABEL_17:
    v11 = 0;
    goto LABEL_10;
  }

  v13 = [profileIdentifier isEqualToString:@"com.apple.mobilestoredemo.demoProfile.supervisedRestrictions"];
  v14 = v13;
  getProfileData = sub_100063A54(v13);
  v15 = os_log_type_enabled(getProfileData, OS_LOG_TYPE_DEFAULT);
  if (!v14)
  {
    if (v15)
    {
      v17 = 138543362;
      v18 = profileIdentifier;
      _os_log_impl(&_mh_execute_header, getProfileData, OS_LOG_TYPE_DEFAULT, "Unknown profile type: %{public}@", &v17, 0xCu);
    }

    goto LABEL_17;
  }

  if (v15)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, getProfileData, OS_LOG_TYPE_DEFAULT, "Installing restrictions configuration profile.", &v17, 2u);
  }

  getProfileData = [profileCopy getSupervisedRestrictions];
  v11 = [(MSDConfigurationProfileManager *)self installRestrictionsConfigurationProfile:getProfileData];
LABEL_10:

  return v11;
}

- (void)uninstallAllDemoBundleConfigurationProfiles
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling all existing configuration profiles.", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  configurationProfilesSupported = [(MSDConfigurationProfileManager *)self configurationProfilesSupported];
  v5 = [configurationProfilesSupported countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    *&v6 = 138543362;
    v14 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(configurationProfilesSupported);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (![v10 isEqualToString:{@"com.apple.mobilestoredemo.demoProfile.standardPreferences", v14}])
        {
          v12 = [v10 isEqualToString:@"com.apple.mobilestoredemo.demoProfile.supervisedRestrictions"];
          if (v12)
          {
            uninstallRestrictionsConfigurationProfile = [(MSDConfigurationProfileManager *)self uninstallRestrictionsConfigurationProfile];
            if (uninstallRestrictionsConfigurationProfile)
            {
              continue;
            }

LABEL_13:
            v13 = sub_100063A54(uninstallRestrictionsConfigurationProfile);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v14;
              v20 = v10;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to remove profile: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v13 = sub_100063A54(v12);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v14;
              v20 = v10;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unknown profile identifier found: %{public}@, Marking as removed.", buf, 0xCu);
            }
          }

          continue;
        }

        uninstallRestrictionsConfigurationProfile = [(MSDConfigurationProfileManager *)self uninstallConfigurationProfileIfNeeded:v10];
        if ((uninstallRestrictionsConfigurationProfile & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v7 = [configurationProfilesSupported countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }
}

- (BOOL)uninstallConfigurationProfileIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [(MSDConfigurationProfileManager *)self isConfigurationProfileInstalled:neededCopy];
  if (v5)
  {
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Uninstalling existing configuration profile.", v9, 2u);
    }

    v7 = [(MSDConfigurationProfileManager *)self uninstallConfigurationProfile:neededCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)installConfigurationProfileWithData:(id)data
{
  dataCopy = data;
  v4 = +[MCProfileConnection sharedConnection];
  v12 = 0;
  v5 = [v4 installProfileData:dataCopy outError:&v12];

  v6 = v12;
  v8 = sub_100063A54(v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully installed configuration profile.", v11, 2u);
    }
  }

  else
  {
    sub_1000C59D0(v8, v6);
  }

  return v5 != 0;
}

- (BOOL)uninstallConfigurationProfile:(id)profile
{
  profileCopy = profile;
  v5 = +[MCProfileConnection sharedConnection];
  [v5 removeProfileWithIdentifier:profileCopy];

  v6 = [(MSDConfigurationProfileManager *)self isConfigurationProfileInstalled:profileCopy];
  if (v6)
  {
    sub_1000C5A6C(v7);
  }

  return v6 ^ 1;
}

- (BOOL)isConfigurationProfileInstalled:(id)installed
{
  installedCopy = installed;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[MCProfileConnection sharedConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009078;
  v8[3] = &unk_100169D58;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [v5 isProfileInstalledWithIdentifier:installedCopy completion:v8];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v5) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)installRestrictionsConfigurationProfile:(id)profile
{
  v3 = 1;
  v11 = 1;
  profileCopy = profile;
  v5 = +[MCProfileConnection sharedConnection];
  v10 = 0;
  [v5 applyRestrictionDictionary:profileCopy clientType:@"com.apple.mobilestoredemod" clientUUID:@"com.apple.mobilestoredemod" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:&v11 outEffectiveSettingsChanged:0 outError:&v10];

  v6 = v10;
  v7 = v6;
  if ((v11 & 1) == 0)
  {
    v8 = sub_100063A54(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5B4C();
    }

    v3 = v11;
  }

  return v3 & 1;
}

- (BOOL)uninstallRestrictionsConfigurationProfile
{
  v2 = 1;
  v9 = 1;
  v3 = +[MCProfileConnection sharedConnection];
  v8 = 0;
  [v3 applyRestrictionDictionary:0 clientType:@"com.apple.mobilestoredemod" clientUUID:@"com.apple.mobilestoredemod" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:&v9 outEffectiveSettingsChanged:0 outError:&v8];
  v4 = v8;
  v5 = v4;
  if ((v9 & 1) == 0)
  {
    v6 = sub_100063A54(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5BC0();
    }

    v2 = v9;
  }

  return v2 & 1;
}

@end