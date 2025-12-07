@interface HMDPendingRegionUpdate
@end

@implementation HMDPendingRegionUpdate

uint64_t __38___HMDPendingRegionUpdate_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v105_169319;
  logCategory__hmf_once_v105_169319 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end