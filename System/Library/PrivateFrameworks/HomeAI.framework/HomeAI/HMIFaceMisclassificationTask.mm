@interface HMIFaceMisclassificationTask
- (HMIFaceMisclassificationTask)initWithTaskID:(int)d dataSource:(id)source faceCrop:(id)crop;
- (void)mainInsideAutoreleasePool;
- (void)removeNearestFaceprint:(id)faceprint withFaceCrops:(id)crops;
@end

@implementation HMIFaceMisclassificationTask

- (HMIFaceMisclassificationTask)initWithTaskID:(int)d dataSource:(id)source faceCrop:(id)crop
{
  v7 = *&d;
  sourceCopy = source;
  cropCopy = crop;
  v14.receiver = self;
  v14.super_class = HMIFaceMisclassificationTask;
  v11 = [(HMITask *)&v14 initWithTaskID:v7];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_faceCrop, crop);
    objc_storeStrong(&v12->_dataSource, source);
  }

  return v12;
}

- (void)mainInsideAutoreleasePool
{
  objc_initWeak(&location, self);
  dataSource = [(HMIFaceMisclassificationTask *)self dataSource];
  v4 = MEMORY[0x277CBEB98];
  faceCrop = [(HMIFaceMisclassificationTask *)self faceCrop];
  personUUID = [faceCrop personUUID];
  v7 = [v4 setWithObject:?];
  v8 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v9, &location);
  [dataSource fetchFaceCropsForPersonsWithUUIDs:v8 completion:{3221225472, __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke, &unk_278753D20}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [v5 na_map:?];
      objc_initWeak(location, WeakRetained);
      v9 = [WeakRetained dataSource];
      v14 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v16, location);
      v15 = v5;
      [v9 fetchFaceprintsForFaceCropsWithUUIDs:v14 completion:{3221225472, __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke_2, &unk_278754268}];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v13;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch face crops with error: %@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [v11 cancelWithError:?];
    }
  }
}

void __57__HMIFaceMisclassificationTask_mainInsideAutoreleasePool__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained removeNearestFaceprint:? withFaceCrops:?];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v12;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch faceprints with error: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [v10 cancelWithError:?];
    }
  }
}

- (void)removeNearestFaceprint:(id)faceprint withFaceCrops:(id)crops
{
  v61 = *MEMORY[0x277D85DE8];
  faceprintCopy = faceprint;
  cropsCopy = crops;
  v56 = 0;
  v45 = objc_alloc_init(HMIFaceprinter);
  v43 = cropsCopy;
  v47 = [HMIFaceprinter updatedFaceprintsForFaceCrops:v45 withExistingFaceprints:"updatedFaceprintsForFaceCrops:withExistingFaceprints:error:" error:?];
  v7 = 0;
  if (v47)
  {
    allAtCurrentVersion = [v47 allAtCurrentVersion];
    if ([allAtCurrentVersion hmf_isEmpty])
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        faceCrop = [(HMIFaceMisclassificationTask *)selfCopy faceCrop];
        personUUID = [faceCrop personUUID];
        *buf = 138543618;
        v58 = v11;
        v59 = 2112;
        v60 = personUUID;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Person (%@) has no faceprints -- nothing to remove", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(HMFOperation *)selfCopy finish];
    }

    else
    {
      faceCrop2 = [(HMIFaceMisclassificationTask *)self faceCrop];
      v55 = v7;
      v42 = [HMIFaceprinter generateFaceprintForFaceCrop:v45 error:"generateFaceprintForFaceCrop:error:"];
      v41 = v7;

      faceprint = [v42 faceprint];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v19 = allAtCurrentVersion;
      v20 = 0;
      v21 = [v19 countByEnumeratingWithState:? objects:? count:?];
      if (v21)
      {
        v22 = *v52;
        v23 = 1.79769313e308;
        do
        {
          for (i = 0; i != v21; i = (i + 1))
          {
            if (*v52 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v51 + 1) + 8 * i);
            descriptorData = [faceprint descriptorData];
            data = [v25 data];
            [HMIGreedyClustering faceDistanceFromDescriptor:"faceDistanceFromDescriptor:toDescriptor:" toDescriptor:?];
            v29 = v28;

            v30 = v29;
            if (v23 > v30)
            {
              v31 = v25;

              v23 = v30;
              v20 = v31;
            }
          }

          v21 = [v19 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v21);
      }

      v32 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        faceCropUUID = [v20 faceCropUUID];
        *buf = 138543618;
        v58 = v35;
        v59 = 2112;
        v60 = faceCropUUID;
        _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Nearest face crop to be removed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      objc_initWeak(buf, selfCopy2);
      dataSource = [(HMIFaceMisclassificationTask *)selfCopy2 dataSource];
      v38 = MEMORY[0x277CBEB98];
      faceCropUUID2 = [v20 faceCropUUID];
      v40 = [v38 setWithObject:?];
      objc_copyWeak(&v50, buf);
      v49 = v20;
      [dataSource removeFaceCropsWithUUIDs:? completion:?];

      objc_destroyWeak(&v50);
      objc_destroyWeak(buf);

      v7 = v41;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v17;
      v59 = 2112;
      v60 = v7;
      _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMFOperation *)selfCopy3 cancelWithError:?];
  }
}

void __69__HMIFaceMisclassificationTask_removeNearestFaceprint_withFaceCrops___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    v8 = v7;
    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v3;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove face crop with error: %@", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 cancelWithError:?];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 32) faceCropUUID];
        v12 = 138543618;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully removed face crop (%@) via user indicated misclassification", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 finish];
    }
  }
}

@end