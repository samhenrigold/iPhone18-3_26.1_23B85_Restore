@interface CLLocation
@end

@implementation CLLocation

uint64_t __36__CLLocation_HMFObject__logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_189041;
  logCategory__hmf_once_v1_189041 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end