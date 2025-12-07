@interface HDWristTemperatureMeasurementsProfileExtension
- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)profile;
- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)profile featureIdentifier:(id)identifier isBackgroundDeliveryEnabled:(BOOL)enabled loggingCategory:(id)category;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
@end

@implementation HDWristTemperatureMeasurementsProfileExtension

- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)profile
{
  v4 = *MEMORY[0x277CCC0F8];
  profileCopy = profile;
  v6 = HKLogInfrastructure();
  v7 = [(HDRespiratoryRateMeasurementsProfileExtension *)self _initWithProfile:profileCopy featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (HDWristTemperatureMeasurementsProfileExtension)initWithProfile:(id)profile featureIdentifier:(id)identifier isBackgroundDeliveryEnabled:(BOOL)enabled loggingCategory:(id)category
{
  enabledCopy = enabled;
  v97[8] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  identifierCopy = identifier;
  categoryCopy = category;
  v86.receiver = self;
  v86.super_class = HDWristTemperatureMeasurementsProfileExtension;
  v13 = [(HDWristTemperatureMeasurementsProfileExtension *)&v86 init];
  v14 = v13;
  if (v13)
  {
    v83 = v13;
    objc_storeStrong(&v13->_featureIdentifier, identifier);
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    v82 = enabledCopy;
    if ([mEMORY[0x277CCDD30] isAppleWatch])
    {
      v16 = 0;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
    }

    localAvailabilityForWristTemperatureMeasurements = [MEMORY[0x277CCD260] localAvailabilityForWristTemperatureMeasurements];
    v18 = objc_alloc(MEMORY[0x277D10728]);
    daemon = [profileCopy daemon];
    v81 = localAvailabilityForWristTemperatureMeasurements;
    v20 = [v18 initWithFeatureIdentifier:identifierCopy defaultCountrySet:localAvailabilityForWristTemperatureMeasurements healthDaemon:daemon];

    v21 = objc_alloc(MEMORY[0x277D107D8]);
    v22 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:@"1"];
    v80 = v20;
    v23 = [v21 initWithFeatureIdentifier:identifierCopy localFeatureAttributes:v22 localCountrySetAvailabilityProvider:v20];

    [v23 synchronizeLocalProperties];
    v79 = v23;
    v74 = [objc_alloc(MEMORY[0x277D10968]) initWithAllowedCountriesDataSource:v23 profile:profileCopy featureCapability:v16 loggingCategory:categoryCopy];
    v24 = objc_alloc(MEMORY[0x277D107C0]);
    daemon2 = [profileCopy daemon];
    v70 = [v24 initWithDaemon:daemon2 featureIdentifier:identifierCopy];

    v78 = objc_alloc(MEMORY[0x277D106D8]);
    v26 = MEMORY[0x277CCD420];
    v84 = identifierCopy;
    v27 = identifierCopy;
    v28 = v16;
    v65 = [v26 alloc];
    v96[0] = *MEMORY[0x277CCBE00];
    v77 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v27];
    v95 = v77;
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
    v97[0] = v76;
    v96[1] = *MEMORY[0x277CCBE08];
    v75 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v27 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v94[0] = v75;
    v73 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v27];
    v94[1] = v73;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
    v97[1] = v72;
    v96[2] = *MEMORY[0x277CCBE10];
    v29 = *MEMORY[0x277CCC258];
    v71 = [MEMORY[0x277CCD428] defaultHelpTileRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v27 isAgeGatedUserDefaultsKey:*MEMORY[0x277CCC258]];
    v93[0] = v71;
    v69 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v28 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v93[1] = v69;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v97[2] = v68;
    v96[3] = *MEMORY[0x277CCBE70];
    v67 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v27];
    v92[0] = v67;
    v64 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v27 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v92[1] = v64;
    v63 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v29];
    v92[2] = v63;
    profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v92[3] = profileIsNotFamilySetupPairingProfile;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    v97[3] = v61;
    v96[4] = *MEMORY[0x277CCBE68];
    v60 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v27];
    v91[0] = v60;
    v59 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v27];
    v91[1] = v59;
    v58 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v27 isSupportedIfCountryListMissing:1];
    v91[2] = v58;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
    v97[4] = v57;
    v96[5] = *MEMORY[0x277CCBE88];
    v56 = [MEMORY[0x277CCD428] defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v27 isAgeGatedUserDefaultsKey:v29];
    v90[0] = v56;
    v55 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v28 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v90[1] = v55;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v97[5] = v54;
    v96[6] = *MEMORY[0x277CCBE80];
    v53 = [MEMORY[0x277CCD428] defaultTipsAppVisibilityRequirementsForBackgroundDeliveredFeatureWithFeatureIdentifier:v27 isAgeGatedUserDefaultsKey:v29];
    v89[0] = v53;
    v48 = v28;
    v52 = [MEMORY[0x277CCD428] capabilityIsSupportedOnAnyWatch:v28 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];

    v89[1] = v52;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v97[6] = v51;
    v96[7] = *MEMORY[0x277CCBEA0];
    profileIsNotFamilySetupPairingProfile2 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v88[0] = profileIsNotFamilySetupPairingProfile2;
    v49 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v27];
    v88[1] = v49;
    v47 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v27 supportedOnLocalDevice:HKLocalDeviceHardwareSupportsWristTemperatureMeasurements()];
    v88[2] = v47;
    v46 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v27];
    v88[3] = v46;
    v45 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v27];
    v88[4] = v45;
    v30 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v27 isSupportedIfCountryListMissing:1];
    v88[5] = v30;
    v31 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v29];
    v88[6] = v31;
    v32 = MEMORY[0x277CCD428];
    v87 = *MEMORY[0x277CCC0E8];
    [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    v33 = v85 = profileCopy;
    [v32 onboardingRecordsArePresentForPrerequisiteFeaturesWithIdentifiers:v33];
    v35 = v34 = categoryCopy;
    v88[7] = v35;
    v36 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v27 isOnIfSettingIsAbsent:1];

    v88[8] = v36;
    wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
    v88[9] = wristDetectionIsEnabledForActiveWatch;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:10];
    v97[7] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:8];
    v66 = [v65 initWithRequirementsByContext:v39];

    categoryCopy = v34;
    profileCopy = v85;

    v40 = [v78 initWithProfile:v85 featureIdentifier:v27 availabilityRequirements:v66 currentOnboardingVersion:1 pairedDeviceCapability:v48 regionAvailabilityProvider:v74 disableAndExpiryProvider:v70 loggingCategory:v34];
    v14 = v83;
    featureAvailabilityManager = v83->_featureAvailabilityManager;
    v83->_featureAvailabilityManager = v40;

    if (v82)
    {
      v42 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v85 featureAvailabilityExtension:v83->_featureAvailabilityManager loggingCategory:v34];
      featureDeliveryManager = v83->_featureDeliveryManager;
      v83->_featureDeliveryManager = v42;
    }

    identifierCopy = v84;
  }

  return v14;
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  if ([identifier isEqualToString:self->_featureIdentifier])
  {
    v4 = self->_featureAvailabilityManager;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end