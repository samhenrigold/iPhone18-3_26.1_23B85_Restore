@interface HMDHomeActivityComingHomeState
+ (id)logCategory;
@end

@implementation HMDHomeActivityComingHomeState

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_237364 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_237364, &__block_literal_global_237365);
  }

  v3 = logCategory__hmf_once_v1_237366;

  return v3;
}

void __45__HMDHomeActivityComingHomeState_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_237366;
  logCategory__hmf_once_v1_237366 = v0;
}

@end