@interface HKFeatureAvailabilityRequirementHealthAppIsNotHidden
- (BOOL)isEqual:(id)equal;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)requiredEntitlements;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRequirementHealthAppIsNotHidden

- (id)requiredEntitlements
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement mapLSDatabaseAccessEntitlement];
  v6[0] = v2;
  v3 = +[HKFeatureAvailabilityRequirementEntitlement userSettingsPlistFilePathReadAccessEntitlement];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  behavior = [source behavior];
  v6 = [v4 numberWithInt:{objc_msgSend(behavior, "healthAppHidden") ^ 1}];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

@end