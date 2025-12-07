@interface HMDAppleMediaAccessoryDeleteSiriHistoryOperation
+ (id)logCategory;
- (HMDAppleMediaAccessoryDeleteSiriHistoryOperation)initWithSettingsConnection:(id)connection;
- (void)main;
@end

@implementation HMDAppleMediaAccessoryDeleteSiriHistoryOperation

- (void)main
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Started delete siri history operation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  settingsConnection = [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)selfCopy settingsConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDAppleMediaAccessoryDeleteSiriHistoryOperation_main__block_invoke;
  v8[3] = &unk_2797359D8;
  v8[4] = selfCopy;
  [settingsConnection deleteSiriHistoryWithCompletion:v8];
}

void __56__HMDAppleMediaAccessoryDeleteSiriHistoryOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history completed with error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) cancelWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Delete siri history completed", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) finish];
  }
}

- (HMDAppleMediaAccessoryDeleteSiriHistoryOperation)initWithSettingsConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = HMDAppleMediaAccessoryDeleteSiriHistoryOperation;
  v6 = [(HMFOperation *)&v9 initWithTimeout:60.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settingsConnection, connection);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_105984 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_105984, &__block_literal_global_105985);
  }

  v3 = logCategory__hmf_once_v4_105986;

  return v3;
}

uint64_t __63__HMDAppleMediaAccessoryDeleteSiriHistoryOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_105986;
  logCategory__hmf_once_v4_105986 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end