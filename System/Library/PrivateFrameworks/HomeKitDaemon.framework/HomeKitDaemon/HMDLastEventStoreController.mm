@interface HMDLastEventStoreController
+ (id)logCategory;
- (HMDLastEventStoreController)initWithWithEventStore:(id)store;
- (void)didRemoveAccessory:(id)accessory;
- (void)didRemoveHome:(id)home;
- (void)didRemoveMediaSystem:(id)system;
@end

@implementation HMDLastEventStoreController

- (void)didRemoveAccessory:(id)accessory
{
  v17 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = accessoryCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing accessory events, accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  eventStore = [(HMDLastEventStoreController *)selfCopy eventStore];
  v10 = MEMORY[0x277CCACA8];
  uUIDString = [accessoryCopy UUIDString];
  v12 = [v10 stringWithFormat:@"accessory.%@", uUIDString];
  [eventStore resetWildcardTopics:v12];
}

- (void)didRemoveMediaSystem:(id)system
{
  v17 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = systemCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing media system events, media system: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  eventStore = [(HMDLastEventStoreController *)selfCopy eventStore];
  v10 = MEMORY[0x277CCACA8];
  uUIDString = [systemCopy UUIDString];
  v12 = [v10 stringWithFormat:@"stereo.%@", uUIDString];
  [eventStore resetWildcardTopics:v12];
}

- (void)didRemoveHome:(id)home
{
  v17 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = homeCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing home events, home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  eventStore = [(HMDLastEventStoreController *)selfCopy eventStore];
  v10 = MEMORY[0x277CCACA8];
  uUIDString = [homeCopy UUIDString];
  v12 = [v10 stringWithFormat:@"home.%@", uUIDString];
  [eventStore resetWildcardTopics:v12];
}

- (HMDLastEventStoreController)initWithWithEventStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = HMDLastEventStoreController;
  v6 = [(HMDLastEventStoreController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, store);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_257687 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_257687, &__block_literal_global_257688);
  }

  v3 = logCategory__hmf_once_v4_257689;

  return v3;
}

void __42__HMDLastEventStoreController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_257689;
  logCategory__hmf_once_v4_257689 = v0;
}

@end