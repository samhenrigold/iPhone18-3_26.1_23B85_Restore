@interface HMDHAPAccessoryConnectionCoordinator
+ (id)logCategory;
- (HMDHAPAccessoryConnectionCoordinator)initWithHome:(id)home notificationCenter:(id)center;
- (id)logIdentifier;
- (void)_disableDisconnectOnIdleWithAccessoriesAndConnect:(BOOL)connect;
- (void)_enableDisconnectOnIdleWithAccessories;
- (void)configureWithIsResidentCapable:(BOOL)capable;
- (void)evaluateAccessoryConnectionStatus;
- (void)handleCurrentResidentChanged:(id)changed;
- (void)handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification:(id)notification;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handleResidentAddRemove:(id)remove;
- (void)handleResidentChangedOnNonResident;
- (void)handleResidentStatusChanged:(id)changed;
- (void)handleResidentUpdated:(id)updated;
@end

@implementation HMDHAPAccessoryConnectionCoordinator

- (id)logIdentifier
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  uuid = [WeakRetained uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_enableDisconnectOnIdleWithAccessories
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  hapAccessories = [WeakRetained hapAccessories];
  v5 = [hapAccessories countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (shouldDisconnectOnIdleForAccessory(v8) && ([v8 shouldDisconnectOnIdle] & 1) == 0)
        {
          [v8 setShouldDisconnectOnIdle:1];
        }
      }

      v5 = [hapAccessories countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_disableDisconnectOnIdleWithAccessoriesAndConnect:(BOOL)connect
{
  connectCopy = connect;
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = WeakRetained;
  hapAccessories = [WeakRetained hapAccessories];
  v7 = [hapAccessories countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v9 = *v23;
    *&v8 = 138543362;
    v19 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 shouldDisconnectOnIdle])
        {
          [v11 setShouldDisconnectOnIdle:0];
        }

        if (connectCopy)
        {
          bridge = [v11 bridge];
          v13 = bridge == 0;

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = selfCopy;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = HMFGetLogIdentifier();
              *buf = v19;
              *&buf[4] = v17;
              _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Triggering evaluation of HAP servers", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v14);
            *buf = 0;
            v18 = [v11 preferredHAPAccessoryForOperation:10 linkType:buf];
            [v20 retrieveHAPAccessoryForHMDAccessory:v11 linkType:*buf forceRetrieve:0 queue:0 completion:0];
          }
        }
      }

      v7 = [hapAccessories countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (void)evaluateAccessoryConnectionStatus
{
  v29 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [WeakRetained isCurrentDevicePrimaryResident];
    v8 = HMFBooleanToString();
    [WeakRetained isCurrentDeviceAvailableResident];
    v9 = HMFBooleanToString();
    [WeakRetained areAllResidentsUnreachable];
    v10 = HMFBooleanToString();
    *buf = 138544130;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Evaluating connection status for all accessories using - isCurrentDevicePrimaryResident = %{public}@, isCurrentDeviceAvailableResident = %{public}@, areAllResidentsUnreachable = %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  hapAccessories = [WeakRetained hapAccessories];
  v12 = [hapAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(hapAccessories);
        }

        [*(*(&v16 + 1) + 8 * i) checkHAPSessionRestore];
      }

      v13 = [hapAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  if (defaultAccessoryShouldDisconnectOnIdleForHome(WeakRetained))
  {
    [(HMDHAPAccessoryConnectionCoordinator *)selfCopy _enableDisconnectOnIdleWithAccessories];
  }

  else
  {
    -[HMDHAPAccessoryConnectionCoordinator _disableDisconnectOnIdleWithAccessoriesAndConnect:](selfCopy, "_disableDisconnectOnIdleWithAccessoriesAndConnect:", [WeakRetained isCurrentDevicePrimaryResident]);
  }
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  isCurrentDeviceAvailableResident = [WeakRetained isCurrentDeviceAvailableResident];

  if (isCurrentDeviceAvailableResident)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed, evaluating connection status with accessories", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];
  }
}

- (void)handleResidentChangedOnNonResident
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_home);
    }

    else
    {
      WeakRetained = 0;
    }

    name = [WeakRetained name];
    if (selfCopy)
    {
      v9 = objc_loadWeakRetained(&selfCopy->_home);
    }

    else
    {
      v9 = 0;
    }

    uuid = [v9 uuid];
    uUIDString = [uuid UUIDString];
    v12 = 138543874;
    v13 = v6;
    v14 = 2112;
    v15 = name;
    v16 = 2112;
    v17 = uUIDString;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@A resident device was updated for home %@(%@), evaluating current non-resident device connection status with accessories", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];
}

- (void)handleCurrentResidentChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [changedCopy isEnabled];
    v9 = HMFBooleanToString();
    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_home);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained isCurrentDevicePrimaryResident];
    v11 = HMFBooleanToString();
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Current device resident enable = %@, isPrimary = %@, evaluate connection status with accessories", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];
}

- (void)handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Home changed resident first accessory communication enablement", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];
}

- (void)handleResidentUpdated:(id)updated
{
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_home);
      goto LABEL_7;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  WeakRetained = 0;
LABEL_7:
  isCurrentDeviceAvailableResident = [WeakRetained isCurrentDeviceAvailableResident];

  if ((isCurrentDeviceAvailableResident & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }
}

- (void)handleResidentAddRemove:(id)remove
{
  removeCopy = remove;
  userInfo = [removeCopy userInfo];
  v5 = [userInfo objectForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 isCurrentDevice])
    {
      [(HMDHAPAccessoryConnectionCoordinator *)self handleCurrentResidentChanged:v7];
      goto LABEL_11;
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_home);
      goto LABEL_9;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  WeakRetained = 0;
LABEL_9:
  isCurrentDeviceAvailableResident = [WeakRetained isCurrentDeviceAvailableResident];

  if ((isCurrentDeviceAvailableResident & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }

LABEL_11:
}

- (void)handleResidentStatusChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    if ([v6 isCurrentDevice])
    {
      [(HMDHAPAccessoryConnectionCoordinator *)self handleCurrentResidentChanged:v6];
      goto LABEL_11;
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_home);
      goto LABEL_9;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  WeakRetained = 0;
LABEL_9:
  isCurrentDeviceAvailableResident = [WeakRetained isCurrentDeviceAvailableResident];

  if ((isCurrentDeviceAvailableResident & 1) == 0)
  {
    [(HMDHAPAccessoryConnectionCoordinator *)self handleResidentChangedOnNonResident];
  }

LABEL_11:
}

- (void)configureWithIsResidentCapable:(BOOL)capable
{
  capableCopy = capable;
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    self = objc_getProperty(selfCopy, v5, 24, 1);
  }

  else
  {
    WeakRetained = 0;
  }

  [(HMDHAPAccessoryConnectionCoordinator *)self addObserver:selfCopy selector:sel_handleResidentStatusChanged_ name:@"HMDResidentDeviceEnabledStateChangedNotification" object:0];
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v6, 24, 1);
  }

  else
  {
    Property = 0;
  }

  [Property addObserver:selfCopy selector:sel_handleResidentAddRemove_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];
  if (selfCopy)
  {
    [objc_getProperty(selfCopy v8];
    v10 = objc_getProperty(selfCopy, v9, 24, 1);
  }

  else
  {
    [0 addObserver:0 selector:sel_handleResidentAddRemove_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];
    v10 = 0;
  }

  [v10 addObserver:selfCopy selector:sel_handleIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification_ name:@"HMDHomeIsResidentFirstAccessoryCommunicationEnabledDidChangeNotification" object:WeakRetained];
  if (selfCopy)
  {
    v12 = objc_getProperty(selfCopy, v11, 24, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = !capableCopy;
  if (capableCopy)
  {
    v14 = sel_handlePrimaryResidentChanged_;
  }

  else
  {
    v14 = sel_handleResidentUpdated_;
  }

  if (v13)
  {
    v15 = @"HMDResidentDeviceManagerUpdateResidentNotification";
  }

  else
  {
    v15 = @"HMDResidentDeviceManagerUpdatePrimaryResidentNotification";
  }

  v16 = v12;
  residentDeviceManager = [WeakRetained residentDeviceManager];
  [v16 addObserver:selfCopy selector:v14 name:v15 object:residentDeviceManager];

  if (isiPadDevice())
  {
    if (selfCopy)
    {
      v19 = objc_getProperty(selfCopy, v18, 24, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    residentDeviceManager2 = [WeakRetained residentDeviceManager];
    [v20 addObserver:selfCopy selector:sel_handleResidentUpdated_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:residentDeviceManager2];
  }

  [(HMDHAPAccessoryConnectionCoordinator *)selfCopy evaluateAccessoryConnectionStatus];
}

- (HMDHAPAccessoryConnectionCoordinator)initWithHome:(id)home notificationCenter:(id)center
{
  homeCopy = home;
  centerCopy = center;
  v11.receiver = self;
  v11.super_class = HMDHAPAccessoryConnectionCoordinator;
  v8 = [(HMDHAPAccessoryConnectionCoordinator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v9->_notificationCenter, center);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_29095 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_29095, &__block_literal_global_29096);
  }

  v3 = logCategory__hmf_once_v12_29097;

  return v3;
}

uint64_t __51__HMDHAPAccessoryConnectionCoordinator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12_29097;
  logCategory__hmf_once_v12_29097 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end