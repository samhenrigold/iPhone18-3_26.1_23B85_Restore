@interface HKFeatureAvailabilityRequirementSet
+ (id)advertisableFeatureRequirementsForIdentifier:(uint64_t)identifier;
+ (id)promptTileRequirementsForIdentifier:(uint64_t)identifier;
+ (id)settingsUserInteractionEnabledRequirementsForIdentifier:(uint64_t)identifier;
+ (id)settingsVisibilityRequirementsForIdentifier:(uint64_t)identifier;
+ (id)usageRequirementsForIdentifier:(uint64_t)identifier;
@end

@implementation HKFeatureAvailabilityRequirementSet

+ (id)advertisableFeatureRequirementsForIdentifier:(uint64_t)identifier
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v4 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:{v2, v3}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];

  v8[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

+ (id)settingsVisibilityRequirementsForIdentifier:(uint64_t)identifier
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];

  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

+ (id)settingsUserInteractionEnabledRequirementsForIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v2];

  return v3;
}

+ (id)usageRequirementsForIdentifier:(uint64_t)identifier
{
  v10[5] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v2];
  v4 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:{v2, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v10[2] = v5;
  v6 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v2];
  v10[3] = v6;
  v7 = [MEMORY[0x277CCD428] hearingFeatureHardwareRequirementsForFeatureIdentifier:v2];

  v10[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  return v8;
}

+ (id)promptTileRequirementsForIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [(HKFeatureAvailabilityRequirementSet *)MEMORY[0x277CCD420] usageRequirementsForIdentifier:v2];

  v4 = [v3 mutableCopy];
  v5 = [MEMORY[0x277CCD428] userDefaultsKeyIsNotPresent:*MEMORY[0x277CCC150]];
  [v4 addObject:v5];

  return v4;
}

@end