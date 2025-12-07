@interface HMFLocationAuthorizationRequest
@end

@implementation HMFLocationAuthorizationRequest

uint64_t __84____HMFLocationAuthorizationRequest_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 336) == 1)
  {
    v1 = result;
    v2 = [*(result + 40) status];
    v3 = objc_autoreleasePoolPush();
    v4 = *(v1 + 32);
    v6 = HMFGetOSLogHandle(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier(v4);
      v8 = 138543618;
      v9 = v7;
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received notification of status: %d", &v8, 0x12u);
    }

    objc_autoreleasePoolPop(v3);
    return __HMFLocationAuthorizationHandleAuthorizationStatus(*(v1 + 32), v2);
  }

  return result;
}

uint64_t __48____HMFLocationAuthorizationRequest_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Location.Authorization.Request", @"com.apple.HMFoundation");
  v1 = qword_280AFC340;
  qword_280AFC340 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end