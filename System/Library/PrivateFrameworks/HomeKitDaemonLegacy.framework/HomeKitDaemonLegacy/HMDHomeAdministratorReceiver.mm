@interface HMDHomeAdministratorReceiver
@end

@implementation HMDHomeAdministratorReceiver

BOOL __62____HMDHomeAdministratorReceiver_registerForMessage_policies___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t __45____HMDHomeAdministratorReceiver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v17_169720;
  logCategory__hmf_once_v17_169720 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end