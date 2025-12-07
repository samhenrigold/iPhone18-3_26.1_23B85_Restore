@interface HMDCoreAnalyticsLogEventFactory
+ (id)logCategory;
- (id)logEventForTaggedEvent:(id)event;
@end

@implementation HMDCoreAnalyticsLogEventFactory

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_209211 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_209211, &__block_literal_global_209212);
  }

  v3 = logCategory__hmf_once_v2_209213;

  return v3;
}

void __46__HMDCoreAnalyticsLogEventFactory_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_209213;
  logCategory__hmf_once_v2_209213 = v0;
}

- (id)logEventForTaggedEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = eventCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to get log event for unknown tagged event: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  return 0;
}

@end