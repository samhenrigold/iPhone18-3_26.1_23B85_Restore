@interface HKHRCardioFitnessFeatureAvailabilityRequirements
+ (id)_advertiseableFeature;
+ (id)_backgroundDelivery;
+ (id)_bridgeNotificationsEnablement;
+ (id)_bridgeNotificationsFooter;
+ (id)_bridgeOnboardingEnablement;
+ (id)_bridgeOnboardingVisibility;
+ (id)_bridgeSettingsVisibility;
+ (id)_classification;
+ (id)_healthChecklistSettingsFooter;
+ (id)_nanoSettingsEnablement;
+ (id)_nanoSettingsVisibility;
+ (id)_notInPregnancyMode;
+ (id)_notOnboardedHealthChecklist;
+ (id)_notificationGeneration;
+ (id)_onboardedHealthChecklist;
+ (id)_onboardingInitiation;
+ (id)_postPregnancyAdjustmentEligibility;
+ (id)_pregnancyAdjustmentEligibility;
+ (id)_promotion;
+ (id)_usage;
+ (id)backgroundDelivery;
+ (id)bridgeNotificationsEnablementRequirementIdentifiers;
+ (id)bridgeNotificationsFooterRequirementIdentifiers;
+ (id)bridgeOnboardingEnablementRequirementIdentifiers;
+ (id)bridgeOnboardingVisibilityRequirementIdentifiers;
+ (id)bridgeSettingsVisibilityRequirementIdentifiers;
+ (id)classificationGeneration;
+ (id)healthChecklistSettingsFooter;
+ (id)nanoSettingsEnablementRequirementIdentifiers;
+ (id)nanoSettingsVisibilityRequirementIdentifiers;
+ (id)notInPregnancyModeRequirementIdentifiers;
+ (id)notificationGeneration;
+ (id)onboardingInitiationRequirementIdentifiers;
+ (id)promotionRequirementIdentifiers;
+ (id)requirementSet;
+ (id)usageRequirementIdentifiers;
@end

@implementation HKHRCardioFitnessFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v27[20] = *MEMORY[0x277D85DE8];
  v20 = objc_alloc(MEMORY[0x277CCD420]);
  v26[0] = *MEMORY[0x277CCBE00];
  _backgroundDelivery = [objc_opt_class() _backgroundDelivery];
  v27[0] = _backgroundDelivery;
  v26[1] = *MEMORY[0x277CCBE38];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v27[1] = _onboardingInitiation;
  v26[2] = *MEMORY[0x277CCBE50];
  _promotion = [objc_opt_class() _promotion];
  v27[2] = _promotion;
  v26[3] = *MEMORY[0x277CCBDF0];
  _advertiseableFeature = [objc_opt_class() _advertiseableFeature];
  v27[3] = _advertiseableFeature;
  v26[4] = *MEMORY[0x277CCBEA0];
  _usage = [objc_opt_class() _usage];
  v27[4] = _usage;
  v26[5] = *MEMORY[0x277CCBE30];
  _notInPregnancyMode = [objc_opt_class() _notInPregnancyMode];
  v27[5] = _notInPregnancyMode;
  v26[6] = *MEMORY[0x277CCBE60];
  _pregnancyAdjustmentEligibility = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v27[6] = _pregnancyAdjustmentEligibility;
  v26[7] = *MEMORY[0x277CCBE58];
  _postPregnancyAdjustmentEligibility = [objc_opt_class() _postPregnancyAdjustmentEligibility];
  v27[7] = _postPregnancyAdjustmentEligibility;
  v26[8] = @"CardioFitnessNotification";
  _notificationGeneration = [objc_opt_class() _notificationGeneration];
  v27[8] = _notificationGeneration;
  v26[9] = @"CardioFitnessClassification";
  _classification = [objc_opt_class() _classification];
  v27[9] = _classification;
  v26[10] = @"CardioFitnessHealthChecklistSettingsFooter";
  _healthChecklistSettingsFooter = [objc_opt_class() _healthChecklistSettingsFooter];
  v27[10] = _healthChecklistSettingsFooter;
  v26[11] = @"CardioFitnessBridgeSettingsVisibility";
  _bridgeSettingsVisibility = [objc_opt_class() _bridgeSettingsVisibility];
  v27[11] = _bridgeSettingsVisibility;
  v26[12] = @"CardioFitnessBridgeOnboardingVisibility";
  _bridgeOnboardingVisibility = [objc_opt_class() _bridgeOnboardingVisibility];
  v27[12] = _bridgeOnboardingVisibility;
  v26[13] = @"CardioFitnessBridgeOnboardingEnablement";
  _bridgeOnboardingEnablement = [objc_opt_class() _bridgeOnboardingEnablement];
  v27[13] = _bridgeOnboardingEnablement;
  v26[14] = @"CardioFitnessBridgeNotificationsEnablement";
  _bridgeNotificationsEnablement = [objc_opt_class() _bridgeNotificationsEnablement];
  v27[14] = _bridgeNotificationsEnablement;
  v26[15] = @"CardioFitnessBridgeNotificationsFooter";
  _bridgeNotificationsFooter = [objc_opt_class() _bridgeNotificationsFooter];
  v27[15] = _bridgeNotificationsFooter;
  v26[16] = @"CardioFitnessNanoSettingsVisibility";
  _nanoSettingsVisibility = [objc_opt_class() _nanoSettingsVisibility];
  v27[16] = _nanoSettingsVisibility;
  v26[17] = @"CardioFitnessNanoSettingsEnablement";
  _nanoSettingsEnablement = [objc_opt_class() _nanoSettingsEnablement];
  v27[17] = _nanoSettingsEnablement;
  v26[18] = @"CardioFitnessOnboardedHealthChecklist";
  _onboardedHealthChecklist = [objc_opt_class() _onboardedHealthChecklist];
  v27[18] = _onboardedHealthChecklist;
  v26[19] = @"CardioFitnessNotOnboardedHealthChecklist";
  _notOnboardedHealthChecklist = [objc_opt_class() _notOnboardedHealthChecklist];
  v27[19] = _notOnboardedHealthChecklist;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:20];
  v11 = [v20 initWithRequirementsByContext:v10];

  return v11;
}

+ (id)backgroundDelivery
{
  _backgroundDelivery = [self _backgroundDelivery];
  v4 = [self _requirementIdentifiersForRequirements:_backgroundDelivery];

  return v4;
}

+ (id)onboardingInitiationRequirementIdentifiers
{
  _onboardingInitiation = [self _onboardingInitiation];
  v4 = [self _requirementIdentifiersForRequirements:_onboardingInitiation];

  return v4;
}

+ (id)promotionRequirementIdentifiers
{
  _promotion = [self _promotion];
  v4 = [self _requirementIdentifiersForRequirements:_promotion];

  return v4;
}

+ (id)usageRequirementIdentifiers
{
  _usage = [self _usage];
  v4 = [self _requirementIdentifiersForRequirements:_usage];

  return v4;
}

+ (id)notificationGeneration
{
  _notificationGeneration = [self _notificationGeneration];
  v4 = [self _requirementIdentifiersForRequirements:_notificationGeneration];

  return v4;
}

+ (id)classificationGeneration
{
  _classification = [self _classification];
  v4 = [self _requirementIdentifiersForRequirements:_classification];

  return v4;
}

+ (id)healthChecklistSettingsFooter
{
  _healthChecklistSettingsFooter = [self _healthChecklistSettingsFooter];
  v4 = [self _requirementIdentifiersForRequirements:_healthChecklistSettingsFooter];

  return v4;
}

+ (id)bridgeSettingsVisibilityRequirementIdentifiers
{
  _bridgeSettingsVisibility = [self _bridgeSettingsVisibility];
  v4 = [self _requirementIdentifiersForRequirements:_bridgeSettingsVisibility];

  return v4;
}

+ (id)bridgeOnboardingVisibilityRequirementIdentifiers
{
  _bridgeOnboardingVisibility = [self _bridgeOnboardingVisibility];
  v4 = [self _requirementIdentifiersForRequirements:_bridgeOnboardingVisibility];

  return v4;
}

+ (id)bridgeOnboardingEnablementRequirementIdentifiers
{
  _bridgeOnboardingEnablement = [self _bridgeOnboardingEnablement];
  v4 = [self _requirementIdentifiersForRequirements:_bridgeOnboardingEnablement];

  return v4;
}

+ (id)bridgeNotificationsEnablementRequirementIdentifiers
{
  _bridgeNotificationsEnablement = [self _bridgeNotificationsEnablement];
  v4 = [self _requirementIdentifiersForRequirements:_bridgeNotificationsEnablement];

  return v4;
}

+ (id)bridgeNotificationsFooterRequirementIdentifiers
{
  _bridgeNotificationsFooter = [self _bridgeNotificationsFooter];
  v4 = [self _requirementIdentifiersForRequirements:_bridgeNotificationsFooter];

  return v4;
}

+ (id)nanoSettingsVisibilityRequirementIdentifiers
{
  _nanoSettingsVisibility = [self _nanoSettingsVisibility];
  v4 = [self _requirementIdentifiersForRequirements:_nanoSettingsVisibility];

  return v4;
}

+ (id)nanoSettingsEnablementRequirementIdentifiers
{
  _nanoSettingsEnablement = [self _nanoSettingsEnablement];
  v4 = [self _requirementIdentifiersForRequirements:_nanoSettingsEnablement];

  return v4;
}

+ (id)notInPregnancyModeRequirementIdentifiers
{
  _notInPregnancyMode = [self _notInPregnancyMode];
  v4 = [self _requirementIdentifiersForRequirements:_notInPregnancyMode];

  return v4;
}

+ (id)_backgroundDelivery
{
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 defaultOnboardingEligibilityRequirementsForFeatureIdentifier:_featureIdentifier];

  return v4;
}

+ (id)_onboardingInitiation
{
  v24[10] = *MEMORY[0x277D85DE8];
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v24[0] = profileIsNotFamilySetupPairingProfile;
  v22 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  v24[1] = v22;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v20 = [v2 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:_featureIdentifier supportedOnLocalDevice:1];
  v24[2] = v20;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v24[3] = heartRateIsEnabledInPrivacy;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v24[4] = healthAppIsNotHidden;
  v3 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v24[5] = v3;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v6 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v24[6] = v6;
  v7 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v24[7] = v9;
  v10 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v12 = [v10 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier4 isSupportedIfCountryListMissing:1];
  v24[8] = v12;
  v13 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v15 = [v13 onboardingNotAcknowledgedWithIdentifier:_featureIdentifier5 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v24[9] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:10];

  return v16;
}

+ (id)_promotion
{
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v4 = [_onboardingInitiation mutableCopy];

  _notInPregnancyMode = [self _notInPregnancyMode];
  [v4 addObjectsFromArray:_notInPregnancyMode];

  return v4;
}

+ (id)_advertiseableFeature
{
  v12[2] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v4 = [_onboardingInitiation mutableCopy];

  [v4 hk_removeObjectsPassingTest:&__block_literal_global_3];
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v12[0] = ageIsPresent;
  v6 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v8 = [v6 featureIsOffWithIdentifier:_featureIdentifier isOffIfSettingIsAbsent:1];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v4 addObjectsFromArray:v9];

  _notInPregnancyMode = [self _notInPregnancyMode];
  [v4 addObjectsFromArray:_notInPregnancyMode];

  return v4;
}

uint64_t __73__HKHRCardioFitnessFeatureAvailabilityRequirements__advertiseableFeature__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() requirementIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x277CCBFA0]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_class() requirementIdentifier];
    v4 = [v5 isEqualToString:*MEMORY[0x277CCBFA8]];
  }

  return v4;
}

+ (id)_usage
{
  v27[11] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v27[0] = healthAppIsNotHidden;
  v25 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v27[1] = v25;
  v24 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v27[2] = v24;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v22 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier];
  v27[3] = v22;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v20 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier2 isSupportedIfCountryListMissing:1];
  v27[4] = v20;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:_featureIdentifier3 supportedOnLocalDevice:1];
  v27[5] = v5;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v27[6] = ageIsPresent;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v27[7] = heartRateIsEnabledInPrivacy;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier4];
  v27[8] = v10;
  v11 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:_featureIdentifier5 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v27[9] = v13;
  v14 = MEMORY[0x277CCD428];
  _featureIdentifier6 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:_featureIdentifier6 isOnIfSettingIsAbsent:1];
  v27[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:11];

  return v17;
}

+ (id)_notificationGeneration
{
  _usage = [objc_opt_class() _usage];
  v3 = [_usage mutableCopy];

  return v3;
}

+ (id)_classification
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v12[0] = v4;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier2];
  v12[1] = v7;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v12[2] = ageIsPresent;
  v9 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  return v10;
}

+ (id)_healthChecklistSettingsFooter
{
  v7[1] = *MEMORY[0x277D85DE8];
  _usage = [objc_opt_class() _usage];
  v3 = [_usage mutableCopy];

  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v7[0] = wristDetectionIsEnabledForActiveWatch;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 addObjectsFromArray:v5];

  return v3;
}

+ (id)_bridgeSettingsVisibility
{
  v12[5] = *MEMORY[0x277D85DE8];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v3 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v4 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:{*MEMORY[0x277CCE248], v3}];
  v12[1] = v4;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:_featureIdentifier2 supportedOnLocalDevice:1];
  v12[2] = v7;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v12[3] = healthAppIsNotHidden;
  v9 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v12[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];

  return v10;
}

+ (id)_bridgeOnboardingVisibility
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingNotAcknowledgedWithIdentifier:_featureIdentifier settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

+ (id)_bridgeOnboardingEnablement
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier];
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier2 isSupportedIfCountryListMissing:1];
  v11[1] = v7;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v11[2] = heartRateIsEnabledInPrivacy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  return v9;
}

+ (id)_bridgeNotificationsEnablement
{
  v13[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v13[1] = ageIsPresent;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v6 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier];
  v13[2] = v6;
  v7 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier2 isSupportedIfCountryListMissing:1];
  v13[3] = v9;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v13[4] = heartRateIsEnabledInPrivacy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  return v11;
}

+ (id)_bridgeNotificationsFooter
{
  v7[1] = *MEMORY[0x277D85DE8];
  _bridgeNotificationsEnablement = [objc_opt_class() _bridgeNotificationsEnablement];
  v3 = [_bridgeNotificationsEnablement mutableCopy];

  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v7[0] = wristDetectionIsEnabledForActiveWatch;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 addObjectsFromArray:v5];

  return v3;
}

+ (id)_nanoSettingsVisibility
{
  _notificationGeneration = [objc_opt_class() _notificationGeneration];
  v3 = [_notificationGeneration mutableCopy];

  v4 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v6 = [v4 featureIsOnWithIdentifier:_featureIdentifier isOnIfSettingIsAbsent:1];
  [v3 removeObject:v6];

  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  [v3 removeObject:ageIsPresent];

  v8 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  [v3 removeObject:v8];

  v9 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  [v3 addObject:v9];

  return v3;
}

+ (id)_nanoSettingsEnablement
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC218]];
  v6[0] = v2;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v6[1] = ageIsPresent;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)_onboardedHealthChecklist
{
  v27[11] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v27[0] = healthAppIsNotHidden;
  v25 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v27[1] = v25;
  v24 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v27[2] = v24;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v22 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier];
  v27[3] = v22;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v20 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier2 isSupportedIfCountryListMissing:1];
  v27[4] = v20;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:_featureIdentifier3 supportedOnLocalDevice:1];
  v27[5] = v5;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v27[6] = ageIsPresent;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v27[7] = heartRateIsEnabledInPrivacy;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier4];
  v27[8] = v10;
  v11 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:_featureIdentifier5 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v27[9] = v13;
  v14 = MEMORY[0x277CCD428];
  _featureIdentifier6 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:_featureIdentifier6 isOnIfSettingIsAbsent:1];
  v27[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:11];

  return v17;
}

+ (id)_notOnboardedHealthChecklist
{
  v20[8] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v20[0] = healthAppIsNotHidden;
  v18 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v20[1] = v18;
  v17 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v20[2] = v17;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier];
  v20[3] = v4;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier2 isSupportedIfCountryListMissing:1];
  v20[4] = v7;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:_featureIdentifier3 supportedOnLocalDevice:1];
  v20[5] = v10;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v20[6] = heartRateIsEnabledInPrivacy;
  v12 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v14 = [v12 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier4];
  v20[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:8];

  return v15;
}

+ (id)_notInPregnancyMode
{
  v6[2] = *MEMORY[0x277D85DE8];
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v6[0] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v6[1] = noOngoingPregnancy;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)_pregnancyAdjustmentEligibility
{
  v27[11] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v27[0] = healthAppIsNotHidden;
  v25 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v27[1] = v25;
  v24 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v27[2] = v24;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v22 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier];
  v27[3] = v22;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v20 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier2 isSupportedIfCountryListMissing:1];
  v27[4] = v20;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:_featureIdentifier3 supportedOnLocalDevice:1];
  v27[5] = v5;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v27[6] = ageIsPresent;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v27[7] = heartRateIsEnabledInPrivacy;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier4];
  v27[8] = v10;
  v11 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:_featureIdentifier5 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v27[9] = v13;
  v14 = MEMORY[0x277CCD428];
  _featureIdentifier6 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:_featureIdentifier6 isOnIfSettingIsAbsent:1];
  v27[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:11];

  return v17;
}

+ (id)_postPregnancyAdjustmentEligibility
{
  v27[11] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v27[0] = healthAppIsNotHidden;
  v25 = [MEMORY[0x277CCD428] watchAppIsInstalledForBundleIdentifier:@"com.apple.HeartRate"];
  v27[1] = v25;
  v24 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE240]];
  v27[2] = v24;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v22 = [v2 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier];
  v27[3] = v22;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v20 = [v3 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_featureIdentifier2 isSupportedIfCountryListMissing:1];
  v27[4] = v20;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v5 = [v4 capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:_featureIdentifier3 supportedOnLocalDevice:1];
  v27[5] = v5;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v27[6] = ageIsPresent;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v27[7] = heartRateIsEnabledInPrivacy;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier4];
  v27[8] = v10;
  v11 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v13 = [v11 onboardingAcknowledgedWithIdentifier:_featureIdentifier5 settingsKey:@"CardioFitnessFeatureSettingsKeyNotificationDetailsEntered"];
  v27[9] = v13;
  v14 = MEMORY[0x277CCD428];
  _featureIdentifier6 = [objc_opt_class() _featureIdentifier];
  v16 = [v14 featureIsOffWithIdentifier:_featureIdentifier6 isOffIfSettingIsAbsent:1];
  v27[10] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:11];

  return v17;
}

uint64_t __91__HKHRCardioFitnessFeatureAvailabilityRequirements__requirementIdentifiersForRequirements___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();

  return [v2 requirementIdentifier];
}

@end