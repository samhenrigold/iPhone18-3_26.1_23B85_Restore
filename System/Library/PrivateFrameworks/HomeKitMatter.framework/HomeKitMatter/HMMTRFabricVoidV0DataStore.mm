@interface HMMTRFabricVoidV0DataStore
+ (id)logCategory;
@end

@implementation HMMTRFabricVoidV0DataStore

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_5596 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_5596, &__block_literal_global_5597);
  }

  v3 = logCategory__hmf_once_v1_5598;

  return v3;
}

uint64_t __41__HMMTRFabricVoidV0DataStore_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_5598;
  logCategory__hmf_once_v1_5598 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end