@interface HKFeatureOnboardingRecordInaccessibilityCache
- (HKFeatureOnboardingRecordInaccessibilityCache)initWithCachingDefaults:(id)defaults;
- (id)_cachedOnboardingRecordForFeatureIdentifier:(id)identifier;
- (id)fallbackOnboardingRecordForError:(id)error featureIdentifier:(id)identifier;
- (void)updateForRetrievedOnboardingRecord:(id)record featureIdentifier:(id)identifier;
@end

@implementation HKFeatureOnboardingRecordInaccessibilityCache

- (HKFeatureOnboardingRecordInaccessibilityCache)initWithCachingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = HKFeatureOnboardingRecordInaccessibilityCache;
  v6 = [(HKFeatureOnboardingRecordInaccessibilityCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cachingDefaults, defaults);
  }

  return v7;
}

- (id)fallbackOnboardingRecordForError:(id)error featureIdentifier:(id)identifier
{
  errorCopy = error;
  identifierCopy = identifier;
  if (errorCopy && [errorCopy hk_isDatabaseAccessibilityError])
  {
    v8 = [(HKFeatureOnboardingRecordInaccessibilityCache *)self _cachedOnboardingRecordForFeatureIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_cachedOnboardingRecordForFeatureIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  cachingDefaults = self->_cachingDefaults;
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_OnboardingRecord", identifierCopy];
  v7 = [(NSUserDefaults *)cachingDefaults dataForKey:identifierCopy];

  if (v7)
  {
    v19 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v19];
    v9 = v19;
    v11 = v9;
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      _HKInitializeLogging(v9, v10);
      v15 = HKLogInfrastructure(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = identifierCopy;
        v24 = 2114;
        v25 = v11;
        v18 = v17;
        _os_log_error_impl(&dword_19197B000, v15, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to unarchive cached onboarding record for %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateForRetrievedOnboardingRecord:(id)record featureIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:record requiringSecureCoding:1 error:&v17];
  v8 = v17;
  v10 = v8;
  if (v7)
  {
    cachingDefaults = self->_cachingDefaults;
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_OnboardingRecord", identifierCopy];
    [(NSUserDefaults *)cachingDefaults setObject:v7 forKey:identifierCopy];
  }

  else
  {
    _HKInitializeLogging(v8, v9);
    identifierCopy = HKLogInfrastructure(v13, v14);
    if (os_log_type_enabled(identifierCopy, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *buf = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = identifierCopy;
      v22 = 2114;
      v23 = v10;
      v16 = v15;
      _os_log_error_impl(&dword_19197B000, identifierCopy, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to archive onboarding record for %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

@end