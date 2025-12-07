@interface HDGlucoseExperienceProfileExtension
- (HDGlucoseExperienceProfileExtension)initWithProfile:(id)profile;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
- (void)_initWithProfile:(void *)profile featureIdentifier:(void *)identifier loggingCategory:;
@end

@implementation HDGlucoseExperienceProfileExtension

- (HDGlucoseExperienceProfileExtension)initWithProfile:(id)profile
{
  v4 = *MEMORY[0x277CCC030];
  profileCopy = profile;
  v6 = HKLogInfrastructure();
  v7 = [(HDGlucoseExperienceProfileExtension *)self _initWithProfile:profileCopy featureIdentifier:v4 loggingCategory:v6];

  return v7;
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
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  profileCopy = profile;
  identifierCopy = identifier;
  if (self)
  {
    v31.receiver = self;
    v31.super_class = HDGlucoseExperienceProfileExtension;
    v10 = objc_msgSendSuper2(&v31, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, profile);
      daemon = [v7 daemon];
      behavior = [daemon behavior];
      isAppleWatch = [behavior isAppleWatch];

      if ((isAppleWatch & 1) == 0)
      {
        v14 = objc_alloc(MEMORY[0x277D107C0]);
        daemon2 = [v7 daemon];
        v16 = [v14 initWithDaemon:daemon2 featureIdentifier:profileCopy];

        v17 = objc_alloc(MEMORY[0x277D10728]);
        localAvailabilityForGlucoseEnhancedCharting = [MEMORY[0x277CCD260] localAvailabilityForGlucoseEnhancedCharting];
        daemon3 = [v7 daemon];
        v20 = [v17 initWithFeatureIdentifier:profileCopy defaultCountrySet:localAvailabilityForGlucoseEnhancedCharting healthDaemon:daemon3];

        v21 = objc_alloc(MEMORY[0x277CCD420]);
        v33 = *MEMORY[0x277CCBE00];
        v22 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:profileCopy];
        v32 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
        v34[0] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
        v25 = [v21 initWithRequirementsByContext:v24];

        v26 = [objc_alloc(MEMORY[0x277D106D8]) initWithProfile:v7 featureIdentifier:profileCopy availabilityRequirements:v25 currentOnboardingVersion:1 pairedDeviceCapability:0 regionAvailabilityProvider:v20 disableAndExpiryProvider:v16 loggingCategory:identifierCopy];
        v27 = self[1];
        self[1] = v26;

        v28 = [objc_alloc(MEMORY[0x277D105D8]) initWithProfile:v7 featureAvailabilityExtension:self[1] loggingCategory:identifierCopy];
        v29 = self[2];
        self[2] = v28;
      }
    }
  }

  return self;
}

@end