@interface HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator
- (BOOL)defaultBoolValueWhenKeyIsMissing;
- (BOOL)isSatisfiedForBoolValue:(BOOL)value;
- (BOOL)isSatisfiedForValue:(id)value;
- (id)defaultValueWhenKeyIsMissing;
- (id)whichUserDefaultsDataSourceInDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator

- (id)defaultValueWhenKeyIsMissing
{
  v2 = MEMORY[0x1E696AD98];
  defaultBoolValueWhenKeyIsMissing = [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self defaultBoolValueWhenKeyIsMissing];

  return [v2 numberWithBool:defaultBoolValueWhenKeyIsMissing];
}

- (BOOL)isSatisfiedForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    bOOLValue = [valueCopy BOOLValue];
  }

  else
  {
    _HKInitializeLogging(isKindOfClass, v6);
    v10 = HKLogInfrastructure(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self isSatisfiedForValue:valueCopy, v10];
    }

    bOOLValue = [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self defaultBoolValueWhenKeyIsMissing];
  }

  v11 = [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self isSatisfiedForBoolValue:bOOLValue];

  return v11;
}

- (BOOL)defaultBoolValueWhenKeyIsMissing
{
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_4(v2);
  return 0;
}

- (BOOL)isSatisfiedForBoolValue:(BOOL)value
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_0_4(v3);
  return 0;
}

- (id)whichUserDefaultsDataSourceInDataSource:(id)source
{
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_0_4(v3);
  v4 = [HKUserDefaultsDataSource alloc];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [(HKUserDefaultsDataSource *)v4 initWithUserDefaults:standardUserDefaults];

  return v6;
}

- (void)isSatisfiedForValue:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a1 userDefaultsKey];
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = a2;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Unexpected value %{public}@ for key %{public}@", &v9, 0x20u);
}

@end