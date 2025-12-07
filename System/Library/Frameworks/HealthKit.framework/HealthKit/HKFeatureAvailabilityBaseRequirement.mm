@interface HKFeatureAvailabilityBaseRequirement
- (BOOL)isEqual:(id)equal;
- (NSString)requirementDescription;
- (id)_hk_featureAvailabilityRequirements;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityBaseRequirement

- (id)_hk_featureAvailabilityRequirements
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
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

- (NSString)requirementDescription
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return @"unimplemented";
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end