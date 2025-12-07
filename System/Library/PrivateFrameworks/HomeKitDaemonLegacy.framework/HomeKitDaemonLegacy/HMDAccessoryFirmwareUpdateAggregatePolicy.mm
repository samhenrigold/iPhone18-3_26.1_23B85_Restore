@interface HMDAccessoryFirmwareUpdateAggregatePolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (HMDAccessoryFirmwareUpdateAggregatePolicy)initWithPolicies:(id)policies accessory:(id)accessory workQueue:(id)queue;
- (void)_registerForNotifications;
- (void)configure;
- (void)handlePolicyStatusChange:(id)change;
@end

@implementation HMDAccessoryFirmwareUpdateAggregatePolicy

- (BOOL)evaluate
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  policies = [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self policies];
  v4 = [policies countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(policies);
        }

        if (([*(*(&v17 + 1) + 8 * v7) status] & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543362;
            v22 = v16;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to NO", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v13);
          return 0;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [policies countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to YES", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  return 1;
}

- (void)handlePolicyStatusChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDAccessoryFirmwareUpdateAggregatePolicy_handlePolicyStatusChange___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

void __70__HMDAccessoryFirmwareUpdateAggregatePolicy_handlePolicyStatusChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  if ([v2 conformsToProtocol:&unk_2866709D8])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) policies];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [*(a1 + 32) userInfo];
    v8 = [v7 hmf_BOOLForKey:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedKey"];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received updated status from sub policy - %d", &v13, 0x12u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 40) evaluateAndNotify];
  }
}

- (void)_registerForNotifications
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  policies = [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self policies];
  v4 = [policies countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(policies);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:self selector:sel_handlePolicyStatusChange_ name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [policies countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)configure
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  policies = [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self policies];
  v4 = [policies countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(policies);
        }

        [*(*(&v8 + 1) + 8 * v7++) configure];
      }

      while (v5 != v7);
      v5 = [policies countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:[(HMDAccessoryFirmwareUpdateAggregatePolicy *)self evaluate]];
  [(HMDAccessoryFirmwareUpdateAggregatePolicy *)self _registerForNotifications];
}

- (HMDAccessoryFirmwareUpdateAggregatePolicy)initWithPolicies:(id)policies accessory:(id)accessory workQueue:(id)queue
{
  policiesCopy = policies;
  v13.receiver = self;
  v13.super_class = HMDAccessoryFirmwareUpdateAggregatePolicy;
  v10 = [(HMDAccessoryFirmwareUpdatePolicy *)&v13 initWithAccessory:accessory workQueue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_policies, policies);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_103590 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_103590, &__block_literal_global_88_103591);
  }

  v3 = logCategory__hmf_once_v5_103592;

  return v3;
}

uint64_t __56__HMDAccessoryFirmwareUpdateAggregatePolicy_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_103592;
  logCategory__hmf_once_v5_103592 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end