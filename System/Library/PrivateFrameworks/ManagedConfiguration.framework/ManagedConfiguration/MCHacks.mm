@interface MCHacks
+ (id)sharedHacks;
- (BOOL)isGreenTea;
- (BOOL)isJapanSKU;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)devices;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)payload;
- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)defaults;
- (id)_deviceRegionCode;
- (id)_deviceSpecificDefaultSettings;
- (id)_permittedGracePeriodNumbers;
- (id)_selectLargestNumberFromSortedArray:(id)array equalToOrLessThanNumber:(id)number;
- (id)permittedAutoLockNumbers;
- (id)quantizedAutoLockInSeconds:(id)seconds;
- (id)quantizedGracePeriodInSeconds:(id)seconds;
- (void)_applyHeuristicsToEffectiveUserSettings:(id)settings;
- (void)_applyHeuristicsToGranfatheredRestrictionPayloadKeys:(id)keys;
- (void)_applyHeuristicsToRestrictions:(id)restrictions forProfile:(id)profile ignoresUnrestrictableApps:(BOOL)apps;
- (void)_applyImpliedSettingsToSettingsDictionary:(id)dictionary currentSettings:(id)settings restrictions:(id)restrictions;
- (void)_applyInternalDiagnosticEnforcementToSettings:(id)settings;
- (void)_applyMandatorySettingsToEffectiveUserSettings:(id)settings;
- (void)_sendChangeNotificationsBasedOnDefaultsAdditionByDomain:(id)domain;
- (void)_sendChangeNotificationsBasedOnDefaultsRemovalByDomain:(id)domain;
- (void)_setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings:(id)settings;
@end

@implementation MCHacks

+ (id)sharedHacks
{
  if (sharedHacks_onceToken != -1)
  {
    +[MCHacks sharedHacks];
  }

  v3 = sharedHacks_hacks;

  return v3;
}

uint64_t __22__MCHacks_sharedHacks__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Mcserversideha.isa);
  if (!v0)
  {
    v0 = MCHacks;
  }

  sharedHacks_hacks = objc_alloc_init(v0);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_permittedGracePeriodNumbers
{
  if (_permittedGracePeriodNumbers_once != -1)
  {
    [MCHacks _permittedGracePeriodNumbers];
  }

  v3 = _permittedGracePeriodNumbers_numbers;

  return v3;
}

void __39__MCHacks__permittedGracePeriodNumbers__block_invoke()
{
  v8[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v8[0] = v0;
  v1 = [MEMORY[0x1E696AD98] numberWithInt:60];
  v8[1] = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:300];
  v8[2] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:900];
  v8[3] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:3600];
  v8[4] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:14400];
  v8[5] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:6];
  v7 = _permittedGracePeriodNumbers_numbers;
  _permittedGracePeriodNumbers_numbers = v6;
}

- (id)permittedAutoLockNumbers
{
  if (permittedAutoLockNumbers_once != -1)
  {
    [MCHacks permittedAutoLockNumbers];
  }

  v3 = permittedAutoLockNumbers_numbers;

  return v3;
}

void __35__MCHacks_permittedAutoLockNumbers__block_invoke(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  if (MCGestaltIsiPad(a1, a2))
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInt:120];
    v13[0] = v2;
    v3 = [MEMORY[0x1E696AD98] numberWithInt:300];
    v13[1] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithInt:600];
    v13[2] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithInt:900];
    v13[3] = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:0x7FFFFFFFLL];
    v13[4] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
    v8 = permittedAutoLockNumbers_numbers;
    permittedAutoLockNumbers_numbers = v7;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInt:30];
    v12[0] = v2;
    v3 = [MEMORY[0x1E696AD98] numberWithInt:60];
    v12[1] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithInt:120];
    v12[2] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithInt:180];
    v12[3] = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:240];
    v12[4] = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:300];
    v12[5] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithInt:0x7FFFFFFFLL];
    v12[6] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];
    v11 = permittedAutoLockNumbers_numbers;
    permittedAutoLockNumbers_numbers = v10;
  }
}

- (id)_selectLargestNumberFromSortedArray:(id)array equalToOrLessThanNumber:(id)number
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  numberCopy = number;
  v7 = [arrayCopy objectAtIndex:0];
  if (numberCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 compare:{numberCopy, v16}] != 1)
          {
            v14 = v13;

            v7 = v14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (id)quantizedGracePeriodInSeconds:(id)seconds
{
  secondsCopy = seconds;
  _permittedGracePeriodNumbers = [(MCHacks *)self _permittedGracePeriodNumbers];
  v6 = [(MCHacks *)self _selectLargestNumberFromSortedArray:_permittedGracePeriodNumbers equalToOrLessThanNumber:secondsCopy];

  return v6;
}

- (id)quantizedAutoLockInSeconds:(id)seconds
{
  secondsCopy = seconds;
  permittedAutoLockNumbers = [(MCHacks *)self permittedAutoLockNumbers];
  v6 = [(MCHacks *)self _selectLargestNumberFromSortedArray:permittedAutoLockNumbers equalToOrLessThanNumber:secondsCopy];

  return v6;
}

- (void)_applyHeuristicsToRestrictions:(id)restrictions forProfile:(id)profile ignoresUnrestrictableApps:(BOOL)apps
{
  restrictionsCopy = restrictions;
  profileCopy = profile;
  v9 = [MCRestrictionManager unionValuesForFeature:@"blacklistedAppBundleIDs" withRestrictionsDictionary:restrictionsCopy];
  v42 = [MCRestrictionManager unionValuesForFeature:@"blockedAppBundleIDs" withRestrictionsDictionary:restrictionsCopy];
  if ([v9 count] || objc_msgSend(v42, "count"))
  {
    selfCopy = self;
    v11 = profileCopy;
    v12 = v9;
    v13 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v14 = [MEMORY[0x1E695DFA8] setWithArray:v42];
    v15 = [v14 unionSet:v13];
    if (!apps)
    {
      v16 = MCUnrestrictableApps(v15);
      [v14 minusSet:v16];
    }

    allObjects = [v14 allObjects];
    v18 = [allObjects copy];
    [restrictionsCopy MCSetUnionRestriction:@"blockedAppBundleIDs" values:v18];

    v19 = [allObjects copy];
    [restrictionsCopy MCSetUnionRestriction:@"blacklistedAppBundleIDs" values:v19];

    profileCopy = v11;
    v9 = v12;
    self = selfCopy;
  }

  v20 = [MCRestrictionManager intersectedValuesForFeature:@"appLockBundleIDs" withRestrictionsDictionary:restrictionsCopy];
  if ([v20 count] && !apps)
  {
    v21 = [MEMORY[0x1E695DFA8] setWithArray:v20];
    v22 = MCUnrestrictableApps(v21);
    [v21 unionSet:v22];

    allObjects2 = [v21 allObjects];
    [restrictionsCopy MCSetIntersectionRestriction:@"appLockBundleIDs" values:allObjects2];
  }

  isEncrypted = [profileCopy isEncrypted];
  v25 = restrictionsCopy;
  if (isEncrypted)
  {
    v26 = [restrictionsCopy objectForKeyedSubscript:@"restrictedBool"];
    v27 = [v26 objectForKeyedSubscript:@"forceEncryptedBackup"];
    v28 = [v27 objectForKeyedSubscript:@"value"];

    v25 = restrictionsCopy;
    if (!v28)
    {
      [restrictionsCopy MCSetBoolRestriction:@"forceEncryptedBackup" value:1];
      v25 = restrictionsCopy;
    }
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowCamera" withRestrictionsDictionary:v25]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowVideoConferencing" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"forceEncryptedBackup" withRestrictionsDictionary:restrictionsCopy]== 1)
  {
    [restrictionsCopy MCSetBoolRestriction:@"cloudBackupPasswordRequired" value:1];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowGameCenter" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowMultiplayerGaming" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowMultiplayerGaming" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetValueRestriction:@"allowedGameCenterOtherPlayerTypes" value:&unk_1F1AA5848];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowiTunes" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowiTunesSocialPages" value:0];
  }

  v29 = [MCPasscodeManager unlockScreenTypeForRestrictions:restrictionsCopy];
  v30 = restrictionsCopy;
  if (v29)
  {
    v31 = v29;
    v32 = [MCRestrictionManager valueForFeature:@"passcodeKeyboardComplexity" withRestrictionsDictionary:restrictionsCopy];
    if ([v32 unsignedIntValue] < v31)
    {
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31];
      [restrictionsCopy MCSetValueRestriction:@"passcodeKeyboardComplexity" value:v33];
    }

    v30 = restrictionsCopy;
  }

  v34 = [MCRestrictionManager valueForFeature:@"maxGracePeriod" withRestrictionsDictionary:v30];
  if (v34)
  {
    v35 = [(MCHacks *)self quantizedGracePeriodInSeconds:v34];
    [restrictionsCopy MCSetValueRestriction:@"maxGracePeriod" value:v35];
  }

  v36 = [MCRestrictionManager valueForFeature:@"maxInactivity" withRestrictionsDictionary:restrictionsCopy];
  if (v36)
  {
    v37 = [(MCHacks *)self quantizedAutoLockInSeconds:v36];
    [restrictionsCopy MCSetValueRestriction:@"maxInactivity" value:v37];
  }

  v38 = [MCRestrictionManager valueForFeature:@"ratingApps" withRestrictionsDictionary:restrictionsCopy];
  v39 = v38;
  if (v38 && [v38 intValue] <= 999)
  {
    [restrictionsCopy MCSetBoolRestriction:@"forceITunesStorePasswordEntry" value:1];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowCloudDocumentSync" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowManagedAppsCloudSync" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowDiagnosticSubmission" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowAppAnalytics" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowHealthDataSubmission" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowHealthDataSubmission2" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowWheelchairDataSubmission" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowHandWashingDataSubmission" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowSafetyDataSubmission" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowPasscodeModification" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowFingerprintModification" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowAppInstallation" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowUIAppInstallation" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowMarketplaceAppInstallation" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowWebDistributionAppInstallation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowScreenShot" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowScreenRecording" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowRemoteScreenObservation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowRemoteScreenObservation" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowClassroomScreenObservation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowNews" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowNewsToday" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowAutoCorrection" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowSmartPunctuation" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowAppRemoval" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowSystemAppRemoval" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"forceClassroomUnpromptedScreenObservation" withRestrictionsDictionary:restrictionsCopy]== 1 || [MCRestrictionManager restrictedBoolForFeature:@"forceUnpromptedManagedClassroomScreenObservation" withRestrictionsDictionary:restrictionsCopy]== 1)
  {
    [restrictionsCopy MCSetBoolRestriction:@"forceClassroomUnpromptedScreenObservation" value:1];
    [restrictionsCopy MCSetBoolRestriction:@"forceUnpromptedManagedClassroomScreenObservation" value:1];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowPasswordSharing" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowWiFiPasswordSharing" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"forceWiFiWhitelisting" withRestrictionsDictionary:restrictionsCopy]== 1 || [MCRestrictionManager restrictedBoolForFeature:@"forceWiFiToAllowedNetworksOnly" withRestrictionsDictionary:restrictionsCopy]== 1)
  {
    [restrictionsCopy MCSetBoolRestriction:@"forceWiFiWhitelisting" value:1];
    [restrictionsCopy MCSetBoolRestriction:@"forceWiFiToAllowedNetworksOnly" value:1];
  }

  if (_os_feature_enabled_impl())
  {
    if (+[MCRestrictionManager restrictedBoolForFeature:withRestrictionsDictionary:](MCRestrictionManager, "restrictedBoolForFeature:withRestrictionsDictionary:", @"allowPasscodeModification", restrictionsCopy) == 2 || (+[MCRestrictionManager valueForFeature:withRestrictionsDictionary:](MCRestrictionManager, "valueForFeature:withRestrictionsDictionary:", @"pinHistory", restrictionsCopy), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 unsignedIntValue], v40, v41))
    {
      [restrictionsCopy MCSetBoolRestriction:@"allowPasscodeRecovery" value:0];
    }
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowControlCenter" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowControlCenterInApps" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowSpotlight" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowSpotlightNews" value:0];
    [restrictionsCopy MCSetBoolRestriction:@"allowSpotlightInternetResults" value:0];
  }

  if ([MCRestrictionManager restrictedBoolForFeature:@"allowDefaultBrowserModification" withRestrictionsDictionary:restrictionsCopy]== 2)
  {
    [restrictionsCopy MCSetBoolRestriction:@"allowDefaultBrowserPrompting" value:0];
  }
}

- (void)_applyImpliedSettingsToSettingsDictionary:(id)dictionary currentSettings:(id)settings restrictions:(id)restrictions
{
  dictionaryCopy = dictionary;
  settingsCopy = settings;
  restrictionsCopy = restrictions;
  dictionary = [dictionaryCopy objectForKey:@"restrictedBool"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionaryCopy setObject:dictionary forKey:@"restrictedBool"];
  }

  v10 = [MCRestrictionManager BOOLSettingForFeature:@"allowCamera" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy];
  if (v10 == 2)
  {
    v11 = @"allowVideoConferencing";
    v12 = dictionary;
    v13 = 0;
  }

  else
  {
    v14 = v10;
    v15 = MGCopyAnswer();
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      if ([MCRestrictionManager BOOLSettingForFeature:@"allowVideoConferencing" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy]!= 1)
      {
        goto LABEL_12;
      }

      v12 = dictionary;
      v11 = @"allowCamera";
    }

    else
    {
      if (v14 != 1)
      {
        goto LABEL_12;
      }

      v11 = @"allowVideoConferencing";
      v12 = dictionary;
    }

    v13 = 1;
  }

  MCFeatureSetBoolSetting(v12, v11, v13);
LABEL_12:
  if ([MCRestrictionManager BOOLSettingForFeature:@"allowiTunes" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy]== 2)
  {
    v17 = @"allowiTunesSocialPages";
    v18 = dictionary;
    v19 = 0;
  }

  else
  {
    if ([MCRestrictionManager BOOLSettingForFeature:@"allowiTunesSocialPages" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy]!= 1)
    {
      goto LABEL_17;
    }

    v18 = dictionary;
    v17 = @"allowiTunes";
    v19 = 1;
  }

  MCFeatureSetBoolSetting(v18, v17, v19);
LABEL_17:
  if ([MCRestrictionManager BOOLSettingForFeature:@"allowGameCenter" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy]== 2)
  {
    v20 = @"allowMultiplayerGaming";
    v21 = dictionary;
    v22 = 0;
  }

  else
  {
    if ([MCRestrictionManager BOOLSettingForFeature:@"allowMultiplayerGaming" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy]!= 1)
    {
      goto LABEL_22;
    }

    v21 = dictionary;
    v20 = @"allowGameCenter";
    v22 = 1;
  }

  MCFeatureSetBoolSetting(v21, v20, v22);
LABEL_22:
  if ([MCRestrictionManager BOOLSettingForFeature:@"allowDiagnosticSubmission" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy]== 2)
  {
    MCFeatureSetBoolSetting(dictionary, @"allowAppAnalytics", 0);
    MCFeatureSetBoolSetting(dictionary, @"allowHealthDataSubmission", 0);
    MCFeatureSetBoolSetting(dictionary, @"allowHealthDataSubmission2", 0);
    MCFeatureSetBoolSetting(dictionary, @"allowWheelchairDataSubmission", 0);
    MCFeatureSetBoolSetting(dictionary, @"allowHandWashingDataSubmission", 0);
    MCFeatureSetBoolSetting(dictionary, @"allowSafetyDataSubmission", 0);
  }

  v23 = [MCRestrictionManager BOOLSettingForFeature:@"allowNews" withNewUserSetting:dictionaryCopy currentSettings:settingsCopy];
  if (v23 == 2)
  {
    v24 = 0;
    goto LABEL_28;
  }

  if (v23 == 1)
  {
    v24 = 1;
LABEL_28:
    MCFeatureSetBoolSetting(dictionary, @"allowNewsToday", v24);
  }

  v25 = [MCRestrictionManager valueForFeature:@"ratingApps" withRestrictionsDictionary:restrictionsCopy];
  v26 = v25;
  if (!v25 || [v25 intValue] >= 1000)
  {
    MCFeatureSetBoolSetting(dictionary, @"forceITunesStorePasswordEntry", 0);
  }
}

- (void)_applyHeuristicsToEffectiveUserSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [MCRestrictionManager valueSettingForFeature:@"maxGracePeriod" withUserSettingDictionary:settingsCopy];
  if (v4)
  {
    self = [(MCHacks *)self quantizedGracePeriodInSeconds:v4];
    v5 = [settingsCopy objectForKeyedSubscript:@"restrictedValue"];
    v6 = [v5 objectForKeyedSubscript:@"maxGracePeriod"];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 setObject:self forKeyedSubscript:@"value"];
      }
    }
  }

  v7 = [MCRestrictionManager BOOLSettingForFeature:@"allowNews" withUserSettingDictionary:settingsCopy];
  if (v7 != 2)
  {
    self = [MCRestrictionManager unionValuesForFeature:@"blockedAppBundleIDs" withRestrictionsDictionary:settingsCopy];
    if (![(MCHacks *)self containsObject:@"com.apple.news"])
    {
      goto LABEL_14;
    }
  }

  v8 = [MCRestrictionManager BOOLSettingForFeature:@"allowSpotlightNews" withUserSettingDictionary:settingsCopy];
  if (v7 != 2)
  {
  }

  if (v8 == 2)
  {
    v9 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
    self = [v9 MCMutableDeepCopy];

    if (!self)
    {
      self = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(self, @"allowNewsToday", 0);
    [settingsCopy setObject:self forKeyedSubscript:@"restrictedBool"];
LABEL_14:
  }

  isSharediPad = [MEMORY[0x1E6999800] isSharediPad];
  if (isSharediPad)
  {
    MCLKLogoutSupportClass(isSharediPad);
    v11 = objc_opt_new();
    isCurrentUserAnonymous = [v11 isCurrentUserAnonymous];

    if (isCurrentUserAnonymous)
    {
      v13 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
      mCMutableDeepCopy = [v13 MCMutableDeepCopy];

      if (!mCMutableDeepCopy)
      {
        mCMutableDeepCopy = [MEMORY[0x1E695DF90] dictionary];
      }

      MCFeatureSetBoolSetting(mCMutableDeepCopy, @"allowAccountModification", 0);
      v15 = [mCMutableDeepCopy copy];
      [settingsCopy setObject:v15 forKeyedSubscript:@"restrictedBool"];
    }
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"forceWiFiWhitelisting" withUserSettingDictionary:settingsCopy]== 1 || [MCRestrictionManager BOOLSettingForFeature:@"forceWiFiToAllowedNetworksOnly" withUserSettingDictionary:settingsCopy]== 1)
  {
    v16 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
    mCMutableDeepCopy2 = [v16 MCMutableDeepCopy];

    if (!mCMutableDeepCopy2)
    {
      mCMutableDeepCopy2 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(mCMutableDeepCopy2, @"forceWiFiWhitelisting", 1);
    MCFeatureSetBoolSetting(mCMutableDeepCopy2, @"forceWiFiToAllowedNetworksOnly", 1);
    [settingsCopy setObject:mCMutableDeepCopy2 forKeyedSubscript:@"restrictedBool"];
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"allowLockdownMode" withUserSettingDictionary:settingsCopy]== 1)
  {
    v18 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
    mCMutableDeepCopy3 = [v18 MCMutableDeepCopy];

    if (!mCMutableDeepCopy3)
    {
      mCMutableDeepCopy3 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(mCMutableDeepCopy3, @"allowUSBRestrictedMode", 1);
    MCFeatureSetBoolSetting(mCMutableDeepCopy3, @"allowUIConfigurationProfileInstallation", 0);
    if (_os_feature_enabled_impl())
    {
      MCFeatureSetBoolSetting(mCMutableDeepCopy3, @"allowPasscodeRecovery", 0);
    }

    [settingsCopy setObject:mCMutableDeepCopy3 forKeyedSubscript:@"restrictedBool"];
  }

  v20 = _os_feature_enabled_impl();
  v21 = settingsCopy;
  if (v20)
  {
    v22 = [MCRestrictionManager BOOLSettingForFeature:@"allowPasscodeModification" withUserSettingDictionary:settingsCopy];
    v21 = settingsCopy;
    if (v22 == 2)
    {
      v23 = [MCRestrictionManager BOOLSettingForFeature:@"allowPasscodeRecovery" withUserSettingDictionary:settingsCopy];
      v21 = settingsCopy;
      if (v23 != 2)
      {
        v24 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
        mCMutableDeepCopy4 = [v24 MCMutableDeepCopy];

        if (!mCMutableDeepCopy4)
        {
          mCMutableDeepCopy4 = [MEMORY[0x1E695DF90] dictionary];
        }

        MCFeatureSetBoolSetting(mCMutableDeepCopy4, @"allowPasscodeRecovery", 0);
        [settingsCopy setObject:mCMutableDeepCopy4 forKeyedSubscript:@"restrictedBool"];

        v21 = settingsCopy;
      }
    }
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"allowControlCenter" withUserSettingDictionary:v21]== 2)
  {
    v26 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
    mCMutableDeepCopy5 = [v26 MCMutableDeepCopy];

    if (!mCMutableDeepCopy5)
    {
      mCMutableDeepCopy5 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(mCMutableDeepCopy5, @"allowControlCenterInApps", 0);
    [settingsCopy setObject:mCMutableDeepCopy5 forKeyedSubscript:@"restrictedBool"];
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"allowSpotlight" withUserSettingDictionary:settingsCopy]== 2)
  {
    v28 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
    mCMutableDeepCopy6 = [v28 MCMutableDeepCopy];

    if (!mCMutableDeepCopy6)
    {
      mCMutableDeepCopy6 = [MEMORY[0x1E695DF90] dictionary];
    }

    MCFeatureSetBoolSetting(mCMutableDeepCopy6, @"allowSpotlightNews", 0);
    MCFeatureSetBoolSetting(mCMutableDeepCopy6, @"allowSpotlightInternetResults", 0);
    [settingsCopy setObject:mCMutableDeepCopy6 forKeyedSubscript:@"restrictedBool"];
  }
}

- (void)_applyMandatorySettingsToEffectiveUserSettings:(id)settings
{
  settingsCopy = settings;
  [(MCHacks *)self _applyInternalDiagnosticEnforcementToSettings:?];
  if ([MEMORY[0x1E6999800] isSharediPad])
  {
    v4 = [settingsCopy objectForKeyedSubscript:@"union"];
    mCMutableDeepCopy = [v4 MCMutableDeepCopy];

    v6 = [mCMutableDeepCopy objectForKeyedSubscript:@"blockedAppBundleIDs"];
    v7 = [v6 objectForKeyedSubscript:@"values"];
    v8 = v7;
    if (v7)
    {
      array = v7;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v10 = array;

    v11 = [MEMORY[0x1E695DFA8] setWithArray:v10];
    v12 = MCAlwaysRestrictedAppsInEDUMode(v11);
    [v11 unionSet:v12];

    allObjects = [v11 allObjects];
    v14 = [allObjects copy];
    v15 = [mCMutableDeepCopy objectForKeyedSubscript:@"blockedAppBundleIDs"];
    [v15 setObject:v14 forKeyedSubscript:@"values"];

    v16 = [allObjects copy];
    v17 = [mCMutableDeepCopy objectForKeyedSubscript:@"blacklistedAppBundleIDs"];
    [v17 setObject:v16 forKeyedSubscript:@"values"];

    [settingsCopy setObject:mCMutableDeepCopy forKeyedSubscript:@"union"];
    v18 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
    mCMutableDeepCopy2 = [v18 MCMutableDeepCopy];
    v20 = mCMutableDeepCopy2;
    if (mCMutableDeepCopy2)
    {
      dictionary = mCMutableDeepCopy2;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v22 = dictionary;

    [settingsCopy setObject:v22 forKeyedSubscript:@"restrictedBool"];
    MCFeatureSetBoolSetting(v22, @"allowProximitySetupToNewDevice", 0);
    MCFeatureSetBoolSetting(v22, @"allowEnablingRestrictions", 0);
    MCFeatureSetBoolSetting(v22, @"allowGameCenter", 0);
    MCFeatureSetBoolSetting(v22, @"allowAppsToBeHidden", 0);
    MCFeatureSetBoolSetting(v22, @"allowAppsToBeLocked", 0);
  }

  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  v25 = [details objectForKeyedSubscript:*MEMORY[0x1E69996F8]];
  v26 = v25;
  if (v25 && ([v25 BOOLValue] & 1) == 0)
  {
    v27 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
    mCMutableDeepCopy3 = [v27 MCMutableDeepCopy];
    v29 = mCMutableDeepCopy3;
    if (mCMutableDeepCopy3)
    {
      dictionary2 = mCMutableDeepCopy3;
    }

    else
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v31 = dictionary2;

    [settingsCopy setObject:v31 forKeyedSubscript:@"restrictedBool"];
    MCFeatureSetBoolSetting(v31, @"allowHostPairing", 0);
  }
}

- (void)_applyHeuristicsToGranfatheredRestrictionPayloadKeys:(id)keys
{
  v13 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if ([(MCHacks *)self isJapanSKU])
  {
    v5 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = @"allowSafari";
      _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_DEFAULT, "Japan SKU device: Add %@ to grandfathered restrictions", buf, 0xCu);
    }

    v6 = [keysCopy objectForKeyedSubscript:@"restrictedBool"];
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E695DFA8] setWithArray:v6];
      [v8 addObject:@"allowSafari"];
      allObjects = [v8 allObjects];
    }

    else
    {
      v10 = @"allowSafari";
      allObjects = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    }

    [keysCopy setObject:allObjects forKeyedSubscript:@"restrictedBool"];
  }
}

- (void)_applyInternalDiagnosticEnforcementToSettings:(id)settings
{
  settingsCopy = settings;
  if (os_variant_has_internal_ui())
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MCInternalOverrideDiagnosticEnforcement", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat || !AppBooleanValue)
    {
      v5 = [settingsCopy objectForKeyedSubscript:@"restrictedBool"];
      mCMutableDeepCopy = [v5 MCMutableDeepCopy];

      if (!mCMutableDeepCopy)
      {
        mCMutableDeepCopy = [MEMORY[0x1E695DF90] dictionary];
      }

      [settingsCopy setObject:mCMutableDeepCopy forKeyedSubscript:@"restrictedBool"];
      MCFeatureSetBoolSetting(mCMutableDeepCopy, @"allowDiagnosticSubmission", 1);
    }
  }
}

- (void)_setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings:(id)settings
{
  v3 = [MCRestrictionManager BOOLSettingForFeature:@"forceEncryptedBackup" withUserSettingDictionary:settings];
  v4 = v3 == 1;
  v5 = MCLockdownOperationQueue(v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MCHacks__setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = v4;
  dispatch_async(v5, block);
}

uint64_t __74__MCHacks__setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = lockdown_connect();
  if (result)
  {
    v3 = CFNumberCreate(0, kCFNumberCharType, (a1 + 32));
    if (v3)
    {
      v4 = v3;
      v5 = lockdown_set_value();
      if (v5)
      {
        v6 = v5;
        v7 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v8[0] = 67109120;
          v8[1] = v6;
          _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Could not set encrypted backup required key in lockdown: %d", v8, 8u);
        }
      }

      CFRelease(v4);
    }

    return lockdown_disconnect();
  }

  return result;
}

- (id)_deviceSpecificDefaultSettings
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MCHacks__deviceSpecificDefaultSettings__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  if (_deviceSpecificDefaultSettings_once != -1)
  {
    dispatch_once(&_deviceSpecificDefaultSettings_once, block);
  }

  return _deviceSpecificDefaultSettings_dict;
}

void __41__MCHacks__deviceSpecificDefaultSettings__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = MCGetBaseResourcePath();
  v4 = [v3 stringByAppendingPathComponent:@"defaultSettings.plist"];
  v5 = [v2 dataWithContentsOfFile:v4];

  v6 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v5 options:2 format:0 error:0];
  if (MCGestaltIsiPad(v6, v7))
  {
    v8 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "Applying iPad defaults", buf, 2u);
    }

    v9 = [v6 objectForKey:@"restrictedValue"];
    v10 = [v9 objectForKey:@"maxInactivity"];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:120];
      [v10 setObject:v11 forKey:@"value"];

      v12 = [MEMORY[0x1E696AD98] numberWithInt:120];
      [v10 setObject:v12 forKey:@"rangeMinimum"];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (MCGestaltHasPearlIDCapability())
  {
    v13 = [v6 objectForKey:@"restrictedValue"];
    v10 = [v13 objectForKey:@"maxInactivity"];

    if (v10)
    {
      v14 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_DEFAULT, "Applying FaceID defaults", v34, 2u);
      }

      [v10 setObject:&unk_1F1AA5860 forKey:@"value"];
    }

    goto LABEL_11;
  }

  v31 = _MCLogObjects;
  v15 = os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    *v33 = 0;
    _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_DEFAULT, "Applying iPhone defaults", v33, 2u);
  }

LABEL_12:
  if (MCGestaltHasBiometricCapability(v15, v16))
  {
    v17 = [v6 objectForKey:@"restrictedValue"];
    v18 = [v17 objectForKey:@"minLength"];

    if (v18)
    {
      v19 = [v18 objectForKey:@"value"];
      v20 = [v19 unsignedIntValue];

      if (v20 <= 5)
      {
        v21 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_DEFAULT, "Applying TouchID defaults", v32, 2u);
        }

        [v18 setObject:&unk_1F1AA5878 forKey:@"value"];
      }
    }
  }

  [*(a1 + 32) _applyInternalDiagnosticEnforcementToSettings:v6];
  v22 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = MDMFilePath();
  v24 = [v22 fileExistsAtPath:v23 isDirectory:0];

  if ((v24 & 1) == 0)
  {
    v25 = [MEMORY[0x1E69AD420] sharedConfiguration];
    v26 = [v25 isSupervised];

    if (v26)
    {
      v27 = [v6 objectForKey:@"restrictedBool"];
      v28 = [v27 objectForKey:@"allowUSBRestrictedMode"];

      v29 = [MEMORY[0x1E696AD98] numberWithBool:0];
      [v28 setObject:v29 forKey:@"value"];
    }
  }

  v30 = _deviceSpecificDefaultSettings_dict;
  _deviceSpecificDefaultSettings_dict = v6;
}

- (void)_sendChangeNotificationsBasedOnDefaultsAdditionByDomain:(id)domain
{
  v3 = [domain objectForKey:@"com.apple.powerlogd"];
  v6 = [v3 objectForKey:@"FullMode"];

  if (v6)
  {
    null = [MEMORY[0x1E695DFB0] null];

    v5 = v6;
    if (v6 == null)
    {

      v5 = 0;
    }

    v7 = v5;
    MCPowerlogControlSwitchMode(v5);
  }
}

- (void)_sendChangeNotificationsBasedOnDefaultsRemovalByDomain:(id)domain
{
  v3 = [domain objectForKey:@"com.apple.powerlogd"];
  v4 = [v3 containsObject:@"FullMode"];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:0];
    MCPowerlogControlSwitchMode(v5);
  }
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:(id)payload
{
  v10 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Evaluating whether the certificate signer is entitled to install unsupported payloads.", v9, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v5 sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:payloadCopy];
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "Unsupported evaluation result: %d", v9, 8u);
  }

  return v6;
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:(id)defaults
{
  v10 = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Evaluating whether the certificate signer is entitled to write defaults.", v9, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v5 sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:defaultsCopy];
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "Evaluation result: %d", v9, 8u);
  }

  return v6;
}

- (BOOL)sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(id)devices
{
  v10 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v4 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1A795B000, v4, OS_LOG_TYPE_INFO, "Evaluating whether the certificate signer is entitled to install supervised only restrictions on an unsupervised device.", v9, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v5 sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:devicesCopy];
  v7 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_INFO, "Evaluation result: %d", v9, 8u);
  }

  return v6;
}

- (id)_deviceRegionCode
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)isGreenTea
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MCHacks_isGreenTea__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  if (isGreenTea_once != -1)
  {
    dispatch_once(&isGreenTea_once, block);
  }

  return isGreenTea_isGreenTea;
}

void __21__MCHacks_isGreenTea__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("AppleBaseband");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MatchingService - 1;
  if (MatchingService - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], MatchingService);
  }

  v6 = v5 < 0xFFFFFFFE;
  v7 = [*(a1 + 32) _deviceRegionCode];
  v8 = [v7 isEqualToString:@"CH"];

  isGreenTea_isGreenTea = v6 & v8;
}

- (BOOL)isJapanSKU
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MCHacks_isJapanSKU__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  if (isJapanSKU_once != -1)
  {
    dispatch_once(&isJapanSKU_once, block);
  }

  return isJapanSKU_isJapanSKU;
}

void __21__MCHacks_isJapanSKU__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _deviceRegionCode];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_1F1AA5A10 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(&unk_1F1AA5A10);
        }

        if ([v1 isEqualToString:*(*(&v6 + 1) + 8 * i)])
        {
          isJapanSKU_isJapanSKU = 1;
          goto LABEL_11;
        }
      }

      v3 = [&unk_1F1AA5A10 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

@end