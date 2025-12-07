@interface HDRespiratoryRateMeasurementsProfileExtension
- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile;
- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile featureIdentifier:(id)identifier isBackgroundDeliveryEnabled:(BOOL)enabled loggingCategory:(id)category;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
- (void)_initWithProfile:(void *)profile featureIdentifier:(void *)identifier loggingCategory:;
@end

@implementation HDRespiratoryRateMeasurementsProfileExtension

- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile
{
  v4 = *MEMORY[0x277CCC0C8];
  profileCopy = profile;
  v6 = HKLogInfrastructure();
  v7 = [(HDRespiratoryRateMeasurementsProfileExtension *)self _initWithProfile:profileCopy featureIdentifier:v4 loggingCategory:v6];

  return v7;
}

- (HDRespiratoryRateMeasurementsProfileExtension)initWithProfile:(id)profile featureIdentifier:(id)identifier isBackgroundDeliveryEnabled:(BOOL)enabled loggingCategory:(id)category
{
  enabledCopy = enabled;
  v61[4] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  identifierCopy = identifier;
  categoryCopy = category;
  v55.receiver = self;
  v55.super_class = HDRespiratoryRateMeasurementsProfileExtension;
  v13 = [(HDRespiratoryRateMeasurementsProfileExtension *)&v55 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_featureIdentifier, identifier);
    v15 = objc_alloc(MEMORY[0x277D107C0]);
    [profileCopy daemon];
    v16 = v53 = categoryCopy;
    v51 = [v15 initWithDaemon:v16 featureIdentifier:identifierCopy];

    v48 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5C64C95B-8E7C-46AB-A110-1E51C93D7B7F"];
    v52 = objc_alloc(MEMORY[0x277D106D8]);
    v17 = MEMORY[0x277CCD420];
    v18 = v14->_featureIdentifier;
    v42 = [v17 alloc];
    v60[0] = *MEMORY[0x277CCBE00];
    v50 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v18];
    v59 = v50;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v61[0] = v49;
    v60[1] = *MEMORY[0x277CCBE70];
    v47 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v18];
    v58[0] = v47;
    v46 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v18];
    v58[1] = v46;
    v19 = *MEMORY[0x277CCC240];
    v45 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC240]];
    v58[2] = v45;
    profileIsNotFamilySetupPairingProfile = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v58[3] = profileIsNotFamilySetupPairingProfile;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    v61[1] = v40;
    v60[2] = *MEMORY[0x277CCBE68];
    v39 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v18];
    v57[0] = v39;
    v38 = [MEMORY[0x277CCD428] countryIsSupportedOnWatchForFeatureWithIdentifier:v18 isSupportedIfCountryListMissing:0];
    v57[1] = v38;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    v61[2] = v37;
    v60[3] = *MEMORY[0x277CCBEA0];
    v36 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v18];
    v56[0] = v36;
    profileIsNotFamilySetupPairingProfile2 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
    v56[1] = profileIsNotFamilySetupPairingProfile2;
    [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v18];
    v20 = v41 = enabledCopy;
    v56[2] = v20;
    v21 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v18];
    v56[3] = v21;
    [MEMORY[0x277CCD428] countryIsSupportedOnWatchForFeatureWithIdentifier:v18 isSupportedIfCountryListMissing:0];
    v22 = v54 = profileCopy;
    v56[4] = v22;
    v23 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v19];
    v56[5] = v23;
    v24 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v18 isOnIfSettingIsAbsent:1];

    v56[6] = v24;
    [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
    v26 = v25 = identifierCopy;
    v56[7] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
    v61[3] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:4];
    v43 = [v42 initWithRequirementsByContext:v28];

    identifierCopy = v25;
    categoryCopy = v53;

    profileCopy = v54;
    anyCountryAvailability = [MEMORY[0x277D10828] anyCountryAvailability];
    v30 = [v52 initWithProfile:v54 featureIdentifier:v25 availabilityRequirements:v43 currentOnboardingVersion:1 pairedDeviceCapability:v48 regionAvailabilityProvider:anyCountryAvailability disableAndExpiryProvider:v51 loggingCategory:v53];
    featureAvailabilityManager = v14->_featureAvailabilityManager;
    v14->_featureAvailabilityManager = v30;

    if (v41)
    {
      v32 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v54 featureAvailabilityExtension:v14->_featureAvailabilityManager loggingCategory:v53];
      featureDeliveryManager = v14->_featureDeliveryManager;
      v14->_featureDeliveryManager = v32;
    }
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

- (void)_initWithProfile:(void *)profile featureIdentifier:(void *)identifier loggingCategory:
{
  if (result)
  {
    v6 = result;
    identifierCopy = identifier;
    profileCopy = profile;
    v9 = a2;
    daemon = [v9 daemon];
    behavior = [daemon behavior];
    isCompanionCapable = [behavior isCompanionCapable];

    v13 = [v6 initWithProfile:v9 featureIdentifier:profileCopy isBackgroundDeliveryEnabled:isCompanionCapable loggingCategory:identifierCopy];
    return v13;
  }

  return result;
}

@end