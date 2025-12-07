@interface HMIHomePersonClusteringTask
- (HMIHomePersonClusteringTask)initWithTaskID:(int)d homeUUID:(id)iD dataSource:(id)source sourceUUID:(id)uID personsModelManager:(id)manager doImpurePersonCleanup:(BOOL)cleanup error:(id *)error;
- (id)personCreatedDateFromFaceCrops:(id)crops;
- (void)_stageFive_associateFaceCropsWithClusterMapping:(id)mapping faceprints:(id)faceprints;
- (void)_stageFour_clusterFaceprints:(id)faceprints;
- (void)_stageOne_fetchFaceCrops;
- (void)_stageThree_generateFaceprintsForFaceCrops:(id)crops existingFaceprints:(id)faceprints;
- (void)_stageTwo_fetchFaceprints:(id)faceprints;
- (void)_stageZero_expireUnnamedPersons;
- (void)finish;
- (void)mainInsideAutoreleasePool;
- (void)removePerson:(id)person;
@end

@implementation HMIHomePersonClusteringTask

- (HMIHomePersonClusteringTask)initWithTaskID:(int)d homeUUID:(id)iD dataSource:(id)source sourceUUID:(id)uID personsModelManager:(id)manager doImpurePersonCleanup:(BOOL)cleanup error:(id *)error
{
  cleanupCopy = cleanup;
  v14 = *&d;
  sourceCopy = source;
  uIDCopy = uID;
  managerCopy = manager;
  v19 = 500.0;
  if (cleanupCopy)
  {
    v19 = 1000.0;
  }

  v33.receiver = self;
  v33.super_class = HMIHomePersonClusteringTask;
  v20 = [(HMIHomeTask *)&v33 initWithTaskID:v14 homeUUID:iD timeout:v19];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v20->_dataSource, source);
  objc_storeStrong(&v21->_sourceUUID, uID);
  objc_storeStrong(&v21->_personsModelManager, manager);
  v21->_doImpurePersonCleanup = cleanupCopy;
  v22 = [[HMIGreedyClustering alloc] initWithError:?];
  clusterer = v21->_clusterer;
  v21->_clusterer = v22;

  v24 = [[HMIFaceClassifierVIP alloc] initWithError:?];
  v25 = 0;
  faceClassifier = v21->_faceClassifier;
  v21->_faceClassifier = v24;

  if (v21->_faceClassifier)
  {
    v27 = objc_alloc_init(HMIClusteringTaskSummary);
    summary = v21->_summary;
    v21->_summary = v27;

    v21->_lock._os_unfair_lock_opaque = 0;
LABEL_6:
    v29 = v21;
    goto LABEL_10;
  }

  if (error)
  {
    v30 = v25;
    *error = v25;
  }

  HMIErrorLogC(v25);
  v31 = v25;
  *error = v25;

  v29 = 0;
LABEL_10:

  return v29;
}

- (void)mainInsideAutoreleasePool
{
  v34 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = date;

  if ([(HMIHomePersonClusteringTask *)self doImpurePersonCleanup])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      homeUUID = [(HMIHomeTask *)selfCopy homeUUID];
      uUIDString = [homeUUID UUIDString];
      *buf = 138543618;
      v31 = v8;
      v32 = 2112;
      v33 = uUIDString;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Spawning CleanupImpureHomePersonsOperation for %@ before home person clustering", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [HMICleanupImpureHomePersonsOperation alloc];
    homeUUID2 = [(HMIHomeTask *)selfCopy homeUUID];
    dataSource = [(HMIHomePersonClusteringTask *)selfCopy dataSource];
    v14 = [HMICleanupImpureHomePersonsOperation initWithHomeUUID:v11 dataSource:"initWithHomeUUID:dataSource:"];

    [(HMFOperation *)v14 start];
    [(HMICleanupImpureHomePersonsOperation *)v14 waitUntilFinished];
    error = [(HMFOperation *)v14 error];

    v16 = error == 0;
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v23;
        _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@CleanupImpureHomePersonOperation finished successfully", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      error2 = [(HMFOperation *)v14 error];
      *buf = 138543618;
      v31 = v21;
      v32 = 2112;
      v33 = error2;
      _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@CleanupImpureHomePersonOperation finished with error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  objc_initWeak(buf, self);
  dataSource2 = [(HMIHomePersonClusteringTask *)self dataSource];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __56__HMIHomePersonClusteringTask_mainInsideAutoreleasePool__block_invoke;
  v28 = &unk_2787528E0;
  objc_copyWeak(&v29, buf);
  [dataSource2 performCloudPullWithCompletion:?];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

void __56__HMIHomePersonClusteringTask_mainInsideAutoreleasePool__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = 138543618;
        v10 = v8;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error performing cloud pull:%@", &v9, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }

    [WeakRetained _stageZero_expireUnnamedPersons];
  }
}

- (void)_stageZero_expireUnnamedPersons
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching persons", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, selfCopy);
  dataSource = [(HMIHomePersonClusteringTask *)selfCopy dataSource];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke;
  v11 = &unk_278753D20;
  objc_copyWeak(&v12, buf);
  [dataSource fetchAllPersonsWithCompletion:?];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v50 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  v51 = v5;
  if (WeakRetained)
  {
    if (v5)
    {
      v49 = WeakRetained;
      v52 = [v5 na_map:?];
      v8 = objc_autoreleasePoolPush();
      v9 = v49;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v51 count];
        v13 = [v51 count];
        *buf = 138543874;
        v64 = v11;
        v65 = 2048;
        v66 = v12;
        v67 = 2048;
        v68 = v13 - [v52 count];
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched %lu persons (%lu unnamed)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v51;
      v55 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (v55)
      {
        v54 = *v60;
        while (2)
        {
          for (i = 0; i != v55; i = (i + 1))
          {
            if (*v60 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v59 + 1) + 8 * i);
            v16 = [v9 progressBlock];

            if (v16)
            {
              v17 = [v9 progressBlock];
              v17[2](0.0);
            }

            if ([v9 isCancelled])
            {
              v40 = objc_autoreleasePoolPush();
              v41 = v9;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = HMFGetLogIdentifier();
                *buf = 138543362;
                v64 = v43;
                _os_log_impl(&dword_22D12F000, v42, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 0 early because task was canceled", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v40);
              goto LABEL_28;
            }

            v18 = [v15 name];

            if (v18)
            {
              v19 = objc_autoreleasePoolPush();
              v20 = v9;
              v21 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = HMFGetLogIdentifier();
                v23 = [v15 UUID];
                *buf = 138543618;
                v64 = v22;
                v65 = 2112;
                v66 = v23;
                _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Skipping named person with UUID: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v19);
            }

            else
            {
              v24 = [HMIPersonSourceUUIDPair alloc];
              v25 = [v15 UUID];
              v26 = [v9 sourceUUID];
              v27 = [HMIPersonSourceUUIDPair initWithPersonUUID:v24 sourceUUID:"initWithPersonUUID:sourceUUID:"];

              v28 = [v9 personsModelManager];
              v29 = [v9 homeUUID];
              v58 = 0;
              v30 = [v28 equivalencyCellForPerson:? homeUUID:? error:?];
              v31 = v58;

              v56[1] = MEMORY[0x277D85DD0];
              v56[2] = 3221225472;
              v56[3] = __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_237;
              v56[4] = &unk_278755718;
              v56[5] = v9;
              v57 = v52;
              if (([v30 na_any:?] & 1) == 0)
              {
                v32 = objc_autoreleasePoolPush();
                v33 = v9;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v35 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v64 = v35;
                  v65 = 2112;
                  v66 = v15;
                  _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for person: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v32);
                objc_initWeak(buf, v33);
                v36 = [v33 dataSource];
                v37 = MEMORY[0x277CBEB98];
                v38 = [v15 UUID];
                v39 = [v37 setWithObject:?];
                objc_copyWeak(v56, buf);
                [v36 fetchFaceCropsForPersonsWithUUIDs:? completion:?];

                objc_destroyWeak(v56);
                objc_destroyWeak(buf);
              }
            }
          }

          v55 = [obj countByEnumeratingWithState:? objects:? count:?];
          if (v55)
          {
            continue;
          }

          break;
        }
      }

      [v9 _stageOne_fetchFaceCrops];
LABEL_28:

      v7 = v49;
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v7;
      v46 = v7;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        v64 = v48;
        v65 = 2112;
        v66 = v50;
        _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_ERROR, "%{public}@Error fetching persons:%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      [v46 cancelWithError:?];
      v7 = v45;
    }
  }
}

id __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_234(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];

  if (v3)
  {
    v3 = [v2 UUID];
  }

  return v3;
}

uint64_t __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_237(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUUID];
  v5 = [*(a1 + 32) sourceUUID];
  v6 = [v4 hmf_isEqualToUUID:?];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v3 personUUID];
    v9 = [v7 containsObject:?];
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1u | ((v6 & 1) == 0);
}

void __62__HMIHomePersonClusteringTask__stageZero_expireUnnamedPersons__block_invoke_240(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      if ([v5 count])
      {
        v8 = [WeakRetained personCreatedDateFromFaceCrops:?];
        [v8 timeIntervalSinceNow];
        v10 = v9;
        if (v9 < -864000.0)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = WeakRetained;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            v15 = [*(a1 + 32) UUID];
            v26 = 138543874;
            v27 = v14;
            v28 = 2112;
            v29 = v15;
            v30 = 2048;
            v31 = -v10;
            _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting unnamed person %@ (age = %f seconds)", &v26, 0x20u);
          }

          objc_autoreleasePoolPop(v11);
          [v12 removePerson:?];
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = WeakRetained;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [*(a1 + 32) UUID];
          v26 = 138543618;
          v27 = v24;
          v28 = 2112;
          v29 = v25;
          _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_INFO, "%{public}@Deleting unnamed person %@ (0 face crops)", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        [v22 removePerson:?];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 32);
        v26 = 138543874;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = *&v6;
        _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error fetching face crops for person:%@, error:%@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }
}

- (void)_stageOne_fetchFaceCrops
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 1 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    objc_initWeak(buf, self);
    dataSource = [(HMIHomePersonClusteringTask *)self dataSource];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __55__HMIHomePersonClusteringTask__stageOne_fetchFaceCrops__block_invoke;
    v11 = &unk_278753D20;
    objc_copyWeak(&v12, buf);
    [dataSource fetchAllUnassociatedFaceCropsWithCompletion:?];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __55__HMIHomePersonClusteringTask__stageOne_fetchFaceCrops__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _stageTwo_fetchFaceprints:?];
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
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error fetching face crops:%@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [v10 cancelWithError:?];
    }
  }
}

- (void)_stageTwo_fetchFaceprints:(id)faceprints
{
  v16 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 2 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = [faceprintsCopy na_map:?];
    objc_initWeak(buf, self);
    dataSource = [(HMIHomePersonClusteringTask *)self dataSource];
    v11 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v13, buf);
    v12 = faceprintsCopy;
    [dataSource fetchFaceprintsForFaceCropsWithUUIDs:v11 completion:{3221225472, __57__HMIHomePersonClusteringTask__stageTwo_fetchFaceprints___block_invoke_2, &unk_278754268}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __57__HMIHomePersonClusteringTask__stageTwo_fetchFaceprints___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      [WeakRetained _stageThree_generateFaceprintsForFaceCrops:? existingFaceprints:?];
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
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error fetching faceprints:%@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [v10 cancelWithError:?];
    }
  }
}

- (void)_stageThree_generateFaceprintsForFaceCrops:(id)crops existingFaceprints:(id)faceprints
{
  v61 = *MEMORY[0x277D85DE8];
  cropsCopy = crops;
  faceprintsCopy = faceprints;
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v9;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 3 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    selfCopy2 = self;
    date = [MEMORY[0x277CBEAA8] date];
    v47 = objc_alloc_init(HMIFaceprinter);
    v48 = [MEMORY[0x277CBEB58] set];
    v10 = [cropsCopy count];
    allObjects = [cropsCopy allObjects];
    v46 = vcvtpd_s64_f64(v10 / 100.0) | 0x4059000000000000;
    if (v46 < 1)
    {
      v32 = 0;
LABEL_20:
      v12 = v32;
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:?];
      summary = [(HMIHomePersonClusteringTask *)selfCopy2 summary];
      [summary setFaceprintingDuration:?];

      allObjects2 = [v48 allObjects];
      [(HMIHomePersonClusteringTask *)selfCopy2 _stageFour_clusterFaceprints:?];
    }

    else
    {
      v11 = 0;
      v12 = 0;
      while (![(HMIHomePersonClusteringTask *)selfCopy2 isCancelled])
      {
        [allObjects count];
        v13 = MEMORY[0x277CBEB98];
        v14 = [allObjects subarrayWithRange:?];
        v53 = [v13 setWithArray:?];

        v56 = v12;
        v15 = [HMIFaceprinter updatedFaceprintsForFaceCrops:v47 withExistingFaceprints:"updatedFaceprintsForFaceCrops:withExistingFaceprints:error:" error:?];
        v50 = v56;

        if (!v15)
        {
          v40 = objc_autoreleasePoolPush();
          v41 = selfCopy2;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = HMFGetLogIdentifier();
            *buf = 138543618;
            v58 = v43;
            v59 = 2112;
            v60 = v50;
            _os_log_impl(&dword_22D12F000, v42, OS_LOG_TYPE_ERROR, "%{public}@Error faceprinting face crops:%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v40);
          [(HMFOperation *)v41 cancelWithError:?];

          v12 = v50;
          goto LABEL_27;
        }

        allAtCurrentVersion = [v15 allAtCurrentVersion];
        [v48 unionSet:?];
        createdAtCurrentVersion = [v15 createdAtCurrentVersion];
        if ([createdAtCurrentVersion count])
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy2;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [createdAtCurrentVersion count];
            *buf = 138543618;
            v58 = v21;
            v59 = 2048;
            v60 = v22;
            _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_INFO, "%{public}@Storing %lu newly created faceprints", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          objc_initWeak(buf, v19);
          dataSource = [(HMIHomePersonClusteringTask *)v19 dataSource];
          v54[1] = MEMORY[0x277D85DD0];
          v54[2] = 3221225472;
          v54[3] = __93__HMIHomePersonClusteringTask__stageThree_generateFaceprintsForFaceCrops_existingFaceprints___block_invoke;
          v54[4] = &unk_2787528E0;
          objc_copyWeak(&v55, buf);
          [dataSource addFaceprints:? completion:?];

          objc_destroyWeak(&v55);
          objc_destroyWeak(buf);
        }

        existingAtOtherVersions = [v15 existingAtOtherVersions];
        if ([existingAtOtherVersions count])
        {
          v25 = [existingAtOtherVersions na_map:?];
          v26 = objc_autoreleasePoolPush();
          v27 = selfCopy2;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            v30 = [existingAtOtherVersions count];
            *buf = 138543618;
            v58 = v29;
            v59 = 2048;
            v60 = v30;
            _os_log_impl(&dword_22D12F000, v28, OS_LOG_TYPE_INFO, "%{public}@Removing %lu faceprints from old versions", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
          objc_initWeak(buf, v27);
          dataSource2 = [(HMIHomePersonClusteringTask *)v27 dataSource];
          objc_copyWeak(v54, buf);
          [dataSource2 removeFaceprintsWithUUIDs:? completion:?];

          objc_destroyWeak(v54);
          objc_destroyWeak(buf);
        }

        ++v11;
        v32 = v50;
        v12 = v50;
        if (v11 == v46)
        {
          goto LABEL_20;
        }
      }

      v36 = objc_autoreleasePoolPush();
      v37 = selfCopy2;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v39;
        _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 3 loop early because task was canceled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v36);
    }

LABEL_27:
  }
}

void __93__HMIHomePersonClusteringTask__stageThree_generateFaceprintsForFaceCrops_existingFaceprints___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error saving new faceprints:%@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __93__HMIHomePersonClusteringTask__stageThree_generateFaceprintsForFaceCrops_existingFaceprints___block_invoke_251(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error removing faceprints from old versions:%@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_stageFour_clusterFaceprints:(id)faceprints
{
  v78 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  if ([(HMIHomePersonClusteringTask *)self isCancelled])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Exiting stage 4 early because task was canceled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_39;
  }

  v71 = [HMIFaceUtilities faceObservationsFromFaceprintsForClustering:?];
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v73 = v12;
    v74 = 2048;
    v75 = [v71 count];
    _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Number of faceprints to cluster: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [v71 count];
  summary = [(HMIHomePersonClusteringTask *)selfCopy2 summary];
  [summary setNumberOfFaceprintsClustered:?];

  date = [MEMORY[0x277CBEAA8] date];
  v15 = [HMIGreedyClustering getClustersWithFaces:"getClustersWithFaces:error:" error:?];
  v16 = 0;
  date2 = [MEMORY[0x277CBEAA8] date];
  v64 = date;
  [date2 timeIntervalSinceDate:?];
  summary2 = [(HMIHomePersonClusteringTask *)selfCopy2 summary];
  [summary2 setClusteringDuration:?];

  v65 = v15;
  if (!v15)
  {
    v55 = objc_autoreleasePoolPush();
    v56 = selfCopy2;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v58;
      v74 = 2112;
      v75 = v16;
      _os_log_impl(&dword_22D12F000, v57, OS_LOG_TYPE_ERROR, "%{public}@Clustering error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v55);
    [(HMFOperation *)v56 cancelWithError:?];
    goto LABEL_38;
  }

  v63 = faceprintsCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy2;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [v15 count];
    *buf = 138543618;
    v73 = v22;
    v74 = 2048;
    v75 = v23;
    _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_INFO, "%{public}@Number of clusters: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  [v15 count];
  summary3 = [(HMIHomePersonClusteringTask *)v20 summary];
  [summary3 setNumberOfClusters:?];

  obj = v15;
  v25 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (!v25)
  {
LABEL_33:

    faceprintsCopy = v63;
    [HMIHomePersonClusteringTask _stageFive_associateFaceCropsWithClusterMapping:v20 faceprints:"_stageFive_associateFaceCropsWithClusterMapping:faceprints:"];
    goto LABEL_37;
  }

  v26 = v25;
  v27 = MEMORY[0];
LABEL_12:
  v28 = 0;
  while (1)
  {
    if (MEMORY[0] != v27)
    {
      objc_enumerationMutation(obj);
    }

    v29 = *(8 * v28);
    objects = [v29 objects];
    v31 = [objects count];

    if (v31 > 9)
    {
      break;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = v20;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = HMFGetLogIdentifier();
      objects2 = [v29 objects];
      v37 = [objects2 count];
      *buf = 138543874;
      v73 = v35;
      v74 = 2048;
      v75 = v37;
      v76 = 1024;
      v77 = 10;
      _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Cluster of size %lu beneath threshold of %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v32);
LABEL_25:
    if (v26 == ++v28)
    {
      v26 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (v26)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  v38 = v26;
  v39 = v27;
  v40 = [HMIGreedyClustering centermostFaceprintInCluster:"centermostFaceprintInCluster:faceObservations:" faceObservations:?];
  personsModelManager = [(HMIHomePersonClusteringTask *)v20 personsModelManager];
  v42 = v20;
  homeUUID = [(HMIHomeTask *)v20 homeUUID];
  v44 = [personsModelManager predictHomePersonFromFaceObservation:? homeUUID:? error:?];
  v45 = v16;
  v46 = v16;
  v16 = v45;

  if (v44)
  {
    confidence = [v44 confidence];
    [confidence floatValue];
    v49 = v48;

    if (v49 > 0.83)
    {
      context = objc_autoreleasePoolPush();
      v50 = v42;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v66 = HMFGetLogIdentifier();
        v67 = v40;
        personUUID = [v44 personUUID];
        *buf = 138543618;
        v73 = v66;
        v74 = 2112;
        v75 = personUUID;
        v53 = personUUID;
        _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_INFO, "%{public}@Assigning cluster to existing person with UUID: %@", buf, 0x16u);

        v40 = v67;
      }

      objc_autoreleasePoolPop(context);
      personUUID2 = [v44 personUUID];
      [dictionary setObject:? forKeyedSubscript:?];
    }

    v20 = v42;
    v27 = v39;
    v26 = v38;
    goto LABEL_25;
  }

  if ([v16 code] == 1037)
  {

    v20 = v42;
    goto LABEL_33;
  }

  v59 = objc_autoreleasePoolPush();
  v60 = v42;
  v61 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = HMFGetLogIdentifier();
    *buf = 138543618;
    v73 = v62;
    v74 = 2112;
    v75 = v16;
    _os_log_impl(&dword_22D12F000, v61, OS_LOG_TYPE_ERROR, "%{public}@Face prediction error:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v59);
  [(HMFOperation *)v60 cancelWithError:?];

  faceprintsCopy = v63;
LABEL_37:

LABEL_38:
LABEL_39:
}

- (void)_stageFive_associateFaceCropsWithClusterMapping:(id)mapping faceprints:(id)faceprints
{
  v37 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  faceprintsCopy = faceprints;
  v8 = dispatch_group_create();
  v9 = [MEMORY[0x277CBEB58] set];
  v31 = MEMORY[0x277D85DD0];
  v10 = faceprintsCopy;
  v32 = v10;
  selfCopy = self;
  v11 = v8;
  v34 = v11;
  v12 = v9;
  [mappingCopy enumerateKeysAndObjectsUsingBlock:?];
  v13 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    [(HMFOperation *)self cancelWithError:?];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v18;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Finished calls to associateFaceCropsWithUUIDs", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    os_unfair_lock_lock_with_options();
    v19 = MEMORY[0x277CBEA60];
    allObjects = [v12 allObjects];
    v14 = [v19 arrayWithArray:?];

    os_unfair_lock_unlock(&selfCopy2->_lock);
    if (([v14 hmf_isEmpty] & 1) == 0)
    {
      string = [MEMORY[0x277CCAB68] string];
      [string appendFormat:objc_msgSend(v14, "count")];
      v22 = MEMORY[0x277CCACA8];
      [v14 count];
      v23 = [v14 subarrayWithRange:?];
      v24 = [v23 componentsJoinedByString:?];
      v25 = [v14 count];
      v26 = &stru_284057FB8;
      if (v25 > 3)
      {
        v26 = @" ...";
      }

      v27 = [v22 stringWithFormat:v24, v26, v31, 3221225472, __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke, &unk_278755768, v10, selfCopy, v11];

      [string appendString:?];
      [string appendString:?];
      v28 = MEMORY[0x277CCA9B8];
      v29 = [string copy];
      v30 = [v28 hmiPrivateErrorWithCode:? description:?];

      [(HMFOperation *)selfCopy2 cancelWithError:?];
    }

    [(HMIHomePersonClusteringTask *)selfCopy2 finish];
  }
}

void __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v8 = [v5 objects];
  location[1] = MEMORY[0x277D85DD0];
  location[2] = 3221225472;
  location[3] = __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_2;
  location[4] = &unk_278753790;
  v20 = *(a1 + 32);
  v9 = [v8 na_map:?];
  v10 = [v7 setWithArray:?];

  v11 = [*(a1 + 40) summary];
  [v11 numberOfUnknownFaceprintsAssociated];
  [v10 count];
  v12 = [*(a1 + 40) summary];
  [v12 setNumberOfUnknownFaceprintsAssociated:?];

  dispatch_group_enter(*(a1 + 48));
  objc_initWeak(location, *(a1 + 40));
  v13 = [*(a1 + 40) dataSource];
  v14 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v18, location);
  v15 = v6;
  v16 = *(a1 + 56);
  v17 = *(a1 + 48);
  [v13 associateFaceCropsWithUUIDs:v14 toPersonWithUUID:3221225472 forSource:__90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_3 completion:&unk_278755740];

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
}

id __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 intValue];
  v3 = [v2 objectAtIndex:?];
  v4 = [v3 faceCropUUID];

  return v4;
}

void __90__HMIHomePersonClusteringTask__stageFive_associateFaceCropsWithClusterMapping_faceprints___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = *(a1 + 32);
        v10 = 138543874;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        v14 = 2112;
        v15 = v3;
        _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error associating face crops with person (%@): %@", &v10, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      os_unfair_lock_lock_with_options();
      [*(a1 + 40) addObject:?];
      os_unfair_lock_unlock(v6 + 88);
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)finish
{
  date = [MEMORY[0x277CBEAA8] date];
  startTime = [(HMIHomePersonClusteringTask *)self startTime];
  [date timeIntervalSinceDate:?];
  summary = [(HMIHomePersonClusteringTask *)self summary];
  [summary setTotalDuration:?];

  error = [(HMFOperation *)self error];
  summary2 = [(HMIHomePersonClusteringTask *)self summary];
  [summary2 setError:?];

  summary3 = [(HMIHomePersonClusteringTask *)self summary];
  [HMIAnalytics sendEventForClusteringTask:?];

  v9.receiver = self;
  v9.super_class = HMIHomePersonClusteringTask;
  [(HMFOperation *)&v9 finish];
}

- (id)personCreatedDateFromFaceCrops:(id)crops
{
  cropsCopy = crops;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  [cropsCopy na_each:?];
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

void __62__HMIHomePersonClusteringTask_personCreatedDateFromFaceCrops___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v11 = v3;
  if (!v4 || ([v3 dateCreated], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "compare:"), v5, v7 = v11, v6 == -1))
  {
    v8 = [v11 dateCreated];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = v11;
  }
}

- (void)removePerson:(id)person
{
  personCopy = person;
  v5 = MEMORY[0x277CBEB98];
  uUID = [personCopy UUID];
  v7 = [v5 setWithObject:?];

  objc_initWeak(&location, self);
  dataSource = [(HMIHomePersonClusteringTask *)self dataSource];
  v11 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v12 = v9;
  v10 = personCopy;
  v13 = v10;
  [dataSource removePersonsWithUUIDs:v11 completion:{3221225472, __44__HMIHomePersonClusteringTask_removePerson___block_invoke, &unk_2787557B8}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __44__HMIHomePersonClusteringTask_removePerson___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
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
        v10 = *(a1 + 32);
        v12 = 138543874;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error removing person with UUID:%@, error:%@", &v12, 0x20u);
LABEL_7:
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully removed person %@", &v12, 0x16u);

      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v5);
  }
}

@end