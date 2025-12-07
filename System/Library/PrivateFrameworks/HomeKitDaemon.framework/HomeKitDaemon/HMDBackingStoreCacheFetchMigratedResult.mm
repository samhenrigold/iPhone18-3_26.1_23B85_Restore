@interface HMDBackingStoreCacheFetchMigratedResult
- (HMDBackingStoreCacheFetchMigratedResult)initWithGroup:(id)group update:(BOOL)update migration:(BOOL)migration fetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchMigratedResult

- (id)mainReturningError
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = +[HMDBackingStoreSingleton sharedInstance];
  array = [MEMORY[0x277CBEB18] array];
  group = [(HMDBackingStoreCacheFetchMigratedResult *)self group];
  groupID = [group groupID];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__23924;
  v43 = __Block_byref_object_dispose__23925;
  v44 = 0;
  objc_initWeak(&location, self);
  if ([(HMDBackingStoreCacheFetchMigratedResult *)self migration])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke;
    aBlock[3] = &unk_278671680;
    objc_copyWeak(v37, &location);
    v35 = &v39;
    v9 = v3;
    v37[1] = groupID;
    v34 = v9;
    v36 = &v45;
    v10 = _Block_copy(aBlock);
    store = [(HMDBackingStoreOperation *)self store];
    local = [store local];
    [local _fetchRecordTypeSchemaWithGroupID:groupID callback:v10];

    objc_destroyWeak(v37);
  }

  if (![(HMDBackingStoreCacheFetchMigratedResult *)self migration]|| *(v46 + 24) == 1)
  {
    array2 = [MEMORY[0x277CBEB18] array];

    v14 = v40[5];
    v40[5] = 0;

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke_413;
    v28[3] = &unk_2786716A8;
    objc_copyWeak(v32, &location);
    v31 = &v39;
    v32[1] = groupID;
    v29 = v3;
    array = array2;
    v30 = array;
    v15 = _Block_copy(v28);
    store2 = [(HMDBackingStoreOperation *)self store];
    local2 = [store2 local];
    [local2 _fetchRecordsWithGroupID:groupID callback:v15];

    objc_destroyWeak(v32);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v19 = v18;
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v23;
    v51 = 2048;
    v52 = v19 - v8;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@time to fetch migrated records: %.4f s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  if (v40[5])
  {

    array = 0;
  }

  fetchResult = [(HMDBackingStoreCacheFetchMigratedResult *)selfCopy fetchResult];

  if (fetchResult)
  {
    fetchResult2 = [(HMDBackingStoreCacheFetchMigratedResult *)selfCopy fetchResult];
    (fetchResult2)[2](fetchResult2, array, v40[5]);
  }

  v26 = v40[5];
  objc_destroyWeak(&location);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);

  return v26;
}

uint64_t __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
LABEL_3:
    v12 = 0;
    goto LABEL_4;
  }

  v12 = 1;
  if (v7 && WeakRetained)
  {
    v14 = +[HMDBackingStoreSingleton sharedInstance];
    v15 = [v14 nameToClassTransform];
    v16 = [v15 objectForKey:v7];

    if (!v16)
    {
      v17 = NSClassFromString(v7);
      if (!v17)
      {
        goto LABEL_16;
      }

      v16 = v17;
    }

    if ([(objc_class *)v16 isSubclassOfClass:objc_opt_class()])
    {
      v18 = [v16 alloc];
      v19 = [MEMORY[0x277CCAD78] UUID];
      v20 = [v18 initWithUUID:v19];

      if (v20)
      {
        v21 = [*(a1 + 32) schemaHashForObject:v20];
        if (!v8 || ([v8 isEqual:v21] & 1) == 0)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = v11;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v25 = v27 = v22;
            v26 = *(a1 + 64);
            *buf = 138543618;
            v29 = v25;
            v30 = 2048;
            v31 = v26;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@detected migrations is need for %lu", buf, 0x16u);

            v22 = v27;
          }

          objc_autoreleasePoolPop(v22);
          *(*(*(a1 + 48) + 8) + 24) = 1;

          goto LABEL_3;
        }
      }
    }

LABEL_16:
    v12 = 1;
  }

LABEL_4:

  return v12;
}

uint64_t __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke_413(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v66 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v18 = a3;
  v19 = a5;
  v52 = a6;
  v51 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v24 = WeakRetained;
  if (v22)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a10);
    v25 = 1;
    goto LABEL_22;
  }

  v25 = 0;
  if (v17 && WeakRetained)
  {
    v53 = 0;
    v26 = [HMDBackingStoreModelObject objectFromData:v19 encoding:a4 record:v18 error:&v53];
    v50 = v53;
    if (v50 || !v26)
    {
      v49 = v26;
      v47 = objc_autoreleasePoolPush();
      v36 = v24;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        v39 = *(a1 + 64);
        *buf = 138543874;
        v55 = v38;
        v40 = v38;
        v56 = 2048;
        v57 = v39;
        v58 = 2112;
        v59 = v17;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@unable to decode object for %lu / %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v47);
      v25 = 0;
      v26 = v49;
      goto LABEL_21;
    }

    if ([v24 migration])
    {
      v46 = [*(a1 + 32) schemaHashForObject:v26];
      if (!v21 || ([v21 isEqual:v46] & 1) == 0)
      {
        v48 = v26;
        context = objc_autoreleasePoolPush();
        v45 = v24;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          v42 = *(a1 + 64);
          v43 = v28;
          v29 = objc_opt_class();
          *buf = 138544642;
          v55 = v28;
          v56 = 2048;
          v57 = v42;
          v58 = 2112;
          v59 = v17;
          v60 = 2112;
          v61 = v29;
          v62 = 2112;
          v63 = v21;
          v64 = 2112;
          v65 = v46;
          v30 = v29;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@detected a schema change for %lu / %@/%@ from %@ to %@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(context);
        v26 = v48;
        [*(a1 + 40) addObject:v48];
        if ([v45 update])
        {
          v31 = [v45 store];
          v32 = [v31 local];
          v33 = [v32 _updateRecordWithGroupID:*(a1 + 64) name:v17 schema:v46];
          v34 = *(*(a1 + 48) + 8);
          v35 = *(v34 + 40);
          *(v34 + 40) = v33;

          v26 = v48;
          if (*(*(*(a1 + 48) + 8) + 40))
          {

            v25 = 1;
LABEL_21:

            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      [*(a1 + 40) addObject:v26];
    }

    v25 = 0;
    goto LABEL_21;
  }

LABEL_22:

  return v25;
}

- (HMDBackingStoreCacheFetchMigratedResult)initWithGroup:(id)group update:(BOOL)update migration:(BOOL)migration fetchResult:(id)result
{
  groupCopy = group;
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = HMDBackingStoreCacheFetchMigratedResult;
  v13 = [(HMDBackingStoreOperation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_group, group);
    v14->_update = update;
    v14->_migration = migration;
    v15 = _Block_copy(resultCopy);
    fetchResult = v14->_fetchResult;
    v14->_fetchResult = v15;

    v17 = v14;
  }

  return v14;
}

@end