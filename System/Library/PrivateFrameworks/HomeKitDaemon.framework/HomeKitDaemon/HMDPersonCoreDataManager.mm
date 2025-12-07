@interface HMDPersonCoreDataManager
+ (id)logCategory;
- (BOOL)isRelevantFaceprint:(id)faceprint;
- (BOOL)isRelevantManagedObjectContext:(id)context;
- (BOOL)isRelevantPerson:(id)person;
- (BOOL)shouldDispatchToPrimaryResident;
- (HMDHome)home;
- (HMDPersonCoreDataManager)initWithUUID:(id)d workQueue:(id)queue home:(id)home userUUID:(id)iD;
- (HMDPersonCoreDataManager)initWithUUID:(id)d workQueue:(id)queue home:(id)home userUUID:(id)iD context:(id)context residentSyncManager:(id)manager notificationCenter:(id)center;
- (HMDPersonCoreDataManagerDelegate)delegate;
- (HMDPersonDataSource)dataSource;
- (id)addOrUpdateFaceprints:(id)faceprints andRemoveFaceprintsWithUUIDs:(id)ds;
- (id)addOrUpdatePersons:(id)persons andRemovePersonsWithUUIDs:(id)ds;
- (id)deletedFaceprintUUIDsUserInfoKey;
- (id)deletedPersonUUIDsUserInfoKey;
- (id)logIdentifier;
- (id)mkfPersons;
- (id)personModelWithModelID:(id)d;
- (id)personWithModelID:(id)d;
- (id)personWithUUID:(id)d;
- (id)persons;
- (id)removeAllAssociatedData;
- (id)removeAllAssociatedLocalData;
- (id)removeAllAssociatedSyncedData;
- (void)configureWithDataSource:(id)source;
- (void)enumerateFaceprintsForFaceCropsWithUUIDs:(id)ds usingBlock:(id)block;
- (void)enumerateFaceprintsUsingBlock:(id)block;
- (void)enumerateMKFFaceprintsForFaceCropsWithUUIDs:(id)ds usingBlock:(id)block;
- (void)enumeratePersonsUsingBlock:(id)block;
- (void)handleManagedObjectContextDidSaveNotification:(id)notification;
- (void)handleManagedObjectContextWillSaveNotification:(id)notification;
- (void)insertOrUpdateFaceprintUsingFaceprint:(id)faceprint;
- (void)insertOrUpdatePersonUsingPerson:(id)person;
@end

@implementation HMDPersonCoreDataManager

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDPersonCoreDataManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  uUID = [(HMDPersonCoreDataManager *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)removeAllAssociatedSyncedData
{
  v26 = *MEMORY[0x277D85DE8];
  home = [(HMDPersonCoreDataManager *)self home];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (home)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all associated synced data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = MEMORY[0x277D2C938];
    workQueue = [(HMDPersonCoreDataManager *)selfCopy workQueue];
    v12 = [v10 schedulerWithDispatchQueue:workQueue];
    v13 = [v9 reschedule:v12];

    context = [(HMDPersonCoreDataManager *)selfCopy context];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__HMDPersonCoreDataManager_removeAllAssociatedSyncedData__block_invoke;
    v22[3] = &unk_27868A750;
    v22[4] = selfCopy;
    v15 = v13;
    v23 = v15;
    [context performBlock:v22];

    v16 = v23;
    v17 = v15;

    v18 = v17;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while removing all associated synced data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v20 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v18 = [v20 futureWithError:v17];
  }

  return v18;
}

void __57__HMDPersonCoreDataManager_removeAllAssociatedSyncedData__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) mkfPersons];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [*(a1 + 32) context];
        v9 = [v8 managedObjectContext];
        [v9 deleteObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) context];
  v17 = 0;
  v11 = [v10 save:&v17];
  v12 = v17;

  if (v11)
  {
    [*(a1 + 40) finishWithNoResult];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all associated data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [*(a1 + 40) finishWithError:v12];
  }
}

- (void)handleManagedObjectContextDidSaveNotification:(id)notification
{
  v99 = *MEMORY[0x277D85DE8];
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

  if (v7 && [(HMDPersonCoreDataManager *)self isRelevantManagedObjectContext:v7])
  {
    v74 = v7;
    v79 = [MEMORY[0x277CBEB58] set];
    v77 = [MEMORY[0x277CBEB58] set];
    v75 = notificationCopy;
    userInfo = [notificationCopy userInfo];
    v9 = [userInfo hmf_setForKey:*MEMORY[0x277CBE188]];

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v90;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v90 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v89 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16 && [(HMDPersonCoreDataManager *)self isRelevantPerson:v16])
          {
            v17 = objc_autoreleasePoolPush();
            selfCopy = self;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              *buf = 138543618;
              v95 = v20;
              v96 = 2112;
              v97 = v16;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Received notification about inserted person: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v17);
            createHMPerson = [v16 createHMPerson];
            [v79 addObject:createHMPerson];
          }

          else
          {
            v22 = v14;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = v22;
            }

            else
            {
              v23 = 0;
            }

            createHMPerson = v23;

            if (createHMPerson && [(HMDPersonCoreDataManager *)self isRelevantFaceprint:createHMPerson])
            {
              v24 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543618;
                v95 = v27;
                v96 = 2112;
                v97 = createHMPerson;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Received notification about inserted faceprint: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v24);
              createHMFaceprint = [createHMPerson createHMFaceprint];
              [v77 addObject:createHMFaceprint];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v11);
    }

    userInfo2 = [v75 userInfo];
    v30 = [userInfo2 hmf_setForKey:*MEMORY[0x277CBE310]];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v85 objects:v93 count:16];
    v76 = v31;
    if (v32)
    {
      v33 = v32;
      v34 = *v86;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v86 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v85 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;

          if (v38 && [(HMDPersonCoreDataManager *)self isRelevantPerson:v38])
          {
            v39 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v95 = v42;
              v96 = 2112;
              v97 = v38;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Received notification about updated person: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v39);
            createHMPerson2 = [v38 createHMPerson];
            [v79 addObject:createHMPerson2];
          }

          else
          {
            v44 = v36;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            createHMPerson2 = v45;

            if (createHMPerson2 && [(HMDPersonCoreDataManager *)self isRelevantFaceprint:createHMPerson2])
            {
              v46 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v48 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                v49 = HMFGetLogIdentifier();
                *buf = 138543618;
                v95 = v49;
                v96 = 2112;
                v97 = createHMPerson2;
                _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Received notification about updated faceprint: %@", buf, 0x16u);

                v31 = v76;
              }

              objc_autoreleasePoolPop(v46);
              createHMFaceprint2 = [createHMPerson2 createHMFaceprint];
              [v77 addObject:createHMFaceprint2];
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v33);
    }

    v7 = v74;
    userInfo3 = [v74 userInfo];
    deletedPersonUUIDsUserInfoKey = [(HMDPersonCoreDataManager *)self deletedPersonUUIDsUserInfoKey];
    v53 = [userInfo3 objectForKeyedSubscript:deletedPersonUUIDsUserInfoKey];

    userInfo4 = [v74 userInfo];
    deletedPersonUUIDsUserInfoKey2 = [(HMDPersonCoreDataManager *)self deletedPersonUUIDsUserInfoKey];
    [userInfo4 setObject:0 forKeyedSubscript:deletedPersonUUIDsUserInfoKey2];

    if (v53)
    {
      v56 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = HMFGetLogIdentifier();
        *buf = 138543618;
        v95 = v59;
        v96 = 2112;
        v97 = v53;
        _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Received notification about deleted person UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v56);
    }

    userInfo5 = [v74 userInfo];
    deletedFaceprintUUIDsUserInfoKey = [(HMDPersonCoreDataManager *)self deletedFaceprintUUIDsUserInfoKey];
    v62 = [userInfo5 objectForKeyedSubscript:deletedFaceprintUUIDsUserInfoKey];

    userInfo6 = [v74 userInfo];
    deletedFaceprintUUIDsUserInfoKey2 = [(HMDPersonCoreDataManager *)self deletedFaceprintUUIDsUserInfoKey];
    [userInfo6 setObject:0 forKeyedSubscript:deletedFaceprintUUIDsUserInfoKey2];

    if (v62)
    {
      v65 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543618;
        v95 = v68;
        v96 = 2112;
        v97 = v62;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Received notification about deleted faceprint UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v65);
    }

    workQueue = [(HMDPersonCoreDataManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDPersonCoreDataManager_handleManagedObjectContextDidSaveNotification___block_invoke;
    block[3] = &unk_278689550;
    block[4] = self;
    v81 = v79;
    v82 = v53;
    v83 = v77;
    v84 = v62;
    v70 = v62;
    v71 = v77;
    v72 = v53;
    v73 = v79;
    dispatch_async(workQueue, block);

    notificationCopy = v75;
  }
}

void __74__HMDPersonCoreDataManager_handleManagedObjectContextDidSaveNotification___block_invoke(id *a1)
{
  v4 = [a1[4] delegate];
  if ([a1[5] count])
  {
    [v4 coreDataManager:a1[4] didUpdatePersons:a1[5]];
  }

  if ([a1[6] count])
  {
    [v4 coreDataManager:a1[4] didRemovePersonsWithUUIDs:a1[6]];
  }

  if ([a1[7] count])
  {
    [v4 coreDataManager:a1[4] didUpdateFaceprints:a1[7]];
  }

  v2 = [a1[8] count];
  v3 = v4;
  if (v2)
  {
    [v4 coreDataManager:a1[4] didRemoveFaceprintsWithUUIDs:a1[8]];
    v3 = v4;
  }
}

- (void)handleManagedObjectContextWillSaveNotification:(id)notification
{
  v32 = *MEMORY[0x277D85DE8];
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

  if (v7 && [(HMDPersonCoreDataManager *)self isRelevantManagedObjectContext:v7])
  {
    deletedObjects = [v7 deletedObjects];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke;
    v27[3] = &unk_2786878A8;
    v27[4] = self;
    v9 = [deletedObjects na_map:v27];

    deletedObjects2 = [v7 deletedObjects];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke_2;
    v26[3] = &unk_2786878A8;
    v26[4] = self;
    v11 = [deletedObjects2 na_map:v26];

    if ([v9 count])
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v15;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification of impending delete for person UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    userInfo = [v7 userInfo];
    deletedPersonUUIDsUserInfoKey = [(HMDPersonCoreDataManager *)self deletedPersonUUIDsUserInfoKey];
    [userInfo setObject:v16 forKeyedSubscript:deletedPersonUUIDsUserInfoKey];

    if ([v11 count])
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v22;
        v30 = 2112;
        v31 = v11;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received notification of impending delete for faceprint UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = v11;
    }

    else
    {
      v23 = 0;
    }

    userInfo2 = [v7 userInfo];
    deletedFaceprintUUIDsUserInfoKey = [(HMDPersonCoreDataManager *)self deletedFaceprintUUIDsUserInfoKey];
    [userInfo2 setObject:v23 forKeyedSubscript:deletedFaceprintUUIDsUserInfoKey];
  }
}

id __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 && [*(a1 + 32) isRelevantPerson:v5])
  {
    v6 = [v5 modelID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 && [*(a1 + 32) isRelevantFaceprint:v5])
  {
    v6 = [v5 modelID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)removeAllAssociatedLocalData
{
  v26 = *MEMORY[0x277D85DE8];
  home = [(HMDPersonCoreDataManager *)self home];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (home)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all associated local data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = MEMORY[0x277D2C938];
    workQueue = [(HMDPersonCoreDataManager *)selfCopy workQueue];
    v12 = [v10 schedulerWithDispatchQueue:workQueue];
    v13 = [v9 reschedule:v12];

    context = [(HMDPersonCoreDataManager *)selfCopy context];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke;
    v22[3] = &unk_27868A750;
    v22[4] = selfCopy;
    v15 = v13;
    v23 = v15;
    [context performBlock:v22];

    v16 = v23;
    v17 = v15;

    v18 = v17;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while removing all associated local data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v20 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v18 = [v20 futureWithError:v17];
  }

  return v18;
}

void __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke_2;
  v11[3] = &unk_278687880;
  v11[4] = v2;
  [v2 enumerateMKFFaceprintsForFaceCropsWithUUIDs:0 usingBlock:v11];
  v3 = [*(a1 + 32) context];
  v10 = 0;
  v4 = [v3 save:&v10];
  v5 = v10;

  if (v4)
  {
    [*(a1 + 40) finishWithNoResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all associated local data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) finishWithError:v5];
  }
}

void __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  [v4 deleteObject:v3];
}

- (BOOL)isRelevantFaceprint:(id)faceprint
{
  v23 = *MEMORY[0x277D85DE8];
  faceprintCopy = faceprint;
  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    userUUID = [(HMDPersonCoreDataManager *)self userUUID];

    if (userUUID)
    {
      v7 = [faceprintCopy hmd_lastKnownValueForKey:@"user"];
      v8 = v7;
      if (v7)
      {
        modelID = [v7 modelID];
        userUUID2 = [(HMDPersonCoreDataManager *)self userUUID];
        v11 = [modelID isEqual:userUUID2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v16 = [faceprintCopy hmd_lastKnownValueForKey:@"home"];
      v17 = v16;
      if (v16)
      {
        modelID2 = [v16 modelID];
        uuid = [home uuid];
        v11 = [modelID2 isEqual:uuid];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking if faceprint was relevant", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

- (BOOL)isRelevantPerson:(id)person
{
  v34 = *MEMORY[0x277D85DE8];
  personCopy = person;
  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    userUUID = [(HMDPersonCoreDataManager *)self userUUID];

    if (userUUID)
    {
      v7 = personCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      if (v9)
      {
        v10 = [v9 hmd_lastKnownValueForKey:@"user"];
        v11 = v10;
        if (v10)
        {
          modelID = [v10 modelID];
          userUUID2 = [(HMDPersonCoreDataManager *)self userUUID];
LABEL_18:
          v22 = userUUID2;
          v18 = [modelID isEqual:userUUID2];

LABEL_26:
          goto LABEL_27;
        }

        v23 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v9 debugDescription];
          v30 = 138543618;
          v31 = v26;
          v32 = 2112;
          v33 = v27;
          v28 = "%{public}@User relationship is nil for photos person checked for relevance: %@";
LABEL_24:
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, v28, &v30, 0x16u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v19 = personCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v9 = v20;

      if (v9)
      {
        v21 = [v9 hmd_lastKnownValueForKey:@"home"];
        v11 = v21;
        if (v21)
        {
          modelID = [v21 modelID];
          userUUID2 = [home uuid];
          goto LABEL_18;
        }

        v23 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v9 debugDescription];
          v30 = 138543618;
          v31 = v26;
          v32 = 2112;
          v33 = v27;
          v28 = "%{public}@Home relationship is nil for home person checked for relevance: %@";
          goto LABEL_24;
        }

LABEL_25:

        objc_autoreleasePoolPop(v23);
        v18 = 0;
        goto LABEL_26;
      }
    }

    v18 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking if person was relevant", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v18 = 0;
LABEL_28:

  return v18;
}

- (BOOL)isRelevantManagedObjectContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  home = [(HMDPersonCoreDataManager *)self home];
  v6 = home;
  if (!home)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking if managed object context was relevant", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_7;
  }

  backingStore = [home backingStore];
  coreData = [backingStore coreData];
  v9 = [coreData isRelatedContext:contextCopy];

  if (!v9)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  name = [contextCopy name];
  uuid = [v6 uuid];
  v12 = HMDWorkingContextNameForHomeUUID(uuid);
  v13 = [name isEqualToString:v12];

LABEL_8:
  return v13;
}

- (BOOL)shouldDispatchToPrimaryResident
{
  v14 = *MEMORY[0x277D85DE8];
  home = [(HMDPersonCoreDataManager *)self home];
  v4 = home;
  if (!home)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking we should dispatch to primary resident", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_8;
  }

  if ([home isCurrentDeviceConfirmedPrimaryResident])
  {
LABEL_8:
    isOwnerUser = 0;
    goto LABEL_11;
  }

  userUUID = [(HMDPersonCoreDataManager *)self userUUID];
  if (userUUID)
  {
    isOwnerUser = [v4 isOwnerUser];
  }

  else
  {
    isOwnerUser = 1;
  }

LABEL_11:
  return isOwnerUser;
}

- (void)enumerateMKFFaceprintsForFaceCropsWithUUIDs:(id)ds usingBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  blockCopy = block;
  context = [(HMDPersonCoreDataManager *)self context];
  [context assertIsExecuting];

  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    v10 = +[_MKFFaceprint fetchRequest];
    [v10 setFetchBatchSize:10];
    userUUID = [(HMDPersonCoreDataManager *)self userUUID];

    v12 = MEMORY[0x277CCAC30];
    if (userUUID)
    {
      userUUID2 = [(HMDPersonCoreDataManager *)self userUUID];
      if (dsCopy)
      {
        v31 = dsCopy;
        v14 = @"user.modelID";
LABEL_10:
        [v12 predicateWithFormat:@"(%K == %@) && (%K IN %@)", v14, userUUID2, @"faceCropUUID", v31];
        v20 = LABEL_14:;
        [v10 setPredicate:v20];

        context2 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext = [context2 managedObjectContext];
        v34 = 0;
        v23 = [managedObjectContext executeFetchRequest:v10 error:&v34];
        v24 = v34;

        if (v23)
        {
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __83__HMDPersonCoreDataManager_enumerateMKFFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke;
          v32[3] = &unk_278687858;
          v33 = blockCopy;
          [v23 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          selfCopy = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543618;
            v36 = v28;
            v37 = 2112;
            v38 = v24;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute fetch request for enumerating faceprints: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
        }

        goto LABEL_20;
      }

      v19 = @"user.modelID";
    }

    else
    {
      userUUID2 = [home uuid];
      if (dsCopy)
      {
        v31 = dsCopy;
        v14 = @"home.modelID";
        goto LABEL_10;
      }

      v19 = @"home.modelID";
    }

    [v12 predicateWithFormat:@"(%K == %@)", v19, userUUID2, v29, v30];
    goto LABEL_14;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while enumerating faceprints", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_20:
}

- (void)insertOrUpdateFaceprintUsingFaceprint:(id)faceprint
{
  v26 = *MEMORY[0x277D85DE8];
  faceprintCopy = faceprint;
  context = [(HMDPersonCoreDataManager *)self context];
  [context assertIsExecuting];

  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    uUID = [faceprintCopy UUID];
    context2 = [(HMDPersonCoreDataManager *)self context];
    managedObjectContext = [context2 managedObjectContext];
    v10 = [(_MKFModel *)_MKFFaceprint modelWithModelID:uUID context:managedObjectContext];

    if (!v10)
    {
      v11 = [_MKFFaceprint alloc];
      context3 = [(HMDPersonCoreDataManager *)self context];
      managedObjectContext2 = [context3 managedObjectContext];
      v10 = [(_MKFFaceprint *)v11 initWithContext:managedObjectContext2];

      uUID2 = [faceprintCopy UUID];
      [(_MKFFaceprint *)v10 setModelID:uUID2];

      userUUID = [(HMDPersonCoreDataManager *)self userUUID];

      if (userUUID)
      {
        userUUID2 = [(HMDPersonCoreDataManager *)self userUUID];
        context4 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext3 = [context4 managedObjectContext];
        v19 = [(_MKFModel *)_MKFUser modelWithModelID:userUUID2 context:managedObjectContext3];
        [(_MKFFaceprint *)v10 setUser:v19];
      }

      else
      {
        userUUID2 = [home uuid];
        context4 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext3 = [context4 managedObjectContext];
        v19 = [(_MKFModel *)_MKFHome modelWithModelID:userUUID2 context:managedObjectContext3];
        [(_MKFFaceprint *)v10 setHome:v19];
      }
    }

    [(_MKFFaceprint *)v10 updateWithHMFaceprint:faceprintCopy];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while inserting / updating faceprint", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (id)personModelWithModelID:(id)d
{
  dCopy = d;
  context = [(HMDPersonCoreDataManager *)self context];
  [context assertIsExecuting];

  home = [(HMDPersonCoreDataManager *)self home];
  if (!home)
  {
    v9 = 0;
    goto LABEL_10;
  }

  userUUID = [(HMDPersonCoreDataManager *)self userUUID];

  if (userUUID)
  {
    if (![home isOwnerUser])
    {
      context2 = [(HMDPersonCoreDataManager *)self context];
      managedObjectContext = [context2 managedObjectContext];
      v12 = [(MKFCKModel *)MKFCKSharedUserPhotosPerson modelWithModelID:dCopy context:managedObjectContext error:0];
      goto LABEL_9;
    }

    v8 = _MKFPhotosPerson;
  }

  else
  {
    v8 = _MKFHomePerson;
  }

  context2 = [(HMDPersonCoreDataManager *)self context];
  managedObjectContext = [context2 managedObjectContext];
  v12 = [(__objc2_class *)v8 modelWithModelID:dCopy context:managedObjectContext];
LABEL_9:
  v9 = v12;

LABEL_10:

  return v9;
}

- (id)deletedFaceprintUUIDsUserInfoKey
{
  v2 = MEMORY[0x277CCACA8];
  uUID = [(HMDPersonCoreDataManager *)self UUID];
  v4 = [v2 stringWithFormat:@"HMDPersonCoreDataManagerDeletedFaceprintUUIDs.%@", uUID];

  return v4;
}

- (id)personWithModelID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  context = [(HMDPersonCoreDataManager *)self context];
  [context assertIsExecuting];

  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    userUUID = [(HMDPersonCoreDataManager *)self userUUID];

    if (userUUID)
    {
      if (![home isOwnerUser])
      {
        context2 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext = [context2 managedObjectContext];
        v16 = [(MKFCKModel *)MKFCKSharedUserPhotosPerson modelWithModelID:dCopy context:managedObjectContext error:0];
        goto LABEL_11;
      }

      v8 = _MKFPhotosPerson;
    }

    else
    {
      v8 = _MKFHomePerson;
    }

    context2 = [(HMDPersonCoreDataManager *)self context];
    managedObjectContext = [context2 managedObjectContext];
    v16 = [(__objc2_class *)v8 modelWithModelID:dCopy context:managedObjectContext];
LABEL_11:
    v17 = v16;

    createHMPerson = [v17 createHMPerson];

    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while fetching person with model ID", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  createHMPerson = 0;
LABEL_12:

  return createHMPerson;
}

- (void)insertOrUpdatePersonUsingPerson:(id)person
{
  v45 = *MEMORY[0x277D85DE8];
  personCopy = person;
  context = [(HMDPersonCoreDataManager *)self context];
  [context assertIsExecuting];

  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    userUUID = [(HMDPersonCoreDataManager *)self userUUID];

    if (userUUID)
    {
      if (![home isOwnerUser])
      {
        uUID = [personCopy UUID];
        context2 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext = [context2 managedObjectContext];
        v11 = [(MKFCKModel *)MKFCKSharedUserPhotosPerson modelWithModelID:uUID context:managedObjectContext error:0];

        if (!v11)
        {
          v34 = [MKFCKSharedUserPhotosPerson alloc];
          context3 = [(HMDPersonCoreDataManager *)self context];
          managedObjectContext2 = [context3 managedObjectContext];
          v11 = [(MKFCKSharedUserPhotosPerson *)v34 initWithContext:managedObjectContext2];

          uUID2 = [personCopy UUID];
          [(MKFCKSharedUserPhotosPerson *)v11 setModelID:uUID2];

          uuid = [home uuid];
          context4 = [(HMDPersonCoreDataManager *)self context];
          managedObjectContext3 = [context4 managedObjectContext];
          v41 = [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithModelID:uuid context:managedObjectContext3 error:0];
          [(MKFCKSharedUserPhotosPerson *)v11 setRoot:v41];

          uuid2 = [home uuid];
          [(MKFCKSharedUserPhotosPerson *)v11 setHomeModelID:uuid2];
        }

        goto LABEL_14;
      }

      uUID3 = [personCopy UUID];
      context5 = [(HMDPersonCoreDataManager *)self context];
      managedObjectContext4 = [context5 managedObjectContext];
      v11 = [(_MKFModel *)_MKFPhotosPerson modelWithModelID:uUID3 context:managedObjectContext4];

      if (!v11)
      {
        v12 = [_MKFPhotosPerson alloc];
        context6 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext5 = [context6 managedObjectContext];
        v11 = [(_MKFPhotosPerson *)v12 initWithContext:managedObjectContext5];

        uUID4 = [personCopy UUID];
        [(MKFCKSharedUserPhotosPerson *)v11 setModelID:uUID4];

        userUUID2 = [(HMDPersonCoreDataManager *)self userUUID];
        context7 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext6 = [context7 managedObjectContext];
        v19 = [(_MKFModel *)_MKFUser modelWithModelID:userUUID2 context:managedObjectContext6];
        [(MKFCKSharedUserPhotosPerson *)v11 setUser:v19];
LABEL_11:
      }
    }

    else
    {
      uUID5 = [personCopy UUID];
      context8 = [(HMDPersonCoreDataManager *)self context];
      managedObjectContext7 = [context8 managedObjectContext];
      v11 = [(_MKFModel *)_MKFHomePerson modelWithModelID:uUID5 context:managedObjectContext7];

      if (!v11)
      {
        v27 = [_MKFHomePerson alloc];
        context9 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext8 = [context9 managedObjectContext];
        v11 = [(_MKFHomePerson *)v27 initWithContext:managedObjectContext8];

        uUID6 = [personCopy UUID];
        [(MKFCKSharedUserPhotosPerson *)v11 setModelID:uUID6];

        userUUID2 = [home uuid];
        context7 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext6 = [context7 managedObjectContext];
        v19 = [(_MKFModel *)_MKFHome modelWithModelID:userUUID2 context:managedObjectContext6];
        [(MKFCKSharedUserPhotosPerson *)v11 setHome:v19];
        goto LABEL_11;
      }
    }

LABEL_14:
    [(MKFCKSharedUserPhotosPerson *)v11 updateWithHMPerson:personCopy];

    goto LABEL_15;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v43 = 138543362;
    v44 = v23;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while inserting / updating person", &v43, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
LABEL_15:
}

- (id)mkfPersons
{
  v22 = *MEMORY[0x277D85DE8];
  context = [(HMDPersonCoreDataManager *)self context];
  [context assertIsExecuting];

  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    userUUID = [(HMDPersonCoreDataManager *)self userUUID];

    if (userUUID)
    {
      if ([home isOwnerUser])
      {
        userUUID2 = [(HMDPersonCoreDataManager *)self userUUID];
        context2 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext = [context2 managedObjectContext];
        [(_MKFModel *)_MKFUser modelWithModelID:userUUID2 context:managedObjectContext];
      }

      else
      {
        userUUID2 = [home uuid];
        context2 = [(HMDPersonCoreDataManager *)self context];
        managedObjectContext = [context2 managedObjectContext];
        [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithModelID:userUUID2 context:managedObjectContext error:0];
      }
      v9 = ;

      personsFromPhotos = [v9 personsFromPhotos];
    }

    else
    {
      uuid = [home uuid];
      context3 = [(HMDPersonCoreDataManager *)self context];
      managedObjectContext2 = [context3 managedObjectContext];
      v9 = [(_MKFModel *)_MKFHome modelWithModelID:uuid context:managedObjectContext2];

      personsFromPhotos = [v9 persons];
    }

    v15 = personsFromPhotos;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while fetching all persons", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CBEB98] set];
  }

  return v15;
}

- (id)persons
{
  context = [(HMDPersonCoreDataManager *)self context];
  [context assertIsExecuting];

  mkfPersons = [(HMDPersonCoreDataManager *)self mkfPersons];
  v5 = [mkfPersons na_map:&__block_literal_global_264218];

  return v5;
}

- (id)deletedPersonUUIDsUserInfoKey
{
  v2 = MEMORY[0x277CCACA8];
  uUID = [(HMDPersonCoreDataManager *)self UUID];
  v4 = [v2 stringWithFormat:@"HMDPersonCoreDataManagerDeletedPersonUUIDs.%@", uUID];

  return v4;
}

- (id)removeAllAssociatedData
{
  array = [MEMORY[0x277CBEB18] array];
  removeAllAssociatedLocalData = [(HMDPersonCoreDataManager *)self removeAllAssociatedLocalData];
  [array addObject:removeAllAssociatedLocalData];

  if ([(HMDPersonCoreDataManager *)self shouldDispatchToPrimaryResident])
  {
    residentSyncManager = [(HMDPersonCoreDataManager *)self residentSyncManager];
    removeAllAssociatedSyncedData = [residentSyncManager removeAllAssociatedSyncedData];
    [array addObject:removeAllAssociatedSyncedData];
  }

  else
  {
    residentSyncManager = [(HMDPersonCoreDataManager *)self removeAllAssociatedSyncedData];
    [array addObject:residentSyncManager];
  }

  v7 = [MEMORY[0x277D2C900] chainFutures:array];

  return v7;
}

- (id)addOrUpdateFaceprints:(id)faceprints andRemoveFaceprintsWithUUIDs:(id)ds
{
  v32 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  dsCopy = ds;
  home = [(HMDPersonCoreDataManager *)self home];
  if (home)
  {
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = MEMORY[0x277D2C938];
    workQueue = [(HMDPersonCoreDataManager *)self workQueue];
    v12 = [v10 schedulerWithDispatchQueue:workQueue];
    v13 = [v9 reschedule:v12];

    context = [(HMDPersonCoreDataManager *)self context];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__HMDPersonCoreDataManager_addOrUpdateFaceprints_andRemoveFaceprintsWithUUIDs___block_invoke;
    v25[3] = &unk_2786891E0;
    v26 = faceprintsCopy;
    selfCopy = self;
    v28 = dsCopy;
    v15 = v13;
    v29 = v15;
    [context performBlock:v25];

    v16 = v29;
    v17 = v15;

    v18 = v17;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while adding or updating faceprints", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v18 = [v23 futureWithError:v17];
  }

  return v18;
}

void __79__HMDPersonCoreDataManager_addOrUpdateFaceprints_andRemoveFaceprintsWithUUIDs___block_invoke(id *a1)
{
  v1 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v40;
    do
    {
      v6 = 0;
      do
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1[5] insertOrUpdateFaceprintUsingFaceprint:*(*(&v39 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v4);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v1[6];
  v7 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v36;
    p_cache = &OBJC_METACLASS___HMDAccessCodeManagerUtilities.cache;
    *&v8 = 138543618;
    v31 = v8;
    v32 = v1;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v14 = [v1[5] context];
        v15 = [v14 managedObjectContext];
        v16 = [p_cache + 383 modelWithModelID:v13 context:v15];

        if (v16)
        {
          v17 = [v1[5] context];
          v18 = [v17 managedObjectContext];
          [v18 deleteObject:v16];
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = v1[5];
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v23 = v22 = p_cache;
            *buf = v31;
            v44 = v23;
            v45 = 2112;
            v46 = v13;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Not removing faceprint that cannot be found for UUID: %@", buf, 0x16u);

            p_cache = v22;
            v1 = v32;
          }

          objc_autoreleasePoolPop(v19);
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v9);
  }

  v24 = [v1[5] context];
  v34 = 0;
  v25 = [v24 save:&v34];
  v26 = v34;

  if (v25)
  {
    [v1[7] finishWithNoResult];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v1[5];
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v30;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to add or update faceprints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    [v1[7] finishWithError:v26];
  }
}

- (void)enumerateFaceprintsForFaceCropsWithUUIDs:(id)ds usingBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  context = [(HMDPersonCoreDataManager *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke;
  v11[3] = &unk_278689F98;
  v11[4] = self;
  v12 = dsCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = dsCopy;
  [context unsafeSynchronousBlock:v11];
}

void __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke_2;
  v3[3] = &unk_278687810;
  v4 = *(a1 + 48);
  [v1 enumerateMKFFaceprintsForFaceCropsWithUUIDs:v2 usingBlock:v3];
}

void __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 createHMFaceprint];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (void)enumerateFaceprintsUsingBlock:(id)block
{
  blockCopy = block;
  context = [(HMDPersonCoreDataManager *)self context];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [context unsafeSynchronousBlock:v7];
}

void __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke_2;
  v2[3] = &unk_278687810;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateMKFFaceprintsForFaceCropsWithUUIDs:0 usingBlock:v2];
}

void __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 createHMFaceprint];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (id)addOrUpdatePersons:(id)persons andRemovePersonsWithUUIDs:(id)ds
{
  v33 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  dsCopy = ds;
  home = [(HMDPersonCoreDataManager *)self home];
  if (!home)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while adding or updating persons", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x277D2C900];
    residentSyncManager = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v10 = [v15 futureWithError:residentSyncManager];
    goto LABEL_7;
  }

  if ([(HMDPersonCoreDataManager *)self shouldDispatchToPrimaryResident])
  {
    residentSyncManager = [(HMDPersonCoreDataManager *)self residentSyncManager];
    v10 = [residentSyncManager addOrUpdatePersons:personsCopy andRemovePersonsWithUUIDs:dsCopy];
LABEL_7:
    v16 = v10;

    goto LABEL_9;
  }

  v17 = objc_alloc_init(MEMORY[0x277D2C900]);
  v18 = MEMORY[0x277D2C938];
  workQueue = [(HMDPersonCoreDataManager *)self workQueue];
  v20 = [v18 schedulerWithDispatchQueue:workQueue];
  v21 = [v17 reschedule:v20];

  context = [(HMDPersonCoreDataManager *)self context];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__HMDPersonCoreDataManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke;
  v26[3] = &unk_2786891E0;
  v27 = personsCopy;
  selfCopy2 = self;
  v29 = dsCopy;
  v23 = v21;
  v30 = v23;
  [context performBlock:v26];

  v24 = v30;
  v16 = v23;

LABEL_9:

  return v16;
}

void __73__HMDPersonCoreDataManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke(id *a1)
{
  v1 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1[5] insertOrUpdatePersonUsingPerson:*(*(&v36 + 1) + 8 * i)];
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v4);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v1[6];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v30 = v1;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * j);
        v13 = [v1[5] personModelWithModelID:v12];
        if (v13)
        {
          v14 = [v1[5] context];
          v15 = [v14 managedObjectContext];
          [v15 deleteObject:v13];
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          v17 = v1[5];
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v19 = v9;
            v20 = v10;
            v22 = v21 = v7;
            *buf = 138543618;
            v41 = v22;
            v42 = 2112;
            v43 = v12;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Not removing person that cannot be found for UUID: %@", buf, 0x16u);

            v7 = v21;
            v10 = v20;
            v9 = v19;
            v1 = v30;
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v9);
  }

  v23 = [v1[5] context];
  v31 = 0;
  v24 = [v23 save:&v31];
  v25 = v31;

  if (v24)
  {
    [v1[7] finishWithNoResult];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v1[5];
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v29;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to add or update persons: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    [v1[7] finishWithError:v25];
  }
}

- (void)enumeratePersonsUsingBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__264231;
  v15 = __Block_byref_object_dispose__264232;
  v16 = 0;
  context = [(HMDPersonCoreDataManager *)self context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HMDPersonCoreDataManager_enumeratePersonsUsingBlock___block_invoke;
  v10[3] = &unk_27868A688;
  v10[4] = self;
  v10[5] = &v11;
  [context unsafeSynchronousBlock:v10];

  v6 = v12[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDPersonCoreDataManager_enumeratePersonsUsingBlock___block_invoke_2;
  v8[3] = &unk_2786877E8;
  v7 = blockCopy;
  v9 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];

  _Block_object_dispose(&v11, 8);
}

void __55__HMDPersonCoreDataManager_enumeratePersonsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persons];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)personWithUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__264231;
  v16 = __Block_byref_object_dispose__264232;
  v17 = 0;
  context = [(HMDPersonCoreDataManager *)self context];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HMDPersonCoreDataManager_personWithUUID___block_invoke;
  v9[3] = &unk_27868A4D8;
  v11 = &v12;
  v9[4] = self;
  v6 = dCopy;
  v10 = v6;
  [context unsafeSynchronousBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__HMDPersonCoreDataManager_personWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) personWithModelID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)configureWithDataSource:(id)source
{
  sourceCopy = source;
  workQueue = [(HMDPersonCoreDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDPersonCoreDataManager *)self setDataSource:sourceCopy];
  notificationCenter = [(HMDPersonCoreDataManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleManagedObjectContextWillSaveNotification_ name:*MEMORY[0x277CBE1C0] object:0];

  notificationCenter2 = [(HMDPersonCoreDataManager *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleManagedObjectContextDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];

  residentSyncManager = [(HMDPersonCoreDataManager *)self residentSyncManager];
  home = [(HMDPersonCoreDataManager *)self home];
  [residentSyncManager configureWithHome:home delegate:self];
}

- (HMDPersonCoreDataManager)initWithUUID:(id)d workQueue:(id)queue home:(id)home userUUID:(id)iD context:(id)context residentSyncManager:(id)manager notificationCenter:(id)center
{
  dCopy = d;
  queueCopy = queue;
  homeCopy = home;
  iDCopy = iD;
  contextCopy = context;
  managerCopy = manager;
  centerCopy = center;
  v29.receiver = self;
  v29.super_class = HMDPersonCoreDataManager;
  v20 = [(HMDPersonCoreDataManager *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_workQueue, queue);
    v22 = objc_msgSend_copy(dCopy, contextCopy, queueCopy);
    UUID = v21->_UUID;
    v21->_UUID = v22;

    objc_storeWeak(&v21->_home, homeCopy);
    v24 = objc_msgSend_copy(iDCopy);
    userUUID = v21->_userUUID;
    v21->_userUUID = v24;

    objc_storeStrong(&v21->_context, context);
    objc_storeStrong(&v21->_residentSyncManager, manager);
    objc_storeStrong(&v21->_notificationCenter, center);
  }

  return v21;
}

- (HMDPersonCoreDataManager)initWithUUID:(id)d workQueue:(id)queue home:(id)home userUUID:(id)iD
{
  iDCopy = iD;
  homeCopy = home;
  queueCopy = queue;
  dCopy = d;
  backingStore = [homeCopy backingStore];
  context = [backingStore context];

  v16 = [HMDPersonResidentSyncManager alloc];
  msgDispatcher = [homeCopy msgDispatcher];
  residentSyncManager = [homeCopy residentSyncManager];
  v19 = [(HMDPersonResidentSyncManager *)v16 initWithUUID:dCopy messageDispatcher:msgDispatcher workQueue:queueCopy residentSyncManager:residentSyncManager];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v21 = [(HMDPersonCoreDataManager *)self initWithUUID:dCopy workQueue:queueCopy home:homeCopy userUUID:iDCopy context:context residentSyncManager:v19 notificationCenter:defaultCenter];

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_264244 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_264244, &__block_literal_global_54_264245);
  }

  v3 = logCategory__hmf_once_v43_264246;

  return v3;
}

void __39__HMDPersonCoreDataManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v43_264246;
  logCategory__hmf_once_v43_264246 = v0;
}

@end