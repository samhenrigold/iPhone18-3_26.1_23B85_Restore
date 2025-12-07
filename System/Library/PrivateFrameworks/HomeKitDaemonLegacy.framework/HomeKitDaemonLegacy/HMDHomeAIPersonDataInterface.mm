@interface HMDHomeAIPersonDataInterface
- (HMDHomeAIPersonDataInterface)initWithPersonManager:(id)manager workQueue:(id)queue;
- (HMDPersonDataSource)dataSource;
- (void)addFaceprints:(id)faceprints completion:(id)completion;
- (void)configureWithDataSource:(id)source home:(id)home;
- (void)fetchAllFaceprintsWithCompletion:(id)completion;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion;
- (void)fetchAllPersonsWithCompletion:(id)completion;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)handleRemovedFaceCropWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleRemovedFaceprintWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleRemovedPersonWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleUpdatedFaceprint:(id)faceprint mirrorOutputFuture:(id)future;
- (void)handleUpdatedIsCurrentDeviceAvailableResident:(BOOL)resident;
- (void)handleUpdatedIsDataSyncInProgress:(BOOL)progress;
- (void)handleUpdatedPerson:(id)person mirrorOutputFuture:(id)future;
- (void)handleUpdatedPersonFaceCrop:(id)crop mirrorOutputFuture:(id)future;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMDHomeAIPersonDataInterface

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleUpdatedIsDataSyncInProgress:(BOOL)progress
{
  progressCopy = progress;
  v25 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  isPersonDataAvailableViaHomeKit = [personManager isPersonDataAvailableViaHomeKit];

  if (isPersonDataAvailableViaHomeKit == progressCopy)
  {
    v8 = progressCopy ^ 1u;
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      personManager2 = [(HMDHomeAIPersonDataInterface *)selfCopy personManager];
      isPersonDataAvailableViaHomeKit2 = [personManager2 isPersonDataAvailableViaHomeKit];
      personManager3 = [(HMDHomeAIPersonDataInterface *)selfCopy personManager];
      v17 = 138544130;
      v18 = v12;
      v19 = 1024;
      v20 = isPersonDataAvailableViaHomeKit2;
      v21 = 1024;
      v22 = v8;
      v23 = 2112;
      v24 = personManager3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating personDataAvailableViaHomeKit from %d -> %d on %@", &v17, 0x22u);
    }

    objc_autoreleasePoolPop(v9);
    personManager4 = [(HMDHomeAIPersonDataInterface *)selfCopy personManager];
    [personManager4 setPersonDataAvailableViaHomeKit:v8];
  }
}

- (void)handleUpdatedIsCurrentDeviceAvailableResident:(BOOL)resident
{
  residentCopy = resident;
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  supportsFaceClassification = [personManager supportsFaceClassification];

  if (supportsFaceClassification != residentCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      personManager2 = [(HMDHomeAIPersonDataInterface *)selfCopy personManager];
      supportsFaceClassification2 = [personManager2 supportsFaceClassification];
      personManager3 = [(HMDHomeAIPersonDataInterface *)selfCopy personManager];
      v16 = 138544130;
      v17 = v11;
      v18 = 1024;
      v19 = supportsFaceClassification2;
      v20 = 1024;
      v21 = residentCopy;
      v22 = 2112;
      v23 = personManager3;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating supportsFaceClassification from %d -> %d on %@", &v16, 0x22u);
    }

    objc_autoreleasePoolPop(v8);
    personManager4 = [(HMDHomeAIPersonDataInterface *)selfCopy personManager];
    [personManager4 setSupportsFaceClassification:residentCopy];
  }
}

- (void)handleRemovedFaceprintWithUUID:(id)d mirrorOutputFuture:(id)future
{
  dCopy = d;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  [personManager handleRemovedFaceprintWithUUID:dCopy];
}

- (void)handleRemovedFaceCropWithUUID:(id)d mirrorOutputFuture:(id)future
{
  dCopy = d;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  [personManager handleRemovedFaceCropWithUUID:dCopy];
}

- (void)handleRemovedPersonWithUUID:(id)d mirrorOutputFuture:(id)future
{
  dCopy = d;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  [personManager handleRemovedPersonWithUUID:dCopy];
}

- (void)handleUpdatedFaceprint:(id)faceprint mirrorOutputFuture:(id)future
{
  faceprintCopy = faceprint;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  createHMIFaceprint = [faceprintCopy createHMIFaceprint];

  [personManager handleUpdatedFaceprint:createHMIFaceprint];
}

- (void)handleUpdatedPersonFaceCrop:(id)crop mirrorOutputFuture:(id)future
{
  cropCopy = crop;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  createHMIPersonFaceCrop = [cropCopy createHMIPersonFaceCrop];

  [personManager handleUpdatedPersonFaceCrop:createHMIPersonFaceCrop];
}

- (void)handleUpdatedPerson:(id)person mirrorOutputFuture:(id)future
{
  personCopy = person;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomeAIPersonDataInterface *)self personManager];
  createHMIPerson = [personCopy createHMIPerson];

  [personManager handleUpdatedPerson:createHMIPerson];
}

- (void)configureWithDataSource:(id)source home:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  homeCopy = home;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!sourceCopy)
  {
    _HMFPreconditionFailure();
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring HomeAI person data interface", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDHomeAIPersonDataInterface *)selfCopy setDataSource:sourceCopy];
  personManager = [(HMDHomeAIPersonDataInterface *)selfCopy personManager];
  [personManager setDataSource:selfCopy];
}

- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDHomeAIPersonDataInterface_removeFaceprintsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
}

void __69__HMDHomeAIPersonDataInterface_removeFaceprintsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing faceprints with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 removeFaceprintsWithUUIDs:*(a1 + 40)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDHomeAIPersonDataInterface_removeFaceprintsWithUUIDs_completion___block_invoke_23;
  v10[3] = &unk_279730E28;
  v11 = *(a1 + 48);
  v9 = [v8 addCompletionBlock:v10];
}

- (void)addFaceprints:(id)faceprints completion:(id)completion
{
  faceprintsCopy = faceprints;
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = faceprintsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = faceprintsCopy;
  dispatch_async(workQueue, block);
}

void __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding faceprints: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [a1[5] na_map:&__block_literal_global_21_9212];
  v8 = [a1[4] dataSource];
  v9 = [v8 addOrUpdateFaceprints:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke_2;
  v11[3] = &unk_279730E28;
  v12 = a1[6];
  v10 = [v9 addCompletionBlock:v11];
}

id __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1A38];
  v3 = a2;
  v4 = [[v2 alloc] initWithHMIFaceprint:v3];

  return v4;
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Performing cloud pull", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDHomeAIPersonDataInterface *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HMDHomeAIPersonDataInterface_performCloudPullWithCompletion___block_invoke;
  v11[3] = &unk_279735738;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __63__HMDHomeAIPersonDataInterface_performCloudPullWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 performCloudPull];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HMDHomeAIPersonDataInterface_performCloudPullWithCompletion___block_invoke_2;
  v5[3] = &unk_279730E28;
  v6 = *(a1 + 40);
  v4 = [v3 addCompletionBlock:v5];
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching faceprints for face crops with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDHomeAIPersonDataInterface *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2797355D0;
  v16 = dsCopy;
  v17 = completionCopy;
  block[4] = selfCopy;
  v13 = dsCopy;
  v14 = completionCopy;
  dispatch_async(workQueue, block);
}

void __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_16;
    v11[3] = &unk_27972D400;
    v12 = v3;
    v5 = v3;
    [v2 enumerateFaceprintsForFaceCropsWithUUIDs:v4 usingBlock:v11];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch faceprints for face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v10 + 16))(v10, 0, v5);
  }
}

void __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIFaceprint];
  [v2 addObject:v3];
}

- (void)fetchAllFaceprintsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching all faceprints", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDHomeAIPersonDataInterface *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke;
  v11[3] = &unk_279735738;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke_14;
    v10[3] = &unk_27972D400;
    v11 = v3;
    v4 = v3;
    [v2 enumerateFaceprintsUsingBlock:v10];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all faceprints because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v4);
  }
}

void __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIFaceprint];
  [v2 addObject:v3];
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for persons with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDHomeAIPersonDataInterface *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2797355D0;
  v16 = dsCopy;
  v17 = completionCopy;
  block[4] = selfCopy;
  v13 = dsCopy;
  v14 = completionCopy;
  dispatch_async(workQueue, block);
}

void __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [v2 fetchFaceCropsForPersonsWithUUIDs:*(a1 + 40)];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_8;
    v14[3] = &unk_279721DF0;
    v15 = *(a1 + 48);
    v4 = [v3 addSuccessBlock:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_3;
    v12[3] = &unk_279735558;
    v13 = *(a1 + 48);
    v5 = [v4 addFailureBlock:v12];

    v6 = v15;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch face crops for persons because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v11 + 16))(v11, 0, v6);
  }
}

void __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = [a2 na_map:&__block_literal_global_11];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching all person face crops", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDHomeAIPersonDataInterface *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v11[3] = &unk_279735738;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke_6;
    v10[3] = &unk_27972D3D8;
    v11 = v3;
    v4 = v3;
    [v2 enumeratePersonFaceCropsUsingBlock:v10];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all person face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v4);
  }
}

void __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIPersonFaceCrop];
  [v2 addObject:v3];
}

- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching persons with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMDHomeAIPersonDataInterface *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDHomeAIPersonDataInterface_fetchPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2797355D0;
  v16 = dsCopy;
  v17 = completionCopy;
  block[4] = selfCopy;
  v13 = dsCopy;
  v14 = completionCopy;
  dispatch_async(workQueue, block);
}

void __65__HMDHomeAIPersonDataInterface_fetchPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [v2 personsWithUUIDs:*(a1 + 40)];
    v4 = [v3 na_map:&__block_literal_global_9235];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch persons with UUIDs because data is not available", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v10);
  }
}

- (void)fetchAllPersonsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching all persons", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDHomeAIPersonDataInterface *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke;
  v11[3] = &unk_279735738;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke_2;
    v10[3] = &unk_27972D388;
    v11 = v3;
    v4 = v3;
    [v2 enumeratePersonsUsingBlock:v10];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all persons because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v4);
  }
}

void __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIPerson];
  [v2 addObject:v3];
}

- (HMDHomeAIPersonDataInterface)initWithPersonManager:(id)manager workQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMDHomeAIPersonDataInterface;
  v9 = [(HMDHomeAIPersonDataInterface *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v10->_personManager, manager);
  }

  return v10;
}

@end