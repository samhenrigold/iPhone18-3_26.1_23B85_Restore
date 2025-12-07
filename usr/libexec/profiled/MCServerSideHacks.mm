@interface MCServerSideHacks
+ (id)mergeArray:(id)array withArray:(id)withArray;
+ (id)sharedHacks;
+ (void)setAllowHacksToCallExternalComponents:(BOOL)components;
- (BOOL)_anyBoolRestrictionChangedInSet:(id)set oldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions;
- (BOOL)applyEffectiveSettings:(id)settings toSettings:(id)toSettings withOldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions;
- (id)recomputeAccountVPNAssociations;
- (void)_applyServerSideChangesWithOldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions oldEffectiveUserSettings:(id)settings newEffectiveUserSettings:(id)userSettings;
- (void)applyEffectiveSettings:(id)settings toOtherSubsystemsWithCredentialSet:(id)set;
- (void)applyGracePeriodSettingFromKeybagToUserSettings;
- (void)recomputeAppOptionsEffectiveUserSettings:(id)settings outEffectiveChangeDetected:(BOOL *)detected;
- (void)recomputeAppRulesForNetworkExtension;
- (void)recomputeHacksAfterProfileChangesEffectiveUserSettings:(id)settings sendNotifications:(BOOL)notifications;
- (void)recomputeWebContentFilterEffectiveUserSettings:(id)settings outEffectiveChangeDetected:(BOOL *)detected outMechanismChangedDetected:(BOOL *)changedDetected;
- (void)resetSettingsSender:(id)sender;
- (void)setUserTrackingTCCAccessOverrideForRestrictions:(id)restrictions;
@end

@implementation MCServerSideHacks

+ (void)setAllowHacksToCallExternalComponents:(BOOL)components
{
  componentsCopy = components;
  byte_100136660 = components;
  v4 = +[MCActivationUtilities sharedInstance];
  [v4 setIsReady:componentsCopy];
}

+ (id)sharedHacks
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MCServerSideHacks;
  v2 = objc_msgSendSuper2(&v4, "sharedHacks");

  return v2;
}

- (BOOL)_anyBoolRestrictionChangedInSet:(id)set oldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions
{
  setCopy = set;
  restrictionsCopy = restrictions;
  newRestrictionsCopy = newRestrictions;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = setCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (([MCRestrictionManagerWriter restrictedBool:*(*(&v15 + 1) + 8 * i) changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy, v15]& 1) != 0)
        {
          LOBYTE(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (void)_applyServerSideChangesWithOldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions oldEffectiveUserSettings:(id)settings newEffectiveUserSettings:(id)userSettings
{
  restrictionsCopy = restrictions;
  newRestrictionsCopy = newRestrictions;
  settingsCopy = settings;
  userSettingsCopy = userSettings;
  if ((byte_100136660 & 1) == 0)
  {
    v30 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Not calling out to external components.", buf, 2u);
    }

    goto LABEL_72;
  }

  if ([MCRestrictionManager BOOLSetting:MCFeatureEncryptedBackupRequired valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy])
  {
    [(MCServerSideHacks *)self _setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings:userSettingsCopy];
  }

  v14 = MCFeatureAppInstallationAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAppInstallationAllowed valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy])
  {
    v15 = [MCRestrictionManager BOOLSettingForFeature:v14 withUserSettingDictionary:userSettingsCopy]!= 2;
    v16 = MCLockdownOperationQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009145C;
    block[3] = &unk_10011CE68;
    v82 = v15;
    dispatch_async(v16, block);
  }

  v17 = MCFeatureAppRemovalAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAppRemovalAllowed valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy])
  {
    v18 = [MCRestrictionManager BOOLSettingForFeature:v17 withUserSettingDictionary:userSettingsCopy]!= 2;
    v19 = MCLockdownOperationQueue();
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1000914E4;
    v79[3] = &unk_10011CE68;
    v80 = v18;
    dispatch_async(v19, v79);
  }

  v20 = MCFeatureHostPairingAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureHostPairingAllowed valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy]&& [MCRestrictionManager BOOLSettingForFeature:v20 withUserSettingDictionary:userSettingsCopy]== 2)
  {
    v21 = MCLockdownOperationQueue();
    dispatch_async(v21, &stru_10011CE88);
  }

  if ([MCRestrictionManager unionValuesSetting:MCFeatureTrustedCodeSigningIdentities valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy])
  {
    v22 = +[MCProvisioningProfileJanitor sharedJanitor];
    [v22 updateMISTrust];
  }

  v23 = MCFeatureAllowGlobalBackgroundFetchWhenRoaming;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAllowGlobalBackgroundFetchWhenRoaming valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy])
  {
    [MCRestrictionManager BOOLSettingForFeature:v23 withUserSettingDictionary:userSettingsCopy];
    PCSettingsSetGlobalMCCForceManualWhenRoaming();
  }

  v24 = MCFeatureAssistantAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureAssistantAllowed valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy]&& [MCRestrictionManager BOOLSettingForFeature:v24 withUserSettingDictionary:userSettingsCopy]== 2)
  {
    CFPreferencesSetAppValue(@"Assistant Enabled", kCFBooleanFalse, @"com.apple.assistant.support");
    CFPreferencesAppSynchronize(@"com.apple.assistant.support");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kAFPreferencesDidChangeDarwinNotification", 0, 0, 1u);
  }

  v26 = MCFeatureFIPSVerificationForced;
  if ([MCRestrictionManager BOOLSetting:MCFeatureFIPSVerificationForced valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy])
  {
    if ([MCRestrictionManager BOOLSettingForFeature:v26 withUserSettingDictionary:userSettingsCopy]== 1)
    {
      v27 = +[NSData data];
      [v27 writeToFile:@"/var/mobile/Library/Preferences/enable_fips_mode" atomically:0];

      v28 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "Turning on FIPS verification.";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
      }
    }

    else
    {
      v31 = +[NSFileManager defaultManager];
      [v31 removeItemAtPath:@"/var/mobile/Library/Preferences/enable_fips_mode" error:0];

      v28 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "Turning off FIPS verification.";
        goto LABEL_26;
      }
    }
  }

  v32 = MCFeatureDiagnosticsSubmissionAllowed;
  if ([MCRestrictionManager BOOLSetting:MCFeatureDiagnosticsSubmissionAllowed valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy]&& [MCRestrictionManager BOOLSettingForFeature:v32 withUserSettingDictionary:settingsCopy])
  {
    v33 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v33, @"com.apple.OTACrashCopier.SubmissionPreferenceChanged", 0, 0, 1u);
  }

  v34 = MCFeatureCloudKeychainSyncAllowed;
  if (![MCRestrictionManager restrictedBool:MCFeatureCloudKeychainSyncAllowed changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy]|| [MCRestrictionManager restrictedBoolForFeature:v34 withRestrictionsDictionary:newRestrictionsCopy]!= 2)
  {
    goto LABEL_39;
  }

  selfCopy = self;
  v36 = userSettingsCopy;
  v37 = settingsCopy;
  v38 = objc_opt_new();
  v39 = [[OTClique alloc] initWithContextData:v38];
  v78 = 0;
  v40 = [v39 setUserControllableViewsSyncStatus:0 error:&v78];
  v41 = v78;
  v42 = _MCLogObjects[0];
  if (v40)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v43 = "Disabled keychain sync.";
      v44 = v42;
      v45 = OS_LOG_TYPE_DEFAULT;
      v46 = 2;
LABEL_37:
      _os_log_impl(&_mh_execute_header, v44, v45, v43, buf, v46);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v86 = v41;
    v43 = "Unable to leave clique to disable keychain sync. Error: %{public}@";
    v44 = v42;
    v45 = OS_LOG_TYPE_ERROR;
    v46 = 12;
    goto LABEL_37;
  }

  settingsCopy = v37;
  userSettingsCopy = v36;
  self = selfCopy;
LABEL_39:
  v72 = MCFeaturePhotoStreamAllowed;
  v73 = MCFeatureCloudPhotoLibraryAllowed;
  v84[0] = MCFeatureCloudPhotoLibraryAllowed;
  v84[1] = MCFeaturePhotoStreamAllowed;
  v70 = MCFeatureCloudBackupAllowed;
  v71 = MCFeatureSharedStreamAllowed;
  v84[2] = MCFeatureSharedStreamAllowed;
  v84[3] = MCFeatureCloudBackupAllowed;
  v47 = MCFeatureCloudDocumentSyncAllowed;
  v84[4] = MCFeatureCloudDocumentSyncAllowed;
  v48 = [NSArray arrayWithObjects:v84 count:5];
  v49 = [NSSet setWithArray:v48];
  selfCopy2 = self;
  v50 = [(MCServerSideHacks *)self _anyBoolRestrictionChangedInSet:v49 oldRestrictions:restrictionsCopy newRestrictions:newRestrictionsCopy];

  if (!v50)
  {
    goto LABEL_68;
  }

  v60 = userSettingsCopy;
  v61 = settingsCopy;
  v62 = restrictionsCopy;
  +[ACAccountStore defaultStore];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = v77 = 0u;
  obj = [v65 aa_appleAccounts];
  v51 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (!v51)
  {
    goto LABEL_67;
  }

  v52 = v51;
  v53 = *v75;
  v54 = kAccountDataclassCloudPhotos;
  v69 = kAccountDataclassMediaStream;
  v68 = kAccountDataclassSharedStreams;
  v67 = kAccountDataclassBackup;
  v66 = kAccountDataclassUbiquity;
  v55 = kAccountDataclassKeyValue;
  v56 = kAccountDataclassCloudPhotos;
  do
  {
    for (i = 0; i != v52; i = i + 1)
    {
      if (*v75 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v58 = *(*(&v74 + 1) + 8 * i);
      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v73, newRestrictionsCopy) == 2 && [v58 isEnabledForDataclass:v54])
      {
        [v58 setEnabled:0 forDataclass:v54];
        v59 = 1;
      }

      else
      {
        v59 = 0;
      }

      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v72, newRestrictionsCopy) == 2 && [v58 isEnabledForDataclass:v69])
      {
        [v58 setEnabled:0 forDataclass:v69];
        v59 = 1;
      }

      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v71, newRestrictionsCopy) == 2 && [v58 isEnabledForDataclass:v68])
      {
        [v58 setEnabled:0 forDataclass:v68];
        v59 = 1;
      }

      if (+[MCRestrictionManagerWriter restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManagerWriter, "restrictedBoolForFeature:withRestrictionsDictionary:", v70, newRestrictionsCopy) == 2 && [v58 isEnabledForDataclass:v67])
      {
        [v58 setEnabled:0 forDataclass:v67];
        v59 = 1;
      }

      if ([MCRestrictionManagerWriter restrictedBoolForFeature:v47 withRestrictionsDictionary:newRestrictionsCopy]!= 2)
      {
        goto LABEL_63;
      }

      if ([v58 isEnabledForDataclass:v66])
      {
        [v58 setEnabled:0 forDataclass:v66];
        v59 = 1;
      }

      if ([v58 isEnabledForDataclass:v55])
      {
        [v58 setEnabled:0 forDataclass:v55];
      }

      else
      {
LABEL_63:
        if (!v59)
        {
          goto LABEL_65;
        }
      }

      [v65 saveAccount:v58 withDataclassActions:0 doVerify:0 completion:&stru_10011CEA8];
LABEL_65:
      v54 = v56;
    }

    v52 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  }

  while (v52);
LABEL_67:

  settingsCopy = v61;
  restrictionsCopy = v62;
  userSettingsCopy = v60;
LABEL_68:
  if ([MCRestrictionManagerWriter BOOLSetting:MCFeatureVehicleUIAllowed valueChangedBetweenOldSettings:settingsCopy andNewSettings:userSettingsCopy])
  {
    CRHandleCarPlayRestrictionChanged();
  }

  if ([MCRestrictionManager restrictedBool:MCFeatureLimitAdTrackingForced changedBetweenOldRestrictions:restrictionsCopy andNewRestrictions:newRestrictionsCopy])
  {
    [(MCServerSideHacks *)selfCopy2 setUserTrackingTCCAccessOverrideForRestrictions:newRestrictionsCopy];
  }

LABEL_72:
}

- (void)applyEffectiveSettings:(id)settings toOtherSubsystemsWithCredentialSet:(id)set
{
  settingsCopy = settings;
  setCopy = set;
  if (byte_100136660)
  {
    if ([MCRestrictionManager BOOLSettingForFeature:MCFeatureAutomaticDateAndTimeForced withUserSettingDictionary:settingsCopy]== 1)
    {
      TMSetAutomaticTimeZoneEnabled();
      TMSetAutomaticTimeEnabled();
    }

    if (MCGestaltHasSEP())
    {
      v7 = +[MCRestrictionManager sharedManager];
      memberQueueRestrictions = [v7 memberQueueRestrictions];

      v9 = [MCRestrictionManager valueForFeature:MCFeatureMaximumFailedPasscodeAttempts withRestrictionsDictionary:memberQueueRestrictions];
      unsignedIntegerValue = [v9 unsignedIntegerValue];

      if (unsignedIntegerValue != MCKeybagCurrentMaximumFailedPasscodeAttempts())
      {
        v11 = MCKeybagSetMaximumFailedPasscodeAttempts();
        if (v11)
        {
          v12 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v87 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set maximum failed passcode attempts. Error: %{public}@", buf, 0xCu);
          }
        }
      }
    }

    v13 = MCFeaturePasscodeLockGraceTime;
    v14 = [MCRestrictionManager valueSettingForFeature:MCFeaturePasscodeLockGraceTime withUserSettingDictionary:settingsCopy];
    unsignedLongValue = [v14 unsignedLongValue];

    v16 = MCKeybagCurrentPasscodeGracePeriod();
    if (unsignedLongValue != v16)
    {
      v17 = v16;
      v18 = MCKeybagSetPasscodeGracePeriod();
      if (v18)
      {
        v19 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v87 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to set grace period. Error: %{public}@", buf, 0xCu);
        }

        v84 = MCRestrictedValueKey;
        v82 = v13;
        v80 = MCRestrictedValueValueKey;
        v20 = [NSNumber numberWithUnsignedInteger:v17];
        v81 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v83 = v21;
        v22 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v85 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];

        [settingsCopy MCDeepCopyEntriesFromDictionary:v23];
      }
    }

    if (_os_feature_enabled_impl() && [MCRestrictionManager BOOLSettingForFeature:MCFeaturePasscodeRecoveryAllowed withUserSettingDictionary:settingsCopy]== 2 && MCKeybagMementoBlobExists())
    {
      v24 = +[MCPasscodeManagerWriter sharedManager];
      clearRecoveryPasscode = [v24 clearRecoveryPasscode];

      if (clearRecoveryPasscode)
      {
        v26 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v87 = clearRecoveryPasscode;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to clear recovery passcode. Error: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:4];
      }
    }

    v66 = 0;
    v67 = 0;
    v28 = sub_100054F48(&v67, &v66);
    v29 = v67;
    v30 = v66;
    if (v28)
    {
      v31 = MCFeatureFingerprintUnlockAllowed;
      v32 = [MCRestrictionManager BOOLSettingForFeature:MCFeatureFingerprintUnlockAllowed withUserSettingDictionary:settingsCopy];
      if (!v29 || (v33 = v32, (v32 != 2) == [v29 BOOLValue]))
      {
        v34 = 0;
      }

      else
      {
        v34 = [NSNumber numberWithBool:v33 != 2];
      }

      v36 = MCFeatureFingerprintForContactlessPaymentAllowed;
      v37 = [MCRestrictionManager BOOLSettingForFeature:MCFeatureFingerprintForContactlessPaymentAllowed withUserSettingDictionary:settingsCopy];
      if (!v30 || (v38 = v37, (v37 != 2) == [v30 BOOLValue]))
      {
        v39 = 0;
      }

      else
      {
        v39 = [NSNumber numberWithBool:v38 != 2];
      }

      if (v34 | v39)
      {
        v40 = sub_10005502C(v34, v39, setCopy);
        if (v40)
        {
          v64 = v40;
          if (v34)
          {
            v78 = MCRestrictedBoolKey;
            v75 = v29;
            v76 = v31;
            v74 = MCRestrictedBoolValueKey;
            v41 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            v77 = v41;
            v42 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            v79 = v42;
            v43 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];

            [settingsCopy MCDeepCopyEntriesFromDictionary:v43];
            v40 = v64;
          }

          if (v39)
          {
            v72 = MCRestrictedBoolKey;
            v69 = v30;
            v70 = v36;
            v68 = MCRestrictedBoolValueKey;
            v44 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            v71 = v44;
            v45 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            v73 = v45;
            v46 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];

            [settingsCopy MCDeepCopyEntriesFromDictionary:v46];
            v40 = v64;
          }
        }
      }
    }

    else
    {
      v35 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Fingerprint unlock state is currently not available. Ignoring.", buf, 2u);
      }
    }

    if ([MCRestrictionManager BOOLSettingForFeature:MCFeatureWifiPowerOnEnforced withUserSettingDictionary:settingsCopy, v64]== 1)
    {
      v47 = objc_opt_new();
      [v47 activate];
      if (([v47 powerOn] & 1) == 0)
      {
        v65 = 0;
        [v47 setPower:1 error:&v65];
        v48 = v65;
        if (v48)
        {
          v49 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v87 = v48;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Could not enable WiFi: %{public}@", buf, 0xCu);
          }
        }
      }

      [v47 invalidate];
    }

    v50 = [MCRestrictionManager valueSettingForFeature:MCFeatureSafariAcceptCookies withUserSettingDictionary:settingsCopy];
    v51 = v50;
    v52 = &kMCSafariCookieAcceptPolicyExclusivelyFromMainDocumentDomain;
    if (v50)
    {
      [v50 floatValue];
      if (v53 >= 2.0)
      {
        v52 = &kMCSafariCookieAcceptPolicyAlways;
        v54 = 3;
      }

      else if (v53 >= 1.5)
      {
        v52 = &kMCSafariCookieAcceptPolicyOnlyFromMainDocumentDomain;
        v54 = 2;
      }

      else
      {
        v54 = v53 >= 1.0;
        if (v53 < 1.0)
        {
          v52 = &kMCSafariCookieAcceptPolicyNever;
        }
      }
    }

    else
    {
      v54 = 1;
    }

    v55 = *v52;
    v56 = CFPreferencesCopyAppValue(@"CookieAcceptPolicy", @"com.apple.WebUI");
    if ((MCEqualStrings() & 1) == 0)
    {
      CFPreferencesSetAppValue(@"CookieAcceptPolicy", v55, @"com.apple.WebUI");
      CFPreferencesAppSynchronize(@"com.apple.WebUI");
      v57 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
      [v57 setCookieAcceptPolicy:v54];

      MCSendSafariCookiePolicyChangedNotification();
    }

    [MCRestrictionManager BOOLSettingForFeature:MCFeatureEnterpriseBookBackupAllowed withUserSettingDictionary:settingsCopy];
    v58 = +[NSFileManager defaultManager];
    v59 = MDMManagedNonStoreBooksDirectory();
    v60 = [v58 fileExistsAtPath:v59];

    if (v60)
    {
      v61 = MDMManagedNonStoreBooksDirectory();
      v62 = MCSetSkipBackupAttributeToItemAtPath();

      if ((v62 & 1) == 0)
      {
        v63 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to set backup exclusion on managed books directory", buf, 2u);
        }
      }
    }
  }

  else
  {
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Not calling out to external components.", buf, 2u);
    }
  }
}

- (BOOL)applyEffectiveSettings:(id)settings toSettings:(id)toSettings withOldRestrictions:(id)restrictions newRestrictions:(id)newRestrictions
{
  settingsCopy = settings;
  toSettingsCopy = toSettings;
  v11 = MCFeaturePasscodeLockGraceTime;
  if (+[MCRestrictionManager restrictedValue:changedBetweenOldRestrictions:andNewRestrictions:](MCRestrictionManager, "restrictedValue:changedBetweenOldRestrictions:andNewRestrictions:", MCFeaturePasscodeLockGraceTime, restrictions, newRestrictions) && (+[MCRestrictionManager valueSettingForFeature:withUserSettingDictionary:](MCRestrictionManager, "valueSettingForFeature:withUserSettingDictionary:", v11, settingsCopy), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 unsignedLongValue], v12, +[MCRestrictionManager valueSettingForFeature:withUserSettingDictionary:](MCRestrictionManager, "valueSettingForFeature:withUserSettingDictionary:", v11, toSettingsCopy), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedLongValue"), v14, v13 != v15))
  {
    v26 = MCRestrictedValueKey;
    v24 = v11;
    v22 = MCRestrictedValueValueKey;
    v17 = [NSNumber numberWithUnsignedInteger:v13];
    v23 = v17;
    v16 = 1;
    v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    [toSettingsCopy MCDeepCopyEntriesFromDictionary:v20];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)recomputeAppOptionsEffectiveUserSettings:(id)settings outEffectiveChangeDetected:(BOOL *)detected
{
  settingsCopy = settings;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Recomputing app options.", buf, 2u);
  }

  v82 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v82 allInstalledProfileIdentifiers];
  v6 = +[NSMutableDictionary dictionary];
  v79 = +[NSMutableDictionary dictionary];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = allInstalledProfileIdentifiers;
  v83 = [obj countByEnumeratingWithState:&v129 objects:v141 count:16];
  if (v83)
  {
    v7 = *v130;
    v8 = kMCAppWhitelistIdentifierKey;
    v80 = *v130;
    do
    {
      v9 = 0;
      do
      {
        if (*v130 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v86 = v9;
        v10 = *(*(&v129 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v11 = [v82 installedProfileWithIdentifier:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = +[NSMutableDictionary dictionary];
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v84 = v11;
          payloads = [v11 payloads];
          v13 = [payloads countByEnumeratingWithState:&v125 objects:v140 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v126;
            v87 = *v126;
            v91 = v12;
            do
            {
              v16 = 0;
              v95 = v14;
              do
              {
                if (*v126 != v15)
                {
                  objc_enumerationMutation(payloads);
                }

                v17 = *(*(&v125 + 1) + 8 * v16);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  whitelistedAppsAndOptions = [v17 whitelistedAppsAndOptions];
                  if (whitelistedAppsAndOptions)
                  {
                    uUID = [v17 UUID];
                    [v12 setObject:whitelistedAppsAndOptions forKey:uUID];

                    v123 = 0u;
                    v124 = 0u;
                    v121 = 0u;
                    v122 = 0u;
                    v20 = whitelistedAppsAndOptions;
                    v21 = [v20 countByEnumeratingWithState:&v121 objects:v139 count:16];
                    if (v21)
                    {
                      v22 = v21;
                      v23 = *v122;
                      do
                      {
                        for (i = 0; i != v22; i = i + 1)
                        {
                          if (*v122 != v23)
                          {
                            objc_enumerationMutation(v20);
                          }

                          v25 = *(*(&v121 + 1) + 8 * i);
                          v26 = [v25 objectForKey:v8];
                          if (v26)
                          {
                            [v6 setObject:v25 forKey:v26];
                          }
                        }

                        v22 = [v20 countByEnumeratingWithState:&v121 objects:v139 count:16];
                      }

                      while (v22);
                    }

                    v15 = v87;
                    v12 = v91;
                    v14 = v95;
                  }
                }

                v16 = v16 + 1;
              }

              while (v16 != v14);
              v14 = [payloads countByEnumeratingWithState:&v125 objects:v140 count:16];
            }

            while (v14);
          }

          if ([v12 count])
          {
            identifier = [v84 identifier];
            [v79 setObject:v12 forKey:identifier];
          }

          v7 = v80;
          v11 = v84;
        }

        objc_autoreleasePoolPop(context);
        v9 = v86 + 1;
      }

      while ((v86 + 1) != v83);
      v83 = [obj countByEnumeratingWithState:&v129 objects:v141 count:16];
    }

    while (v83);
  }

  +[MCRestrictionManagerWriter sharedManager];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v100 = v120 = 0u;
  memberQueueUserClientRestrictions = [v100 memberQueueUserClientRestrictions];
  v96 = [memberQueueUserClientRestrictions countByEnumeratingWithState:&v117 objects:v138 count:16];
  if (v96)
  {
    v92 = *v118;
    v28 = kMCAppWhitelistIdentifierKey;
    do
    {
      for (j = 0; j != v96; j = j + 1)
      {
        if (*v118 != v92)
        {
          objc_enumerationMutation(memberQueueUserClientRestrictions);
        }

        v30 = [v100 memberQueueAppsAndOptionsForClientUUID:*(*(&v117 + 1) + 8 * j)];
        v31 = v30;
        if (v30)
        {
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v32 = [v30 countByEnumeratingWithState:&v113 objects:v137 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v114;
            do
            {
              for (k = 0; k != v33; k = k + 1)
              {
                if (*v114 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v113 + 1) + 8 * k);
                v37 = [v36 objectForKey:v28];
                if (v37)
                {
                  v38 = [v6 objectForKeyedSubscript:v37];

                  if (!v38)
                  {
                    [v6 setObject:v36 forKey:v37];
                  }
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v113 objects:v137 count:16];
            }

            while (v33);
          }
        }
      }

      v96 = [memberQueueUserClientRestrictions countByEnumeratingWithState:&v117 objects:v138 count:16];
    }

    while (v96);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  memberQueueSystemClientRestrictions = [v100 memberQueueSystemClientRestrictions];
  v97 = [memberQueueSystemClientRestrictions countByEnumeratingWithState:&v109 objects:v136 count:16];
  if (v97)
  {
    v93 = *v110;
    v39 = kMCAppWhitelistIdentifierKey;
    do
    {
      for (m = 0; m != v97; m = m + 1)
      {
        if (*v110 != v93)
        {
          objc_enumerationMutation(memberQueueSystemClientRestrictions);
        }

        v41 = [v100 memberQueueAppsAndOptionsForClientUUID:*(*(&v109 + 1) + 8 * m)];
        v42 = v41;
        if (v41)
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v43 = [v41 countByEnumeratingWithState:&v105 objects:v135 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v106;
            do
            {
              for (n = 0; n != v44; n = n + 1)
              {
                if (*v106 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v105 + 1) + 8 * n);
                v48 = [v47 objectForKey:v39];
                if (v48)
                {
                  v49 = [v6 objectForKeyedSubscript:v48];

                  if (!v49)
                  {
                    [v6 setObject:v47 forKey:v48];
                  }
                }
              }

              v44 = [v42 countByEnumeratingWithState:&v105 objects:v135 count:16];
            }

            while (v44);
          }
        }
      }

      v97 = [memberQueueSystemClientRestrictions countByEnumeratingWithState:&v109 objects:v136 count:16];
    }

    while (v97);
  }

  v50 = +[NSFileManager defaultManager];
  v51 = [v6 count];
  v52 = MCSystemAppOptionsByBundleIDFilePath();
  v53 = v79;
  if (v51)
  {
    [v6 writeToFile:v52 atomically:1];
  }

  else
  {
    [v50 removeItemAtPath:v52 error:0];
  }

  v54 = [v79 count];
  v55 = MCSystemAppWhitelistByProfileFilePath();
  if (v54)
  {
    [v79 writeToFile:v55 atomically:1];
  }

  else
  {
    [v50 removeItemAtPath:v55 error:0];

    v55 = MCSystemEffectiveAppWhitelistFilePath();
    [v50 removeItemAtPath:v55 error:0];
  }

  v56 = MCSystemEffectiveAppWhitelistFilePath();
  v57 = [NSData dataWithContentsOfFile:v56];

  if (v57)
  {
    v58 = [NSPropertyListSerialization MCSafePropertyListWithData:v57 options:0 format:0 error:0];
  }

  else
  {
    v58 = 0;
  }

  if ([v6 count])
  {
    v59 = [MCRestrictionManager intersectedValuesSettingForFeature:MCFeatureAppLockBundleIDs withUserSettingDectionary:settingsCopy];
    if ([v59 count])
    {
      v90 = v58;
      v94 = v57;
      v98 = v50;
      v60 = [NSSet setWithArray:v59];
      v61 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v59 count]);
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v62 = v6;
      v63 = [v62 countByEnumeratingWithState:&v101 objects:v134 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v102;
        do
        {
          for (ii = 0; ii != v64; ii = ii + 1)
          {
            if (*v102 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v101 + 1) + 8 * ii);
            v68 = [v62 objectForKey:v67];
            if ([v60 containsObject:v67])
            {
              [v61 addObject:v68];
            }
          }

          v64 = [v62 countByEnumeratingWithState:&v101 objects:v134 count:16];
        }

        while (v64);
      }

      if ([v61 count])
      {
        v69 = MCSystemEffectiveAppWhitelistFilePath();
        v70 = 1;
        [v61 writeToFile:v69 atomically:1];

        v53 = v79;
        v57 = v94;
        v50 = v98;
        v58 = v90;
        goto LABEL_97;
      }

      v53 = v79;
      v57 = v94;
      v50 = v98;
      v58 = v90;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
  }

  v59 = MCSystemEffectiveAppWhitelistFilePath();
  [v50 removeItemAtPath:v59 error:0];
  v70 = 0;
LABEL_97:

  if (v77)
  {
    v71 = v70 ^ 1;
    if (!v58)
    {
      v71 = 0;
    }

    if ((v71 & 1) != 0 || (v72 = v58, +[NSSet setWithArray:](NSSet, "setWithArray:", v58), v73 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v61), v74 = objc_claimAutoreleasedReturnValue(), v75 = [v73 isEqualToSet:v74], v74, v58 = v72, v73, (v75 & 1) == 0))
    {
      *v77 = 1;
    }
  }
}

- (void)recomputeAppRulesForNetworkExtension
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Recomputing app rules for NetworkExtension.", buf, 2u);
  }

  v3 = +[MDMManagedMediaReader attributesByAppID];
  allKeys = [v3 allKeys];
  v5 = MCNEProfileIngestionHandlerClassForPayload();
  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    [v5 updatePerAppMappingRules:v3];
    [v5 updateManagedAppRules:allKeys];
    [v5 unlockConfigurations];
  }

  else
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "recomputeAppRulesForNetworkExtension could not get NetworkExtension store lock.", v7, 2u);
    }
  }
}

- (id)recomputeAccountVPNAssociations
{
  v43 = +[NSMutableDictionary dictionary];
  v2 = +[MCManifest sharedManifest];
  [v2 allInstalledProfileIdentifiers];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v3 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v51;
    v6 = @"Credential";
    v34 = *v51;
    v35 = v2;
    do
    {
      v7 = 0;
      v36 = v4;
      do
      {
        if (*v51 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v50 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v2 installedProfileWithIdentifier:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v9;
          v40 = v7;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v38 = v10;
          payloads = [v10 payloads];
          v11 = [payloads countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v47;
            v41 = *v47;
            do
            {
              v14 = 0;
              v42 = v12;
              do
              {
                if (*v47 != v13)
                {
                  objc_enumerationMutation(payloads);
                }

                v15 = *(*(&v46 + 1) + 8 * v14);
                if ([v15 conformsToProtocol:v6[124].data])
                {
                  v16 = v15;
                  vPNUUID = [v16 VPNUUID];
                  if (vPNUUID)
                  {
                    if (objc_opt_respondsToSelector())
                    {
                      mailAccountIdentifiers = [v16 mailAccountIdentifiers];
                    }

                    else
                    {
                      mailAccountIdentifiers = 0;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      contactsAccountIdentifiers = [v16 contactsAccountIdentifiers];
                    }

                    else
                    {
                      contactsAccountIdentifiers = 0;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      calendarAccountIdentifiers = [v16 calendarAccountIdentifiers];
                    }

                    else
                    {
                      calendarAccountIdentifiers = 0;
                    }

                    if ([mailAccountIdentifiers count] || objc_msgSend(contactsAccountIdentifiers, "count") || objc_msgSend(calendarAccountIdentifiers, "count"))
                    {
                      v21 = [v43 objectForKeyedSubscript:vPNUUID];
                      if (!v21)
                      {
                        v21 = objc_opt_new();
                        [v43 setObject:v21 forKeyedSubscript:vPNUUID];
                      }

                      mailAccountIdentifiers2 = [v21 mailAccountIdentifiers];
                      v23 = [MCServerSideHacks mergeArray:mailAccountIdentifiers2 withArray:mailAccountIdentifiers];
                      [v21 setMailAccountIdentifiers:v23];

                      contactsAccountIdentifiers2 = [v21 contactsAccountIdentifiers];
                      v25 = [MCServerSideHacks mergeArray:contactsAccountIdentifiers2 withArray:contactsAccountIdentifiers];
                      [v21 setContactsAccountIdentifiers:v25];

                      calendarAccountIdentifiers2 = [v21 calendarAccountIdentifiers];
                      v27 = [MCServerSideHacks mergeArray:calendarAccountIdentifiers2 withArray:calendarAccountIdentifiers];
                      [v21 setCalendarAccountIdentifiers:v27];

                      v6 = @"Credential";
                      v13 = v41;
                      v12 = v42;
                    }
                  }
                }

                v14 = v14 + 1;
              }

              while (v12 != v14);
              v12 = [payloads countByEnumeratingWithState:&v46 objects:v54 count:16];
            }

            while (v12);
          }

          v2 = v35;
          v4 = v36;
          v5 = v34;
          v9 = v39;
          v7 = v40;
          v10 = v38;
        }

        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v7 != v4);
      v4 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v4);
  }

  v28 = MCNEProfileIngestionHandlerClassForPayload();
  [v28 loadConfigurationsForceReloadFromDisk];
  if ([v28 updateAccountIdentifiers:v43])
  {
    v29 = 0;
  }

  else
  {
    v30 = MCVPNErrorDomain;
    v31 = MCErrorArray();
    v29 = [NSError MCErrorWithDomain:v30 code:15004 descriptionArray:v31 errorType:MCErrorTypeFatal, 0];

    v32 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "recomputeAccountVPNAssociations failed to update associations.", buf, 2u);
    }
  }

  return v29;
}

+ (id)mergeArray:(id)array withArray:(id)withArray
{
  arrayCopy = array;
  withArrayCopy = withArray;
  v7 = withArrayCopy;
  if (arrayCopy)
  {
    if (withArrayCopy)
    {
      v8 = [NSSet setWithArray:arrayCopy];
      v9 = [v8 setByAddingObjectsFromArray:v7];
      allObjects = [v9 allObjects];

      goto LABEL_7;
    }

    v11 = arrayCopy;
  }

  else
  {
    v11 = withArrayCopy;
  }

  allObjects = v11;
LABEL_7:

  return allObjects;
}

- (void)recomputeWebContentFilterEffectiveUserSettings:(id)settings outEffectiveChangeDetected:(BOOL *)detected outMechanismChangedDetected:(BOOL *)changedDetected
{
  settingsCopy = settings;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recomputing web content filter.", buf, 2u);
  }

  v9 = +[NSFileManager defaultManager];
  v10 = MCWebContentFilterOutputPath();
  v11 = [v9 fileExistsAtPath:v10];

  v125 = settingsCopy;
  detectedCopy = detected;
  v123 = v9;
  changedDetectedCopy = changedDetected;
  if (v11)
  {
    v12 = MCWebContentFilterOutputPath();
    v13 = [NSDictionary dictionaryWithContentsOfFile:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = +[MCBookmarkManager sharedManager];
  userBookmarks = [v15 userBookmarks];

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v17 = userBookmarks;
  v18 = [v17 countByEnumeratingWithState:&v158 objects:v169 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v159;
    v21 = kMCWCFAddressKey;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v159 != v20)
        {
          objc_enumerationMutation(v17);
        }

        serializableDictionary = [*(*(&v158 + 1) + 8 * i) serializableDictionary];
        v24 = [serializableDictionary objectForKeyedSubscript:v21];
        if (v24)
        {
          [v14 setObject:serializableDictionary forKeyedSubscript:v24];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v158 objects:v169 count:16];
    }

    while (v19);
  }

  v124 = v13;
  v120 = v17;

  v25 = +[MCDependencyManager sharedManager];
  v26 = [v25 parentsInDomain:kMCDMProfileWithWebContentFilterToPayloadUUIDDependencyKey];

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v26;
  v129 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
  if (v129)
  {
    v127 = *v155;
    v27 = kMCWCFAddressKey;
    do
    {
      v28 = 0;
      do
      {
        if (*v155 != v127)
        {
          objc_enumerationMutation(obj);
        }

        v133 = v28;
        v29 = *(*(&v154 + 1) + 8 * v28);
        v30 = +[MCManifest sharedManifest];
        v31 = [v30 installedProfileWithIdentifier:v29];

        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v131 = v31;
        payloads = [v31 payloads];
        v32 = [payloads countByEnumeratingWithState:&v150 objects:v167 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v151;
          v135 = *v151;
          do
          {
            v35 = 0;
            v137 = v33;
            do
            {
              if (*v151 != v34)
              {
                objc_enumerationMutation(payloads);
              }

              v36 = *(*(&v150 + 1) + 8 * v35);
              v37 = objc_autoreleasePoolPush();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                allowListBookmarks = [v36 allowListBookmarks];
                v146 = 0u;
                v147 = 0u;
                v148 = 0u;
                v149 = 0u;
                v39 = [allowListBookmarks countByEnumeratingWithState:&v146 objects:v166 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v147;
                  do
                  {
                    for (j = 0; j != v40; j = j + 1)
                    {
                      if (*v147 != v41)
                      {
                        objc_enumerationMutation(allowListBookmarks);
                      }

                      v43 = *(*(&v146 + 1) + 8 * j);
                      v44 = [v43 objectForKeyedSubscript:v27];
                      [v14 setObject:v43 forKeyedSubscript:v44];
                    }

                    v40 = [allowListBookmarks countByEnumeratingWithState:&v146 objects:v166 count:16];
                  }

                  while (v40);
                }

                v34 = v135;
                v33 = v137;
              }

              objc_autoreleasePoolPop(v37);
              v35 = v35 + 1;
            }

            while (v35 != v33);
            v33 = [payloads countByEnumeratingWithState:&v150 objects:v167 count:16];
          }

          while (v33);
        }

        v28 = v133 + 1;
      }

      while ((v133 + 1) != v129);
      v129 = [obj countByEnumeratingWithState:&v154 objects:v168 count:16];
    }

    while (v129);
  }

  v45 = [MCRestrictionManager intersectedValuesSettingForFeature:MCFeatureWebContentFilterWhitelistedBookmarks withUserSettingDectionary:v125];
  v134 = MCFeatureWebContentFilterWhitelistedURLs;
  v46 = [MCRestrictionManager intersectedValuesSettingForFeature:"intersectedValuesSettingForFeature:withUserSettingDectionary:" withUserSettingDectionary:?];
  v47 = [v46 count];
  if (v47 == [v45 count] && objc_msgSend(v46, "count"))
  {
    v48 = 0;
    v49 = kMCWCFAddressKey;
    v50 = kMCWCFPageTitleKey;
    do
    {
      v51 = [v46 objectAtIndexedSubscript:v48];
      v165[0] = v51;
      v164[0] = v49;
      v164[1] = v50;
      v52 = [v45 objectAtIndexedSubscript:v48];
      v165[1] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v165 forKeys:v164 count:2];
      [v14 setObject:v53 forKeyedSubscript:v51];

      ++v48;
    }

    while (v48 < [v46 count]);
  }

  v132 = v45;
  v141 = +[NSMutableDictionary dictionary];
  v55 = v124;
  v54 = v125;
  if ((+[DMCMultiUserModeUtilities isSharediPad]& 1) == 0)
  {
    v56 = +[MOWebContentSettingsGroup blockedByFilterMetadata];
    responsibleClients = [v56 responsibleClients];

    if ([responsibleClients count] != 1 || (objc_msgSend(responsibleClients, "containsObject:", @"com.apple.ScreenTime") & 1) == 0)
    {
      [v141 setObject:&__kCFBooleanTrue forKeyedSubscript:@"noOverridingAllowed"];
    }
  }

  v58 = [MCRestrictionManager BOOLSettingForFeature:MCFeatureWebContentFilterAutoForced withUserSettingDictionary:v125];
  v59 = [NSNumber numberWithBool:v58 == 1];
  [v141 setObject:v59 forKeyedSubscript:@"useContentFilter"];

  v60 = [MCRestrictionManager intersectedValuesSettingForFeature:MCFeatureWebContentFilterAutoPermittedURLs withUserSettingDectionary:v125];
  v136 = v60;
  if (v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = &__NSArray0__struct;
  }

  [v141 setObject:v61 forKeyedSubscript:@"filterWhitelist"];
  v138 = v58;
  if (v46)
  {
    v62 = [MCRestrictionManager intersectedValuesSettingForFeature:v134 withUserSettingDectionary:v125];
    v63 = [NSSet setWithArray:v62];

    allKeys = [v14 allKeys];
    v65 = [NSMutableSet setWithArray:allKeys];

    [v65 intersectSet:v63];
    v66 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v65 count]);
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v67 = v65;
    v68 = [v67 countByEnumeratingWithState:&v142 objects:v163 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v143;
      do
      {
        for (k = 0; k != v69; k = k + 1)
        {
          if (*v143 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = [v14 objectForKeyedSubscript:*(*(&v142 + 1) + 8 * k)];
          [v66 addObject:v72];
        }

        v69 = [v67 countByEnumeratingWithState:&v142 objects:v163 count:16];
      }

      while (v69);
    }

    [v141 setObject:v66 forKeyedSubscript:@"siteWhitelist"];
    v55 = v124;
    v54 = v125;
    v58 = v138;
  }

  v73 = [NSNumber numberWithBool:v46 != 0];
  [v141 setObject:v73 forKeyedSubscript:@"whitelistEnabled"];

  v74 = [MCRestrictionManager unionValuesSettingForFeature:MCFeatureWebContentFilterBlacklistedURLs withUserSettingDictionary:v54];
  v75 = v74;
  v76 = &__NSArray0__struct;
  if (v74)
  {
    v76 = v74;
  }

  v77 = v76;

  v78 = [v77 count];
  v79 = v46 | v78;
  v80 = v136 | v78;
  v130 = v77;
  [v141 setObject:v77 forKeyedSubscript:@"filterBlacklist"];
  v81 = [NSNumber numberWithBool:v80 != 0];
  [v141 setObject:v81 forKeyedSubscript:@"useContentFilterOverrides"];

  v82 = v58 == 1;
  v83 = v58 == 1;
  v84 = v82 || v79 != 0;
  v85 = [NSNumber numberWithBool:v84];
  [v141 setObject:v85 forKeyedSubscript:@"restrictWeb"];

  v86 = [v55 objectForKeyedSubscript:@"whitelistEnabled"];
  v87 = (v46 != 0) ^ [v86 BOOLValue];

  v88 = [v55 objectForKeyedSubscript:@"useContentFilter"];
  v89 = v83 ^ [v88 BOOLValue];

  v90 = [v55 objectForKeyedSubscript:@"restrictWeb"];
  v91 = v84 ^ [v90 BOOLValue];

  v119 = v87 | v89 | v91;
  if (v119)
  {
    sub_10009AAE4(v89, v138 == 1, v91, v84, v87, v46 != 0);
  }

  v92 = [v141 objectForKeyedSubscript:@"filterWhitelist"];
  v93 = v92;
  if (v92)
  {
    v94 = v92;
  }

  else
  {
    v94 = &__NSArray0__struct;
  }

  v139 = v94;

  v95 = [v55 objectForKeyedSubscript:@"filterWhitelist"];
  v96 = v95;
  if (v95)
  {
    v97 = v95;
  }

  else
  {
    v97 = &__NSArray0__struct;
  }

  v98 = v97;

  v99 = [v141 objectForKeyedSubscript:@"filterBlacklist"];
  v100 = v99;
  if (v99)
  {
    v101 = v99;
  }

  else
  {
    v101 = &__NSArray0__struct;
  }

  v102 = v101;

  v103 = [v55 objectForKeyedSubscript:@"filterBlacklist"];
  v104 = v103;
  if (v103)
  {
    v105 = v103;
  }

  else
  {
    v105 = &__NSArray0__struct;
  }

  v106 = v105;

  v107 = [v141 objectForKeyedSubscript:@"siteWhitelist"];
  v108 = v107;
  if (v107)
  {
    v109 = v107;
  }

  else
  {
    v109 = &__NSArray0__struct;
  }

  v110 = v109;

  v111 = [v55 objectForKeyedSubscript:@"siteWhitelist"];
  v112 = v111;
  if (v111)
  {
    v113 = v111;
  }

  else
  {
    v113 = &__NSArray0__struct;
  }

  v114 = v113;

  v128 = v98;
  v115 = [v139 isEqualToArray:v98];
  v116 = [v102 isEqualToArray:v106];
  v117 = [v110 isEqualToArray:v114];
  if (!v115 || !v116 || (v117 & 1) == 0)
  {
    sub_10009A8CC(v115 ^ 1, [v139 count], v116 ^ 1, objc_msgSend(v102, "count"), v117 ^ 1, objc_msgSend(v110, "count"));
  }

  if (changedDetectedCopy)
  {
    *changedDetectedCopy = v119 & 1;
  }

  if (detectedCopy)
  {
    *detectedCopy = [v124 isEqualToDictionary:v141] ^ 1;
  }

  v118 = MCWebContentFilterOutputPath();
  [v141 MCWriteToBinaryFile:v118];
}

- (void)recomputeHacksAfterProfileChangesEffectiveUserSettings:(id)settings sendNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  settingsCopy = settings;
  [(MCServerSideHacks *)self recomputeAppRulesForNetworkExtension];
  v10 = 0;
  [(MCServerSideHacks *)self recomputeAppOptionsEffectiveUserSettings:settingsCopy outEffectiveChangeDetected:&v10];
  v9 = 0;
  v8 = 0;
  [(MCServerSideHacks *)self recomputeWebContentFilterEffectiveUserSettings:settingsCopy outEffectiveChangeDetected:&v9 outMechanismChangedDetected:&v8];

  if (notificationsCopy)
  {
    if (v10 == 1)
    {
      MCSendAppWhitelistChangedNotification();
    }

    if (v8 == 1)
    {
      MCSendWebContentFilterTypeChangedNotification();
    }

    if (v9 == 1)
    {
      MCSendWebContentFilterChangedNotification();
    }
  }

  if (v10 == 1)
  {
    v7 = +[MDMClient sharedClient];
    [v7 retryNotNowResponse];
  }
}

- (void)applyGracePeriodSettingFromKeybagToUserSettings
{
  v2 = +[MCRestrictionManagerWriter sharedManager];
  v3 = MCFeaturePasscodeLockGraceTime;
  v4 = [v2 valueSettingForFeature:MCFeaturePasscodeLockGraceTime];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = MCKeybagCurrentPasscodeGracePeriod();
  if (unsignedIntegerValue != v6)
  {
    v7 = v6;
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting grace period to %u to match keybag value.", v10, 8u);
    }

    v9 = [NSNumber numberWithUnsignedInteger:v7];
    [v2 setValue:v9 forSetting:v3 sender:@"MCServerSideHacks.ApplyGracePeriodSettingFromKeybag"];
  }
}

- (void)resetSettingsSender:(id)sender
{
  senderCopy = sender;
  v4 = +[MCRestrictionManagerWriter sharedManager];
  [v4 setBoolValue:0 forSetting:MCFeatureDiagnosticsSubmissionAllowed sender:senderCopy];
  [v4 setBoolValue:0 forSetting:MCFeatureAppAnalyticsAllowed sender:senderCopy];
}

- (void)setUserTrackingTCCAccessOverrideForRestrictions:(id)restrictions
{
  v3 = [MCRestrictionManager restrictedBoolForFeature:MCFeatureLimitAdTrackingForced withRestrictionsDictionary:restrictions]== 1;
  v4 = kTCCServiceUserTracking;

  _TCCAccessSetOverride(v4, v3);
}

@end