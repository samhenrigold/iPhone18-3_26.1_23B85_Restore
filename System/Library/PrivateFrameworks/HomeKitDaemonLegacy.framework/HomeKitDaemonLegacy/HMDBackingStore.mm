@interface HMDBackingStore
+ (NSSet)allowedTypes;
+ (NSSet)deeplyProblematicObjectTypes;
+ (NSSet)internalAllowedTypes;
+ (id)_saveToLocalStoreWithReason:(id)reason homeManager:(id)manager shouldIncrementGenerationCounter:(BOOL)counter backingStore:(id)store;
+ (id)currentDevice;
+ (id)flushBackingStore;
+ (id)logCategory;
+ (id)resetBackingStore;
+ (void)saveToPersistentStoreWithReason:(id)reason homeManager:(id)manager shouldIncrementGenerationCounter:(BOOL)counter backingStore:(id)store completionHandler:(id)handler;
- (HMDBackingStore)initWithUUID:(id)d;
- (HMDBackingStore)initWithUUID:(id)d home:(id)home;
- (HMDBackingStore)initWithUUID:(id)d homeManager:(id)manager;
- (HMDBackingStore)initWithUUID:(id)d homeManager:(id)manager home:(id)home dataSource:(id)source;
- (HMDBackingStoreObjectProtocol)delegate;
- (HMDHome)home;
- (HMDHomeManager)homeManager;
- (NSString)activeControllerKeyUsername;
- (id)__fetchWithGroup:(id)group uuids:(id)uuids error:(id *)error;
- (id)_saveHomeDataInOperationWithControllerUserName:(uint64_t)name incrementGeneration:(void *)generation reason:;
- (id)backingStoreOperationQueue;
- (id)createBackingStoreLogAddTransactionOperationWithTransaction:(id)transaction;
- (id)createBackingStoreOperation;
- (id)createHomeObjectLookupWithHome:(id)home;
- (id)dataForPersistentStoreIncrementingGeneration:(BOOL)generation reason:(id)reason;
- (id)dataSource;
- (id)localBackingStore;
- (id)logIdentifier;
- (id)transaction:(id)transaction options:(id)options;
- (void)commit:(id)commit run:(BOOL)run save:(BOOL)save archiveInline:(BOOL)inline completionHandler:(id)handler;
- (void)saveToPersistentStoreWithReason:(id)reason incrementGeneration:(BOOL)generation;
- (void)submit:(id)submit;
- (void)submitBlock:(id)block;
@end

@implementation HMDBackingStore

- (HMDBackingStoreObjectProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (NSString)activeControllerKeyUsername
{
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  activeControllerPairingIdentifier = [systemStore activeControllerPairingIdentifier];
  v4 = objc_msgSend_copy(activeControllerPairingIdentifier);

  return v4;
}

- (id)dataForPersistentStoreIncrementingGeneration:(BOOL)generation reason:(id)reason
{
  generationCopy = generation;
  reasonCopy = reason;
  homeManager = [(HMDBackingStore *)self homeManager];
  v8 = [homeManager _dataForPersistentStoreIncrementingGeneration:generationCopy reason:reasonCopy];

  return v8;
}

- (id)createHomeObjectLookupWithHome:(id)home
{
  homeCopy = home;
  v4 = [[HMDHomeObjectLookup alloc] initWithHome:homeCopy];

  return v4;
}

- (id)backingStoreOperationQueue
{
  v2 = +[HMDBackingStoreSingleton sharedInstance];
  queue = [v2 queue];

  return queue;
}

- (id)localBackingStore
{
  v2 = +[HMDBackingStoreSingleton sharedInstance];
  local = [v2 local];

  return local;
}

- (id)createBackingStoreOperation
{
  v2 = objc_alloc_init(HMDBackingStoreOperation);

  return v2;
}

- (id)createBackingStoreLogAddTransactionOperationWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = [[HMDBackingStoreLogAddTransactionOperation alloc] initWithTransaction:transactionCopy];

  return v4;
}

- (id)__fetchWithGroup:(id)group uuids:(id)uuids error:(id *)error
{
  groupCopy = group;
  uuidsCopy = uuids;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__164333;
  v26 = __Block_byref_object_dispose__164334;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HMDBackingStore___fetchWithGroup_uuids_error___block_invoke;
  aBlock[3] = &unk_279730F18;
  v21 = &v22;
  v11 = array;
  v19 = v11;
  v12 = groupCopy;
  v20 = v12;
  v13 = _Block_copy(aBlock);
  local = [(HMDBackingStore *)self local];
  [local _fetchRecordsWithGroupID:objc_msgSend(v12 uuids:"groupID") callback:{uuidsCopy, v13}];

  v15 = v23[5];
  if (v15)
  {
    if (error)
    {
      *error = v15;
    }

    v11 = 0;
  }

  v16 = v11;

  _Block_object_dispose(&v22, 8);

  return v16;
}

BOOL __48__HMDBackingStore___fetchWithGroup_uuids_error___block_invoke(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v14)
  {
    v16 = *(a1[6] + 8);
    v17 = v14;
    v18 = *(v16 + 40);
    *(v16 + 40) = v17;
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:0];
    v25 = a1[4];
    v19 = [HMDBackingStoreCacheFetchRecordResult alloc];
    v20 = a1[5];
    v21 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v18];
    v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
    v23 = [(HMDBackingStoreCacheFetchRecordResult *)v19 initWithGroup:v20 record:v21 data:v12 encoding:a3 uuid:v22];
    [v25 addObject:v23];
  }

  return v15 == 0;
}

- (void)submitBlock:(id)block
{
  blockCopy = block;
  v5 = [[HMDBackingStoreOperation alloc] initWithResultBlock:blockCopy];

  [(HMDBackingStore *)self submit:v5];
}

- (void)saveToPersistentStoreWithReason:(id)reason incrementGeneration:(BOOL)generation
{
  generationCopy = generation;
  v39 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  dataSource = [(HMDBackingStore *)&self->super.super.isa dataSource];
  backingStoreOperationQueue = [dataSource backingStoreOperationQueue];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  operations = [backingStoreOperationQueue operations];
  v8 = [(HMDBackingStoreSaveToPersistentStore *)operations countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(operations);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14 && ([v14 isExecuting] & 1) == 0 && (objc_msgSend(v14, "isFinished") & 1) == 0 && (objc_msgSend(v14, "incrementGeneration") | !generationCopy) == 1)
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          v17 = reasonCopy;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = HMFGetLogIdentifier();
            [v14 incrementGeneration];
            v22 = HMFBooleanToString();
            v23 = HMFBooleanToString();
            *buf = 138544130;
            v31 = v21;
            v32 = 2112;
            v33 = reasonCopy;
            v34 = 2112;
            v35 = v22;
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Not adding operation for %@ - existing saveOperation increments generation %@, current saveOperation increments generation %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v18);
          goto LABEL_19;
        }
      }

      v9 = [(HMDBackingStoreSaveToPersistentStore *)operations countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [HMDBackingStoreSaveToPersistentStore alloc];
  homeManager = [(HMDBackingStore *)self homeManager];
  v17 = reasonCopy;
  operations = [(HMDBackingStoreSaveToPersistentStore *)v15 initWithHomeManager:homeManager reason:reasonCopy incrementGeneration:generationCopy];

  [(HMDBackingStoreOperation *)operations setStore:self];
  [(HMDBackingStoreSaveToPersistentStore *)operations setQueuePriority:-4];
  [backingStoreOperationQueue addOperation:operations];
LABEL_19:
}

- (id)dataSource
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 9);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)logIdentifier
{
  uuid = [(HMDBackingStore *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)submit:(id)submit
{
  submitCopy = submit;
  [submitCopy setStore:self];
  dataSource = [(HMDBackingStore *)&self->super.super.isa dataSource];
  backingStoreOperationQueue = [dataSource backingStoreOperationQueue];
  [backingStoreOperationQueue addOperation:submitCopy];
}

- (void)commit:(id)commit run:(BOOL)run save:(BOOL)save archiveInline:(BOOL)inline completionHandler:(id)handler
{
  saveCopy = save;
  v54 = *MEMORY[0x277D85DE8];
  commitCopy = commit;
  aBlock = handler;
  if ([commitCopy committed])
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      options = [commitCopy options];
      *buf = 138543618;
      v49 = v16;
      v50 = 2112;
      v51 = options;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@double-committing a transaction probably indicates a bad state (ignoring this commit) for %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    [commitCopy setCommitted:1];
    objects = [commitCopy objects];
    hmf_isEmpty = [objects hmf_isEmpty];

    if (hmf_isEmpty)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        options2 = [commitCopy options];
        *buf = 138543618;
        v49 = v23;
        v50 = 2112;
        v51 = options2;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Rejecting empty transaction: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = _Block_copy(aBlock);
      if (v25)
      {
        v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v25[2](v25, v26);
      }
    }

    else
    {
      dataSource = [(HMDBackingStore *)&self->super.super.isa dataSource];
      v36 = dataSource;
      if (saveCopy)
      {
        [dataSource createBackingStoreLogAddTransactionOperationWithTransaction:commitCopy];
      }

      else
      {
        [dataSource createBackingStoreOperation];
      }
      v28 = ;
      objects2 = [commitCopy objects];
      [HMDBackingStoreTransactionBlock sort:objects2];

      v30 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        options3 = [commitCopy options];
        *buf = 138543874;
        v49 = v33;
        v50 = 2114;
        v51 = v28;
        v52 = 2114;
        v53 = options3;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Submitting operation: %{public}@ (%{public}@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      objc_initWeak(buf, selfCopy3);
      objc_initWeak(&location, v28);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __67__HMDBackingStore_commit_run_save_archiveInline_completionHandler___block_invoke;
      v39[3] = &unk_279730EF0;
      objc_copyWeak(&v42, &location);
      objc_copyWeak(&v43, buf);
      v40 = commitCopy;
      v44 = saveCopy;
      runCopy = run;
      v41 = aBlock;
      inlineCopy = inline;
      [v28 setResultBlock:v39];
      [v28 setStore:selfCopy3];
      backingStoreOperationQueue = [v37 backingStoreOperationQueue];
      [backingStoreOperationQueue addOperation:v28];

      objc_destroyWeak(&v43);
      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

void __67__HMDBackingStore_commit_run_save_archiveInline_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v197 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = v4;
  if (v4)
  {
    v161 = [v4 homeManager];
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [WeakRetained operationUUID];
      *buf = 138543618;
      v186 = v9;
      v187 = 2112;
      v188 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[%@] Starting operation", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) dumpWithVerbosity:objc_msgSend(v161 prefix:"isDataSyncInProgress") ^ 1 logType:{&stru_286509E58, 1}];
    v11 = [v7 home];
    v159 = v7;
    v12 = objc_loadWeakRetained(v7 + 9);
    v158 = [v12 isAtomicSaveFeatureEnabled];
    if (v158)
    {
      if (*(a1 + 65) != 1)
      {
LABEL_114:
        v145 = [WeakRetained operationFinishBlock];
        (v145)[2](v145, v3);

LABEL_115:
        v146 = objc_autoreleasePoolPush();
        v147 = v159;
        v148 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
        {
          v149 = HMFGetLogIdentifier();
          v150 = [WeakRetained operationUUID];
          *buf = 138543618;
          v186 = v149;
          v187 = 2112;
          v188 = v150;
          _os_log_impl(&dword_2531F8000, v148, OS_LOG_TYPE_INFO, "%{public}@[%@] Finished operation", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v146);
        v151 = *(a1 + 40);
        if (v151)
        {
          (*(v151 + 16))(v151, v3);
        }

        v18 = v3;
        goto LABEL_120;
      }

      v157 = [v12 activeControllerKeyUsername];
      if (!v157 && v11)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v7;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v17 = [WeakRetained operationUUID];
          *buf = 138543618;
          v186 = v16;
          v187 = 2112;
          v188 = v17;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%@] No controller found, cannot run transaction again", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

        v19 = [WeakRetained operationFinishBlock];
        v19[2](v19, v18);

        v20 = *(a1 + 40);
        if (v20)
        {
          (*(v20 + 16))(v20, v18);
        }

LABEL_120:

        v3 = v18;
        goto LABEL_121;
      }
    }

    else
    {
      if (*(a1 + 64) == 1)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v7;
        v27 = HMFGetOSLogHandle();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
        if (v3)
        {
          if (v28)
          {
            v29 = HMFGetLogIdentifier();
            v30 = [WeakRetained operationUUID];
            *buf = 138543874;
            v186 = v29;
            v187 = 2112;
            v188 = v30;
            v189 = 2112;
            v190 = v3;
            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@[%@] Error occurred during save: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v25);
          v31 = [v26 local];
          [v31 _rollback];
        }

        else
        {
          if (v28)
          {
            v32 = HMFGetLogIdentifier();
            v33 = [WeakRetained operationUUID];
            *buf = 138543618;
            v186 = v32;
            v187 = 2112;
            v188 = v33;
            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@[%@] Save complete", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
          v31 = [v26 local];
          v34 = [v31 _commit];
        }
      }

      if ((*(a1 + 65) & 1) == 0)
      {
        goto LABEL_115;
      }

      v157 = 0;
    }

    v155 = v5;
    v156 = v12;
    v152 = v11;
    v154 = v3;
    v35 = objc_autoreleasePoolPush();
    v36 = v159;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [WeakRetained operationUUID];
      *buf = 138543618;
      v186 = v38;
      v187 = 2112;
      v188 = v39;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@[%@] Running operation", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v40 = [HMDBackingStoreTransactionActions alloc];
    v41 = [*(a1 + 32) options];
    v42 = [(HMDBackingStoreTransactionActions *)v40 initWithBackingStore:v36 options:v41];

    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v153 = a1;
    obj = [*(a1 + 32) objects];
    v43 = v161;
    v160 = v42;
    v44 = v36;
    v164 = [obj countByEnumeratingWithState:&v181 objects:v196 count:16];
    if (v164)
    {
      v45 = *v182;
      v168 = v36;
      v162 = *v182;
      do
      {
        v46 = 0;
        do
        {
          if (*v182 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v166 = v46;
          v47 = *(*(&v181 + 1) + 8 * v46);
          v165 = objc_autoreleasePoolPush();
          v48 = [v44 local];
          v172 = v47;
          v49 = [v47 change];
          v50 = [v49 uuid];
          v180 = 0;
          v51 = [v48 _fetchRecordWithUUID:v50 root:0 error:&v180];
          v52 = v180;

          v167 = v52;
          if (v52)
          {
            v53 = objc_autoreleasePoolPush();
            v54 = v44;
            v55 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v56 = HMFGetLogIdentifier();
              v57 = [WeakRetained operationUUID];
              *buf = 138543874;
              v186 = v56;
              v187 = 2112;
              v188 = v57;
              v189 = 2112;
              v190 = v52;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unexpected issue when fetching row from cache: %@", buf, 0x20u);

              v45 = v162;
            }

            objc_autoreleasePoolPop(v53);
            v58 = v51;
            v51 = 0;
LABEL_37:

LABEL_38:
            v60 = v165;
            v59 = v166;
            v61 = [v44 lookup];
            v173[0] = MEMORY[0x277D85DD0];
            v173[1] = 3221225472;
            v173[2] = __67__HMDBackingStore_commit_run_save_archiveInline_completionHandler___block_invoke_93;
            v173[3] = &unk_279734D88;
            v173[4] = v44;
            v174 = WeakRetained;
            v175 = v43;
            [v61 lookUpAndApplyObjectChange:v172 previous:v51 result:v42 completionHandler:v173];

            goto LABEL_39;
          }

          if (!v51)
          {
            goto LABEL_38;
          }

          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v62 = [v172 change];
          v58 = [v62 setProperties];

          v63 = [v58 countByEnumeratingWithState:&v176 objects:v195 count:16];
          if (!v63)
          {
            v42 = v160;
            v43 = v161;
            goto LABEL_37;
          }

          v64 = v63;
          v65 = 0;
          v66 = *v177;
          v169 = *v177;
          v170 = v58;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v177 != v66)
              {
                objc_enumerationMutation(v58);
              }

              v68 = *(*(&v176 + 1) + 8 * i);
              if ([v51 propertyIsReadOnly:{v68, v152}])
              {
                v69 = objc_autoreleasePoolPush();
                v70 = v44;
                v71 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  v72 = HMFGetLogIdentifier();
                  v73 = [WeakRetained operationUUID];
                  v74 = [v172 change];
                  *buf = 138544386;
                  v186 = v72;
                  v187 = 2112;
                  v188 = v73;
                  v189 = 2112;
                  v190 = v68;
                  v191 = 2112;
                  v192 = v74;
                  v193 = 2112;
                  v194 = v51;
                  _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_ERROR, "%{public}@[%@] Attempting to set field %@ on %@ (now read-only in %@)", buf, 0x34u);

                  v66 = v169;
                  v44 = v168;

                  v58 = v170;
                }

                objc_autoreleasePoolPop(v69);
                v65 = 1;
              }

              if (([v51 propertyIsAvailable:v68] & 1) == 0)
              {
                v75 = objc_autoreleasePoolPush();
                v76 = v44;
                v77 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  v78 = HMFGetLogIdentifier();
                  v79 = [WeakRetained operationUUID];
                  v80 = [v172 change];
                  *buf = 138544386;
                  v186 = v78;
                  v187 = 2112;
                  v188 = v79;
                  v189 = 2112;
                  v190 = v68;
                  v191 = 2112;
                  v192 = v80;
                  v193 = 2112;
                  v194 = v51;
                  _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_ERROR, "%{public}@[%@] Attempting to set field %@ on %@ (no longer available in %@)", buf, 0x34u);

                  v44 = v168;
                  v66 = v169;

                  v58 = v170;
                }

                objc_autoreleasePoolPop(v75);
                v65 = 1;
              }
            }

            v64 = [v58 countByEnumeratingWithState:&v176 objects:v195 count:16];
          }

          while (v64);

          if ((v65 & 1) == 0)
          {
            v42 = v160;
            v43 = v161;
            v45 = v162;
            goto LABEL_38;
          }

          v81 = objc_autoreleasePoolPush();
          v82 = v44;
          v83 = HMFGetOSLogHandle();
          v42 = v160;
          v43 = v161;
          v45 = v162;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = HMFGetLogIdentifier();
            v85 = [WeakRetained operationUUID];
            *buf = 138543618;
            v186 = v84;
            v187 = 2112;
            v188 = v85;
            _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_ERROR, "%{public}@[%@] Calling response handler with invalid parameter", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v81);
          v86 = [v172 message];
          v87 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
          [v86 respondWithError:v87];

          v60 = v165;
          v59 = v166;
LABEL_39:

          objc_autoreleasePoolPop(v60);
          v46 = v59 + 1;
        }

        while (v46 != v164);
        v88 = [obj countByEnumeratingWithState:&v181 objects:v196 count:16];
        v164 = v88;
      }

      while (v88);
    }

    [(HMDBackingStoreTransactionActions *)v42 invokePostApplyActions];
    v89 = objc_autoreleasePoolPush();
    v90 = v44;
    v91 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      v92 = HMFGetLogIdentifier();
      v93 = [WeakRetained operationUUID];
      *buf = 138543874;
      v186 = v92;
      v187 = 2112;
      v188 = v93;
      v189 = 2112;
      v190 = v42;
      _os_log_impl(&dword_2531F8000, v91, OS_LOG_TYPE_INFO, "%{public}@[%@] Saving transaction with actions: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v89);
    v94 = [(HMDBackingStoreTransactionActions *)v42 local];
    v95 = v42;
    v3 = v154;
    v5 = v155;
    v11 = v152;
    a1 = v153;
    v12 = v156;
    if (v94 && ![(HMDBackingStoreTransactionActions *)v95 changed])
    {
      if (v158)
      {
        v98 = objc_autoreleasePoolPush();
        v99 = v90;
        v100 = HMFGetOSLogHandle();
        v101 = os_log_type_enabled(v100, OS_LOG_TYPE_INFO);
        if (v157)
        {
          if (v101)
          {
            v102 = HMFGetLogIdentifier();
            v103 = [WeakRetained operationUUID];
            *buf = 138543618;
            v186 = v102;
            v187 = 2112;
            v188 = v103;
            _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_INFO, "%{public}@[%@] Saving home data archive for local actions", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v98);
          v104 = [(HMDBackingStore *)v99 _saveHomeDataInOperationWithControllerUserName:v157 incrementGeneration:0 reason:@"LocalActions"];

          v3 = v104;
        }

        else
        {
          if (v101)
          {
            v139 = HMFGetLogIdentifier();
            v140 = [WeakRetained operationUUID];
            *buf = 138543618;
            v186 = v139;
            v187 = 2112;
            v188 = v140;
            _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_INFO, "%{public}@[%@] No controller key, cannot save home data archive for local actions", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v98);
        }
      }

      else
      {
        [v161 _saveToPersistentStore:0 reason:@"LocalActions"];
      }
    }

    else
    {
      if (![(HMDBackingStoreTransactionActions *)v95 changed]&& ![(HMDBackingStoreTransactionOptions *)v95 mustPush])
      {
        goto LABEL_111;
      }

      if ([(HMDBackingStoreTransactionOptions *)v95 source]== 1)
      {
        if (v11)
        {
          v96 = [v11 zoneID];
          v97 = [v96 UUIDString];
        }

        else
        {
          v97 = 0;
        }

        v105 = [v161 syncManager];
        [v105 resetCloudPushTimer:v97];
      }

      if (v11)
      {
        v95 = v160;
        if ([(HMDBackingStoreTransactionActions *)v160 saveToSharedUserAccount])
        {
          v106 = [(HMDBackingStoreTransactionOptions *)v160 label];
          v107 = [*(v153 + 32) options];
          [v11 saveSharedHomeToAccountWithReason:v106 postSyncNotification:0 options:v107];
        }

        else
        {
          v126 = objc_autoreleasePoolPush();
          v127 = v90;
          v128 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            v129 = HMFGetLogIdentifier();
            v130 = [WeakRetained operationUUID];
            *buf = 138543618;
            v186 = v129;
            v187 = 2112;
            v188 = v130;
            _os_log_impl(&dword_2531F8000, v128, OS_LOG_TYPE_INFO, "%{public}@[%@] Saving home data in transaction", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v126);
          if (v158 && *(v153 + 66) == 1)
          {
            v131 = objc_autoreleasePoolPush();
            v132 = v127;
            v133 = HMFGetOSLogHandle();
            v134 = v133;
            if (v157)
            {
              if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
              {
                v135 = HMFGetLogIdentifier();
                v136 = [WeakRetained operationUUID];
                *buf = 138543618;
                v186 = v135;
                v187 = 2112;
                v188 = v136;
                _os_log_impl(&dword_2531F8000, v134, OS_LOG_TYPE_INFO, "%{public}@[%@] Saving home data archive for with home actions", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v131);
              v95 = v160;
              v137 = [(HMDBackingStoreTransactionOptions *)v160 label];
              v138 = [(HMDBackingStore *)v132 _saveHomeDataInOperationWithControllerUserName:v157 incrementGeneration:1 reason:v137];

              v3 = v138;
            }

            else
            {
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                v141 = HMFGetLogIdentifier();
                v142 = [WeakRetained operationUUID];
                *buf = 138543618;
                v186 = v141;
                v187 = 2112;
                v188 = v142;
                _os_log_impl(&dword_2531F8000, v134, OS_LOG_TYPE_ERROR, "%{public}@[%@] No controller key, cannot save home data archive for with home actions, home data will need to be reset", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v131);
              v95 = v160;
            }

            v106 = [(HMDBackingStoreTransactionOptions *)v95 label];
            [v11 performPostSaveActionsWithReason:v106];
          }

          else
          {
            v95 = v160;
            v106 = [(HMDBackingStoreTransactionOptions *)v160 label];
            [v11 saveWithReason:v106 postSyncNotification:0 objectChange:1];
          }
        }

LABEL_111:
        if ([(HMDBackingStoreTransactionActions *)v95 saveToAssistant])
        {
          v143 = [*(v153 + 32) options];
          v144 = [v143 label];
          [v161 assistantSyncDataChanged:v144];
        }

        if (!v158)
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      v108 = objc_autoreleasePoolPush();
      v109 = v90;
      v110 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
      {
        v111 = HMFGetLogIdentifier();
        v112 = [WeakRetained operationUUID];
        *buf = 138543618;
        v186 = v111;
        v187 = 2112;
        v188 = v112;
        _os_log_impl(&dword_2531F8000, v110, OS_LOG_TYPE_INFO, "%{public}@[%@] Saving home manager data in transaction", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v108);
      if (!v157)
      {
        v113 = objc_autoreleasePoolPush();
        v114 = v109;
        v115 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v116 = HMFGetLogIdentifier();
          v117 = [WeakRetained operationUUID];
          *buf = 138543618;
          v186 = v116;
          v187 = 2112;
          v188 = v117;
          _os_log_impl(&dword_2531F8000, v115, OS_LOG_TYPE_ERROR, "%{public}@[%@] No controller key while processing home manager actions", buf, 0x16u);

          v12 = v156;
        }

        objc_autoreleasePoolPop(v113);
      }

      v118 = [HMDHomeSaveRequest alloc];
      v119 = [(HMDBackingStoreTransactionOptions *)v160 label];
      v120 = [(HMDHomeSaveRequest *)v118 initWithReason:v119 information:0 postSyncNotification:0];

      v121 = objc_autoreleasePoolPush();
      v122 = v109;
      v123 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
      {
        v124 = HMFGetLogIdentifier();
        v125 = [WeakRetained operationUUID];
        *buf = 138543874;
        v186 = v124;
        v187 = 2112;
        v188 = v125;
        v189 = 2112;
        v190 = v120;
        _os_log_impl(&dword_2531F8000, v123, OS_LOG_TYPE_INFO, "%{public}@[%@] Submitting save request: %@", buf, 0x20u);

        v12 = v156;
      }

      objc_autoreleasePoolPop(v121);
      [v161 saveWithRequest:v120];
    }

    v95 = v160;
    goto LABEL_111;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [WeakRetained operationUUID];
    *buf = 138543618;
    v186 = v23;
    v187 = 2112;
    v188 = v24;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%@] lost self when running transaction", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
LABEL_121:
}

void __67__HMDBackingStore_commit_run_save_archiveInline_completionHandler___block_invoke_93(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) operationUUID];
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@[%@] Apply Change resulted with error: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) operationUUID];
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v10 = "%{public}@[%@] Apply Change completed";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v14 = *(a1 + 48);
  v15 = [*(a1 + 32) uuid];
  [v14 updateGenerationCounterWithReason:@"Backing store transaction applied" sourceUUID:v15 shouldNotifyClients:1];
}

- (id)_saveHomeDataInOperationWithControllerUserName:(uint64_t)name incrementGeneration:(void *)generation reason:
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  generationCopy = generation;
  WeakRetained = objc_loadWeakRetained(self + 9);
  homeManager = [self homeManager];
  hasValidControllerKeyToSave = [homeManager hasValidControllerKeyToSave];

  v12 = objc_autoreleasePoolPush();
  if (hasValidControllerKeyToSave)
  {
    v13 = [WeakRetained dataForPersistentStoreIncrementingGeneration:name reason:generationCopy];
    v14 = v13;
    if (!v13 || ![v13 length])
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@No home data to save.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      objc_autoreleasePoolPop(v12);
      goto LABEL_18;
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
      *buf = 138543874;
      v43 = v18;
      v44 = 2112;
      v45 = v7;
      v46 = 2112;
      v47 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Controller User Name : [%@], Saving home data size: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    local = [selfCopy2 local];
    v40 = 0;
    [local _insertArchive:v14 identifier:@"homedata" controllerUserName:v7 error:&v40];
    v21 = v40;

    objc_autoreleasePoolPop(v12);
    if (!v21)
    {
      if ((selfCopy2[1] & 1) == 0)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy2;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Will attempt to remove legacy archive", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        homeManager2 = [v23 homeManager];
        v41 = 0;
        v27 = [homeManager2 _removeLegacyHomeArchive:&v41];
        v28 = v41;

        if (v27)
        {
          *(v23 + 8) = 1;
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v39;
            v44 = 2112;
            v45 = v28;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove home data error:%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
        }
      }

LABEL_18:
      v21 = 0;
    }
  }

  else
  {
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@In decryption fail state cannot save.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  return v21;
}

- (id)transaction:(id)transaction options:(id)options
{
  optionsCopy = options;
  transactionCopy = transaction;
  v8 = [[HMDBackingStoreTransactionBlock alloc] initWithBackingStore:self options:optionsCopy label:transactionCopy];

  return v8;
}

- (HMDBackingStore)initWithUUID:(id)d
{
  if (self)
  {
    return [(HMDBackingStore *)self initWithUUID:d homeManager:0 home:0 dataSource:self];
  }

  return self;
}

- (HMDBackingStore)initWithUUID:(id)d home:(id)home
{
  dCopy = d;
  homeCopy = home;
  homeManager = [homeCopy homeManager];
  if (self)
  {
    self = [(HMDBackingStore *)self initWithUUID:dCopy homeManager:homeManager home:homeCopy dataSource:self];
  }

  return self;
}

- (HMDBackingStore)initWithUUID:(id)d homeManager:(id)manager
{
  if (self)
  {
    return [(HMDBackingStore *)self initWithUUID:d homeManager:manager home:0 dataSource:self];
  }

  return self;
}

- (HMDBackingStore)initWithUUID:(id)d homeManager:(id)manager home:(id)home dataSource:(id)source
{
  dCopy = d;
  managerCopy = manager;
  homeCopy = home;
  sourceCopy = source;
  v26.receiver = self;
  v26.super_class = HMDBackingStore;
  v15 = [(HMDBackingStore *)&v26 init];
  if (v15)
  {
    localBackingStore = [sourceCopy localBackingStore];
    local = v15->_local;
    v15->_local = localBackingStore;

    objc_storeStrong(&v15->_uuid, d);
    v18 = objc_alloc(MEMORY[0x277CBC5D0]);
    uUIDString = [dCopy UUIDString];
    v20 = [v18 initWithRecordName:uUIDString];
    root = v15->_root;
    v15->_root = v20;

    objc_storeWeak(&v15->_home, homeCopy);
    objc_storeWeak(&v15->_homeManager, managerCopy);
    objc_storeWeak(&v15->_dataSource, sourceCopy);
    if (homeCopy)
    {
      v22 = [sourceCopy createHomeObjectLookupWithHome:homeCopy];
    }

    else
    {
      if (!managerCopy)
      {
LABEL_7:
        v24 = v15;
        goto LABEL_8;
      }

      v22 = [[HMDHomeManagerObjectLookup alloc] initWithHomeManager:managerCopy];
    }

    lookup = v15->_lookup;
    v15->_lookup = &v22->super;

    goto LABEL_7;
  }

LABEL_8:

  return v15;
}

+ (id)_saveToLocalStoreWithReason:(id)reason homeManager:(id)manager shouldIncrementGenerationCounter:(BOOL)counter backingStore:(id)store
{
  counterCopy = counter;
  v36 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  managerCopy = manager;
  storeCopy = store;
  if (isWatch())
  {
    [managerCopy _saveToPersistentStore:counterCopy reason:reasonCopy];
    v13 = 0;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Running HMDBackingStoreSaveToPersistentStore operation to save.", &v34, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    systemStore = [MEMORY[0x277CFEC78] systemStore];
    activeControllerPairingIdentifier = [systemStore activeControllerPairingIdentifier];
    v20 = objc_msgSend_copy(activeControllerPairingIdentifier);

    if (v20)
    {
      v21 = reasonCopy;
      if (storeCopy)
      {
        WeakRetained = objc_loadWeakRetained(storeCopy + 9);
        activeControllerKeyUsername = [WeakRetained activeControllerKeyUsername];

        if (activeControllerKeyUsername)
        {
          v24 = [(HMDBackingStore *)storeCopy _saveHomeDataInOperationWithControllerUserName:activeControllerKeyUsername incrementGeneration:counterCopy reason:v21];
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = storeCopy;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            v34 = 138543362;
            v35 = v32;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find controller key when trying to save home archive", &v34, 0xCu);
          }

          objc_autoreleasePoolPop(v29);
          v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        }

        v13 = v24;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find controller key when trying to run transaction", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  return v13;
}

+ (void)saveToPersistentStoreWithReason:(id)reason homeManager:(id)manager shouldIncrementGenerationCounter:(BOOL)counter backingStore:(id)store completionHandler:(id)handler
{
  reasonCopy = reason;
  managerCopy = manager;
  storeCopy = store;
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __127__HMDBackingStore_saveToPersistentStoreWithReason_homeManager_shouldIncrementGenerationCounter_backingStore_completionHandler___block_invoke;
  v20[3] = &unk_279730F40;
  v24 = handlerCopy;
  selfCopy = self;
  v21 = reasonCopy;
  v22 = managerCopy;
  counterCopy = counter;
  v23 = storeCopy;
  v16 = handlerCopy;
  v17 = storeCopy;
  v18 = managerCopy;
  v19 = reasonCopy;
  [v17 submitBlock:v20];
}

uint64_t __127__HMDBackingStore_saveToPersistentStoreWithReason_homeManager_shouldIncrementGenerationCounter_backingStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _saveToLocalStoreWithReason:*(a1 + 32) homeManager:*(a1 + 40) shouldIncrementGenerationCounter:*(a1 + 72) backingStore:*(a1 + 48)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

+ (id)currentDevice
{
  v2 = +[HMDAppleAccountManager sharedManager];
  device = [v2 device];

  return device;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36_164420 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36_164420, &__block_literal_global_106_164421);
  }

  v3 = logCategory__hmf_once_v37_164422;

  return v3;
}

uint64_t __30__HMDBackingStore_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v37_164422;
  logCategory__hmf_once_v37_164422 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)resetBackingStore
{
  v2 = +[HMDBackingStoreSingleton sharedInstance];
  resetBackingStore = [v2 resetBackingStore];

  return resetBackingStore;
}

+ (id)flushBackingStore
{
  v2 = +[HMDBackingStoreSingleton sharedInstance];
  flushBackingStore = [v2 flushBackingStore];

  return flushBackingStore;
}

+ (NSSet)internalAllowedTypes
{
  if (internalAllowedTypes_onceToken != -1)
  {
    dispatch_once(&internalAllowedTypes_onceToken, &__block_literal_global_81_164427);
  }

  v3 = internalAllowedTypes__internalAllowedTypes;

  return v3;
}

void __39__HMDBackingStore_internalAllowedTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v4 = +[HMDBackingStore allowedTypes];
  v1 = [v0 setWithSet:v4];
  v2 = [v1 setByAddingObject:objc_opt_class()];
  v3 = internalAllowedTypes__internalAllowedTypes;
  internalAllowedTypes__internalAllowedTypes = v2;
}

+ (NSSet)deeplyProblematicObjectTypes
{
  if (deeplyProblematicObjectTypes_onceToken != -1)
  {
    dispatch_once(&deeplyProblematicObjectTypes_onceToken, &__block_literal_global_73_164432);
  }

  v3 = deeplyProblematicObjectTypes__neverAllowedTypes;

  return v3;
}

void __47__HMDBackingStore_deeplyProblematicObjectTypes__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:7];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9}];
  v3 = deeplyProblematicObjectTypes__neverAllowedTypes;
  deeplyProblematicObjectTypes__neverAllowedTypes = v2;
}

+ (NSSet)allowedTypes
{
  if (allowedTypes_onceToken_164440 != -1)
  {
    dispatch_once(&allowedTypes_onceToken_164440, &__block_literal_global_164441);
  }

  v3 = allowedTypes__allowedTypes_164442;

  return v3;
}

void __31__HMDBackingStore_allowedTypes__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:7];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9}];
  v3 = allowedTypes__allowedTypes_164442;
  allowedTypes__allowedTypes_164442 = v2;
}

@end