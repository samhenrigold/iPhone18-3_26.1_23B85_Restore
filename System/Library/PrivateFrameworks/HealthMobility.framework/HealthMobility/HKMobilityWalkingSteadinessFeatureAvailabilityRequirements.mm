@interface HKMobilityWalkingSteadinessFeatureAvailabilityRequirements
+ (id)_advertisableFeature;
+ (id)_backgroundDelivery;
+ (id)_classification;
+ (id)_eventSubmission;
+ (id)_notInPregnancyMode;
+ (id)_notOnboardedHealthChecklist;
+ (id)_notificationSettingsVisibility;
+ (id)_onboardedHealthChecklist;
+ (id)_onboardingInitiation;
+ (id)_pregnancyAdjustmentEligibility;
+ (id)_promotion;
+ (id)_promotionFeatureTag;
+ (id)backgroundDeliveryIdentifiers;
+ (id)classificationGeneration;
+ (id)eventSubmission;
+ (id)notInPregnancyModeRequirementIdentifiers;
+ (id)notificationSettingsVisibility;
+ (id)onboardingInitiationRequirementIdentifiers;
+ (id)promotionFeatureTagRequirementIdentifiers;
+ (id)promotionRequirementIdentifiers;
+ (id)requirementSet;
@end

@implementation HKMobilityWalkingSteadinessFeatureAvailabilityRequirements

+ (id)requirementSet
{
  v23[13] = *MEMORY[0x277D85DE8];
  v17 = objc_alloc(MEMORY[0x277CCD420]);
  v22[0] = *MEMORY[0x277CCBE00];
  _backgroundDelivery = [objc_opt_class() _backgroundDelivery];
  v23[0] = _backgroundDelivery;
  v22[1] = *MEMORY[0x277CCBE38];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v23[1] = _onboardingInitiation;
  v22[2] = *MEMORY[0x277CCBE50];
  _promotion = [objc_opt_class() _promotion];
  v23[2] = _promotion;
  v22[3] = *MEMORY[0x277CCBDF0];
  _advertisableFeature = [objc_opt_class() _advertisableFeature];
  v23[3] = _advertisableFeature;
  v22[4] = *MEMORY[0x277CCBE30];
  isNotInPostPregnancy = [MEMORY[0x277CCD428] isNotInPostPregnancy];
  v21[0] = isNotInPostPregnancy;
  noOngoingPregnancy = [MEMORY[0x277CCD428] noOngoingPregnancy];
  v21[1] = noOngoingPregnancy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v23[4] = v13;
  v22[5] = *MEMORY[0x277CCBE60];
  _pregnancyAdjustmentEligibility = [objc_opt_class() _pregnancyAdjustmentEligibility];
  v23[5] = _pregnancyAdjustmentEligibility;
  v22[6] = @"WalkingSteadinessEventSubmission";
  _eventSubmission = [objc_opt_class() _eventSubmission];
  v23[6] = _eventSubmission;
  v22[7] = @"WalkingSteadinessNotificationSettingsVisibility";
  _notificationSettingsVisibility = [objc_opt_class() _notificationSettingsVisibility];
  v23[7] = _notificationSettingsVisibility;
  v22[8] = @"WalkingSteadinessClassification";
  _classification = [objc_opt_class() _classification];
  v23[8] = _classification;
  v22[9] = @"WalkingSteadinessOnboardedHealthChecklist";
  _onboardedHealthChecklist = [objc_opt_class() _onboardedHealthChecklist];
  v23[9] = _onboardedHealthChecklist;
  v22[10] = @"WalkingSteadinessNotOnboardedHealthChecklist";
  _notOnboardedHealthChecklist = [objc_opt_class() _notOnboardedHealthChecklist];
  v23[10] = _notOnboardedHealthChecklist;
  v22[11] = @"WalkingSteadinessPromotionFeatureTag";
  _promotionFeatureTag = [objc_opt_class() _promotionFeatureTag];
  v23[11] = _promotionFeatureTag;
  v22[12] = @"WalkingSteadinessShouldNotShowPregnancyContent";
  _notInPregnancyMode = [objc_opt_class() _notInPregnancyMode];
  v23[12] = _notInPregnancyMode;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:13];
  v11 = [v17 initWithRequirementsByContext:v10];

  return v11;
}

+ (id)backgroundDeliveryIdentifiers
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

+ (id)eventSubmission
{
  _eventSubmission = [self _eventSubmission];
  v4 = [self _requirementIdentifiersForRequirements:_eventSubmission];

  return v4;
}

+ (id)notificationSettingsVisibility
{
  _notificationSettingsVisibility = [self _notificationSettingsVisibility];
  v4 = [self _requirementIdentifiersForRequirements:_notificationSettingsVisibility];

  return v4;
}

+ (id)classificationGeneration
{
  _classification = [self _classification];
  v4 = [self _requirementIdentifiersForRequirements:_classification];

  return v4;
}

+ (id)promotionFeatureTagRequirementIdentifiers
{
  _promotionFeatureTag = [self _promotionFeatureTag];
  v4 = [self _requirementIdentifiersForRequirements:_promotionFeatureTag];

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
  v19[7] = *MEMORY[0x277D85DE8];
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v19[0] = profileIsNotFamilySetupPairingProfile;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v19[1] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v19[2] = healthAppIsNotHidden;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v5 = [v3 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v19[3] = v5;
  v6 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v8 = [v6 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v19[4] = v8;
  v9 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v11 = [v9 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v19[5] = v11;
  v12 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v14 = [v12 onboardingNotAcknowledgedWithIdentifier:_featureIdentifier4];
  v19[6] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:7];

  return v15;
}

+ (id)_promotion
{
  v8[2] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v8[0] = fitnessTrackingIsEnabledInPrivacy;
  v5 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v3 addObjectsFromArray:v6];

  return v3;
}

+ (id)_promotionFeatureTag
{
  v5[1] = *MEMORY[0x277D85DE8];
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v5[0] = heightIsPresent;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)_eventSubmission
{
  v25[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v23 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v25[0] = v23;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v21 = [v3 onboardingAcknowledgedWithIdentifier:_featureIdentifier2];
  v25[1] = v21;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v19 = [v4 featureIsOnWithIdentifier:_featureIdentifier3 isOnIfSettingIsAbsent:0];
  v25[2] = v19;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v6 = [v5 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier4];
  v25[3] = v6;
  v7 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v9 = [v7 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier5];
  v25[4] = v9;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v25[5] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v25[6] = ageIsPresent;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v25[7] = heightIsPresent;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v25[8] = v13;
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v25[9] = healthAppIsNotHidden;
  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v25[10] = fitnessTrackingIsEnabledInPrivacy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:11];

  return v16;
}

+ (id)_advertisableFeature
{
  v14[1] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v14[0] = fitnessTrackingIsEnabledInPrivacy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v3 addObjectsFromArray:v5];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_1];
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v13[0] = ageIsPresent;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v13[1] = heightIsPresent;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v10 = [v8 featureIsOffWithIdentifier:_featureIdentifier isOffIfSettingIsAbsent:1];
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  [v3 addObjectsFromArray:v11];

  return v3;
}

uint64_t __82__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__advertisableFeature__block_invoke(uint64_t a1, void *a2)
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

+ (id)_notificationSettingsVisibility
{
  v7[1] = *MEMORY[0x277D85DE8];
  _eventSubmission = [objc_opt_class() _eventSubmission];
  v3 = [_eventSubmission mutableCopy];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_318];
  v4 = [MEMORY[0x277CCD428] notificationAuthorizedWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 addObjectsFromArray:v5];

  return v3;
}

uint64_t __93__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__notificationSettingsVisibility__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_class() requirementIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCBF38]];

  return v3;
}

+ (id)_onboardedHealthChecklist
{
  v26[12] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v26[0] = healthAppIsNotHidden;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v23 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v26[1] = v23;
  v3 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v21 = [v3 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v26[2] = v21;
  v4 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v19 = [v4 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v26[3] = v19;
  v18 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v26[4] = v18;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v26[5] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v26[6] = ageIsPresent;
  v7 = [MEMORY[0x277CCD428] notificationAuthorizedWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  v26[7] = v7;
  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v26[8] = fitnessTrackingIsEnabledInPrivacy;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v26[9] = heightIsPresent;
  v10 = MEMORY[0x277CCD428];
  _featureIdentifier4 = [objc_opt_class() _featureIdentifier];
  v12 = [v10 onboardingAcknowledgedWithIdentifier:_featureIdentifier4];
  v26[10] = v12;
  v13 = MEMORY[0x277CCD428];
  _featureIdentifier5 = [objc_opt_class() _featureIdentifier];
  v15 = [v13 featureIsOnWithIdentifier:_featureIdentifier5 isOnIfSettingIsAbsent:0];
  v26[11] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:12];

  return v16;
}

+ (id)_notOnboardedHealthChecklist
{
  v17[7] = *MEMORY[0x277D85DE8];
  healthAppIsNotHidden = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v17[0] = healthAppIsNotHidden;
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v17[1] = v4;
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v17[2] = v7;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v17[3] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v17[4] = v11;
  walkingSteadinessCapabilityIsSupportedOnLocalDevice = [MEMORY[0x277CCD428] walkingSteadinessCapabilityIsSupportedOnLocalDevice];
  v17[5] = walkingSteadinessCapabilityIsSupportedOnLocalDevice;
  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v17[6] = fitnessTrackingIsEnabledInPrivacy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:7];

  return v14;
}

+ (id)_classification
{
  v15[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v4 = [v2 onboardingRecordIsPresentForFeatureWithIdentifier:_featureIdentifier];
  v5 = MEMORY[0x277CCD428];
  _featureIdentifier2 = [objc_opt_class() _featureIdentifier];
  v7 = [v5 countryCodeIsPresentForFeatureWithIdentifier:_featureIdentifier2];
  v15[1] = v7;
  v8 = MEMORY[0x277CCD428];
  _featureIdentifier3 = [objc_opt_class() _featureIdentifier];
  v10 = [v8 countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:_featureIdentifier3];
  v15[2] = v10;
  v11 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE270]];
  v15[3] = v11;
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v15[4] = ageIsPresent;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];

  return v13;
}

uint64_t __101__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__requirementIdentifiersForRequirements___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();

  return [v2 requirementIdentifier];
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
  v15[1] = *MEMORY[0x277D85DE8];
  _onboardingInitiation = [objc_opt_class() _onboardingInitiation];
  v3 = [_onboardingInitiation mutableCopy];

  fitnessTrackingIsEnabledInPrivacy = [MEMORY[0x277CCD428] fitnessTrackingIsEnabledInPrivacy];
  v15[0] = fitnessTrackingIsEnabledInPrivacy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v3 addObjectsFromArray:v5];

  [v3 hk_removeObjectsPassingTest:&__block_literal_global_323];
  ageIsPresent = [MEMORY[0x277CCD428] ageIsPresent];
  v7 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:{*MEMORY[0x277CCE270], ageIsPresent}];
  v14[1] = v7;
  heightIsPresent = [MEMORY[0x277CCD428] heightIsPresent];
  v14[2] = heightIsPresent;
  v9 = MEMORY[0x277CCD428];
  _featureIdentifier = [objc_opt_class() _featureIdentifier];
  v11 = [v9 featureIsOffWithIdentifier:_featureIdentifier isOffIfSettingIsAbsent:1];
  v14[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  [v3 addObjectsFromArray:v12];

  return v3;
}

uint64_t __93__HKMobilityWalkingSteadinessFeatureAvailabilityRequirements__pregnancyAdjustmentEligibility__block_invoke(uint64_t a1, void *a2)
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

@end