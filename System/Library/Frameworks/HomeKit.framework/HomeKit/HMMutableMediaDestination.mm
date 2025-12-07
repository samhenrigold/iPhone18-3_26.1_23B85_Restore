@interface HMMutableMediaDestination
+ (id)logCategory;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableMediaDestination

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMediaDestination allocWithZone:zone];
  uniqueIdentifier = [(HMMediaDestination *)self uniqueIdentifier];
  parentIdentifier = [(HMMediaDestination *)self parentIdentifier];
  supportedOptions = [(HMMediaDestination *)self supportedOptions];
  audioGroupIdentifier = [(HMMediaDestination *)self audioGroupIdentifier];
  v9 = [(HMMediaDestination *)v4 initWithUniqueIdentifier:uniqueIdentifier parentIdentifier:parentIdentifier supportedOptions:supportedOptions audioGroupIdentifier:audioGroupIdentifier];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11, &__block_literal_global_235);
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __40__HMMutableMediaDestination_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12;
  logCategory__hmf_once_v12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end