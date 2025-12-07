@interface HKHRHypertensionNotificationsFeatureAvailabilityRequirements
+ (id)_analysis;
+ (id)_backgroundDelivery;
+ (id)_basePromotionRequirements;
+ (id)_baseUsageWithFeatureOnRequirementIncluded:(BOOL)included;
+ (id)_dtdrEducationVisibility;
+ (id)_dtdrStatusVisibility;
+ (id)_pregnancyAdjustmentEligibility;
+ (id)_promotion;
+ (id)_requirementIdentifiersForRequirements:(id)requirements;
+ (id)_settingsUserInteractionEnabled;
+ (id)_settingsVisibilityWithFeatureOnboarded:(BOOL)onboarded;
+ (id)onboardingInitiationRequirementIdentifiers;
+ (id)promotionRequirementIdentifiers;
+ (id)requirementSet;
+ (id)settingsUserInteractionRequirementIdentifiers;
+ (id)settingsVisibilityRequirementIdentifiersWithFeatureOnboarded:(BOOL)onboarded;
+ (id)usageRequirementIdentifiers;
@end

@implementation HKHRHypertensionNotificationsFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v19[12] = *MEMORY[0x277D85DE8];
  v14 = objc_alloc(MEMORY[0x277CCD420]);
  v18[0] = *MEMORY[0x277CCBE38];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v19[0] = _onboardingInitiation;
  v18[1] = *MEMORY[0x277CCBE50];
  _promotion = [objc_opt_class() _promotion];
  v19[1] = _promotion;
  v18[2] = *MEMORY[0x277CCBEA0];
  _usage = [objc_opt_class() _usage];
  v19[2] = _usage;
  v18[3] = *MEMORY[0x277CCBDF8];
  _analysis = [objc_opt_class() _analysis];
  v19[3] = _analysis;
  v18[4] = *MEMORY[0x277CCBE70];
  v2 = [objc_opt_class() _settingsVisibilityWithFeatureOnboarded:1];
  v19[4] = v2;
  v18[5] = @"NotOnboardedSettingsVisibility";
  v3 = [objc_opt_class() _settingsVisibilityWithFeatureOnboarded:0];
  v19[5] = v3;
  v18[6] = @"RoomEducationSectionVisibility";
  _dtdrEducationVisibility = [objc_opt_class() _dtdrEducationVisibility];
  v19[6] = _dtdrEducationVisibility;
  v18[7] = @"RoomStatusSectionVisibility";
  _dtdrStatusVisibility = [objc_opt_class() _dtdrStatusVisibility];
  v19[7] = _dtdrStatusVisibility;
  v18[8] = *MEMORY[0x277CCBE68];
  _settingsUserInteractionEnabled = [objc_opt_class() _settingsUserInteractionEnabled];
  v19[8] = _settingsUserInteractionEnabled;
  v18[9] = *MEMORY[0x277CCBE60];
  _pregnancyAdjustmentEligibility = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v19[9] = _pregnancyAdjustmentEligibility;
  v18[10] = *MEMORY[0x277CCBE00];
  _backgroundDelivery = [objc_opt_class() _backgroundDelivery];
  v19[10] = _backgroundDelivery;
  v18[11] = *MEMORY[0x277CCBE28];
  _notificationSettingsVisibility = [objc_opt_class() _notificationSettingsVisibility];
  v19[11] = _notificationSettingsVisibility;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:12];
  v11 = [v14 initWithRequirementsByContext:v10];

  return v11;
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

+ (id)settingsVisibilityRequirementIdentifiersWithFeatureOnboarded:(BOOL)onboarded
{
  v4 = [self _settingsVisibilityWithFeatureOnboarded:onboarded];
  v5 = [self _requirementIdentifiersForRequirements:v4];

  return v5;
}

+ (id)settingsUserInteractionRequirementIdentifiers
{
  _settingsUserInteractionEnabled = [self _settingsUserInteractionEnabled];
  v4 = [self _requirementIdentifiersForRequirements:_settingsUserInteractionEnabled];

  return v4;
}

+ (id)_backgroundDelivery
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v6 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  [v2 addObject:v6];

  v7 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:*MEMORY[0x277CCC068]];
  [v2 addObjectsFromArray:v7];

  return v2;
}

+ (id)_promotion
{
  v8[2] = *MEMORY[0x277D85DE8];
  _basePromotionRequirements = [self _basePromotionRequirements];
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v8[0] = wristDetectionIsEnabledForActiveWatch;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v8[1] = heartRateIsEnabledInPrivacy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [_basePromotionRequirements arrayByAddingObjectsFromArray:v5];

  return v6;
}

+ (id)_basePromotionRequirements
{
  v35[14] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v32 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v35[0] = v32;
  v3 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v30 = [v3 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier];
  v35[1] = v30;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v28 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier2];
  v35[2] = v28;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v26 = [v5 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier3];
  v35[3] = v26;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v24 = [v6 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier4];
  v35[4] = v24;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v35[5] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v35[6] = notInStoreDemoMode;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier5];
  v35[7] = v9;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier6];
  v35[8] = v12;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v35[9] = v13;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v35[10] = healthAppIsNotHidden;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v35[11] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v35[12] = noOngoingPregnancy;
  v17 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v19 = [v17 onboardingNotAcknowledgedWithIdentifier:_hypertensionIdentifier7];
  v35[13] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:14];

  return v21;
}

+ (id)_baseUsageWithFeatureOnRequirementIncluded:(BOOL)included
{
  includedCopy = included;
  v49[17] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v44 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v49[0] = v44;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v42 = [v4 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier];
  v49[1] = v42;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v40 = [v5 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v49[2] = v40;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v38 = [v6 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v49[3] = v38;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v49[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v49[5] = notInStoreDemoMode;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v34 = [v7 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier4];
  v49[6] = v34;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v31 = [v8 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier5];
  v49[7] = v31;
  v9 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v29 = [v9 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier6 isSupportedIfCountryListMissing:1];
  v49[8] = v29;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v11 = [v10 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier7];
  v49[9] = v11;
  v12 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v49[10] = v12;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v49[11] = healthAppIsNotHidden;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v49[12] = wristDetectionIsEnabledForActiveWatch;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v49[13] = heartRateIsEnabledInPrivacy;
  v16 = MEMORY[0x277CCD428];
  _hypertensionIdentifier8 = [objc_opt_class() _hypertensionIdentifier];
  v18 = [v16 onboardingAcknowledgedWithIdentifier:_hypertensionIdentifier8];
  v49[14] = v18;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v49[15] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v49[16] = noOngoingPregnancy;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:17];

  if (includedCopy)
  {
    v21 = MEMORY[0x277CCD428];
    _hypertensionIdentifier9 = [objc_opt_class() _hypertensionIdentifier];
    v23 = [v21 featureIsOnWithIdentifier:_hypertensionIdentifier9 isOnIfSettingIsAbsent:0];
    v48 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v25 = v33;
    v26 = [v33 arrayByAddingObjectsFromArray:v24];
  }

  else
  {
    v25 = v33;
    v26 = v33;
  }

  return v26;
}

+ (id)_analysis
{
  v39[15] = *MEMORY[0x277D85DE8];
  v25 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A0A8CBBD-8F56-46ED-A36B-446D452C0515"];
  v2 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v37 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier];
  v39[0] = v37;
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v34 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v39[1] = v34;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v32 = [v4 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v39[2] = v32;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v30 = [v5 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v39[3] = v30;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v39[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v39[5] = notInStoreDemoMode;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v26 = [v6 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier4];
  v39[6] = v26;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v23 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier5];
  v39[7] = v23;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 featureIsOnWithIdentifier:_hypertensionIdentifier6 isOnIfSettingIsAbsent:0];
  v39[8] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v39[9] = v11;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v39[10] = healthAppIsNotHidden;
  v13 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v15 = [v13 capabilityIsSupportedOnAnyWatch:v25 supportedOnLocalDevice:{objc_msgSend(mEMORY[0x277CCDD30]2, "isCompanionCapable")}];
  v39[11] = v15;
  v16 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v18 = [v16 onboardingAcknowledgedWithIdentifier:_hypertensionIdentifier7];
  v39[12] = v18;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v39[13] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v39[14] = noOngoingPregnancy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:15];

  return v22;
}

+ (id)_settingsVisibilityWithFeatureOnboarded:(BOOL)onboarded
{
  v33[8] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v27 = [v3 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v33[0] = v27;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v25 = [v4 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier];
  v33[1] = v25;
  v5 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v33[2] = v5;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v33[3] = healthAppIsNotHidden;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v33[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v33[5] = notInStoreDemoMode;
  v9 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v11 = [v9 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier2];
  v33[6] = v11;
  v12 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v14 = [v12 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier3];
  v33[7] = v14;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:8];

  if (onboarded)
  {
    v15 = v28;
    v16 = v28;
  }

  else
  {
    v17 = MEMORY[0x277CCD428];
    _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
    v19 = [v17 onboardingNotAcknowledgedWithIdentifier:_hypertensionIdentifier4];
    v32[0] = v19;
    v20 = MEMORY[0x277CCD428];
    _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
    v22 = [v20 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier5];
    v32[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v15 = v28;
    v16 = [v28 arrayByAddingObjectsFromArray:v23];
  }

  return v16;
}

+ (id)_dtdrEducationVisibility
{
  v20[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v3 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v20[0] = v3;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v6 = [v4 onboardingAcknowledgedWithIdentifier:_hypertensionIdentifier];
  v20[1] = v6;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v20[2] = v9;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier3];
  v20[3] = v12;
  v13 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v15 = [v13 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier4];
  v20[4] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  return v16;
}

+ (id)_dtdrStatusVisibility
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v5 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v16[1] = profileIsNotFamilySetupPairingProfile;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v16[2] = healthAppIsNotHidden;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:_hypertensionIdentifier];
  v16[3] = v10;
  v11 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v13 = [v11 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier2];
  v16[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];

  return v14;
}

+ (id)_settingsUserInteractionEnabled
{
  v20[8] = *MEMORY[0x277D85DE8];
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v20[0] = heartRateIsEnabledInPrivacy;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v20[1] = wristDetectionIsEnabledForActiveWatch;
  v2 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v3 = [v2 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier isSupportedIfCountryListMissing:1];
  v20[2] = v3;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v6 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier2];
  v20[3] = v6;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v9 = [v7 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v20[4] = v9;
  v10 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v12 = [v10 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier4];
  v20[5] = v12;
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v20[6] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v20[7] = noOngoingPregnancy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:8];

  return v15;
}

+ (id)_requirementIdentifiersForRequirements:(id)requirements
{
  v18 = *MEMORY[0x277D85DE8];
  requirementsCopy = requirements;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requirementsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = requirementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        requirementIdentifier = [objc_opt_class() requirementIdentifier];
        [v4 addObject:requirementIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v11;
}

+ (id)_pregnancyAdjustmentEligibility
{
  v38[15] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v35 = [v2 featureFlagIsEnabled:{objc_msgSend(features, "hermit")}];
  v38[0] = v35;
  v3 = MEMORY[0x277CCD428];
  _hypertensionIdentifier = [objc_opt_class() _hypertensionIdentifier];
  v33 = [v3 someRegionIsSupportedForFeatureWithIdentifier:_hypertensionIdentifier];
  v38[1] = v33;
  v4 = MEMORY[0x277CCD428];
  _hypertensionIdentifier2 = [objc_opt_class() _hypertensionIdentifier];
  v31 = [v4 seedIsNotExpiredForFeatureWithIdentifier:_hypertensionIdentifier2];
  v38[2] = v31;
  v5 = MEMORY[0x277CCD428];
  _hypertensionIdentifier3 = [objc_opt_class() _hypertensionIdentifier];
  v29 = [v5 featureIsNotRemotelyDisabledWithIdentifier:_hypertensionIdentifier3];
  v38[3] = v29;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v38[4] = profileIsNotFamilySetupPairingProfile;
  notInStoreDemoMode = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v38[5] = notInStoreDemoMode;
  v6 = MEMORY[0x277CCD428];
  _hypertensionIdentifier4 = [objc_opt_class() _hypertensionIdentifier];
  v25 = [v6 capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier4];
  v38[6] = v25;
  v7 = MEMORY[0x277CCD428];
  _hypertensionIdentifier5 = [objc_opt_class() _hypertensionIdentifier];
  v23 = [v7 countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:_hypertensionIdentifier5 isSupportedIfCountryListMissing:1];
  v38[7] = v23;
  v8 = MEMORY[0x277CCD428];
  _hypertensionIdentifier6 = [objc_opt_class() _hypertensionIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_hypertensionIdentifier6];
  v38[8] = v10;
  v11 = MEMORY[0x277CCD428];
  _hypertensionIdentifier7 = [objc_opt_class() _hypertensionIdentifier];
  v13 = [v11 onboardingRecordIsPresentForFeatureWithIdentifier:_hypertensionIdentifier7];
  v38[9] = v13;
  v14 = MEMORY[0x277CCD428];
  _hypertensionIdentifier8 = [objc_opt_class() _hypertensionIdentifier];
  v16 = [v14 featureIsOnWithIdentifier:_hypertensionIdentifier8 isOnIfSettingIsAbsent:0];
  v38[10] = v16;
  v17 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE248]];
  v38[11] = v17;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v38[12] = healthAppIsNotHidden;
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v38[13] = wristDetectionIsEnabledForActiveWatch;
  heartRateIsEnabledInPrivacy = [MEMORY[0x277CCD428] heartRateIsEnabledInPrivacy];
  v38[14] = heartRateIsEnabledInPrivacy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:15];

  return v22;
}

@end