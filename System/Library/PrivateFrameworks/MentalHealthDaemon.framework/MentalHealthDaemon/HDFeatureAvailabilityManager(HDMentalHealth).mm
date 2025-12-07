@interface HDFeatureAvailabilityManager(HDMentalHealth)
+ (id)_hdmc_availabilityManagerForFeatureIdentifier:()HDMentalHealth profile:availabilityRequirements:localCountrySet:;
+ (id)hdmh_depressionAndAnxietyAssessmentsAvailabilityManagerWithProfile:()HDMentalHealth;
+ (id)hdmh_periodicDepressionAndAnxietyAssessmentPromptsAvailabilityManagerWithProfile:()HDMentalHealth;
+ (id)hdmh_stateOfMindLoggingAvailabilityManagerWithProfile:()HDMentalHealth;
+ (id)hdmh_stateOfMindLoggingPatternEscalationsAvailabilityManagerWithProfile:()HDMentalHealth;
@end

@implementation HDFeatureAvailabilityManager(HDMentalHealth)

+ (id)hdmh_stateOfMindLoggingAvailabilityManagerWithProfile:()HDMentalHealth
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC100];
  v25 = *MEMORY[0x277CCC100];
  v4 = MEMORY[0x277D106D8];
  v27 = a3;
  v26 = [v4 alloc];
  v5 = objc_alloc(MEMORY[0x277CCD420]);
  v30[0] = *MEMORY[0x277CCBE50];
  v6 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v22 = [v6 featureFlagIsEnabled:{objc_msgSend(features, "chamomile")}];
  v29[0] = v22;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v29[1] = profileIsNotFamilySetupPairingProfile;
  v8 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v3];
  v29[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v31[0] = v9;
  v30[1] = *MEMORY[0x277CCBEA0];
  v10 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  features2 = [mEMORY[0x277CCDD30]2 features];
  v13 = [v10 featureFlagIsEnabled:{objc_msgSend(features2, "chamomile")}];
  v28[0] = v13;
  profileIsNotFamilySetupPairingProfile2 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v28[1] = profileIsNotFamilySetupPairingProfile2;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v31[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v17 = [v5 initWithRequirementsByContext:v16];

  uncheckedAvailability = [MEMORY[0x277D10828] uncheckedAvailability];
  v19 = objc_alloc_init(MEMORY[0x277D106E8]);
  v20 = [v26 initWithProfile:v27 featureIdentifier:v25 availabilityRequirements:v17 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:uncheckedAvailability disableAndExpiryProvider:v19 loggingCategory:*MEMORY[0x277CCC2F0]];

  return v20;
}

+ (id)_hdmc_availabilityManagerForFeatureIdentifier:()HDMentalHealth profile:availabilityRequirements:localCountrySet:
{
  v9 = MEMORY[0x277D10728];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 alloc];
  daemon = [v12 daemon];
  v16 = [v14 initWithFeatureIdentifier:v13 defaultCountrySet:v10 healthDaemon:daemon];

  v17 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [v12 daemon];
  v19 = [v17 initWithDaemon:daemon2 featureIdentifier:v13];

  v20 = objc_alloc(MEMORY[0x277D106D8]);
  v21 = [v20 initWithProfile:v12 featureIdentifier:v13 availabilityRequirements:v11 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v16 disableAndExpiryProvider:v19 loggingCategory:*MEMORY[0x277CCC2F0]];

  return v21;
}

+ (id)hdmh_depressionAndAnxietyAssessmentsAvailabilityManagerWithProfile:()HDMentalHealth
{
  v45[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC008];
  v4 = MEMORY[0x277CCD420];
  v38 = a3;
  v29 = [v4 alloc];
  v44[0] = *MEMORY[0x277CCBE00];
  v5 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v35 = [v5 featureFlagIsEnabled:{objc_msgSend(features, "chamomile")}];
  v43[0] = v35;
  v34 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v43[1] = v34;
  v33 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v43[2] = v33;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  v45[0] = v32;
  v44[1] = *MEMORY[0x277CCBE70];
  v6 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  features2 = [mEMORY[0x277CCDD30]2 features];
  v27 = [v6 featureFlagIsEnabled:{objc_msgSend(features2, "chamomile")}];
  v42[0] = v27;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v42[1] = profileIsNotFamilySetupPairingProfile;
  v25 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC238]];
  v42[2] = v25;
  v24 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v42[3] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v45[1] = v23;
  v44[2] = *MEMORY[0x277CCBE68];
  v22 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v41[0] = v22;
  v21 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v41[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v45[2] = v20;
  v44[3] = *MEMORY[0x277CCBEA0];
  v7 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  features3 = [mEMORY[0x277CCDD30]3 features];
  v10 = [v7 featureFlagIsEnabled:{objc_msgSend(features3, "chamomile")}];
  v40[0] = v10;
  profileIsNotFamilySetupPairingProfile2 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v40[1] = profileIsNotFamilySetupPairingProfile2;
  v12 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v40[2] = v12;
  v13 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v40[3] = v13;
  v14 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v40[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
  v45[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
  v30 = [v29 initWithRequirementsByContext:v16];

  localAvailabilityForDepressionAndAnxietyAssessments = [MEMORY[0x277CCD260] localAvailabilityForDepressionAndAnxietyAssessments];
  v18 = [self _hdmc_availabilityManagerForFeatureIdentifier:v3 profile:v38 availabilityRequirements:v30 localCountrySet:localAvailabilityForDepressionAndAnxietyAssessments];

  return v18;
}

+ (id)hdmh_periodicDepressionAndAnxietyAssessmentPromptsAvailabilityManagerWithProfile:()HDMentalHealth
{
  v55[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC0C0];
  v4 = MEMORY[0x277CCD420];
  v47 = a3;
  v35 = [v4 alloc];
  v54[0] = *MEMORY[0x277CCBE00];
  v5 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v44 = [v5 featureFlagIsEnabled:{objc_msgSend(features, "chamomile")}];
  v53[0] = v44;
  v43 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v53[1] = v43;
  v42 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v53[2] = v42;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
  v55[0] = v41;
  v54[1] = *MEMORY[0x277CCBE70];
  v6 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  features2 = [mEMORY[0x277CCDD30]2 features];
  v38 = [v6 featureFlagIsEnabled:{objc_msgSend(features2, "chamomile")}];
  v52[0] = v38;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v52[1] = profileIsNotFamilySetupPairingProfile;
  v7 = *MEMORY[0x277CCC238];
  v34 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC238]];
  v52[2] = v34;
  v33 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v52[3] = v33;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
  v55[1] = v32;
  v54[2] = *MEMORY[0x277CCBE68];
  v31 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v51[0] = v31;
  v30 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v51[1] = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v55[2] = v29;
  v54[3] = *MEMORY[0x277CCBEA0];
  v8 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  features3 = [mEMORY[0x277CCDD30]3 features];
  v26 = [v8 featureFlagIsEnabled:{objc_msgSend(features3, "chamomile")}];
  v50[0] = v26;
  profileIsNotFamilySetupPairingProfile2 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v50[1] = profileIsNotFamilySetupPairingProfile2;
  v24 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v50[2] = v24;
  v23 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v50[3] = v23;
  v22 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v7];
  v50[4] = v22;
  v21 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v50[5] = v21;
  v9 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v3 isOnIfSettingIsAbsent:1];
  v50[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:7];
  v55[3] = v10;
  v54[4] = *MEMORY[0x277CCBE60];
  profileIsNotFamilySetupPairingProfile3 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v49[0] = profileIsNotFamilySetupPairingProfile3;
  v12 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v7];
  v49[1] = v12;
  v13 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v49[2] = v13;
  v14 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v49[3] = v14;
  v15 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v49[4] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:5];
  v55[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:5];
  v36 = [v35 initWithRequirementsByContext:v17];

  localAvailabilityForPeriodicDepressionAndAnxietyAssessmentPrompts = [MEMORY[0x277CCD260] localAvailabilityForPeriodicDepressionAndAnxietyAssessmentPrompts];
  v19 = [self _hdmc_availabilityManagerForFeatureIdentifier:v3 profile:v47 availabilityRequirements:v36 localCountrySet:localAvailabilityForPeriodicDepressionAndAnxietyAssessmentPrompts];

  return v19;
}

+ (id)hdmh_stateOfMindLoggingPatternEscalationsAvailabilityManagerWithProfile:()HDMentalHealth
{
  v48[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCC108];
  v4 = MEMORY[0x277CCD420];
  v41 = a3;
  v31 = [v4 alloc];
  v47[0] = *MEMORY[0x277CCBE00];
  v5 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v38 = [v5 featureFlagIsEnabled:{objc_msgSend(features, "chamomile")}];
  v46[0] = v38;
  v37 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v46[1] = v37;
  v36 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v46[2] = v36;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v48[0] = v35;
  v47[1] = *MEMORY[0x277CCBE70];
  v6 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  features2 = [mEMORY[0x277CCDD30]2 features];
  v30 = [v6 featureFlagIsEnabled:{objc_msgSend(features2, "chamomile")}];
  v45[0] = v30;
  profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v45[1] = profileIsNotFamilySetupPairingProfile;
  v7 = *MEMORY[0x277CCC238];
  v28 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC238]];
  v45[2] = v28;
  v27 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v45[3] = v27;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  v48[1] = v26;
  v47[2] = *MEMORY[0x277CCBE68];
  v25 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v44[0] = v25;
  v24 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v44[1] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v48[2] = v23;
  v47[3] = *MEMORY[0x277CCBEA0];
  v8 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  features3 = [mEMORY[0x277CCDD30]3 features];
  v9 = [v8 featureFlagIsEnabled:{objc_msgSend(features3, "chamomile")}];
  v43[0] = v9;
  profileIsNotFamilySetupPairingProfile2 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v43[1] = profileIsNotFamilySetupPairingProfile2;
  v11 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v3];
  v43[2] = v11;
  v12 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v3];
  v43[3] = v12;
  v13 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v7];
  v43[4] = v13;
  v14 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v3];
  v43[5] = v14;
  v15 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v3 isOnIfSettingIsAbsent:1];
  v43[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];
  v48[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];
  v32 = [v31 initWithRequirementsByContext:v17];

  localAvailabilityForStateOfMindLoggingPatternEscalations = [MEMORY[0x277CCD260] localAvailabilityForStateOfMindLoggingPatternEscalations];
  v19 = [self _hdmc_availabilityManagerForFeatureIdentifier:v3 profile:v41 availabilityRequirements:v32 localCountrySet:localAvailabilityForStateOfMindLoggingPatternEscalations];

  return v19;
}

@end