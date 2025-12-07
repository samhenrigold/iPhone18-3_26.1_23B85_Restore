@interface HMIExternalPersonDataSourceHomeKit
- (HMIExternalPersonDataSourceHomeKit)initWithHMPhotosPersonManager:(id)manager;
- (id)logIdentifier;
- (void)addFaceprints:(id)faceprints completion:(id)completion;
- (void)fetchAllFaceprintsWithCompletion:(id)completion;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion;
- (void)fetchAllPersonsWithCompletion:(id)completion;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMIExternalPersonDataSourceHomeKit

- (HMIExternalPersonDataSourceHomeKit)initWithHMPhotosPersonManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = HMIExternalPersonDataSourceHomeKit;
  v6 = [(HMIExternalPersonDataSourceHomeKit *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v8 = HMIDispatchQueueNameString(v6, 0);
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    objc_storeStrong(&v7->_photosPersonManager, manager);
  }

  return v7;
}

- (void)fetchAllPersonsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllPersonsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke_2;
  v6 = &unk_278752DD0;
  v7 = *(a1 + 40);
  [v2 fetchAllPersonsWithCompletion:?];
}

void __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:?];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchPersonsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMIExternalPersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v3 = *(a1 + 48);
  [v2 fetchPersonsWithUUIDs:? completion:?];
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:?];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllPersonFaceCropsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_2;
  v7 = &unk_278752E48;
  v3 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  [v2 fetchAllPersonFaceCropsWithCompletion:{v4, 3221225472, __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_2, &unk_278752E48, v8}];
}

void __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 na_map:?];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

HMIPersonFaceCrop *__76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 source] >= 5)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v7;
      v17 = 2048;
      v18 = [v3 source];
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMPersonFaceCropSource: %ld", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = [HMIPersonFaceCrop alloc];
  v9 = [v3 UUID];
  v10 = [v3 dataRepresentation];
  v11 = [v3 dateCreated];
  [v3 faceBoundingBox];
  v12 = [v3 personUUID];
  v13 = [HMIPersonFaceCrop initWithUUID:v8 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:" dateCreated:? faceBoundingBox:? personUUID:? source:?];

  return v13;
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchFaceCropsForPersonsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v3 = MEMORY[0x277D85DD0];
  v4 = *(a1 + 48);
  [v2 fetchFaceCropsForPersonsWithUUIDs:v3 completion:{3221225472, __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2, &unk_278752E48, *(a1 + 32)}];
}

void __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 na_map:?];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

HMIPersonFaceCrop *__83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 source] >= 5)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v7;
      v17 = 2048;
      v18 = [v3 source];
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMPersonFaceCropSource: %ld", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = [HMIPersonFaceCrop alloc];
  v9 = [v3 UUID];
  v10 = [v3 dataRepresentation];
  v11 = [v3 dateCreated];
  [v3 faceBoundingBox];
  v12 = [v3 personUUID];
  v13 = [HMIPersonFaceCrop initWithUUID:v8 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:" dateCreated:? faceBoundingBox:? personUUID:? source:?];

  return v13;
}

- (void)fetchAllFaceprintsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllFaceprintsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_2;
  v6 = &unk_278752DD0;
  v7 = *(a1 + 40);
  [v2 fetchAllFaceprintsWithCompletion:?];
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:?];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

HMIFaceprint *__71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMIFaceprint alloc];
  v4 = [v2 UUID];
  v5 = [v2 data];
  v6 = [v2 modelUUID];
  v7 = [v2 faceCropUUID];

  v8 = [HMIFaceprint initWithUUID:v3 data:"initWithUUID:data:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];

  return v8;
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchFaceprintsForFaceCropsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v3 = *(a1 + 48);
  [v2 fetchFaceprintsForFaceCropsWithUUIDs:? completion:?];
}

void __86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:?];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

HMIFaceprint *__86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMIFaceprint alloc];
  v4 = [v2 UUID];
  v5 = [v2 data];
  v6 = [v2 modelUUID];
  v7 = [v2 faceCropUUID];

  v8 = [HMIFaceprint initWithUUID:v3 data:"initWithUUID:data:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];

  return v8;
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchSettingsWithCompletion", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:?];
  completionCopy[2](completionCopy, 0, v9);
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@performCloudPullWithCompletion", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:?];
  completionCopy[2](completionCopy, v9);
}

- (void)addFaceprints:(id)faceprints completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = faceprintsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@addFaceprints:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMIExternalPersonDataSourceHomeKit_addFaceprints_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v16 = faceprintsCopy;
  v17 = selfCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = faceprintsCopy;
  dispatch_async(workQueue, block);
}

void __63__HMIExternalPersonDataSourceHomeKit_addFaceprints_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) na_map:?];
  v2 = [*(a1 + 40) photosPersonManager];
  [v2 addOrUpdateFaceprints:? completion:?];
}

void *__63__HMIExternalPersonDataSourceHomeKit_addFaceprints_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1A38];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 UUID];
  v6 = [v3 data];
  v7 = [v3 modelUUID];
  v8 = [v3 faceCropUUID];

  v9 = [v4 initWithUUID:? data:? modelUUID:? faceCropUUID:?];

  return v9;
}

- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@removeFaceprintsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIExternalPersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMIExternalPersonDataSourceHomeKit_removeFaceprintsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __75__HMIExternalPersonDataSourceHomeKit_removeFaceprintsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) photosPersonManager];
  [v1 removeFaceprintsWithUUIDs:? completion:?];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  photosPersonManager = [(HMIExternalPersonDataSourceHomeKit *)self photosPersonManager];
  uUID = [photosPersonManager UUID];
  v5 = [v2 stringWithFormat:uUID];

  return v5;
}

@end