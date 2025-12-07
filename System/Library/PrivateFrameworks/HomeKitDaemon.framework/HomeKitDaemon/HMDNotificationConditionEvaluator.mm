@interface HMDNotificationConditionEvaluator
+ (id)logCategory;
- (BOOL)conditionsPass:(id)pass registrationUser:(id)user;
- (HMDNotificationConditionEvaluator)initWithConditionHandlers:(id)handlers;
@end

@implementation HMDNotificationConditionEvaluator

- (BOOL)conditionsPass:(id)pass registrationUser:(id)user
{
  v18 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  userCopy = user;
  if ([passCopy hmf_isEmpty])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Conditions to evaluate is empty, passing by default", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = 1;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__HMDNotificationConditionEvaluator_conditionsPass_registrationUser___block_invoke;
    v14[3] = &unk_2786750A8;
    v14[4] = self;
    v15 = userCopy;
    v12 = [passCopy na_all:v14];
  }

  return v12;
}

uint64_t __69__HMDNotificationConditionEvaluator_conditionsPass_registrationUser___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) conditionHandlers];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMDNotificationConditionEvaluator_conditionsPass_registrationUser___block_invoke_2;
  v13[3] = &unk_278675080;
  v5 = v3;
  v14 = v5;
  v6 = [v4 na_firstObjectPassingTest:v13];

  if (v6)
  {
    v7 = [v6 conditionPasses:v5 registrationUser:*(a1 + 40)];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@No handler found for condition: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (HMDNotificationConditionEvaluator)initWithConditionHandlers:(id)handlers
{
  handlersCopy = handlers;
  v9.receiver = self;
  v9.super_class = HMDNotificationConditionEvaluator;
  v6 = [(HMDNotificationConditionEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conditionHandlers, handlers);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_62021 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_62021, &__block_literal_global_62022);
  }

  v3 = logCategory__hmf_once_v3_62023;

  return v3;
}

void __48__HMDNotificationConditionEvaluator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_62023;
  logCategory__hmf_once_v3_62023 = v0;
}

@end