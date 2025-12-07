@interface HMDAppleMediaAccessoriesStateManagerMetricsDispatcher
+ (id)logCategory;
- (HMDAppleMediaAccessoriesStateManagerMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (id)logIdentifier;
- (void)submitMatchingIdentifierEventWithMatchingCount:(int64_t)count;
- (void)submitMatchingIdentifierRemovalEventWithRemovalCount:(int64_t)count;
@end

@implementation HMDAppleMediaAccessoriesStateManagerMetricsDispatcher

- (id)logIdentifier
{
  identifier = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)submitMatchingIdentifierRemovalEventWithRemovalCount:(int64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitting matching identifier removal event with count: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [[HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent alloc] initWithRemovalCount:count];
  logEventSubmitter = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v10];
}

- (void)submitMatchingIdentifierEventWithMatchingCount:(int64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitting matching identifiers event with matching count: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [[HMDAppleMediaAccessoryMatchingIdentifierEvent alloc] initWithMatchingIdentifiersCount:count];
  logEventSubmitter = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v10];
}

- (HMDAppleMediaAccessoriesStateManagerMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = submitterCopy;
  if (!submitterCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoriesStateManagerMetricsDispatcher;
  v9 = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)&v15 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(identifierCopy);
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_logEventSubmitter, submitter);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_148861 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_148861, &__block_literal_global_148862);
  }

  v3 = logCategory__hmf_once_v3_148863;

  return v3;
}

uint64_t __68__HMDAppleMediaAccessoriesStateManagerMetricsDispatcher_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_148863;
  logCategory__hmf_once_v3_148863 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end