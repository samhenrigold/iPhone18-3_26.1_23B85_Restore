@interface HMDHomeActivityStateManagerStorage
+ (id)logCategory;
- (HMDHomeActivityStateManagerStorage)initWithDataSource:(id)source;
- (HMDHomeActivityStateManagerStorageDelegate)delegate;
- (id)contributorTypeArrayFromActivityStateEnabledContributors:(id)contributors;
- (id)logIdentifier;
- (void)_registerForNotifications;
- (void)fetchCurrentStateDetailsWithCompletion:(id)completion;
- (void)fetchEnabledContributors:(id)contributors;
- (void)handleManagedObjectContextDidSaveNotification:(id)notification;
@end

@implementation HMDHomeActivityStateManagerStorage

- (HMDHomeActivityStateManagerStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  dataSource = [(HMDHomeActivityStateManagerStorage *)self dataSource];
  logIdentifier = [dataSource logIdentifier];

  return logIdentifier;
}

- (id)contributorTypeArrayFromActivityStateEnabledContributors:(id)contributors
{
  v20 = *MEMORY[0x277D85DE8];
  contributorsCopy = contributors;
  longLongValue = [contributorsCopy longLongValue];
  if ((longLongValue & 0x8000000000000000) != 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2048;
      v19 = longLongValue;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@encodedEnabledContributors is an unexpected value: %llu", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (longLongValue)
    {
      v7 = 0;
      do
      {
        if (longLongValue)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
          [v6 addObject:v8];
        }

        if (longLongValue < 2)
        {
          break;
        }

        longLongValue >>= 1;
      }

      while (v7++ < 4);
    }

    v10 = objc_msgSend_copy(v6);
  }

  return v10;
}

- (void)handleManagedObjectContextDidSaveNotification:(id)notification
{
  v63 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    name = [v7 name];
    homeUUID = [(HMDHomeActivityStateManagerStorage *)self homeUUID];
    v10 = HMDWorkingContextNameForHomeUUID(homeUUID);
    v11 = [name isEqualToString:v10];

    if (v11)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      userInfo = [notificationCopy userInfo];
      v13 = [userInfo hmf_setForKey:*MEMORY[0x277CBE310]];

      obj = v13;
      v14 = [v13 countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v14)
      {
        v15 = v14;
        v48 = notificationCopy;
        v49 = v7;
        v51 = *v53;
        v16 = v13;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v53 != v51)
            {
              objc_enumerationMutation(v16);
            }

            v18 = *(*(&v52 + 1) + 8 * i);
            if ([v18 conformsToProtocol:&unk_283EE6CB8])
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            if (v20)
            {
              homeUUID2 = [(HMDHomeActivityStateManagerStorage *)self homeUUID];
              modelID = [v20 modelID];
              v23 = HMFEqualObjects();

              v24 = objc_autoreleasePoolPush();
              selfCopy = self;
              v26 = HMFGetOSLogHandle();
              v27 = v26;
              if (v23)
              {
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  v32 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v57 = v32;
                  v58 = 2112;
                  v59 = v20;
                  _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Received notification for MOC save of updated home: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v24);
                delegate = [(HMDHomeActivityStateManagerStorage *)selfCopy delegate];
                if (objc_opt_respondsToSelector())
                {
                  activityState = [v20 activityState];
                  unsignedIntegerValue = [activityState unsignedIntegerValue];

                  isActivityStateHoldActive = [v20 isActivityStateHoldActive];
                  bOOLValue = [isActivityStateHoldActive BOOLValue];

                  activityStateHoldEndDate = [v20 activityStateHoldEndDate];
                  activityStateTransitionalStateEndDate = [v20 activityStateTransitionalStateEndDate];
                  [delegate storageDidUpdateActivityState:unsignedIntegerValue isActivityStateHoldActive:bOOLValue activityStateHoldEndDate:activityStateHoldEndDate transitionalStateEndDate:activityStateTransitionalStateEndDate];
                }

                v7 = v49;
                if (objc_opt_respondsToSelector())
                {
                  activityStateEnabledContributors = [v20 activityStateEnabledContributors];

                  if (activityStateEnabledContributors)
                  {
                    v41 = objc_autoreleasePoolPush();
                    v42 = selfCopy;
                    v43 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                    {
                      v44 = HMFGetLogIdentifier();
                      activityStateEnabledContributors2 = [v20 activityStateEnabledContributors];
                      *buf = 138543618;
                      v57 = v44;
                      v58 = 2112;
                      v59 = activityStateEnabledContributors2;
                      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Calling delegate with activityStateEnabledContributors: %@", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v41);
                    activityStateEnabledContributors3 = [v20 activityStateEnabledContributors];
                    v47 = [(HMDHomeActivityStateManagerStorage *)v42 contributorTypeArrayFromActivityStateEnabledContributors:activityStateEnabledContributors3];
                    [delegate storageDidUpdateEnabledContributors:v47];

                    v7 = v49;
                  }
                }

                notificationCopy = v48;
                goto LABEL_33;
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v28 = HMFGetLogIdentifier();
                modelID2 = [v20 modelID];
                [(HMDHomeActivityStateManagerStorage *)selfCopy homeUUID];
                v31 = v30 = self;
                *buf = 138543874;
                v57 = v28;
                v58 = 2112;
                v59 = modelID2;
                v60 = 2112;
                v61 = v31;
                _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly handling notification for MOC save of updated home with some other UUID: %@, expected: %@", buf, 0x20u);

                self = v30;
                v16 = obj;
              }

              objc_autoreleasePoolPop(v24);
            }
          }

          v15 = [v16 countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v18 = v16;
        notificationCopy = v48;
        v7 = v49;
      }

      else
      {
        v18 = v13;
      }

LABEL_33:
    }
  }
}

- (void)_registerForNotifications
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCenter = [(HMDHomeActivityStateManagerStorage *)self notificationCenter];
  v4 = notificationCenter;
  if (notificationCenter)
  {
    [notificationCenter addObserver:self selector:sel_handleManagedObjectContextDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly asked to register for notifications before configuring with notification center", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)fetchEnabledContributors:(id)contributors
{
  v15 = *MEMORY[0x277D85DE8];
  contributorsCopy = contributors;
  dataSource = [(HMDHomeActivityStateManagerStorage *)self dataSource];
  workingStoreContext = [dataSource workingStoreContext];

  if (workingStoreContext)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__HMDHomeActivityStateManagerStorage_fetchEnabledContributors___block_invoke;
    v11[3] = &unk_27868A7A0;
    v11[4] = self;
    v12 = contributorsCopy;
    [workingStoreContext performBlock:v11];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@dataSource.workingStoreContext was unexpectedly nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    (*(contributorsCopy + 2))(contributorsCopy, MEMORY[0x277CBEBF8]);
  }
}

void __63__HMDHomeActivityStateManagerStorage_fetchEnabledContributors___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeUUID];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (!v3)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 32) homeUUID];
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch activityStateEnabledContributors because we could not find backing store model for home with UUID: %@", &v23, 0x16u);

      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v18);
    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v4 = [v3 activityStateEnabledContributors];
  if (!v4 || (v5 = v4, [v3 activityStateEnabledContributors], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedIntValue"), v6, v5, !v7))
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@activityStateEnabledContributors is unset or empty", &v23, 0xCu);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v3 activityStateEnabledContributors];
    v23 = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched activityStateEnabledContributors: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v15 = a1 + 32;
  v13 = *(a1 + 32);
  v14 = *(v15 + 8);
  v16 = [v3 activityStateEnabledContributors];
  v17 = [v13 contributorTypeArrayFromActivityStateEnabledContributors:v16];
  (*(v14 + 16))(v14, v17);

LABEL_13:
}

- (void)fetchCurrentStateDetailsWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(HMDHomeActivityStateManagerStorage *)self dataSource];
  workingStoreContext = [dataSource workingStoreContext];

  if (workingStoreContext)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__HMDHomeActivityStateManagerStorage_fetchCurrentStateDetailsWithCompletion___block_invoke;
    v13[3] = &unk_27868A7A0;
    v13[4] = self;
    v14 = completionCopy;
    [workingStoreContext performBlock:v13];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@dataSource.workingStoreContext was unexpectedly nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = _Block_copy(completionCopy);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

void __77__HMDHomeActivityStateManagerStorage_fetchCurrentStateDetailsWithCompletion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching details of activity activity state", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) homeUUID];
  v7 = [HMCContext findHomeWithModelID:v6];

  if (v7)
  {
    v8 = [v7 activityState];
    if (HMIsValidHMHomeActivityStateType())
    {
      v9 = [HMDHomeActivityStateDetails alloc];
      v10 = [(HMDHomeActivityStateDetails *)v8 unsignedIntegerValue];
      v11 = [v7 isActivityStateHoldActive];
      v12 = [v11 BOOLValue];
      v13 = [v7 activityStateHoldEndDate];
      v14 = [v7 activityStateTransitionalStateEndDate];
      v15 = [(HMDHomeActivityStateDetails *)v9 initWithHomeActivityState:v10 holdInPlace:v12 holdExpiryTime:v13 transitionalStateEndDate:v14];

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v19;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Found result in working store: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = _Block_copy(*(a1 + 40));
      v21 = v20;
      if (v20)
      {
        (*(v20 + 2))(v20, v15);
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 32);
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v31;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Invalid activity state value of %@ found in working store", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = _Block_copy(*(a1 + 40));
      v15 = v32;
      if (v32)
      {
        (v32->_state)(v32, 0);
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [*(a1 + 32) homeUUID];
      v33 = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch details of activity state because we could not find backing store model for home with UUID: %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = _Block_copy(*(a1 + 40));
    v8 = v27;
    if (v27)
    {
      (v27->_state)(v27, 0);
    }
  }
}

- (HMDHomeActivityStateManagerStorage)initWithDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HMDHomeActivityStateManagerStorage;
  v6 = [(HMDHomeActivityStateManagerStorage *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    notificationCenter = [sourceCopy notificationCenter];
    notificationCenter = v7->_notificationCenter;
    v7->_notificationCenter = notificationCenter;

    home = [sourceCopy home];
    uuid = [home uuid];
    homeUUID = v7->_homeUUID;
    v7->_homeUUID = uuid;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_170356 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_170356, &__block_literal_global_170357);
  }

  v3 = logCategory__hmf_once_v21_170358;

  return v3;
}

void __49__HMDHomeActivityStateManagerStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v21_170358;
  logCategory__hmf_once_v21_170358 = v0;
}

@end