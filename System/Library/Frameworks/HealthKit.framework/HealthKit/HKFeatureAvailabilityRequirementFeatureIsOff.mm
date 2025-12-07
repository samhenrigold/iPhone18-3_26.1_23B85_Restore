@interface HKFeatureAvailabilityRequirementFeatureIsOff
- (HKFeatureAvailabilityRequirementFeatureIsOff)initWithFeatureIdentifier:(id)identifier settingsOffKey:(id)key isOffWhenSettingIsAbsent:(BOOL)absent;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
@end

@implementation HKFeatureAvailabilityRequirementFeatureIsOff

- (HKFeatureAvailabilityRequirementFeatureIsOff)initWithFeatureIdentifier:(id)identifier settingsOffKey:(id)key isOffWhenSettingIsAbsent:(BOOL)absent
{
  v6.receiver = self;
  v6.super_class = HKFeatureAvailabilityRequirementFeatureIsOff;
  return [(HKFeatureAvailabilityFeatureSettingBooleanRequirement *)&v6 initWithFeatureIdentifier:identifier settingsKey:key settingsValue:0 isSatisfiedWhenSettingIsAbsent:absent];
}

- (NSString)requirementDescription
{
  v2 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v4 = [v2 stringWithFormat:@"%@ must be off", featureIdentifier];

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