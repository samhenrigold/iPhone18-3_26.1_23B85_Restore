@interface HMDPersonResidentSyncManager
+ (id)logCategory;
- (HMDPersonResidentSyncManager)initWithUUID:(id)d messageDispatcher:(id)dispatcher workQueue:(id)queue residentSyncManager:(id)manager;
- (HMDPersonResidentSyncManagerDelegate)delegate;
- (id)addOrUpdatePersons:(id)persons;
- (id)addOrUpdatePersons:(id)persons andRemovePersonsWithUUIDs:(id)ds;
- (id)logIdentifier;
- (id)removeAllAssociatedSyncedData;
- (id)removePersonsWithUUIDs:(id)ds;
- (void)configureWithHome:(id)home delegate:(id)delegate;
- (void)handleModifyPersonsMessage:(id)message;
- (void)handleRemoveAllAssociatedDataMessage:(id)message;
@end

@implementation HMDPersonResidentSyncManager

- (HMDPersonResidentSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  uUID = [(HMDPersonResidentSyncManager *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)handleRemoveAllAssociatedDataMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDPersonResidentSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remove all associated synced data message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  residentSyncManager = [(HMDPersonResidentSyncManager *)selfCopy residentSyncManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HMDPersonResidentSyncManager_handleRemoveAllAssociatedDataMessage___block_invoke;
  v12[3] = &unk_27868A398;
  v12[4] = selfCopy;
  [residentSyncManager interceptRemoteResidentRequest:messageCopy proceed:v12];
}

void __69__HMDPersonResidentSyncManager_handleRemoveAllAssociatedDataMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 removeAllAssociatedSyncedData];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HMDPersonResidentSyncManager_handleRemoveAllAssociatedDataMessage___block_invoke_2;
  v8[3] = &unk_278687CC0;
  v9 = v3;
  v6 = v3;
  v7 = [v5 addCompletionBlock:v8];
}

- (void)handleModifyPersonsMessage:(id)message
{
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDPersonResidentSyncManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v35 = v9;
    v36 = 2112;
    v37 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling modify persons message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v12 = [messageCopy unarchivedObjectForKey:@"HMDPRSM.mk.personsToAddOrUpdate" ofClasses:v11];

  if (v12)
  {
    v13 = [messageCopy arrayForKey:@"HMDPRSM.mk.personUUIDsToRemove"];
    v14 = v13;
    if (v13)
    {
      v15 = MEMORY[0x277CBEB98];
      v16 = [v13 na_map:&__block_literal_global_56_105166];
      v17 = [v15 setWithArray:v16];

      residentSyncManager = [(HMDPersonResidentSyncManager *)selfCopy residentSyncManager];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __59__HMDPersonResidentSyncManager_handleModifyPersonsMessage___block_invoke_2;
      v30[3] = &unk_278678060;
      v30[4] = selfCopy;
      v31 = v12;
      v32 = v17;
      v19 = v17;
      [residentSyncManager interceptRemoteResidentRequest:messageCopy proceed:v30];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v35 = v28;
        v36 = 2112;
        v37 = messagePayload;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find person UUID strings in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v19];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v35 = v23;
      v36 = 2112;
      v37 = messagePayload2;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not find persons in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v14];
  }
}

void __59__HMDPersonResidentSyncManager_handleModifyPersonsMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 addOrUpdatePersons:*(a1 + 40) andRemovePersonsWithUUIDs:*(a1 + 48)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDPersonResidentSyncManager_handleModifyPersonsMessage___block_invoke_3;
  v8[3] = &unk_278687CC0;
  v9 = v3;
  v6 = v3;
  v7 = [v5 addCompletionBlock:v8];
}

id __59__HMDPersonResidentSyncManager_handleModifyPersonsMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)removeAllAssociatedSyncedData
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Remove all associated synced data"];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    identifier = [v3 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v29 = v7;
    v30 = 2114;
    v31 = shortDescription;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing all associated synced data", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = objc_alloc_init(MEMORY[0x277D2C900]);
  v11 = MEMORY[0x277D2C938];
  workQueue = [(HMDPersonResidentSyncManager *)selfCopy workQueue];
  v13 = [v11 schedulerWithDispatchQueue:workQueue];
  v14 = [v10 reschedule:v13];

  v15 = objc_alloc(MEMORY[0x277D0F820]);
  uUID = [(HMDPersonResidentSyncManager *)selfCopy UUID];
  v17 = [v15 initWithTarget:uUID];

  v18 = [MEMORY[0x277D0F848] messageWithName:@"HMDPRSM.m.removeAllAssociatedData" destination:v17 payload:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__HMDPersonResidentSyncManager_removeAllAssociatedSyncedData__block_invoke;
  v25[3] = &unk_278686658;
  v25[4] = selfCopy;
  v26 = v3;
  v19 = v14;
  v27 = v19;
  v20 = v3;
  [v18 setResponseHandler:v25];
  residentSyncManager = [(HMDPersonResidentSyncManager *)selfCopy residentSyncManager];
  [residentSyncManager performResidentRequest:v18 options:0];

  v22 = v27;
  v23 = v19;

  return v19;
}

void __61__HMDPersonResidentSyncManager_removeAllAssociatedSyncedData__block_invoke(id *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to remove all associated synced data: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      v16 = [v15 shortDescription];
      v17 = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully removed all associated synced data", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithNoResult];
  }
}

- (id)addOrUpdatePersons:(id)persons andRemovePersonsWithUUIDs:(id)ds
{
  v65 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  dsCopy = ds;
  v8 = personsCopy;
  v9 = dsCopy;
  v10 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Modifying persons"];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    identifier = [v10 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138544130;
    v58 = v14;
    v59 = 2114;
    v60 = shortDescription;
    v61 = 2112;
    v62 = v8;
    v63 = 2112;
    v64 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Adding/updating persons: %@, removing persons with UUIDs: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v54 = 0;
  v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v54];
  v50 = v54;
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    v19 = MEMORY[0x277D2C938];
    workQueue = [(HMDPersonResidentSyncManager *)selfCopy workQueue];
    v21 = [v19 schedulerWithDispatchQueue:workQueue];
    v47 = [v18 reschedule:v21];

    allObjects = [v9 allObjects];
    v23 = [allObjects na_map:&__block_literal_global_48_105190];

    v55[0] = @"HMDPRSM.mk.personsToAddOrUpdate";
    v55[1] = @"HMDPRSM.mk.personUUIDsToRemove";
    v48 = v17;
    v56[0] = v17;
    v56[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v25 = objc_alloc(MEMORY[0x277D0F820]);
    [(HMDPersonResidentSyncManager *)selfCopy UUID];
    v26 = v8;
    v28 = v27 = v10;
    v29 = [v25 initWithTarget:v28];

    v30 = [MEMORY[0x277D0F848] messageWithName:@"HMDPRSM.m.modifyPersons" destination:v29 payload:v24];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __77__HMDPersonResidentSyncManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke_2;
    v51[3] = &unk_278686658;
    v51[4] = selfCopy;
    v49 = v27;
    v31 = v27;
    v8 = v26;
    v52 = v31;
    v32 = v47;
    v53 = v32;
    [v30 setResponseHandler:v51];
    residentSyncManager = [(HMDPersonResidentSyncManager *)selfCopy residentSyncManager];
    [residentSyncManager performResidentRequest:v30 options:0];

    if ([v8 count])
    {
      v34 = v9;
      v35 = [(HMDPersonResidentSyncManager *)selfCopy addOrUpdatePersons:v8];
    }

    else
    {
      v34 = v9;
      if ([v9 count])
      {
        v44 = [(HMDPersonResidentSyncManager *)selfCopy removePersonsWithUUIDs:v9];
      }
    }

    v45 = v53;
    v43 = v32;

    v9 = v34;
    v17 = v48;
    v10 = v49;
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      identifier2 = [v10 identifier];
      shortDescription2 = [identifier2 shortDescription];
      *buf = 138543874;
      v58 = v39;
      v59 = 2114;
      v60 = shortDescription2;
      v61 = 2112;
      v62 = v50;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to serialize persons: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    v42 = MEMORY[0x277D2C900];
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v43 = [v42 futureWithError:v23];
  }

  return v43;
}

void __77__HMDPersonResidentSyncManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke_2(id *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to modify persons: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      v16 = [v15 shortDescription];
      v17 = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully modified persons", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithNoResult];
  }
}

- (id)removePersonsWithUUIDs:(id)ds
{
  v47 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Remove persons"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v42 = v9;
    v43 = 2114;
    v44 = shortDescription;
    v45 = 2112;
    v46 = dsCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing persons with UUIDs from persons data set: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc_init(MEMORY[0x277D2C900]);
  v13 = MEMORY[0x277D2C938];
  workQueue = [(HMDPersonResidentSyncManager *)selfCopy workQueue];
  v15 = [v13 schedulerWithDispatchQueue:workQueue];
  v16 = [v12 reschedule:v15];

  allObjects = [dsCopy allObjects];
  v18 = [allObjects na_map:&__block_literal_global_105203];

  v39 = @"HMDPRSM.mk.personUUIDs";
  v40 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v20 = objc_alloc(MEMORY[0x277D0F820]);
  uUID = [(HMDPersonResidentSyncManager *)selfCopy UUID];
  v22 = [v20 initWithTarget:uUID];

  v23 = [MEMORY[0x277D0F848] messageWithName:@"HMDPRSM.m.removePersons" destination:v22 payload:v19];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __55__HMDPersonResidentSyncManager_removePersonsWithUUIDs___block_invoke_2;
  v34 = &unk_27867E7E8;
  v35 = selfCopy;
  v36 = v5;
  v24 = v16;
  v37 = v24;
  v38 = dsCopy;
  v25 = dsCopy;
  v26 = v5;
  [v23 setResponseHandler:&v31];
  v27 = [(HMDPersonResidentSyncManager *)selfCopy residentSyncManager:v31];
  [v27 performResidentRequest:v23 options:0];

  v28 = v38;
  v29 = v24;

  return v24;
}

void __55__HMDPersonResidentSyncManager_removePersonsWithUUIDs___block_invoke_2(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      v18 = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to remove persons: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      v16 = [v15 shortDescription];
      v17 = [a1[7] count];
      v18 = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully removed %lu persons", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithNoResult];
  }
}

- (id)addOrUpdatePersons:(id)persons
{
  v49 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  v5 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Add persons"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v44 = v9;
    v45 = 2114;
    v46 = shortDescription;
    v47 = 2112;
    v48 = personsCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Adding/updating persons: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v40 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:personsCopy requiringSecureCoding:1 error:&v40];
  v13 = v40;
  if (v12)
  {
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    v15 = MEMORY[0x277D2C938];
    workQueue = [(HMDPersonResidentSyncManager *)selfCopy workQueue];
    v17 = [v15 schedulerWithDispatchQueue:workQueue];
    v18 = [v14 reschedule:v17];

    v41 = @"HMDPRSM.mk.persons";
    v42 = v12;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v20 = objc_alloc(MEMORY[0x277D0F820]);
    uUID = [(HMDPersonResidentSyncManager *)selfCopy UUID];
    v22 = [v20 initWithTarget:uUID];

    v23 = [MEMORY[0x277D0F848] messageWithName:@"HMDPRSM.m.addOrUpdatePersons" destination:v22 payload:v19];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __51__HMDPersonResidentSyncManager_addOrUpdatePersons___block_invoke;
    v36[3] = &unk_27867E7E8;
    v36[4] = selfCopy;
    v37 = v5;
    v24 = v18;
    v38 = v24;
    v39 = personsCopy;
    [v23 setResponseHandler:v36];
    residentSyncManager = [(HMDPersonResidentSyncManager *)selfCopy residentSyncManager];
    [residentSyncManager performResidentRequest:v23 options:0];

    v26 = v39;
    v27 = v24;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      identifier2 = [v5 identifier];
      shortDescription2 = [identifier2 shortDescription];
      *buf = 138543874;
      v44 = v31;
      v45 = 2114;
      v46 = shortDescription2;
      v47 = 2112;
      v48 = v13;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to serialize persons: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v34 = MEMORY[0x277D2C900];
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v27 = [v34 futureWithError:v19];
  }

  return v27;
}

void __51__HMDPersonResidentSyncManager_addOrUpdatePersons___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      v18 = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to add/update persons: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] identifier];
      v16 = [v15 shortDescription];
      v17 = [a1[7] count];
      v18 = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully added/updated %lu persons", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithNoResult];
  }
}

- (void)configureWithHome:(id)home delegate:(id)delegate
{
  v14[2] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  [(HMDPersonResidentSyncManager *)self setDelegate:delegate];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];

  v8 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v8 setRoles:{objc_msgSend(v8, "roles") | 4}];
  messageDispatcher = [(HMDPersonResidentSyncManager *)self messageDispatcher];
  v14[0] = v7;
  v14[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [messageDispatcher registerForMessage:@"HMDPRSM.m.modifyPersons" receiver:self policies:v10 selector:sel_handleModifyPersonsMessage_];

  messageDispatcher2 = [(HMDPersonResidentSyncManager *)self messageDispatcher];
  v13[0] = v7;
  v13[1] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [messageDispatcher2 registerForMessage:@"HMDPRSM.m.removeAllAssociatedData" receiver:self policies:v12 selector:sel_handleRemoveAllAssociatedDataMessage_];
}

- (HMDPersonResidentSyncManager)initWithUUID:(id)d messageDispatcher:(id)dispatcher workQueue:(id)queue residentSyncManager:(id)manager
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = HMDPersonResidentSyncManager;
  v14 = [(HMDPersonResidentSyncManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, queue);
    v16 = objc_msgSend_copy(dCopy);
    UUID = v15->_UUID;
    v15->_UUID = v16;

    objc_storeStrong(&v15->_messageDispatcher, dispatcher);
    objc_storeStrong(&v15->_residentSyncManager, manager);
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_105226 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_105226, &__block_literal_global_62_105227);
  }

  v3 = logCategory__hmf_once_v19_105228;

  return v3;
}

void __43__HMDPersonResidentSyncManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19_105228;
  logCategory__hmf_once_v19_105228 = v0;
}

@end