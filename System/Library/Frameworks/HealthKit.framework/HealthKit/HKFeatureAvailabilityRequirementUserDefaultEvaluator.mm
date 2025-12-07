@interface HKFeatureAvailabilityRequirementUserDefaultEvaluator
+ (NSString)requirementIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSatisfiedForValue:(id)value;
- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithUserDefaultsKey:(id)key;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)whichUserDefaultsDataSourceInDataSource:(id)source;
- (void)_notifyObserver:(void *)observer forNewValue:;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementUserDefaultEvaluator

- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithUserDefaultsKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementUserDefaultEvaluator;
  v5 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v9 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    userDefaultsKey = v5->_userDefaultsKey;
    v5->_userDefaultsKey = v6;
  }

  return v5;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x1E696AD98];
  error = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:source, error];
  userDefaults = [error userDefaults];
  v8 = [userDefaults objectForKey:self->_userDefaultsKey];
  defaultValueWhenKeyIsMissing = v8;
  if (!v8)
  {
    defaultValueWhenKeyIsMissing = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self defaultValueWhenKeyIsMissing];
  }

  v10 = [v5 numberWithBool:{-[HKFeatureAvailabilityRequirementUserDefaultEvaluator isSatisfiedForValue:](self, "isSatisfiedForValue:", defaultValueWhenKeyIsMissing)}];
  if (!v8)
  {
  }

  return v10;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  v7 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:source];
  userDefaultsKey = self->_userDefaultsKey;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__HKFeatureAvailabilityRequirementUserDefaultEvaluator_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379968;
  v9[4] = self;
  [v7 registerObserver:observerCopy forKey:userDefaultsKey newValueHandler:v9];
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  v7 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:source];
  [v7 unregisterObserver:observerCopy forKey:self->_userDefaultsKey];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_userDefaultsKey isEqualToString:equalCopy[1]];

  return v5;
}

- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementUserDefaultEvaluator;
  v5 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserDefaultsKey"];
    userDefaultsKey = v5->_userDefaultsKey;
    v5->_userDefaultsKey = v6;
  }

  return v5;
}

- (BOOL)isSatisfiedForValue:(id)value
{
  v3 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v3);
  return 0;
}

- (id)whichUserDefaultsDataSourceInDataSource:(id)source
{
  v3 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v3);
  v4 = [HKUserDefaultsDataSource alloc];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [(HKUserDefaultsDataSource *)v4 initWithUserDefaults:standardUserDefaults];

  return v6;
}

+ (NSString)requirementIdentifier
{
  v2 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v2);
  return &stru_1F05FF230;
}

- (NSString)requirementDescription
{
  v2 = OUTLINED_FUNCTION_1_2(self);
  OUTLINED_FUNCTION_0_4(v2);
  return &stru_1F05FF230;
}

- (void)_notifyObserver:(void *)observer forNewValue:
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  observerCopy = observer;
  if (self)
  {
    if (observerCopy)
    {
      v7 = [self isSatisfiedForValue:observerCopy];
      v9 = v7;
    }

    else
    {
      defaultValueWhenKeyIsMissing = [self defaultValueWhenKeyIsMissing];
      v9 = [self isSatisfiedForValue:defaultValueWhenKeyIsMissing];
    }

    _HKInitializeLogging(v7, v8);
    v13 = HKLogInfrastructure(v11, v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      v17 = HKLogInfrastructure(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = self[1];
        v20 = MEMORY[0x1E696AD98];
        v21 = v18;
        v22 = [v20 numberWithBool:v9];
        v23 = 138544130;
        v24 = v18;
        v25 = 2114;
        v26 = v5;
        v27 = 2114;
        v28 = v19;
        v29 = 2114;
        v30 = v22;
        _os_log_impl(&dword_19197B000, v17, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ of satisfaction for key %{public}@: %{public}@", &v23, 0x2Au);
      }
    }

    [v5 featureAvailabilityRequirement:self didUpdateSatisfaction:v9];
  }
}

@end