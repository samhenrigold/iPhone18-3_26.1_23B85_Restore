@interface HKFeatureAvailabilityRequirementHeartRateIsEnabledInPrivacy
- (HKFeatureAvailabilityRequirementHeartRateIsEnabledInPrivacy)init;
- (id)requiredEntitlements;
@end

@implementation HKFeatureAvailabilityRequirementHeartRateIsEnabledInPrivacy

- (HKFeatureAvailabilityRequirementHeartRateIsEnabledInPrivacy)init
{
  v3.receiver = self;
  v3.super_class = HKFeatureAvailabilityRequirementHeartRateIsEnabledInPrivacy;
  return [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v3 initWithUserDefaultsKey:@"EnableHeartRate"];
}

- (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsNanolifestylePrivacyDomainReadWriteAccessEntitlement];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end