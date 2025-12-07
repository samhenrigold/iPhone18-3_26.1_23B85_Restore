@interface HMDCHIPControllerNonResidentNodeDataSource
+ (id)logCategory;
- (BOOL)removeValueForKey:(id)key completion:(id)completion;
- (BOOL)setValue:(id)value forKey:(id)key completion:(id)completion;
- (HMDCHIPControllerNonResidentNodeDataSource)initWithHome:(id)home;
- (HMDHome)home;
- (id)keyValueStore;
- (id)logIdentifier;
- (id)valueForKey:(id)key;
@end

@implementation HMDCHIPControllerNonResidentNodeDataSource

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDCHIPControllerNonResidentNodeDataSource *)self home];
  v3 = MEMORY[0x277CCACA8];
  logIdentifier = [home logIdentifier];
  fabric = [home fabric];
  fabricID = [fabric fabricID];
  v7 = [v3 stringWithFormat:@"%@/%@", logIdentifier, fabricID];

  return v7;
}

- (BOOL)removeValueForKey:(id)key completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Controller Non-Resident Node Data Source not implemented yet", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  return 0;
}

- (BOOL)setValue:(id)value forKey:(id)key completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Controller Non-Resident Node Data Source not implemented yet", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  return 0;
}

- (id)valueForKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Controller Non-Resident Node Data Source not implemented yet", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  return 0;
}

- (id)keyValueStore
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Controller Non-Resident Node Data Source not implemented yet", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

- (HMDCHIPControllerNonResidentNodeDataSource)initWithHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    v5 = homeCopy;
    v11.receiver = self;
    v11.super_class = HMDCHIPControllerNonResidentNodeDataSource;
    v6 = [(HMDCHIPControllerNonResidentNodeDataSource *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_home, v5);
    }

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(HMDCHIPControllerNonResidentNodeDataSource *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_280244 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_280244, &__block_literal_global_280245);
  }

  v3 = logCategory__hmf_once_v5_280246;

  return v3;
}

void __57__HMDCHIPControllerNonResidentNodeDataSource_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_280246;
  logCategory__hmf_once_v5_280246 = v0;
}

@end