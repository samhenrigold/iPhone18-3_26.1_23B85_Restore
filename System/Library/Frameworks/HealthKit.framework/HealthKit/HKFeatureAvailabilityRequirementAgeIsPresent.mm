@interface HKFeatureAvailabilityRequirementAgeIsPresent
- (BOOL)isEqual:(id)equal;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementAgeIsPresent

- (NSArray)requiredEntitlements
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement healthKitAccessEntitlement];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v7 = [HKObjectType characteristicTypeForIdentifier:@"HKCharacteristicTypeIdentifierDateOfBirth"];
  healthDataSource = [sourceCopy healthDataSource];

  v19 = 0;
  v9 = [healthDataSource userCharacteristicForDataType:v7 error:&v19];
  v10 = v19;

  if (v10)
  {
    _HKInitializeLogging(v11, v12);
    v15 = HKLogInfrastructure(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HKFeatureAvailabilityRequirementAgeIsPresent isSatisfiedWithDataSource:? error:?];
    }

    if (error)
    {
      v16 = v10;
      v17 = 0;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError(v10);
      v17 = 0;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:v9 != 0];
  }

  return v17;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.healthd.user-characteristics.did-change"];
  objc_initWeak(&location, sourceCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke;
  aBlock[3] = &unk_1E7379DC8;
  objc_copyWeak(&v15, &location);
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  darwinNotificationDataSource = [sourceCopy darwinNotificationDataSource];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke_12;
  v12[3] = &unk_1E737BAB0;
  v11 = v9;
  v13 = v11;
  [darwinNotificationDataSource registerObserver:observerCopy forKey:v8 newValueHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v14 = 0;
    v7 = [v6 isSatisfiedWithDataSource:WeakRetained error:&v14];
    v8 = v14;
    v10 = v8;
    if (v7)
    {
      [v3 featureAvailabilityRequirement:*v5 didUpdateSatisfaction:{objc_msgSend(v7, "BOOLValue")}];
    }

    else
    {
      _HKInitializeLogging(v8, v9);
      v13 = HKLogInfrastructure(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke_cold_1(v5);
      }
    }
  }
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  v5 = MEMORY[0x1E696AEC0];
  sourceCopy = source;
  observerCopy = observer;
  v9 = [v5 stringWithUTF8String:"com.apple.healthd.user-characteristics.did-change"];
  darwinNotificationDataSource = [sourceCopy darwinNotificationDataSource];

  [darwinNotificationDataSource unregisterObserver:observerCopy forKey:v9];
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

- (void)isSatisfiedWithDataSource:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v3, v4, "[%{public}@] Error while pulling date of birth characteristic: %{public}@", v5, v6, v7, v8);
}

void __79__HKFeatureAvailabilityRequirementAgeIsPresent_registerObserver_forDataSource___block_invoke_cold_1(void *a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_11(v1);
  OUTLINED_FUNCTION_1_5(&dword_19197B000, v3, v4, "[%{public}@]: Error determining satisfaction in response to change in feature availability: %{public}@", v5, v6, v7, v8);
}

@end