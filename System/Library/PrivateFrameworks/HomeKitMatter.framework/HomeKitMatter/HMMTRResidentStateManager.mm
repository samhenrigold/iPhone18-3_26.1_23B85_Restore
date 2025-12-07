@interface HMMTRResidentStateManager
+ (id)logCategory;
- (BOOL)isCurrentDevicePrimaryResident;
- (HMMTRResidentStateManager)init;
- (HMMTRResidentStateManagerDataSource)dataSource;
- (HMMTRResidentStateManagerDelegate)delegate;
- (void)handleResidentReachabilityChangeForFabric:(id)fabric;
- (void)handleResidentStateUpdated;
- (void)handleUpdateNotificationsEnabled:(BOOL)enabled forFabric:(id)fabric keepAliveOnly:(BOOL)only;
- (void)setCurrentDevicePrimaryResident:(BOOL)resident;
- (void)setDataSource:(id)source;
@end

@implementation HMMTRResidentStateManager

- (HMMTRResidentStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCurrentDevicePrimaryResident:(BOOL)resident
{
  residentCopy = resident;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_currentDevicePrimaryResident != residentCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMFBooleanToString();
      v10 = HMFBooleanToString();
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating isCurrentDevicePrimaryResident from %@ to %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    self->_currentDevicePrimaryResident = residentCopy;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCurrentDevicePrimaryResident
{
  os_unfair_lock_lock_with_options();
  currentDevicePrimaryResident = self->_currentDevicePrimaryResident;
  os_unfair_lock_unlock(&self->_lock);
  return currentDevicePrimaryResident;
}

- (void)handleUpdateNotificationsEnabled:(BOOL)enabled forFabric:(id)fabric keepAliveOnly:(BOOL)only
{
  onlyCopy = only;
  enabledCopy = enabled;
  v29 = *MEMORY[0x277D85DE8];
  fabricCopy = fabric;
  fabricID = [fabricCopy fabricID];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMFBooleanToString();
    v15 = HMFBooleanToString();
    v21 = 138544130;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = fabricID;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Receive update notification enabled:%@ for fabricID:%@ keepAliveOnly:%@", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  if (fabricID && ![fabricID isEqualToNumber:&unk_283EE7FC8])
  {
    delegate = [(HMMTRResidentStateManager *)selfCopy delegate];
    [delegate handleUpdateNotificationsEnabled:enabledCopy forFabric:fabricCopy keepAliveOnly:onlyCopy];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = fabricID;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Received %@ as fabricID, ignoring updateNotifications", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)handleResidentReachabilityChangeForFabric:(id)fabric
{
  v19 = *MEMORY[0x277D85DE8];
  fabricCopy = fabric;
  fabricID = [fabricCopy fabricID];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = fabricID;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident state change for fabricID:%@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (fabricID && ![fabricID isEqualToNumber:&unk_283EE7FC8])
  {
    delegate = [(HMMTRResidentStateManager *)selfCopy delegate];
    [delegate handleResidentReachabilityChangeForFabric:fabricCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = fabricID;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Received %@ as fabricID, ignoring ResidentReachabilityChange", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)handleResidentStateUpdated
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Handling updated resident state", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dataSource = [(HMMTRResidentStateManager *)selfCopy dataSource];
  -[HMMTRResidentStateManager setCurrentDevicePrimaryResident:](selfCopy, "setCurrentDevicePrimaryResident:", [dataSource isCurrentDevicePrimaryResident]);
}

- (void)setDataSource:(id)source
{
  v14 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_dataSource, sourceCopy);
  os_unfair_lock_unlock(&self->_lock);
  -[HMMTRResidentStateManager setCurrentDevicePrimaryResident:](self, "setCurrentDevicePrimaryResident:", [sourceCopy isCurrentDevicePrimaryResident]);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRResidentStateManager *)selfCopy isCurrentDevicePrimaryResident];
    v9 = HMFBooleanToString();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Data source set with isCurrentDevicePrimaryResident: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (HMMTRResidentStateManagerDataSource)dataSource
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMMTRResidentStateManager)init
{
  v3.receiver = self;
  v3.super_class = HMMTRResidentStateManager;
  result = [(HMMTRResidentStateManager *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11, &__block_literal_global_2930);
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __40__HMMTRResidentStateManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12;
  logCategory__hmf_once_v12 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end