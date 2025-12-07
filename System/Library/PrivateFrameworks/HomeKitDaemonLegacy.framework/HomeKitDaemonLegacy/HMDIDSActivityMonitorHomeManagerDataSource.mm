@interface HMDIDSActivityMonitorHomeManagerDataSource
+ (id)logCategory;
- (BOOL)homeHasCamera:(id)camera;
- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate;
- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)manager appleAccountManager:(id)accountManager;
- (id)currentDevice;
- (void)handleDeviceAdded:(id)added;
- (void)handleDeviceRemoved:(id)removed;
- (void)handleRegistrationUpdated:(id)updated;
- (void)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity queue:(id)queue completionHandler:(id)handler;
- (void)start;
- (void)startObservingDevice:(id)device subActivity:(id)activity;
- (void)startWithNotificationCenter:(id)center;
- (void)stopObservingDevice:(id)device subActivity:(id)activity;
@end

@implementation HMDIDSActivityMonitorHomeManagerDataSource

- (HMDIDSActivityMonitorBroadcasterPushTokenDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)handleRegistrationUpdated:(id)updated
{
  v12 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Registration information changed, calling delegate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy delegate];
  [delegate dataSourceDidUpdate:selfCopy];
}

- (void)handleDeviceRemoved:(id)removed
{
  v31 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  userInfo = [removedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    name = [v8 name];
    *buf = 138543618;
    v28 = v12;
    v29 = 2112;
    v30 = name;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ was removed from account, reregistering IDS Activity and notifying delegate", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
  homes = [homeManager homes];

  v16 = [homes countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(homes);
        }

        currentUser = [*(*(&v22 + 1) + 8 * v19) currentUser];
        identifier = [v8 identifier];
        [currentUser deregisterIDSActivityObserver:identifier];

        ++v19;
      }

      while (v17 != v19);
      v17 = [homes countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)handleDeviceAdded:(id)added
{
  v33 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device was added/updated on account, notifying delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [addedCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy currentDevice];
  if (currentDevice)
  {
    if (HMFEqualObjects())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
      homes = [homeManager homes];

      v16 = [homes countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(homes);
            }

            currentUser = [*(*(&v26 + 1) + 8 * i) currentUser];
            [currentUser updateIDSActivityObserver:v12];
          }

          v17 = [homes countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }

      delegate = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy delegate];
      [delegate dataSourceDidUpdate:selfCopy];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to update IDS activity observer, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (void)stopObservingDevice:(id)device subActivity:(id)activity
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    name = [deviceCopy name];
    *buf = 138543874;
    v31 = v11;
    v32 = 2112;
    v33 = name;
    v34 = 2112;
    v35 = activityCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Deregistering for IDS Activity on %@ for subActivity %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy currentDevice];
  if (currentDevice)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
    homes = [homeManager homes];

    v16 = [homes countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(homes);
          }

          currentUser = [*(*(&v25 + 1) + 8 * i) currentUser];
          [currentUser deregisterIDSActivityObserver:currentDevice subActivity:activityCopy subjectDevice:deviceCopy];
        }

        v17 = [homes countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to deregister for IDS Activity, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (void)startObservingDevice:(id)device subActivity:(id)activity
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    identifier = [deviceCopy identifier];
    *buf = 138543874;
    v31 = v11;
    v32 = 2112;
    v33 = identifier;
    v34 = 2112;
    v35 = activityCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for IDS Activity on %@ for subActivity %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy currentDevice];
  if (currentDevice)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
    homes = [homeManager homes];

    v16 = [homes countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(homes);
          }

          currentUser = [*(*(&v25 + 1) + 8 * i) currentUser];
          [currentUser registerIDSActivityObserver:currentDevice subActivity:activityCopy subjectDevice:deviceCopy];
        }

        v17 = [homes countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to registering for IDS Activity, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (BOOL)homeHasCamera:(id)camera
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  accessories = [camera accessories];
  v4 = [accessories countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v18 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        accessoryProfiles = [v8 accessoryProfiles];
        v10 = [accessoryProfiles countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(accessoryProfiles);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) != 0 && v14)
              {

                v16 = 1;
                goto LABEL_20;
              }
            }

            v11 = [accessoryProfiles countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v18;
      }

      v5 = [accessories countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
    }

    while (v5);
  }

  else
  {
    v16 = 0;
  }

LABEL_20:

  return v16;
}

- (void)pushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity queue:(id)queue completionHandler:(id)handler
{
  v81 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  queueCopy = queue;
  handlerCopy = handler;
  currentDevice = [(HMDIDSActivityMonitorHomeManagerDataSource *)self currentDevice];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (currentDevice)
  {
    v54 = queueCopy;
    v61 = deviceCopy;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      name = [deviceCopy name];
      *buf = 138543874;
      v76 = v18;
      v77 = 2112;
      v78 = name;
      v79 = 2112;
      v80 = activityCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetching tokens for observers of %@ on subActivity %@", buf, 0x20u);

      deviceCopy = v61;
    }

    objc_autoreleasePoolPop(v15);
    array = [MEMORY[0x277CBEB18] array];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    homeManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)selfCopy homeManager];
    homes = [homeManager homes];

    v23 = array;
    obj = homes;
    v59 = [homes countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v59)
    {
      v58 = *v70;
      v62 = activityCopy;
      v55 = currentDevice;
      v56 = handlerCopy;
      v64 = array;
      do
      {
        v24 = 0;
        do
        {
          if (*v70 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v60 = v24;
          v25 = *(*(&v69 + 1) + 8 * v24);
          residentEnabledDevices = [v25 residentEnabledDevices];
          v27 = [residentEnabledDevices containsObject:currentDevice];

          if ((v27 & 1) == 0)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = selfCopy;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = HMFGetLogIdentifier();
              shortDescription = [currentDevice shortDescription];
              name2 = [v25 name];
              *buf = 138543874;
              v76 = v43;
              v77 = 2112;
              v78 = shortDescription;
              v79 = 2112;
              v80 = name2;
              _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Current device %@ is not a resident in home %@, filtering out", buf, 0x20u);

              deviceCopy = v61;
            }

            objc_autoreleasePoolPop(v40);
            activityCopy = v62;
            goto LABEL_29;
          }

          v23 = v64;
          if (([v25 isResidentFirstAccessoryCommunicationEnabled] & 1) == 0 && !-[HMDIDSActivityMonitorHomeManagerDataSource homeHasCamera:](selfCopy, "homeHasCamera:", v25))
          {
            v46 = objc_autoreleasePoolPush();
            v47 = selfCopy;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              name3 = [v25 name];
              *buf = 138543618;
              v76 = v49;
              v77 = 2112;
              v78 = name3;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Home %@ did not contain a camera capable of recording, filtering out", buf, 0x16u);

              deviceCopy = v61;
            }

            objc_autoreleasePoolPop(v46);
LABEL_29:
            v23 = v64;
            goto LABEL_30;
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          users = [v25 users];
          v29 = [users countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v66;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v66 != v31)
                {
                  objc_enumerationMutation(users);
                }

                v33 = *(*(&v65 + 1) + 8 * i);
                if ([v25 isResidentFirstAccessoryCommunicationEnabled] & 1) != 0 || (objc_msgSend(v33, "isRemoteAccessAllowed"))
                {
                  v34 = [v33 pushTokensForDevicesObservingSubjectDevice:deviceCopy subActivity:activityCopy];
                  [v23 addObjectsFromArray:v34];
                }

                else
                {
                  v35 = objc_autoreleasePoolPush();
                  v36 = selfCopy;
                  v37 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                  {
                    v38 = HMFGetLogIdentifier();
                    displayName = [v33 displayName];
                    *buf = 138543618;
                    v76 = v38;
                    v77 = 2112;
                    v78 = displayName;
                    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@User %@ does not have remote access, filtering out", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v35);
                  deviceCopy = v61;
                  activityCopy = v62;
                  v23 = v64;
                }
              }

              v30 = [users countByEnumeratingWithState:&v65 objects:v73 count:16];
            }

            while (v30);
          }

          currentDevice = v55;
          handlerCopy = v56;
LABEL_30:
          v24 = v60 + 1;
        }

        while (v60 + 1 != v59);
        v51 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
        v59 = v51;
      }

      while (v51);
    }

    v52 = objc_msgSend_copy(v23);
    handlerCopy[2](handlerCopy, v52);

    queueCopy = v54;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543362;
      v76 = v53;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch tokens, currentDevice unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8]);
  }
}

- (id)currentDevice
{
  appleAccountManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)self appleAccountManager];
  account = [appleAccountManager account];
  currentDevice = [account currentDevice];

  return currentDevice;
}

- (void)startWithNotificationCenter:(id)center
{
  v15 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  appleAccountManager = [(HMDIDSActivityMonitorHomeManagerDataSource *)self appleAccountManager];
  account = [appleAccountManager account];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = account;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Starting to monitor devices for account %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [centerCopy addObserver:selfCopy selector:sel_handleDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:account];
  [centerCopy addObserver:selfCopy selector:sel_handleDeviceAdded_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:account];
  [centerCopy addObserver:selfCopy selector:sel_handleDeviceRemoved_ name:@"HMDAccountRemovedDeviceNotification" object:account];
  [centerCopy addObserver:selfCopy selector:sel_handleRegistrationUpdated_ name:@"HMDUserDidUpdateIDSActivityRegistration" object:0];
  [centerCopy addObserver:selfCopy selector:sel_handleRegistrationUpdated_ name:@"HMDUserRemoteAccessDidChangeNotification" object:0];
  [centerCopy addObserver:selfCopy selector:sel_handleRegistrationUpdated_ name:@"HMDNotificationHomeAddedAccessory" object:0];
}

- (void)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [(HMDIDSActivityMonitorHomeManagerDataSource *)self startWithNotificationCenter:defaultCenter];
}

- (HMDIDSActivityMonitorHomeManagerDataSource)initWithHomeManager:(id)manager appleAccountManager:(id)accountManager
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  if (managerCopy)
  {
    v9 = accountManagerCopy;
    v15.receiver = self;
    v15.super_class = HMDIDSActivityMonitorHomeManagerDataSource;
    v10 = [(HMDIDSActivityMonitorHomeManagerDataSource *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_homeManager, manager);
      objc_storeStrong(&v11->_appleAccountManager, accountManager);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDIDSActivityMonitorHomeManagerDataSource *)v13];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_165948 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_165948, &__block_literal_global_165949);
  }

  v3 = logCategory__hmf_once_v18_165950;

  return v3;
}

uint64_t __57__HMDIDSActivityMonitorHomeManagerDataSource_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v18_165950;
  logCategory__hmf_once_v18_165950 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end