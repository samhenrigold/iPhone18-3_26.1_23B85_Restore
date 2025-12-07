@interface HMDResidentSelectionManualMode
+ (id)logCategory;
- (HMDResidentSelectionManualMode)initWithContext:(id)context;
- (id)logIdentifier;
- (id)shortDescription;
- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion;
@end

@implementation HMDResidentSelectionManualMode

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  context = [(HMDResidentSelectionMode *)self context];
  home = [context home];
  uuid = [home uuid];
  v6 = [v2 stringWithFormat:@"%@", uuid];

  return v6;
}

- (id)logIdentifier
{
  context = [(HMDResidentSelectionMode *)self context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion
{
  updateCopy = update;
  v20 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  completionCopy = completion;
  if (residentCopy)
  {
    v11 = [MEMORY[0x277CBEA60] arrayWithObject:residentCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __115__HMDResidentSelectionManualMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke;
    v16[3] = &unk_278689A90;
    v16[4] = self;
    v17 = completionCopy;
    [(HMDResidentSelectionMode *)self selectPrimaryResidentFromResidents:v11 requireAutoUpdate:updateCopy completion:v16];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform selection with no preferred primary info.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __115__HMDResidentSelectionManualMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __115__HMDResidentSelectionManualMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke_2;
  v12[3] = &unk_278689AB8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

uint64_t __115__HMDResidentSelectionManualMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Manual mode selection failed with error: %@.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [*(a1 + 40) delegate];
    [v9 primarySelectionMode:*(a1 + 40) didFailToSelectWithError:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Manual mode selection completed.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  return (*(*(a1 + 56) + 16))();
}

- (HMDResidentSelectionManualMode)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = HMDResidentSelectionManualMode;
  return [(HMDResidentSelectionMode *)&v4 initWithContext:context];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_110935 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_110935, &__block_literal_global_110936);
  }

  v3 = logCategory__hmf_once_v4_110937;

  return v3;
}

void __45__HMDResidentSelectionManualMode_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_110937;
  logCategory__hmf_once_v4_110937 = v0;
}

@end