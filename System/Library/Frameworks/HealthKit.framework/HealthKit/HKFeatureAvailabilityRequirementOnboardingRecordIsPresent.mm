@interface HKFeatureAvailabilityRequirementOnboardingRecordIsPresent
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error;
@end

@implementation HKFeatureAvailabilityRequirementOnboardingRecordIsPresent

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"An onboarding record must be present for %@", featureIdentifier];

  return v4;
}

- (NSArray)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x1E696AD98];
  v6 = [record onboardingState] != 1;

  return [v5 numberWithInt:v6];
}

@end