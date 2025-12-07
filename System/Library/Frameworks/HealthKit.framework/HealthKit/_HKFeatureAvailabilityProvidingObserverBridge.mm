@interface _HKFeatureAvailabilityProvidingObserverBridge
- (_HKFeatureAvailabilityProvidingObserverBridge)initWithHandle:(id)handle;
- (void)_notifyObserversWithFeatureAvailabilityProviding:(id)providing;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings;
@end

@implementation _HKFeatureAvailabilityProvidingObserverBridge

- (_HKFeatureAvailabilityProvidingObserverBridge)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _HKFeatureAvailabilityProvidingObserverBridge;
  v6 = [(_HKFeatureAvailabilityProvidingObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (void)_notifyObserversWithFeatureAvailabilityProviding:(id)providing
{
  v23 = *MEMORY[0x1E69E9840];
  providingCopy = providing;
  v16 = 0;
  v5 = [providingCopy featureOnboardingRecordWithError:&v16];
  v6 = v16;
  v8 = v6;
  if (v5)
  {
    handle = self->_handle;
    featureIdentifier = [providingCopy featureIdentifier];
    [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:featureIdentifier newValue:v5];
  }

  else
  {
    _HKInitializeLogging(v6, v7);
    featureIdentifier = HKLogInfrastructure(v11, v12);
    if (os_log_type_enabled(featureIdentifier, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = v13;
      featureIdentifier2 = [providingCopy featureIdentifier];
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = featureIdentifier2;
      v21 = 2114;
      v22 = v8;
      _os_log_error_impl(&dword_19197B000, featureIdentifier, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving onboarding record for %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings
{
  v16 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  _HKInitializeLogging(settingsCopy, v5);
  v8 = HKLogInfrastructure(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    featureIdentifier = [settingsCopy featureIdentifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = featureIdentifier;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed setting update for %{public}@, notifying observers", &v12, 0x16u);
  }

  [(_HKFeatureAvailabilityProvidingObserverBridge *)self _notifyObserversWithFeatureAvailabilityProviding:settingsCopy];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _HKInitializeLogging(completionCopy, v5);
  v8 = HKLogInfrastructure(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    featureIdentifier = [completionCopy featureIdentifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = featureIdentifier;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed onboarding completion update for %{public}@, notifying observers", &v12, 0x16u);
  }

  [(_HKFeatureAvailabilityProvidingObserverBridge *)self _notifyObserversWithFeatureAvailabilityProviding:completionCopy];
}

@end