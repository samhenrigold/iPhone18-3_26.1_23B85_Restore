@interface HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice
@end

@implementation HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice

void __109___HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice_registerObserver_forDataSource___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v15 = 0;
  v8 = [v7 isSatisfiedWithDataSource:a2 error:&v15];
  v9 = v15;
  v11 = v9;
  if (v8)
  {
    [v5 featureAvailabilityRequirement:*v6 didUpdateSatisfaction:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    _HKInitializeLogging(v9, v10);
    v14 = HKLogInfrastructure(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(v6, v11, v14);
    }
  }
}

@end