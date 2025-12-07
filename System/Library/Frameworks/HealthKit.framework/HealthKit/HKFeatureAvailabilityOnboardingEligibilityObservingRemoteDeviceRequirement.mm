@interface HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  objc_initWeak(&location, sourceCopy);
  devicePairingAndSwitchingNotificationDataSource = [sourceCopy devicePairingAndSwitchingNotificationDataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379DC8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [devicePairingAndSwitchingNotificationDataSource registerObserverForDevicePairingChanges:observerCopy block:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
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
        __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(v5, v10, v13);
      }
    }
  }
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  devicePairingAndSwitchingNotificationDataSource = [source devicePairingAndSwitchingNotificationDataSource];
  [devicePairingAndSwitchingNotificationDataSource unregisterObserverForDevicePairingChanges:observerCopy];
}

void __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Error determining satisfaction in response to change in device pairing state: %{public}@", &v6, 0x16u);
}

@end