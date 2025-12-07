@interface HMDAccessoryFirmwareUpdateDenyPolicy
+ (id)logCategory;
- (void)configure;
@end

@implementation HMDAccessoryFirmwareUpdateDenyPolicy

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_155600 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_155600, &__block_literal_global_110_155601);
  }

  v3 = logCategory__hmf_once_v11_155602;

  return v3;
}

void __51__HMDAccessoryFirmwareUpdateDenyPolicy_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11_155602;
  logCategory__hmf_once_v11_155602 = v0;
}

- (void)configure
{
  v9 = *MEMORY[0x277D85DE8];
  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:0];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deny policy configured", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

@end