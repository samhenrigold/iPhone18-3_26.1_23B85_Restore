@interface HMFLocationManagerOperationStartMonitoring
@end

@implementation HMFLocationManagerOperationStartMonitoring

void ____HMFLocationManagerOperationStartMonitoring_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (CoreLocationLibraryCore_0(0))
  {
    v12 = [*(a1 + 32) authorization];
    v2 = *(a1 + 32);
    v3 = NSStringFromSelector(sel_isMonitoring);
    [v12 addObserver:v2 forKeyPath:v3 options:5 context:HMFLocationManagerOperationMonitoringContext];

    v4 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    *(*(a1 + 32) + 316) = 1;
    os_unfair_lock_unlock(v4 + 78);
    [v12 registerObserver:*(a1 + 32)];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v8 = HMFGetOSLogHandle(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier(v6);
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Missing internal location manager", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Unexpected internal state."];
    [v10 cancelWithError:v11];
  }
}

@end