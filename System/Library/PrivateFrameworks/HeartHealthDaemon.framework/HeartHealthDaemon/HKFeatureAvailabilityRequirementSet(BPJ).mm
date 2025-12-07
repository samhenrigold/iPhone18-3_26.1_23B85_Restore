@interface HKFeatureAvailabilityRequirementSet(BPJ)
+ (id)bloodPressureJournalFeatureAvailabilityRequirementSet;
@end

@implementation HKFeatureAvailabilityRequirementSet(BPJ)

+ (id)bloodPressureJournalFeatureAvailabilityRequirementSet
{
  v54[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCBFF8];
  v34 = objc_alloc(MEMORY[0x277CCD420]);
  v53[0] = *MEMORY[0x277CCBE00];
  v47 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v0];
  v52[0] = v47;
  v1 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  v44 = [v1 featureFlagIsEnabled:{objc_msgSend(features, "chutney")}];
  v52[1] = v44;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v54[0] = v43;
  v53[1] = *MEMORY[0x277CCBE70];
  v42 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v51[0] = v42;
  v41 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v51[1] = v41;
  v40 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v51[2] = v40;
  v39 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v51[3] = v39;
  v2 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  features2 = [mEMORY[0x277CCDD30]2 features];
  v36 = [v2 featureFlagIsEnabled:{objc_msgSend(features2, "chutney")}];
  v51[4] = v36;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:5];
  v54[1] = v33;
  v53[2] = *MEMORY[0x277CCBEA0];
  v32 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v50[0] = v32;
  v31 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v50[1] = v31;
  v30 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v50[2] = v30;
  v29 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v50[3] = v29;
  v3 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]3 = [MEMORY[0x277CCDD30] sharedBehavior];
  features3 = [mEMORY[0x277CCDD30]3 features];
  v26 = [v3 featureFlagIsEnabled:{objc_msgSend(features3, "chutney")}];
  v50[4] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];
  v54[2] = v25;
  v53[3] = *MEMORY[0x277CCBE50];
  v24 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v49[0] = v24;
  v23 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v49[1] = v23;
  v22 = [MEMORY[0x277CCD428] onboardingNotAcknowledgedWithIdentifier:v0];
  v49[2] = v22;
  v21 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v49[3] = v21;
  v20 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v49[4] = v20;
  v4 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]4 = [MEMORY[0x277CCDD30] sharedBehavior];
  features4 = [mEMORY[0x277CCDD30]4 features];
  v17 = [v4 featureFlagIsEnabled:{objc_msgSend(features4, "chutney")}];
  v49[5] = v17;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:6];
  v54[3] = v5;
  v53[4] = *MEMORY[0x277D12E60];
  v6 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v0];
  v48[0] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v48[1] = v7;
  v8 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v48[2] = v8;
  v9 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v48[3] = v9;
  v10 = MEMORY[0x277CCD428];
  mEMORY[0x277CCDD30]5 = [MEMORY[0x277CCDD30] sharedBehavior];
  features5 = [mEMORY[0x277CCDD30]5 features];
  v13 = [v10 featureFlagIsEnabled:{objc_msgSend(features5, "chutney")}];
  v48[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:5];
  v54[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];
  v35 = [v34 initWithRequirementsByContext:v15];

  return v35;
}

@end