@interface HMDBackingStore
+ (NSSet)allowedTypes;
+ (NSSet)deeplyProblematicObjectTypes;
+ (NSSet)internalAllowedTypes;
+ (id)_saveToLocalStoreWithReason:(id)reason homeManager:(id)manager shouldIncrementGenerationCounter:(BOOL)counter backingStore:(id)store;
+ (id)cdlsActiveBackingStores;
+ (id)cdlsBackingStoreForHomeManagerWithError:(id *)error;
+ (id)cdlsBackingStoreWithHandle:(id)handle error:(id *)error;
+ (id)cdlsFetchManagedObjectWithUUID:(id)d ofManagedObjectType:(Class)type error:(id *)error;
+ (id)cdlsFetchManagedObjectWithUUID:(id)d ofModelType:(Class)type error:(id *)error;
+ (id)cdlsFetchManagedObjectsWithUUIDStrings:(id)strings ofManagedObjectType:(Class)type;
+ (id)cdlsFetchObjectWithUUID:(id)d ofModelType:(Class)type error:(id *)error;
+ (id)cdlsModelIDStringsForManagedObjects:(id)objects;
+ (id)logCategory;
+ (void)saveToPersistentStoreWithReason:(id)reason homeManager:(id)manager shouldIncrementGenerationCounter:(BOOL)counter backingStore:(id)store completionHandler:(id)handler;
- (HMDBackingStore)initWithUUID:(id)d;
- (HMDBackingStore)initWithUUID:(id)d home:(id)home;
- (HMDBackingStore)initWithUUID:(id)d homeManager:(id)manager;
- (HMDBackingStore)initWithUUID:(id)d homeManager:(id)manager home:(id)home dataSource:(id)source;
- (HMDBackingStoreObjectProtocol)delegate;
- (HMDCoreData)coreData;
- (HMDHome)home;
- (HMDHomeManager)homeManager;
- (NSString)activeControllerKeyUsername;
- (id)backingStoreOperationQueue;
- (id)cdlsFetchObjectWithUUID:(id)d ofModelType:(Class)type error:(id *)error;
- (id)createBackingStoreLogAddTransactionOperationWithTransaction:(id)transaction;
- (id)createBackingStoreOperation;
- (id)createHomeObjectLookupWithHome:(id)home;
- (id)dataForPersistentStoreIncrementingGeneration:(BOOL)generation reason:(id)reason;
- (id)localBackingStore;
- (id)logIdentifier;
- (id)transaction:(id)transaction options:(id)options;
- (void)_cdlsReplayAllModelsStartingAt:(id)at fromContext:(id)context isInitialGraphLoad:(BOOL)load;
- (void)cdlsCommit:(id)commit run:(BOOL)run save:(BOOL)save coreDataBlock:(id)block completionHandler:(id)handler;
- (void)cdlsReplayAllModelsStartingAt:(id)at isInitialGraphLoad:(BOOL)load;
- (void)commit:(id)commit run:(BOOL)run save:(BOOL)save archiveInline:(BOOL)inline coreDataBlock:(id)block completionHandler:(id)handler;
- (void)dmKickClients;
- (void)handleCoreDataDidSaveNotification:(id)notification;
- (void)handleCoreDataDidSaveNotification:(id)notification sourceContext:(id)context;
- (void)handleCoreDataWillSaveNotification:(id)notification;
- (void)setContext:(id)context;
- (void)shouldHandleNotificationFromContext:(void *)context;
- (void)submitBlock:(id)block;
@end

@implementation HMDBackingStore

- (HMDCoreData)coreData
{
  v2 = +[HMDMainDriver driver];
  coreData = [v2 coreData];

  return coreData;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_242029 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_242029, &__block_literal_global_106_242030);
  }

  v3 = logCategory__hmf_once_v11_242031;

  return v3;
}

- (void)cdlsCommit:(id)commit run:(BOOL)run save:(BOOL)save coreDataBlock:(id)block completionHandler:(id)handler
{
  commitCopy = commit;
  blockCopy = block;
  handlerCopy = handler;
  home = [(HMDBackingStore *)self home];
  context = [(HMDBackingStore *)self context];
  managedObjectContext = [context managedObjectContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke;
  v21[3] = &unk_278676728;
  v21[4] = self;
  v22 = commitCopy;
  v23 = home;
  v24 = managedObjectContext;
  v25 = blockCopy;
  v26 = handlerCopy;
  v16 = handlerCopy;
  v17 = blockCopy;
  v18 = managedObjectContext;
  v19 = home;
  v20 = commitCopy;
  [context performBlock:v21];
}

void __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__49687;
  v71 = __Block_byref_object_dispose__49688;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__49687;
  v65 = __Block_byref_object_dispose__49688;
  v66 = 0;
  v2 = [*(a1 + 32) context];
  v3 = [v2 managedObjectContext];

  v4 = [*(a1 + 40) options];
  v5 = [v4 label];
  v6 = v5;
  v7 = @"<no message>";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [*(a1 + 40) objects];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_2;
  v52[3] = &unk_2786736B0;
  v58 = &v67;
  v10 = *(a1 + 48);
  v59 = &v73;
  v11 = *(a1 + 32);
  v53 = v10;
  v54 = v11;
  v12 = v8;
  v55 = v12;
  v56 = *(a1 + 56);
  v60 = &v61;
  v13 = v3;
  v57 = v13;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v52];

  if (v62[5])
  {
    v14 = _Block_copy(*(a1 + 64));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v13, v62[5], 0);
    }

    v16 = [*(a1 + 32) context];
    [v16 rollback];

    v17 = _Block_copy(*(a1 + 72));
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, v62[5]);
    }
  }

  else
  {
    v19 = [*(a1 + 40) objects];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_52;
    v49[3] = &unk_2786736D8;
    v49[4] = *(a1 + 32);
    v20 = v13;
    v50 = v20;
    v51 = &v61;
    [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v49];

    v21 = v62[5] == 0;
    v22 = _Block_copy(*(a1 + 64));
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        v27 = (v62 + 5);
        obj = v62[5];
        (*(v22 + 2))(v22, v20, 0, &obj);
        objc_storeStrong(v27, obj);
      }

      if (v62[5])
      {
        v28 = [*(a1 + 32) context];
        [v28 rollback];

        v29 = _Block_copy(*(a1 + 72));
        v26 = v29;
        if (v29)
        {
          (*(v29 + 2))(v29, v62[5]);
        }
      }

      else
      {
        v26 = [v20 userInfo];
        [v26 setObject:*(a1 + 40) forKeyedSubscript:@"HMD.v4txn"];
        v30 = [*(a1 + 40) options];
        v31 = [v30 clientIdentifier];
        if (v31)
        {
          v32 = [v30 clientIdentifier];
          v33 = v68[5];
          v68[5] = v32;
        }

        else
        {
          v34 = v68;
          v35 = v68[5];
          v33 = v34[5];
          v34[5] = v35;
        }

        v36 = [v30 cdTransactionAuthor];
        v37 = v68[5];
        v38 = *(v74 + 24);
        v39 = (v62 + 5);
        v47 = v62[5];
        [v20 hmd_saveWithTransactionAuthor:v36 clientIdentifier:v37 allowQoSEscalation:v38 error:&v47];
        objc_storeStrong(v39, v47);
        [v20 reset];
        removeDictionaryEntry(v26, @"HMD.v4txn", *(a1 + 40));
        if (v62[5])
        {
          v40 = objc_autoreleasePoolPush();
          v41 = *(a1 + 32);
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = HMFGetLogIdentifier();
            v44 = v62[5];
            *buf = 138543618;
            v78 = v43;
            v79 = 2112;
            v80 = v44;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Context save failed: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v40);
        }

        v45 = _Block_copy(*(a1 + 72));
        if (v45)
        {
          v46 = HMDSanitizeCoreDataError(v62[5]);
          v45[2](v45, v46);
        }
      }
    }

    else
    {
      if (v22)
      {
        (*(v22 + 2))(v22, v20, v62[5], 0);
      }

      v24 = [*(a1 + 32) context];
      [v24 rollback];

      v25 = _Block_copy(*(a1 + 72));
      v26 = v25;
      if (v25)
      {
        (*(v25 + 2))(v25, v62[5]);
      }
    }
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
}

void __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [(__CFString *)v5 message];
  v7 = v6;
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v15 = [v6 untrustedClientIdentifier];
    if (v15)
    {
      v16 = *(a1 + 32);

      if (v16)
      {
        v17 = [v7 untrustedClientIdentifier];
        v18 = *(*(a1 + 72) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        v20 = [v7 userForHome:*(a1 + 32)];
        *(*(*(a1 + 80) + 8) + 24) = [v20 isOwner];
      }
    }
  }

  v8 = [(__CFString *)v5 change];
  v9 = HMDCastIfModelCDRepresentable(v8);

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v63 = v10;
    v62 = HMFGetLogIdentifier();
    v61 = [(__CFString *)v5 change];
    v13 = [v61 objectChangeType];
    if ((v13 - 1) > 2)
    {
      v14 = @"unknown";
    }

    else
    {
      v14 = off_278680560[v13 - 1];
    }

    v21 = v14;
    v65 = v7;
    v22 = [v7 name];
    v23 = v22;
    if (!v22)
    {
      v23 = *(a1 + 48);
    }

    v24 = [(__CFString *)v5 change];
    v25 = [v24 debugString:1];
    *buf = 138544130;
    v71 = v62;
    v72 = 2112;
    v73 = v21;
    v74 = 2112;
    v75 = v23;
    v76 = 2112;
    v77 = v25;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@COREDATA LEGACY PROCESSING: %@ (%@)\n%@", buf, 0x2Au);

    v7 = v65;
    v10 = v63;
  }

  objc_autoreleasePoolPop(v10);
  v26 = [(__CFString *)v5 change];
  v27 = [v26 objectChangeType];

  v28 = *(*(a1 + 88) + 8);
  v31 = *(v28 + 40);
  v30 = (v28 + 40);
  v29 = v31;
  if (v27 == 3)
  {
    v32 = *(a1 + 56);
    obj = v29;
    v33 = [v9 cd_fetchManagedObjectInContext:v32 error:&obj];
    objc_storeStrong(v30, obj);

    if (v33)
    {
      v34 = [v9 managedObject];

      if (v34)
      {
        v35 = *(a1 + 64);
        v36 = [v9 managedObject];
        [v35 deleteObject:v36];

        goto LABEL_29;
      }

      v67 = v9;
      v39 = objc_autoreleasePoolPush();
      v54 = *(a1 + 40);
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = HMFGetLogIdentifier();
        v57 = [(__CFString *)v5 change];
        v58 = [v57 bsoType];
        v59 = [(__CFString *)v5 change];
        v60 = [v59 uuid];
        *buf = 138543874;
        v71 = v56;
        v72 = 2112;
        v73 = v58;
        v74 = 2112;
        v75 = v60;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch succeeded for %@.%@ but no managed object actually found", buf, 0x20u);
      }
    }

    else
    {
      v67 = v9;
      v39 = objc_autoreleasePoolPush();
      v40 = *(a1 + 40);
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        [(__CFString *)v5 change];
        v43 = v66 = v7;
        v44 = [v43 bsoType];
        v45 = [(__CFString *)v5 change];
        v46 = [v45 uuid];
        v47 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138544130;
        v71 = v42;
        v72 = 2112;
        v73 = v44;
        v74 = 2112;
        v75 = v46;
        v76 = 2112;
        v77 = v47;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to find %@.%@ for deletion: %@", buf, 0x2Au);

        v7 = v66;
      }
    }

    objc_autoreleasePoolPop(v39);
    v9 = v67;
    goto LABEL_29;
  }

  v37 = *(a1 + 64);
  v68 = v29;
  v38 = [v9 cd_currentManagedObjectInContext:v37 error:&v68];
  objc_storeStrong(v30, v68);
  if (v38)
  {
  }

  else if (*(*(*(a1 + 88) + 8) + 40))
  {
    v48 = v9;
    v49 = objc_autoreleasePoolPush();
    v50 = *(a1 + 40);
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      v53 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138543874;
      v71 = v52;
      v72 = 2112;
      v73 = v5;
      v74 = 2112;
      v75 = v53;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unable to find current managed object for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v49);
    *a4 = 1;
    v9 = v48;
  }

LABEL_29:
}

void __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_52(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 change];
  v5 = [v4 objectChangeType];

  if (v5 != 3)
  {
    v6 = [v3 change];
    v7 = HMDCastIfModelCDRepresentable(v6);

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 48) + 8);
      obj = *(v9 + 40);
      v10 = [v7 cd_updateManagedObjectInContext:v8 error:&obj];
      objc_storeStrong((v9 + 40), obj);
      if (v10)
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v3 change];
        v16 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543874;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to update managed object for %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v3 change];
        *buf = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Got a %@ but don't know how to represent it as a NSManagedObject", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_cdlsReplayAllModelsStartingAt:(id)at fromContext:(id)context isInitialGraphLoad:(BOOL)load
{
  v61 = *MEMORY[0x277D85DE8];
  atCopy = at;
  contextCopy = context;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  uuid = [atCopy uuid];
  v54 = 0;
  v13 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:uuid ofModelType:objc_opt_class() error:&v54];
  v14 = COERCE_DOUBLE(v54);

  if (v13)
  {
    v15 = HMDCastIfManagedObjectBSORepresentable(v13);
    v53 = v14;
    v16 = [v15 hmd_modelsWithChangeType:0 detached:0 error:&v53];
    v47 = COERCE_DOUBLE(*&v53);

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      v44 = v15;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v22 = objc_opt_class();
        *buf = 138543618;
        v56 = v21;
        v57 = 2112;
        v58 = v22;
        v23 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Begin replaying models from CoreData: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v24 = [MEMORY[0x277CBEB58] set];
      if (load)
      {
        +[HMDBackingStoreTransactionOptions defaultCloudOptionsForInitialGraphLoad];
      }

      else
      {
        +[HMDBackingStoreTransactionOptions defaultCloudOptions];
      }
      v31 = ;
      v46 = v13;
      v32 = 0;
      if ([v16 count])
      {
        v33 = v16;
        do
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          array = [MEMORY[0x277CBEB18] array];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __91__HMDBackingStore_CoreData___cdlsReplayAllModelsStartingAt_fromContext_isInitialGraphLoad___block_invoke;
          v48[3] = &unk_278673688;
          v48[4] = selfCopy;
          v49 = v24;
          v50 = dictionary;
          v51 = contextCopy;
          v36 = array;
          v52 = v36;
          v37 = dictionary;
          [v33 hmf_enumerateWithAutoreleasePoolUsingBlock:v48];
          v38 = __dependencySort(v37);
          __lookup(selfCopy, v38, v31);
          v32 += [v38 count];
          v16 = v36;

          v33 = v16;
        }

        while ([v16 count]);
      }

      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        *buf = 138543874;
        v56 = v42;
        v57 = 2048;
        v58 = v32;
        v59 = 2048;
        v60 = v43 - v11;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Replayed %zd models from CoreData in %.3lf seconds", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v39);
      [(HMDBackingStore *)v40 dmKickClients];

      v15 = v45;
      v13 = v46;
      v29 = v47;
    }

    else
    {
      v29 = v47;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v56 = v30;
        v57 = 2112;
        v58 = v13;
        v59 = 2112;
        v60 = v47;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode managed object %@ into model objects: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }

    v14 = v29;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v56 = v28;
      v57 = 2112;
      v58 = atCopy;
      v59 = 2112;
      v60 = v14;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to find root model to start replay at %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
  }
}

void __91__HMDBackingStore_CoreData___cdlsReplayAllModelsStartingAt_fromContext_isInitialGraphLoad___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 bsoType];
    v9 = [v3 uuid];
    v10 = [v3 parentUUID];
    *buf = 138544130;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@COREDATA: Replaying %@.%@.%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  [v3 setObjectChangeType:2];
  v11 = *(a1 + 40);
  v12 = [v3 uuid];
  [v11 addObject:v12];

  v13 = *(a1 + 48);
  v14 = [[HMDBackingStoreTransactionItem alloc] initWithChange:v3 message:0];
  v15 = [v3 uuid];
  [v13 setObject:v14 forKey:v15];

  v16 = HMDCastIfModelCDRepresentable(v3);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v27 = 0;
  v19 = [v16 cd_childrenExcluding:v17 fromContext:v18 error:&v27];
  v20 = v27;

  if (v19)
  {
    v21 = *(a1 + 64);
    v22 = [v19 allObjects];
    [v21 addObjectsFromArray:v22];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v26;
      v30 = 2112;
      v31 = v3;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch children of %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
  }
}

- (void)cdlsReplayAllModelsStartingAt:(id)at isInitialGraphLoad:(BOOL)load
{
  atCopy = at;
  context = [(HMDBackingStore *)self context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HMDBackingStore_CoreData__cdlsReplayAllModelsStartingAt_isInitialGraphLoad___block_invoke;
  v10[3] = &unk_278685AA8;
  v10[4] = self;
  v11 = atCopy;
  v12 = context;
  loadCopy = load;
  v8 = context;
  v9 = atCopy;
  [v8 performBlockAndWaitWithPinnedQueryGeneration:v10];
}

void __78__HMDBackingStore_CoreData__cdlsReplayAllModelsStartingAt_isInitialGraphLoad___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  [v2 _cdlsReplayAllModelsStartingAt:v3 fromContext:v4 isInitialGraphLoad:*(a1 + 56)];
}

- (id)cdlsFetchObjectWithUUID:(id)d ofModelType:(Class)type error:(id *)error
{
  dCopy = d;
  if ((HMDModelClassIsCDRepresentable(type) & 1) == 0)
  {
    v13 = _HMFPreconditionFailure();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v13);
  }

  if (dCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__49687;
    v23 = __Block_byref_object_dispose__49688;
    v24 = 0;
    context = [(HMDBackingStore *)self context];
    managedObjectContext = [context managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HMDBackingStore_CoreData__cdlsFetchObjectWithUUID_ofModelType_error___block_invoke;
    v14[3] = &unk_278673660;
    v16 = &v19;
    v15 = dCopy;
    typeCopy = type;
    errorCopy = error;
    [managedObjectContext performBlockAndWait:v14];

    v11 = v20[5];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __71__HMDBackingStore_CoreData__cdlsFetchObjectWithUUID_ofModelType_error___block_invoke(void *a1)
{
  v2 = [HMDBackingStore cdlsFetchObjectWithUUID:a1[4] ofModelType:a1[6] error:a1[7]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dmKickClients
{
  v23 = *MEMORY[0x277D85DE8];
  home = [(HMDBackingStore *)self home];
  homeManager = [home homeManager];
  if (homeManager)
  {
    v14 = homeManager;

    v5 = v14;
LABEL_4:
    v16 = v5;
    [v5 dmKickClients];

    return;
  }

  homeManager2 = [(HMDBackingStore *)self homeManager];

  v5 = homeManager2;
  if (homeManager2)
  {
    goto LABEL_4;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    context = [(HMDBackingStore *)selfCopy context];
    name = [context name];
    context2 = [(HMDBackingStore *)selfCopy context];
    transactionAuthor = [context2 transactionAuthor];
    *buf = 138543874;
    v18 = v9;
    v19 = 2112;
    v20 = name;
    v21 = 2112;
    v22 = transactionAuthor;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Warning: HMDBackingStore with context %@.%@ does not have a homeManager", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)handleCoreDataDidSaveNotification:(id)notification sourceContext:(id)context
{
  v119 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  contextCopy = context;
  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE310]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v83 = v9;

  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE188]];
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

  v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE150]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  userInfo2 = [contextCopy userInfo];
  [userInfo2 objectForKeyedSubscript:@"HMD.deletes"];
  v85 = v84 = userInfo2;
  [userInfo2 removeObjectForKey:@"HMD.deletes"];
  if ([v12 count] || objc_msgSend(v83, "count") || objc_msgSend(v15, "count") || objc_msgSend(v85, "count"))
  {
    v81 = userInfo;
    v82 = v12;
    v79 = v15;
    [contextCopy name];
    v18 = v17 = contextCopy;
    transactionAuthor = [contextCopy transactionAuthor];
    v20 = [HMDCoreDataContextTransactionAuthor contextAuthorWithString:transactionAuthor];

    type = [v20 type];
    v22 = [HMDCoreDataWorkingStoreTransactionLogEvent alloc];
    string = [v20 string];
    v24 = [(HMDCoreDataWorkingStoreTransactionLogEvent *)v22 initWithTransactionAuthor:string];

    homeManager = [(HMDBackingStore *)self homeManager];
    metricsManager = [homeManager metricsManager];
    logEventSubmitter = [metricsManager logEventSubmitter];
    v78 = v24;
    [logEventSubmitter submitLogEvent:v24];

    selfCopy = self;
    context = [(HMDBackingStore *)self context];
    managedObjectContext = [context managedObjectContext];

    v80 = v17;
    if (![v17 isEqual:managedObjectContext])
    {
      context2 = [(HMDBackingStore *)self context];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __77__HMDBackingStore_CoreData__handleCoreDataDidSaveNotification_sourceContext___block_invoke;
      v91[3] = &unk_278673638;
      v91[4] = self;
      v92 = v18;
      v93 = v20;
      v94 = managedObjectContext;
      v95 = notificationCopy;
      v57 = v83;
      v96 = v83;
      v12 = v82;
      v97 = v82;
      v15 = v79;
      v98 = v79;
      v99 = v85;
      v100 = type;
      [context2 performBlock:v91];

      userInfo = v81;
LABEL_45:

      v67 = v84;
      contextCopy = v80;
      goto LABEL_46;
    }

    v77 = managedObjectContext;
    v31 = [v84 objectForKeyedSubscript:@"HMD.v4txn"];
    v12 = v82;
    if (v31)
    {
      [v84 removeObjectForKey:@"HMD.v4txn"];
    }

    objects = [v31 objects];
    v33 = v85;
    userInfo = v81;
    if (self)
    {
      if ([objects count] || objc_msgSend(v33, "count"))
      {
        if ([v33 count])
        {
          if ([objects count])
          {
            v75 = v31;
            v76 = notificationCopy;
            v34 = v33;
            v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "count") + objc_msgSend(objects, "count")}];
            [v88 addObjectsFromArray:objects];
            v35 = MEMORY[0x277CBEB98];
            v74 = objects;
            v36 = [objects na_map:&__block_literal_global_11_49731];
            v37 = [v35 setWithArray:v36];

            v38 = v37;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v73 = v34;
            v39 = v34;
            selfCopy3 = self;
            v90 = [v39 countByEnumeratingWithState:&v101 objects:v111 count:16];
            if (v90)
            {
              v89 = *v102;
              v86 = v39;
              do
              {
                for (i = 0; i != v90; ++i)
                {
                  v42 = v20;
                  v43 = v18;
                  if (*v102 != v89)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v101 + 1) + 8 * i);
                  change = [v44 change];
                  uuid = [change uuid];
                  v47 = [v38 containsObject:uuid];

                  if (v47)
                  {
                    v48 = objc_autoreleasePoolPush();
                    v49 = selfCopy3;
                    v50 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                    {
                      HMFGetLogIdentifier();
                      v52 = v51 = v38;
                      uuid2 = [change uuid];
                      *buf = 138543874;
                      v106 = v52;
                      v107 = 2112;
                      v108 = change;
                      v109 = 2112;
                      v110 = uuid2;
                      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_DEBUG, "%{public}@Skipping merging transaction item for change %@/%@ as one already exists", buf, 0x20u);

                      v38 = v51;
                      v39 = v86;
                      selfCopy3 = self;
                    }

                    objc_autoreleasePoolPop(v48);
                  }

                  else
                  {
                    [v88 addObject:v44];
                  }

                  v18 = v43;
                  v20 = v42;
                }

                v90 = [v39 countByEnumeratingWithState:&v101 objects:v111 count:16];
              }

              while (v90);
            }

            v54 = objc_msgSend_copy(v88);
            v55 = v38;
            selfCopy = v54;

            v31 = v75;
            notificationCopy = v76;
            userInfo = v81;
            v12 = v82;
            v33 = v73;
            objects = v74;
            goto LABEL_40;
          }

          v58 = v33;
        }

        else
        {
          v58 = objects;
        }

        selfCopy = v58;
      }

      else
      {
        selfCopy = 0;
      }
    }

LABEL_40:

    v59 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v63 = v62 = v31;
      v64 = "legacy";
      *v111 = 138544130;
      v113 = 2080;
      v112 = v63;
      if (!v62)
      {
        v64 = "native";
      }

      v114 = v64;
      v115 = 2112;
      v116 = v18;
      v117 = 2112;
      v118 = v20;
      _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Processing %s Core Data save from this backing store's context: %@ / %@", v111, 0x2Au);

      v31 = v62;
      v12 = v82;
    }

    objc_autoreleasePoolPop(v59);
    options = [v31 options];
    v66 = selfCopy4;
    v57 = v83;
    __broadcastChanges(v66, v83, v12, v79, selfCopy, options);

    v15 = v79;
    managedObjectContext = v77;
    goto LABEL_45;
  }

  v68 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v70 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v72 = v71 = v15;
    *v111 = 138543362;
    v112 = v72;
    _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_DEBUG, "%{public}@No changes actually saved, skipping further processing", v111, 0xCu);

    v15 = v71;
  }

  objc_autoreleasePoolPop(v68);
  v57 = v83;
  v67 = v84;
LABEL_46:
}

void __77__HMDBackingStore_CoreData__handleCoreDataDidSaveNotification_sourceContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = 138543874;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing Core Data save from a different context: %@ / %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) mergeChangesFromContextDidSaveNotification:*(a1 + 64)];
  v8 = *(a1 + 32);
  v9 = __mirrorForeignObjects(*(a1 + 56), *(a1 + 72));
  v10 = __mirrorForeignObjects(*(a1 + 56), *(a1 + 80));
  v11 = __mirrorForeignObjects(*(a1 + 56), *(a1 + 88));
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v12 <= 0xB)
  {
    a1 = [HMDBackingStoreTransactionOptions optionsWithSource:qword_22A5870D0[v12] destination:0 mustReplay:0 mustPush:0];
  }

  __broadcastChanges(v8, v9, v10, v11, v13, a1);
}

id __62__HMDBackingStore_CoreData____mergeLegacyChanges_intoDeletes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 change];
  v4 = [v3 objectChangeType];

  if (v4 == 3)
  {
    v5 = [v2 change];
    v6 = [v5 uuid];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleCoreDataDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ([(HMDBackingStore *)self shouldHandleNotificationFromContext:v6])
  {
    v7 = objc_autoreleasePoolPush();
    [(HMDBackingStore *)self handleCoreDataDidSaveNotification:notificationCopy sourceContext:v6];
    objc_autoreleasePoolPop(v7);
  }
}

- (void)shouldHandleNotificationFromContext:(void *)context
{
  v3 = a2;
  if (context)
  {
    coreData = [context coreData];
    v5 = [coreData isRelatedContext:v3];

    if (v5 && [v3 hmd_transactionAuthor] != 7)
    {
      name = [v3 name];
      contextName = [context contextName];
      context = [name isEqualToString:contextName];
    }

    else
    {
      context = 0;
    }
  }

  return context;
}

- (void)handleCoreDataWillSaveNotification:(id)notification
{
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

  if ([(HMDBackingStore *)self shouldHandleNotificationFromContext:v7])
  {
    userInfo = [v7 userInfo];
    deletedObjects = [v7 deletedObjects];
    if ([deletedObjects count])
    {
      selfCopy = self;
      v11 = MEMORY[0x277CBEB18];
      v12 = deletedObjects;
      v13 = [[v11 alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      location[2] = ____createLegacyDeletes_block_invoke;
      location[3] = &unk_278678F60;
      v22 = selfCopy;
      v23 = v13;
      v14 = selfCopy;
      v15 = v13;
      [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:location];

      v16 = objc_msgSend_copy(v15);
      [userInfo setObject:v16 forKeyedSubscript:@"HMD.deletes"];
      objc_initWeak(location, v7);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__HMDBackingStore_CoreData__handleCoreDataWillSaveNotification___block_invoke;
      v18[3] = &unk_278686B48;
      objc_copyWeak(&v20, location);
      userInfo2 = v16;
      v19 = userInfo2;
      [v7 performWithOptions:1 andBlock:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
    }

    else
    {
      userInfo2 = [v7 userInfo];
      [userInfo2 removeObjectForKey:@"HMD.deletes"];
    }
  }
}

void __64__HMDBackingStore_CoreData__handleCoreDataWillSaveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained userInfo];
    removeDictionaryEntry(v3, @"HMD.deletes", *(a1 + 32));

    WeakRetained = v4;
  }
}

+ (id)cdlsFetchManagedObjectsWithUUIDStrings:(id)strings ofManagedObjectType:(Class)type
{
  v46 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  if ([stringsCopy count])
  {
    aClass = type;
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = stringsCopy;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    v30 = v6;
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = objc_autoreleasePoolPush();
            selfCopy = self;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = HMFGetLogIdentifier();
              *buf = 138543618;
              v39 = v16;
              v40 = 2112;
              v41 = v11;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid UUID string '%@'", buf, 0x16u);

              v6 = v30;
            }

            objc_autoreleasePoolPop(v13);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v8);
    }

    if ([v6 count])
    {
      fetchRequest = [(objc_class *)aClass fetchRequest];
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"modelID", v6];
      [fetchRequest setPredicate:v18];

      v44 = @"modelID";
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      [fetchRequest setPropertiesToFetch:v19];

      v33 = 0;
      v20 = [fetchRequest execute:&v33];
      v21 = v33;
      if (v20)
      {
        v22 = [MEMORY[0x277CBEB98] setWithArray:v20];
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = NSStringFromClass(aClass);
          *buf = 138543874;
          v39 = v26;
          v40 = 2112;
          v41 = v27;
          v42 = 2112;
          v43 = v21;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Fetch of %@ models failed: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v22 = 0;
        v6 = v30;
      }
    }

    else
    {
      v22 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v22 = [MEMORY[0x277CBEB98] set];
  }

  return v22;
}

+ (id)cdlsModelIDStringsForManagedObjects:(id)objects
{
  v20 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v4 = [objectsCopy count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = objectsCopy;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          modelID = [*(*(&v15 + 1) + 8 * i) modelID];
          uUIDString = [modelID UUIDString];
          [v5 addObject:uUIDString];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = objc_msgSend_copy(v5);
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

+ (id)cdlsFetchObjectWithUUID:(id)d ofModelType:(Class)type error:(id *)error
{
  dCopy = d;
  if (HMDModelClassIsCDRepresentable(type))
  {
    v9 = [self cdlsFetchManagedObjectWithUUID:dCopy ofManagedObjectType:-[objc_class cd_entityClass](type error:{"cd_entityClass"), error}];
    if (v9)
    {
      v10 = [[type alloc] initWithManagedObject:v9 changeType:0 detached:0 error:error];
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMDBackingStore *)v12 cdlsFetchManagedObjectWithUUID:v13 ofManagedObjectType:v14 error:v15, v16];
  }
}

+ (id)cdlsFetchManagedObjectWithUUID:(id)d ofManagedObjectType:(Class)type error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (([(objc_class *)type isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  fetchRequest = [(objc_class *)type fetchRequest];
  v10 = +[HMDBackingStoreModelObject fetchByModelID];
  v33 = @"MODELID";
  v34[0] = dCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v12 = [v10 predicateWithSubstitutionVariables:v11];
  [fetchRequest setPredicate:v12];

  v13 = [fetchRequest execute:error];
  v14 = v13;
  if (v13)
  {
    if ([v13 count] < 2)
    {
      firstObject = [v14 firstObject];
      v16 = firstObject;
      if (firstObject)
      {
        v17 = firstObject;
      }

      goto LABEL_10;
    }

LABEL_14:
    _HMFPreconditionFailure();
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = NSStringFromClass(type);
    v23 = *error;
    v25 = 138544130;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = v23;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Fetch of model %@.%@ failed: %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  v16 = 0;
LABEL_10:

  return v16;
}

+ (id)cdlsFetchManagedObjectWithUUID:(id)d ofModelType:(Class)type error:(id *)error
{
  dCopy = d;
  if (HMDModelClassIsCDRepresentable(type))
  {
    v9 = [self cdlsFetchManagedObjectWithUUID:dCopy ofManagedObjectType:-[objc_class cd_entityClass](type error:{"cd_entityClass"), error}];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMDBackingStore *)v11 dependencySortTestInterface:v12, v13];
  }
}

+ (id)cdlsBackingStoreForHomeManagerWithError:(id *)error
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"030440CB-974B-44F3-8786-7191F302252E"];
  v4 = __backingStoreWithUUID(v3, 0);

  return v4;
}

+ (id)cdlsBackingStoreWithHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  backingStoreUUID = [handleCopy backingStoreUUID];
  homeUUID = [handleCopy homeUUID];

  v7 = __backingStoreWithUUID(backingStoreUUID, homeUUID);

  return v7;
}

+ (id)cdlsActiveBackingStores
{
  if (cdlsActiveBackingStores_onceToken != -1)
  {
    dispatch_once(&cdlsActiveBackingStores_onceToken, &__block_literal_global_49757);
  }

  v3 = cdlsActiveBackingStores_activeBackingStores;

  return v3;
}

void __52__HMDBackingStore_CoreData__cdlsActiveBackingStores__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = cdlsActiveBackingStores_activeBackingStores;
  cdlsActiveBackingStores_activeBackingStores = v0;
}

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

- (void)submitBlock:(id)block
{
  blockCopy = block;
  home = [(HMDBackingStore *)self home];
  workQueue = [home workQueue];
  if (workQueue)
  {
    workQueue2 = workQueue;

LABEL_4:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__HMDBackingStore_submitBlock___block_invoke;
    block[3] = &unk_278688B80;
    v12 = blockCopy;
    v9 = blockCopy;
    dispatch_async(workQueue2, block);

    return;
  }

  homeManager = [(HMDBackingStore *)self homeManager];
  workQueue2 = [homeManager workQueue];

  if (workQueue2)
  {
    goto LABEL_4;
  }

  v10 = _HMFPreconditionFailure();
  __31__HMDBackingStore_submitBlock___block_invoke(v10);
}

- (id)logIdentifier
{
  uuid = [(HMDBackingStore *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)commit:(id)commit run:(BOOL)run save:(BOOL)save archiveInline:(BOOL)inline coreDataBlock:(id)block completionHandler:(id)handler
{
  saveCopy = save;
  runCopy = run;
  v84 = *MEMORY[0x277D85DE8];
  commitCopy = commit;
  blockCopy = block;
  handlerCopy = handler;
  if ([commitCopy committed])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      options = [commitCopy options];
      *buf = 138543618;
      v79 = v19;
      v80 = 2112;
      v81 = options;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@double-committing a transaction probably indicates a bad state (ignoring this commit) for %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_30;
  }

  [commitCopy setCommitted:1];
  objects = [commitCopy objects];
  hmf_isEmpty = [objects hmf_isEmpty];

  if (!hmf_isEmpty)
  {
    options2 = [commitCopy options];
    source = [options2 source];

    v32 = source & 0xFFFFFFFFFFFFFFFELL;
    if (commit_run_save_archiveInline_coreDataBlock_completionHandler___hmf_once_t4 != -1)
    {
      dispatch_once(&commit_run_save_archiveInline_coreDataBlock_completionHandler___hmf_once_t4, &__block_literal_global_90);
    }

    v70 = commit_run_save_archiveInline_coreDataBlock_completionHandler___hmf_once_v5;
    home = [(HMDBackingStore *)self home];
    objects2 = [commitCopy objects];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __81__HMDBackingStore_commit_run_save_archiveInline_coreDataBlock_completionHandler___block_invoke_2;
    v75[3] = &unk_278684240;
    v35 = home;
    v76 = v35;
    v36 = [objects2 na_any:v75];

    if (v32 == 2)
    {
      goto LABEL_28;
    }

    if (!v35)
    {
      goto LABEL_28;
    }

    administratorHandler = [v35 administratorHandler];
    shouldRelayMessages = [administratorHandler shouldRelayMessages];

    if (!shouldRelayMessages)
    {
      goto LABEL_28;
    }

    v69 = v35;
    options3 = [commitCopy options];
    label = [options3 label];
    v41 = [v70 containsObject:label];

    if (v41)
    {
      v42 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v45 = v68 = v42;
        options4 = [commitCopy options];
        label2 = [options4 label];
        *buf = 138543618;
        v79 = v45;
        v80 = 2112;
        v81 = label2;
        v48 = "%{public}@Transaction '%@' is temporarily allowed even while not the designated writer";
        v49 = v44;
        v50 = OS_LOG_TYPE_DEBUG;
LABEL_26:
        _os_log_impl(&dword_229538000, v49, v50, v48, buf, 0x16u);

        v42 = v68;
      }

LABEL_27:
      v35 = v69;

      objc_autoreleasePoolPop(v42);
LABEL_28:
      [(HMDBackingStore *)self cdlsCommit:commitCopy run:runCopy save:saveCopy coreDataBlock:blockCopy completionHandler:handlerCopy];
LABEL_29:

      goto LABEL_30;
    }

    if (v36)
    {
      v42 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v44 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      HMFGetLogIdentifier();
      v45 = v68 = v42;
      options4 = [commitCopy options];
      label2 = [options4 label];
      *buf = 138543618;
      v79 = v45;
      v80 = 2112;
      v81 = label2;
      v48 = "%{public}@Transaction '%@' is allowed even while not the designated writer because it is an allowed local fallback";
    }

    else
    {
      options5 = [commitCopy options];
      cdTransactionAuthor = [options5 cdTransactionAuthor];

      v42 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v55 = HMFGetOSLogHandle();
      v44 = v55;
      if (cdTransactionAuthor != 10)
      {
        v35 = v69;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          [commitCopy options];
          v58 = v57 = v42;
          enabledResidents = [v69 enabledResidents];
          v60 = [enabledResidents na_map:&__block_literal_global_101];
          *buf = 138543874;
          v79 = v56;
          v80 = 2112;
          v81 = v58;
          v82 = 2114;
          v83 = v60;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Rejecting transaction commit while not designated writer: %@, residents: %{public}@", buf, 0x20u);

          v35 = v69;
          v42 = v57;
        }

        objc_autoreleasePoolPop(v42);
        v61 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v61);
        }

        else
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          objects3 = [commitCopy objects];
          v63 = [objects3 countByEnumeratingWithState:&v71 objects:v77 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v72;
            do
            {
              for (i = 0; i != v64; ++i)
              {
                if (*v72 != v65)
                {
                  objc_enumerationMutation(objects3);
                }

                message = [*(*(&v71 + 1) + 8 * i) message];
                [message respondWithError:v61];
              }

              v64 = [objects3 countByEnumeratingWithState:&v71 objects:v77 count:16];
            }

            while (v64);
          }

          v35 = v69;
        }

        goto LABEL_29;
      }

      if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      HMFGetLogIdentifier();
      v45 = v68 = v42;
      options4 = [commitCopy options];
      label2 = [options4 label];
      *buf = 138543618;
      v79 = v45;
      v80 = 2112;
      v81 = label2;
      v48 = "%{public}@Transaction '%@' is allowed even while not the designated writer because it is a force push";
    }

    v49 = v44;
    v50 = OS_LOG_TYPE_INFO;
    goto LABEL_26;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    options6 = [commitCopy options];
    *buf = 138543618;
    v79 = v26;
    v80 = 2112;
    v81 = options6;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Rejecting empty transaction: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v28 = _Block_copy(handlerCopy);
  if (v28)
  {
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v28[2](v28, v29);
  }

LABEL_30:
}

uint64_t __81__HMDBackingStore_commit_run_save_archiveInline_coreDataBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 administratorHandler];
  v5 = [v3 message];

  v6 = [v4 allowLocalFallbackForMessage:v5];
  return v6;
}

void __81__HMDBackingStore_commit_run_save_archiveInline_coreDataBlock_completionHandler___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_283E75C68];
  v1 = commit_run_save_archiveInline_coreDataBlock_completionHandler___hmf_once_v5;
  commit_run_save_archiveInline_coreDataBlock_completionHandler___hmf_once_v5 = v0;
}

- (id)transaction:(id)transaction options:(id)options
{
  optionsCopy = options;
  transactionCopy = transaction;
  v8 = [[HMDBackingStoreTransactionBlock alloc] initWithBackingStore:self options:optionsCopy label:transactionCopy];

  return v8;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  name = [(HMCContext *)contextCopy name];
  contextName = self->_contextName;
  self->_contextName = name;

  transactionAuthor = [(HMCContext *)contextCopy transactionAuthor];
  contextTransactionAuthor = self->_contextTransactionAuthor;
  self->_contextTransactionAuthor = transactionAuthor;

  context = self->_context;
  self->_context = contextCopy;
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
  v78 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  managerCopy = manager;
  storeCopy = store;
  isWatch();
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v73 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Running HMDBackingStoreSaveToPersistentStore operation to save.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  activeControllerPairingIdentifier = [systemStore activeControllerPairingIdentifier];
  v19 = objc_msgSend_copy(activeControllerPairingIdentifier);

  if (v19)
  {
    v20 = reasonCopy;
    if (storeCopy)
    {
      WeakRetained = objc_loadWeakRetained(storeCopy + 10);
      activeControllerKeyUsername = [WeakRetained activeControllerKeyUsername];

      if (activeControllerKeyUsername)
      {
        v68 = managerCopy;
        v69 = activeControllerKeyUsername;
        v67 = v20;
        v23 = v20;
        v24 = objc_loadWeakRetained(storeCopy + 10);
        v25 = objc_autoreleasePoolPush();
        v66 = v23;
        v26 = [v24 dataForPersistentStoreIncrementingGeneration:counterCopy reason:v23];
        v27 = v26;
        if (v26 && [v26 length])
        {
          v64 = v24;
          v28 = objc_autoreleasePoolPush();
          v29 = storeCopy;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v31 = v63 = v28;
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "length")}];
            *buf = 138543874;
            v73 = v31;
            v74 = 2112;
            v75 = v69;
            v76 = 2112;
            v77 = v32;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Controller User Name : [%@], Saving home data size: %@", buf, 0x20u);

            v28 = v63;
          }

          objc_autoreleasePoolPop(v28);
          local = [v29 local];
          v70 = 0;
          [local _insertArchive:v27 identifier:@"homedata" controllerUserName:v69 error:&v70];
          v34 = v70;

          objc_autoreleasePoolPop(v25);
          managerCopy = v68;
          v24 = v64;
          if (!v34)
          {
            if ((v29[1] & 1) == 0)
            {
              v35 = objc_autoreleasePoolPush();
              v36 = v29;
              v37 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = HMFGetLogIdentifier();
                *buf = 138543362;
                v73 = v38;
                _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Will attempt to remove legacy archive", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v35);
              homeManager = [v36 homeManager];
              v71 = 0;
              v40 = [homeManager _removeLegacyHomeArchive:&v71];
              v41 = v71;

              if (v40)
              {
                *(v36 + 8) = 1;
              }

              else
              {
                v60 = objc_autoreleasePoolPush();
                v61 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  v62 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v73 = v62;
                  v74 = 2112;
                  v75 = v41;
                  _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove home data error:%@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v60);
              }

              v24 = v64;
            }

            v34 = 0;
          }
        }

        else
        {
          v46 = objc_autoreleasePoolPush();
          v47 = storeCopy;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v65 = v19;
            v49 = activeControllerKeyUsername;
            v50 = reasonCopy;
            v51 = v25;
            v53 = v52 = v24;
            *buf = 138543362;
            v73 = v53;
            _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@No home data to save.", buf, 0xCu);

            v24 = v52;
            v25 = v51;
            reasonCopy = v50;
            activeControllerKeyUsername = v49;
            v19 = v65;
          }

          objc_autoreleasePoolPop(v46);
          objc_autoreleasePoolPop(v25);
          v34 = 0;
          managerCopy = v68;
        }

        v20 = v67;
      }

      else
      {
        v54 = objc_autoreleasePoolPush();
        v55 = storeCopy;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v58 = v57 = v20;
          *buf = 138543362;
          v73 = v58;
          _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Could not find controller key when trying to save home archive", buf, 0xCu);

          v20 = v57;
        }

        objc_autoreleasePoolPop(v54);
        v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v45;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not find controller key when trying to run transaction", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
    v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  }

  return v34;
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
  v20[3] = &unk_278684288;
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

void __127__HMDBackingStore_saveToPersistentStoreWithReason_homeManager_shouldIncrementGenerationCounter_backingStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _saveToLocalStoreWithReason:*(a1 + 32) homeManager:*(a1 + 40) shouldIncrementGenerationCounter:*(a1 + 72) backingStore:*(a1 + 48)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

void __30__HMDBackingStore_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11_242031;
  logCategory__hmf_once_v11_242031 = v0;
}

+ (NSSet)internalAllowedTypes
{
  if (internalAllowedTypes_onceToken != -1)
  {
    dispatch_once(&internalAllowedTypes_onceToken, &__block_literal_global_81_242036);
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
    dispatch_once(&deeplyProblematicObjectTypes_onceToken, &__block_literal_global_73_242040);
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
  if (allowedTypes_onceToken_242049 != -1)
  {
    dispatch_once(&allowedTypes_onceToken_242049, &__block_literal_global_242050);
  }

  v3 = allowedTypes__allowedTypes_242051;

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
  v3 = allowedTypes__allowedTypes_242051;
  allowedTypes__allowedTypes_242051 = v2;
}

@end