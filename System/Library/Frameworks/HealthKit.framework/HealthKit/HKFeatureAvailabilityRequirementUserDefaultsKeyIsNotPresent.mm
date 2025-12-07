@interface HKFeatureAvailabilityRequirementUserDefaultsKeyIsNotPresent
- (id)requiredEntitlements;
- (id)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementUserDefaultsKeyIsNotPresent

- (id)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  userDefaultsKey = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self userDefaultsKey];
  v4 = [v2 stringWithFormat:@"The value of the user defaults key %@ must be nil", userDefaultsKey];

  return v4;
}

- (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsHealthSharedDomainReadWriteAccessEntitlement];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end