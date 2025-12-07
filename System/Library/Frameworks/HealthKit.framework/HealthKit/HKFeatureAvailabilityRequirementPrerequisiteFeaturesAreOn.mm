@interface HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithPrerequisiteFeatureSettings:(id)settings;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn

- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithPrerequisiteFeatureSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn;
  v6 = [(HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_prerequisiteFeatureSettings, settings);
  }

  return v7;
}

- (NSString)requirementDescription
{
  if ([(NSArray *)self->_prerequisiteFeatureSettings count]== 1)
  {
    v3 = MEMORY[0x1E696AEC0];
    firstObject = [(NSArray *)self->_prerequisiteFeatureSettings firstObject];
    featureIdentifier = [firstObject featureIdentifier];
    [v3 stringWithFormat:@"%@ must be on", featureIdentifier];
  }

  else
  {
    firstObject = [(NSArray *)self->_prerequisiteFeatureSettings hk_map:&__block_literal_global_48];
    v6 = MEMORY[0x1E696AEC0];
    featureIdentifier = [firstObject componentsJoinedByString:{@", "}];
    [v6 stringWithFormat:@"%@ must all be on", featureIdentifier];
  }
  v7 = ;

  return v7;
}

id __81__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_requiredEntitlements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_prerequisiteFeatureSettings;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        featureIdentifier = [v11 featureIdentifier];
        v13 = [sourceCopy onboardingRecordForFeatureWithIdentifier:featureIdentifier error:error];

        featureSettings = [v13 featureSettings];
        if (featureSettings)
        {
        }

        else if (([v11 isOnWhenSettingIsAbsent] & 1) == 0)
        {
          goto LABEL_17;
        }

        featureSettings2 = [v13 featureSettings];
        settingsOnKey = [v11 settingsOnKey];
        v17 = [featureSettings2 numberForKey:settingsOnKey];

        if (v17)
        {
          if (![v17 BOOLValue])
          {
            goto LABEL_16;
          }
        }

        else if (([v11 isOnWhenSettingIsAbsent] & 1) == 0)
        {
LABEL_16:

LABEL_17:
          v18 = MEMORY[0x1E695E110];
          goto LABEL_18;
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = MEMORY[0x1E695E118];
LABEL_18:

  return v18;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  sourceCopy = source;
  objc_initWeak(&location, sourceCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke;
  aBlock[3] = &unk_1E7379DC8;
  objc_copyWeak(&v23, &location);
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_prerequisiteFeatureSettings;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        featureAvailabilityProvidingDataSource = [sourceCopy featureAvailabilityProvidingDataSource];
        featureIdentifier = [v12 featureIdentifier];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke_18;
        v16[3] = &unk_1E737DBD0;
        v17 = v8;
        [featureAvailabilityProvidingDataSource registerObserver:observerCopy forKey:featureIdentifier newValueHandler:v16];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
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
        __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke_cold_1(v5, v10, v13);
      }
    }
  }
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  v21 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  sourceCopy = source;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_prerequisiteFeatureSettings;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        featureAvailabilityProvidingDataSource = [sourceCopy featureAvailabilityProvidingDataSource];
        featureIdentifier = [v13 featureIdentifier];
        [featureAvailabilityProvidingDataSource unregisterObserver:observerCopy forKey:featureIdentifier];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSArray *)self->_prerequisiteFeatureSettings isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"prerequisiteFeatureSettings"];

  v9 = [(HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn *)self initWithPrerequisiteFeatureSettings:v8];
  return v9;
}

void __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Error determining satisfaction in response to change in feature availability: %{public}@", &v6, 0x16u);
}

@end