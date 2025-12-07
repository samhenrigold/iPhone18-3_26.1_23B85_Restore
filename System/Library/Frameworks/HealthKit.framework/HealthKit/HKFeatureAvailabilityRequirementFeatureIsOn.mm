@interface HKFeatureAvailabilityRequirementFeatureIsOn
- (HKFeatureAvailabilityRequirementFeatureIsOn)initWithFeatureIdentifier:(id)identifier settingsOnKey:(id)key isOnWhenSettingIsAbsent:(BOOL)absent;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementFeatureIsOn

- (HKFeatureAvailabilityRequirementFeatureIsOn)initWithFeatureIdentifier:(id)identifier settingsOnKey:(id)key isOnWhenSettingIsAbsent:(BOOL)absent
{
  v6.receiver = self;
  v6.super_class = HKFeatureAvailabilityRequirementFeatureIsOn;
  return [(HKFeatureAvailabilityFeatureSettingBooleanRequirement *)&v6 initWithFeatureIdentifier:identifier settingsKey:key settingsValue:1 isSatisfiedWhenSettingIsAbsent:absent];
}

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"%@ must be on", featureIdentifier];

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

@end