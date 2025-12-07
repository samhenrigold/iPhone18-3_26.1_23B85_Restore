@interface HDFeatureAvailabilityManager(HDMenstrualCycles)
+ (id)hdmc_deviationsAvailabilityManagerWithProfile:()HDMenstrualCycles;
+ (id)hdmc_heartRateInputAvailabilityManagerWithProfile:()HDMenstrualCycles;
+ (id)hdmc_menstrualCyclesAvailabilityManagerWithProfile:()HDMenstrualCycles;
+ (id)hdmc_wristTemperatureInputAvailabilityManagerWithProfile:()HDMenstrualCycles;
@end

@implementation HDFeatureAvailabilityManager(HDMenstrualCycles)

+ (id)hdmc_menstrualCyclesAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v3 = *MEMORY[0x277CCC090];
  v4 = MEMORY[0x277D10728];
  v5 = a3;
  v6 = [v4 alloc];
  emptyCountrySet = [MEMORY[0x277CCD260] emptyCountrySet];
  daemon = [v5 daemon];
  v9 = [v6 initWithFeatureIdentifier:v3 defaultCountrySet:emptyCountrySet healthDaemon:daemon];

  v10 = objc_alloc(MEMORY[0x277D107D8]);
  v11 = HDMCLocalFeatureAttributes();
  v12 = [v10 initWithFeatureIdentifier:v3 localFeatureAttributes:v11 localCountrySetAvailabilityProvider:v9];

  [v12 synchronizeLocalProperties];
  v13 = objc_alloc(MEMORY[0x277D106D8]);
  noRequirements = [MEMORY[0x277CCD420] noRequirements];
  uncheckedAvailability = [MEMORY[0x277D10828] uncheckedAvailability];
  v16 = objc_alloc_init(MEMORY[0x277D106E8]);
  v17 = [v13 initWithProfile:v5 featureIdentifier:v3 availabilityRequirements:noRequirements currentOnboardingVersion:1 pairedDeviceCapability:0 pairedFeatureAttributesProvider:v12 regionAvailabilityProvider:uncheckedAvailability disableAndExpiryProvider:v16 loggingCategory:*MEMORY[0x277CCC2E8]];

  return v17;
}

+ (id)hdmc_heartRateInputAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v64[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CCC0A0];
  localAvailabilityForMenstrualCyclesHeartRateInput = [MEMORY[0x277CCD260] localAvailabilityForMenstrualCyclesHeartRateInput];
  v6 = objc_alloc(MEMORY[0x277D10728]);
  daemon = [v3 daemon];
  v52 = localAvailabilityForMenstrualCyclesHeartRateInput;
  v8 = [v6 initWithFeatureIdentifier:v4 defaultCountrySet:localAvailabilityForMenstrualCyclesHeartRateInput healthDaemon:daemon];

  v9 = objc_alloc(MEMORY[0x277D107D8]);
  v10 = HDMCHeartRateInputLocalFeatureAttributes();
  v51 = v8;
  v11 = [v9 initWithFeatureIdentifier:v4 localFeatureAttributes:v10 localCountrySetAvailabilityProvider:v8];

  v49 = v11;
  [v11 synchronizeLocalProperties];
  v12 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [v3 daemon];
  v50 = [v12 initWithDaemon:daemon2 featureIdentifier:v4];

  v63[0] = *MEMORY[0x277CCBE70];
  v14 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
  v62 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v64[0] = v15;
  v63[1] = *MEMORY[0x277CCBE68];
  v16 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v61[0] = v16;
  v17 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceAndPhoneForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
  v61[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v64[1] = v18;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];

  v19 = v3;
  daemon3 = [v3 daemon];
  behavior = [daemon3 behavior];
  LODWORD(v15) = [behavior isAppleWatch];

  v22 = MEMORY[0x277CCC2E8];
  if (v15)
  {
    v23 = v49;
    v24 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v49 profile:v3 featureCapability:0 loggingCategory:*MEMORY[0x277CCC2E8]];
    v59 = *MEMORY[0x277CCBEA0];
    v47 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v58[0] = v47;
    v46 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v58[1] = v46;
    v45 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
    v58[2] = v45;
    v44 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v58[3] = v44;
    v43 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v58[4] = v43;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:5];
    v60 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v27 = v48;
    v28 = [v48 hk_dictionaryByAddingEntriesFromDictionary:v26];
    v29 = v22;
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277D10728]);
    daemon4 = [v3 daemon];
    v42 = [v30 initWithFeatureIdentifier:v4 defaultCountrySet:v52 healthDaemon:daemon4];

    v56[0] = *MEMORY[0x277CCBE00];
    v47 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v55[0] = v47;
    v46 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC090]];
    v55[1] = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v57[0] = v45;
    v56[1] = *MEMORY[0x277CCBE38];
    v44 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v54[0] = v44;
    v43 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v4];
    v54[1] = v43;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v57[1] = v25;
    v56[2] = *MEMORY[0x277CCBEA0];
    v26 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v53[0] = v26;
    v41 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v53[1] = v41;
    v32 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v53[2] = v32;
    v33 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v53[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    v57[2] = v34;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
    v36 = v35 = v19;
    v28 = [v48 hk_dictionaryByAddingEntriesFromDictionary:v36];

    v19 = v35;
    v29 = MEMORY[0x277CCC2E8];

    v27 = v41;
    v24 = v42;
    v23 = v49;
  }

  v37 = objc_alloc(MEMORY[0x277D106D8]);
  v38 = [objc_alloc(MEMORY[0x277CCD420]) initWithRequirementsByContext:v28];
  v39 = [v37 initWithProfile:v19 featureIdentifier:v4 availabilityRequirements:v38 currentOnboardingVersion:1 pairedDeviceCapability:0 pairedFeatureAttributesProvider:v23 regionAvailabilityProvider:v24 disableAndExpiryProvider:v50 loggingCategory:*v29];

  return v39;
}

+ (id)hdmc_wristTemperatureInputAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v82[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CCC0A8];
  v5 = HKLocalDeviceHardwareSupportsWristTemperatureMeasurements();
  localAvailabilityForMenstrualCyclesWristTemperatureInput = [MEMORY[0x277CCD260] localAvailabilityForMenstrualCyclesWristTemperatureInput];
  v7 = objc_alloc(MEMORY[0x277D10728]);
  v67 = v3;
  daemon = [v3 daemon];
  v66 = localAvailabilityForMenstrualCyclesWristTemperatureInput;
  v9 = [v7 initWithFeatureIdentifier:v4 defaultCountrySet:localAvailabilityForMenstrualCyclesWristTemperatureInput healthDaemon:daemon];

  v10 = objc_alloc(MEMORY[0x277D107D8]);
  v11 = HDMCWristTemperatureInputLocalFeatureAttributes();
  v65 = v9;
  v12 = [v10 initWithFeatureIdentifier:v4 localFeatureAttributes:v11 localCountrySetAvailabilityProvider:v9];

  v63 = v12;
  [v12 synchronizeLocalProperties];
  v13 = objc_alloc(MEMORY[0x277D107C0]);
  daemon2 = [v3 daemon];
  v64 = [v13 initWithDaemon:daemon2 featureIdentifier:v4];

  v81[0] = *MEMORY[0x277CCBE70];
  v60 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
  v80 = v60;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v82[0] = v58;
  v81[1] = *MEMORY[0x277CCBE68];
  v56 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v79[0] = v56;
  v15 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceAndPhoneForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
  v79[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
  v82[1] = v16;
  v81[2] = *MEMORY[0x277CCBE88];
  v17 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
  v78[0] = v17;
  v18 = *MEMORY[0x277CCC258];
  v19 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC258]];
  v78[1] = v19;
  v54 = v5;
  v20 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:0 supportedOnLocalDevice:v5];
  v78[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
  v82[2] = v21;
  v81[3] = *MEMORY[0x277CCBE80];
  v52 = v18;
  v22 = [MEMORY[0x277CCD428] defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v4 isAgeGatedUserDefaultsKey:v18];
  v77 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v82[3] = v23;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:4];

  v24 = v67;
  daemon3 = [v67 daemon];
  behavior = [daemon3 behavior];
  LODWORD(v23) = [behavior isAppleWatch];

  v27 = MEMORY[0x277CCC2E8];
  if (v23)
  {
    v28 = v63;
    v29 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v63 profile:v67 featureCapability:0 loggingCategory:*MEMORY[0x277CCC2E8]];
    v75 = *MEMORY[0x277CCBEA0];
    v30 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v74[0] = v30;
    v61 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v74[1] = v61;
    v59 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
    v74[2] = v59;
    v57 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v74[3] = v57;
    v55 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v74[4] = v55;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
    v76 = v53;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v32 = v62;
    v33 = [v62 hk_dictionaryByAddingEntriesFromDictionary:v31];
    v34 = 0;
  }

  else
  {
    v49 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
    v35 = objc_alloc(MEMORY[0x277D10728]);
    daemon4 = [v67 daemon];
    v50 = [v35 initWithFeatureIdentifier:v4 defaultCountrySet:v66 healthDaemon:daemon4];

    v72[0] = *MEMORY[0x277CCBE00];
    v51 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v71[0] = v51;
    v61 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC090]];
    v71[1] = v61;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    v73[0] = v59;
    v72[1] = *MEMORY[0x277CCBE10];
    v57 = [MEMORY[0x277CCD428] defaultHelpTileRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v4 isAgeGatedUserDefaultsKey:v52];
    v70[0] = v57;
    v55 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v49 supportedOnLocalDevice:v54];
    v70[1] = v55;
    v53 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v70[2] = v53;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];
    v73[1] = v31;
    v72[2] = *MEMORY[0x277CCBE38];
    v48 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
    v69 = v48;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    v73[2] = v47;
    v72[3] = *MEMORY[0x277CCBEA0];
    v37 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
    v68[0] = v37;
    v38 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
    v68[1] = v38;
    v39 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
    v68[2] = v39;
    v40 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:1];
    v68[3] = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
    v73[3] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:4];
    v33 = [v62 hk_dictionaryByAddingEntriesFromDictionary:v42];

    v29 = v50;
    v34 = v49;

    v27 = MEMORY[0x277CCC2E8];
    v24 = v67;

    v30 = v51;
    v32 = v48;
    v28 = v63;
  }

  v43 = objc_alloc(MEMORY[0x277D106D8]);
  v44 = [objc_alloc(MEMORY[0x277CCD420]) initWithRequirementsByContext:v33];
  v45 = [v43 initWithProfile:v24 featureIdentifier:v4 availabilityRequirements:v44 currentOnboardingVersion:1 pairedDeviceCapability:v34 pairedFeatureAttributesProvider:v28 regionAvailabilityProvider:v29 disableAndExpiryProvider:v64 loggingCategory:*v27];

  return v45;
}

+ (id)hdmc_deviationsAvailabilityManagerWithProfile:()HDMenstrualCycles
{
  v39[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  daemon = [v3 daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    v7 = 0;
  }

  else
  {
    v8 = *MEMORY[0x277CCC098];
    v28 = objc_alloc(MEMORY[0x277CCD420]);
    v38[0] = *MEMORY[0x277CCBE00];
    v33 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:*MEMORY[0x277CCC090]];
    v37[0] = v33;
    v32 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v8];
    v37[1] = v32;
    v31 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
    v37[2] = v31;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    v39[0] = v30;
    v38[1] = *MEMORY[0x277CCBEA0];
    v27 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v8];
    v36[0] = v27;
    v26 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v8];
    v36[1] = v26;
    v9 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
    v36[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    v39[1] = v10;
    v38[2] = *MEMORY[0x277CCBE70];
    v11 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v8];
    v35 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v39[2] = v12;
    v38[3] = *MEMORY[0x277CCBE38];
    v13 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v8];
    v34[0] = v13;
    v14 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v8];
    v34[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v39[3] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
    v29 = [v28 initWithRequirementsByContext:v16];

    localAvailabilityForMenstrualCyclesDeviationDetection = [MEMORY[0x277CCD260] localAvailabilityForMenstrualCyclesDeviationDetection];
    v18 = objc_alloc(MEMORY[0x277D10728]);
    daemon2 = [v3 daemon];
    v20 = [v18 initWithFeatureIdentifier:v8 defaultCountrySet:localAvailabilityForMenstrualCyclesDeviationDetection healthDaemon:daemon2];

    v21 = objc_alloc(MEMORY[0x277D107C0]);
    daemon3 = [v3 daemon];
    v23 = [v21 initWithDaemon:daemon3 featureIdentifier:v8];

    v24 = objc_alloc(MEMORY[0x277D106D8]);
    v7 = [v24 initWithProfile:v3 featureIdentifier:v8 availabilityRequirements:v29 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v20 disableAndExpiryProvider:v23 loggingCategory:*MEMORY[0x277CCC2E8]];
  }

  return v7;
}

@end