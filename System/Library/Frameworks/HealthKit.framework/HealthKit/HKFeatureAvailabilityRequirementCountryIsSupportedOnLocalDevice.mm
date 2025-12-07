@interface HKFeatureAvailabilityRequirementCountryIsSupportedOnLocalDevice
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementCountryIsSupportedOnLocalDevice

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"The current or onboarded country for %@ must be supported on the local device", featureIdentifier];

  return v4;
}

- (id)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

@end