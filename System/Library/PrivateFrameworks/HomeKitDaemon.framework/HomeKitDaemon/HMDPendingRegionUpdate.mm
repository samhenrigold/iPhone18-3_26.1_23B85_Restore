@interface HMDPendingRegionUpdate
@end

@implementation HMDPendingRegionUpdate

void __38___HMDPendingRegionUpdate_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v113;
  logCategory__hmf_once_v113 = v0;
}

@end