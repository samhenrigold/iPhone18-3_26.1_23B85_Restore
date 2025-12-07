@interface HMDCHIPControllerPrivateStorage
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllSDKKeyValuePairs;
- (BOOL)removeValueForSDKKey:(id)key;
- (BOOL)setSDKKeyValuePairs:(id)pairs;
- (BOOL)setValue:(id)value forSDKKey:(id)key;
- (HMDCHIPControllerPrivateStorage)initWithHome:(id)home;
- (HMDHome)home;
- (NSDictionary)debugDictionaryRepresentation;
- (NSNumber)cachedLocalControllerNodeID;
- (id)allSDKKeyValuePairs;
- (id)attributeDescriptions;
- (id)fetchKeyValuePairForKey:(void *)key home:(void *)home context:;
- (id)fetchRequestForHome:(unint64_t)home maxExpectedCount:;
- (id)homeWithContext:(void *)context;
- (id)logIdentifier;
- (id)privateDataSourceForControllerNodeID:(id)d;
- (id)valueForSDKKey:(id)key;
- (uint64_t)removeAllForHome:(void *)home context:;
- (unint64_t)hash;
@end

@implementation HMDCHIPControllerPrivateStorage

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  v5 = [v3 initWithName:@"Home" value:home];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  controllerNodeID = [(HMDCHIPControllerPrivateStorage *)self controllerNodeID];
  v8 = [v6 initWithName:@"Controller Node ID" value:controllerNodeID];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  uuid = [home uuid];
  controllerNodeID = [(HMDCHIPControllerPrivateStorage *)self controllerNodeID];
  v7 = [v3 stringWithFormat:@"%@/%@", uuid, controllerNodeID];

  return v7;
}

- (unint64_t)hash
{
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  uuid = [home uuid];
  v5 = [uuid hash];

  controllerNodeID = [(HMDCHIPControllerPrivateStorage *)self controllerNodeID];
  v7 = [controllerNodeID hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[HMDCHIPControllerPrivateStorage home](self, "home"), v7 = objc_claimAutoreleasedReturnValue(), [v6 home], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
  {
    controllerNodeID = [(HMDCHIPControllerPrivateStorage *)self controllerNodeID];
    controllerNodeID2 = [v6 controllerNodeID];
    v12 = HMFEqualObjects();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeAllSDKKeyValuePairs
{
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HMDCHIPControllerPrivateStorage_removeAllSDKKeyValuePairs__block_invoke;
  v9[3] = &unk_27868A4D8;
  v9[4] = self;
  v7 = managedObjectContext;
  v10 = v7;
  v11 = &v12;
  [context unsafeSynchronousBlock:v9];
  LOBYTE(home) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return home;
}

void __60__HMDCHIPControllerPrivateStorage_removeAllSDKKeyValuePairs__block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(HMDCHIPControllerPrivateStorage *)a1[4] homeWithContext:?];
  if (v3)
  {
    *(*(a1[6] + 8) + 24) = [(HMDCHIPControllerPrivateStorage *)a1[4] removeAllForHome:v3 context:a1[5]];
  }

  objc_autoreleasePoolPop(v2);
}

- (id)homeWithContext:(void *)context
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (context)
  {
    [v3 assertIsExecuting];
    home = [context home];
    uuid = [home uuid];
    v7 = [(_MKFModel *)_MKFHome modelWithModelID:uuid context:v4];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      contextCopy = context;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        home2 = [contextCopy home];
        uuid2 = [home2 uuid];
        v16 = 138543618;
        v17 = v12;
        v18 = 2112;
        v19 = uuid2;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to find home %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)removeAllForHome:(void *)home context:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  homeCopy = home;
  v7 = homeCopy;
  if (self)
  {
    [homeCopy assertIsExecuting];
    v8 = [(HMDCHIPControllerPrivateStorage *)self fetchRequestForHome:v5 maxExpectedCount:0];
    v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v8];
    v20 = 0;
    v10 = [v7 executeRequest:v9 error:&v20];
    v11 = v20;
    result = [v10 result];
    bOOLValue = [result BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v17 = v19 = v14;
        *buf = 138543618;
        v22 = v17;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all: %@", buf, 0x16u);

        v14 = v19;
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)fetchRequestForHome:(unint64_t)home maxExpectedCount:
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = +[_MKFMatterLocalKeyValuePair fetchRequest];
  v13[0] = @"key";
  v13[1] = @"value";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v6 setPropertiesToFetch:v7];

  v8 = MEMORY[0x277CCAC30];
  if (v5)
  {
    home = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"home", v5];
    [v6 setPredicate:home];
  }

  else
  {
    home = [self home];
    uuid = [home uuid];
    v11 = [v8 predicateWithFormat:@"%K.%K == %@", @"home", @"modelID", uuid];
    [v6 setPredicate:v11];
  }

  if (home >= 0x33)
  {
    [v6 setFetchBatchSize:50];
  }

  return v6;
}

- (BOOL)setSDKKeyValuePairs:(id)pairs
{
  pairsCopy = pairs;
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HMDCHIPControllerPrivateStorage_setSDKKeyValuePairs___block_invoke;
  v13[3] = &unk_278689D98;
  v13[4] = self;
  v9 = managedObjectContext;
  v14 = v9;
  v10 = pairsCopy;
  v15 = v10;
  v11 = context;
  v16 = v11;
  v17 = &v18;
  [v11 unsafeSynchronousBlock:v13];
  LOBYTE(home) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return home;
}

void __55__HMDCHIPControllerPrivateStorage_setSDKKeyValuePairs___block_invoke(uint64_t a1)
{
  v81[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [(HMDCHIPControllerPrivateStorage *)*(a1 + 32) homeWithContext:?];
  if (v3)
  {
    v59 = v2;
    v4 = [*(a1 + 48) allKeys];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v58 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v9;
    v61 = v8;
    v60 = v7;
    if (v6)
    {
      [v9 assertIsExecuting];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %K IN %@", @"key", v7];
      v12 = -[HMDCHIPControllerPrivateStorage fetchRequestForHome:maxExpectedCount:](v6, v8, [v7 count]);
      v13 = MEMORY[0x277CCA920];
      v14 = [v12 predicate];
      v81[0] = v14;
      v81[1] = v11;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
      v16 = [v13 andPredicateWithSubpredicates:v15];
      [v12 setPredicate:v16];

      v73 = 0;
      v17 = [v10 executeFetchRequest:v12 error:&v73];
      v18 = v73;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v6;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v75 = v23;
          v76 = 2112;
          v77 = v18;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch matching keys: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v24 = objc_autoreleasePoolPush();
        v25 = v21;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = HMFGetLogIdentifier();
          [v12 predicate];
          v28 = obja = v24;
          *buf = 138543618;
          v75 = v27;
          v76 = 2112;
          v77 = v28;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Failed predicate: %@", buf, 0x16u);

          v24 = obja;
        }

        objc_autoreleasePoolPop(v24);
        v19 = [MEMORY[0x277CBEA60] array];
        v7 = v60;
      }
    }

    else
    {
      v19 = 0;
    }

    v29 = v61;
    v57 = v19;
    if ([v19 count])
    {
      v30 = [MEMORY[0x277CBEB58] setWithArray:v7];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __55__HMDCHIPControllerPrivateStorage_setSDKKeyValuePairs___block_invoke_2;
      v69[3] = &unk_278689D70;
      v70 = v30;
      v31 = *(a1 + 48);
      v32 = *(a1 + 32);
      v71 = v31;
      v72 = v32;
      v33 = v30;
      [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v69];
      v34 = [v33 allObjects];
    }

    else
    {
      v34 = v7;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v34;
    v35 = [obj countByEnumeratingWithState:&v65 objects:v80 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v66;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v66 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v65 + 1) + 8 * i);
          v40 = [*(a1 + 48) objectForKeyedSubscript:v39];
          v41 = objc_autoreleasePoolPush();
          v42 = *(a1 + 32);
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543874;
            v75 = v44;
            v76 = 2112;
            v77 = v39;
            v78 = 2112;
            v79 = v40;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Setting new value for '%@': %@", buf, 0x20u);

            v29 = v61;
          }

          objc_autoreleasePoolPop(v41);
          v45 = [[_MKFMatterLocalKeyValuePair alloc] initWithContext:*(a1 + 40)];
          [(_MKFMatterLocalKeyValuePair *)v45 setHome:v29];
          [(_MKFMatterLocalKeyValuePair *)v45 setKey:v39];
          [(_MKFMatterLocalKeyValuePair *)v45 setValue:v40];
        }

        v36 = [obj countByEnumeratingWithState:&v65 objects:v80 count:16];
      }

      while (v36);
    }

    if ([*(a1 + 40) hasChanges])
    {
      v46 = *(a1 + 56);
      v64 = 0;
      v47 = [v46 save:&v64];
      v48 = v64;
      v49 = objc_autoreleasePoolPush();
      v50 = *(a1 + 32);
      v51 = HMFGetOSLogHandle();
      v52 = v51;
      if (v47)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v53 = HMFGetLogIdentifier();
          v54 = [*(a1 + 48) count];
          *buf = 138543618;
          v75 = v53;
          v76 = 2048;
          v77 = v54;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Successfully saved %tu value(s)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v49);
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      else
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v55 = HMFGetLogIdentifier();
          v56 = [*(a1 + 48) count];
          *buf = 138543874;
          v75 = v55;
          v76 = 2048;
          v77 = v56;
          v78 = 2112;
          v79 = v48;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to save %tu value(s): %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v49);
      }
    }

    v3 = v58;
    v2 = v59;
  }

  objc_autoreleasePoolPop(v2);
}

void __55__HMDCHIPControllerPrivateStorage_setSDKKeyValuePairs___block_invoke_2(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 key];
  [a1[4] removeObject:v4];
  v5 = [a1[5] objectForKeyedSubscript:v4];
  v6 = [v3 value];
  v7 = [v6 isEqual:v5];

  v8 = objc_autoreleasePoolPush();
  v9 = a1[6];
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Not updating '%@' with the same value: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v13;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating value for '%@': %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v3 setValue:v5];
  }
}

- (id)allSDKKeyValuePairs
{
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__279785;
  v16 = __Block_byref_object_dispose__279786;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HMDCHIPControllerPrivateStorage_allSDKKeyValuePairs__block_invoke;
  v9[3] = &unk_27868A4D8;
  v9[4] = self;
  v6 = context;
  v10 = v6;
  v11 = &v12;
  [v6 unsafeSynchronousBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__HMDCHIPControllerPrivateStorage_allSDKKeyValuePairs__block_invoke(id a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 4);
  v4 = [*(a1 + 5) managedObjectContext];
  v5 = v4;
  if (v3)
  {
    [v4 assertIsExecuting];
    v6 = [(HMDCHIPControllerPrivateStorage *)v3 fetchRequestForHome:0xFFFFFFFFFFFFFFFFLL maxExpectedCount:?];
    v49 = 0;
    v7 = [v5 executeFetchRequest:v6 error:&v49];
    v8 = v49;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      obj = a1;
      v10 = objc_autoreleasePoolPush();
      v11 = v3;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v13;
        v52 = 2112;
        v53 = v8;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch all keys: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = objc_autoreleasePoolPush();
      v15 = v11;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        [v6 predicate];
        v19 = v18 = v2;
        *buf = 138543618;
        v51 = v17;
        v52 = 2112;
        v53 = v19;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Failed predicate: %@", buf, 0x16u);

        v2 = v18;
      }

      objc_autoreleasePoolPop(v14);
      v9 = [MEMORY[0x277CBEA60] array];
      a1 = obj;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([v9 count])
  {
    v41 = v2;
    v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v40 = v9;
    obja = v9;
    v21 = [obja countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      do
      {
        v24 = 0;
        v42 = v22;
        do
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v45 + 1) + 8 * v24);
          v26 = [v25 key];
          v27 = [v25 value];
          [v20 setObject:v27 forKeyedSubscript:v26];
          v28 = objc_autoreleasePoolPush();
          v29 = *(a1 + 4);
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v31 = v23;
            v32 = v20;
            v34 = v33 = a1;
            *buf = 138543874;
            v51 = v34;
            v52 = 2112;
            v53 = v26;
            v54 = 2112;
            v55 = v27;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Found value for '%@': %@", buf, 0x20u);

            a1 = v33;
            v20 = v32;
            v23 = v31;
            v22 = v42;
          }

          objc_autoreleasePoolPop(v28);
          ++v24;
        }

        while (v22 != v24);
        v22 = [obja countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v22);
    }

    v35 = objc_msgSend_copy(v20);
    v36 = *(*(a1 + 6) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

    v9 = v40;
    v2 = v41;
  }

  else
  {
    v38 = *(*(a1 + 6) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = MEMORY[0x277CBEC10];
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)removeValueForSDKKey:(id)key
{
  keyCopy = key;
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HMDCHIPControllerPrivateStorage_removeValueForSDKKey___block_invoke;
  v13[3] = &unk_278689D98;
  v13[4] = self;
  v9 = keyCopy;
  v14 = v9;
  v10 = managedObjectContext;
  v15 = v10;
  v17 = &v18;
  v11 = context;
  v16 = v11;
  [v11 unsafeSynchronousBlock:v13];
  LOBYTE(managedObjectContext) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return managedObjectContext;
}

void __56__HMDCHIPControllerPrivateStorage_removeValueForSDKKey___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [(HMDCHIPControllerPrivateStorage *)*(a1 + 32) fetchKeyValuePairForKey:0 home:*(a1 + 48) context:?];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = [v3 value];
      *buf = 138543874;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Removing value for '%@': %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) deleteObject:v3];
    v11 = *(a1 + 56);
    v24 = 0;
    v12 = [v11 save:&v24];
    v13 = v24;
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v12)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 40);
        *buf = 138543618;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully removed value for '%@'", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 40);
        *buf = 138543874;
        v26 = v22;
        v27 = 2112;
        v28 = v23;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove value for '%@': %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    if (v7)
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@No value for '%@'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

- (id)fetchKeyValuePairForKey:(void *)key home:(void *)home context:
{
  v37[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  keyCopy = key;
  homeCopy = home;
  v10 = homeCopy;
  if (self)
  {
    [homeCopy assertIsExecuting];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"key", v7];
    v12 = [(HMDCHIPControllerPrivateStorage *)self fetchRequestForHome:keyCopy maxExpectedCount:1uLL];
    v13 = MEMORY[0x277CCA920];
    predicate = [v12 predicate];
    v37[0] = predicate;
    v37[1] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v16 = [v13 andPredicateWithSubpredicates:v15];
    [v12 setPredicate:v16];

    v32 = 0;
    v17 = [v10 executeFetchRequest:v12 error:&v32];
    v18 = v32;
    if (v17)
    {
      self = [v17 firstObject];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v22 = v30 = v19;
        *buf = 138543618;
        v34 = v22;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch single key: %@", buf, 0x16u);

        v19 = v30;
      }

      objc_autoreleasePoolPop(v19);
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v26 = v29 = v23;
        [v12 predicate];
        v27 = v31 = v7;
        *buf = 138543618;
        v34 = v26;
        v35 = 2112;
        v36 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Failed predicate: %@", buf, 0x16u);

        v7 = v31;
        v23 = v29;
      }

      objc_autoreleasePoolPop(v23);
      self = 0;
    }
  }

  return self;
}

- (BOOL)setValue:(id)value forSDKKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__HMDCHIPControllerPrivateStorage_setValue_forSDKKey___block_invoke;
  v17[3] = &unk_278689D48;
  v17[4] = self;
  v12 = managedObjectContext;
  v18 = v12;
  v13 = keyCopy;
  v19 = v13;
  v14 = valueCopy;
  v20 = v14;
  v15 = context;
  v21 = v15;
  v22 = &v23;
  [v15 unsafeSynchronousBlock:v17];
  LOBYTE(context) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return context;
}

void __54__HMDCHIPControllerPrivateStorage_setValue_forSDKKey___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [(HMDCHIPControllerPrivateStorage *)*(a1 + 32) homeWithContext:?];
  if (v3)
  {
    v4 = [(HMDCHIPControllerPrivateStorage *)*(a1 + 32) fetchKeyValuePairForKey:v3 home:*(a1 + 40) context:?];
    v5 = v4;
    if (v4)
    {
      v6 = [(_MKFMatterLocalKeyValuePair *)v4 value];
      v7 = [v6 isEqual:*(a1 + 56)];

      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        if (v11)
        {
          v12 = HMFGetLogIdentifier();
          v13 = *(a1 + 48);
          v14 = *(a1 + 56);
          *buf = 138543874;
          v44 = v12;
          v45 = 2112;
          v46 = v13;
          v47 = 2112;
          v48 = v14;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Not updating '%@' with the same value: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v8);
        v15 = v5;
        goto LABEL_29;
      }

      if (v11)
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 48);
        v24 = *(a1 + 56);
        *buf = 138543874;
        v44 = v22;
        v45 = 2112;
        v46 = v23;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Updating value for '%@': %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      [(_MKFMatterLocalKeyValuePair *)v5 setValue:*(a1 + 56)];
      v15 = v5;
    }

    else
    {
      v15 = [[_MKFMatterLocalKeyValuePair alloc] initWithContext:*(a1 + 40)];
      [(_MKFMatterLocalKeyValuePair *)v15 setHome:v3];
      [(_MKFMatterLocalKeyValuePair *)v15 setKey:*(a1 + 48)];
      [(_MKFMatterLocalKeyValuePair *)v15 setValue:*(a1 + 56)];
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 48);
        v21 = *(a1 + 56);
        *buf = 138543874;
        v44 = v19;
        v45 = 2112;
        v46 = v20;
        v47 = 2112;
        v48 = v21;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Setting new value for '%@': %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
    }

    v25 = *(a1 + 64);
    v42 = 0;
    v26 = [v25 save:&v42];
    v27 = v42;
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (v26)
    {
      v32 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
      if (v5)
      {
        if (v32)
        {
          v33 = HMFGetLogIdentifier();
          v34 = *(a1 + 48);
          *buf = 138543618;
          v44 = v33;
          v45 = 2112;
          v46 = v34;
          v35 = "%{public}@Successfully updated value for '%@'";
LABEL_22:
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, v35, buf, 0x16u);
        }
      }

      else if (v32)
      {
        v33 = HMFGetLogIdentifier();
        v40 = *(a1 + 48);
        *buf = 138543618;
        v44 = v33;
        v45 = 2112;
        v46 = v40;
        v35 = "%{public}@Successfully saved new value for '%@'";
        goto LABEL_22;
      }

      objc_autoreleasePoolPop(v28);
      *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    v36 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v36)
      {
        v37 = HMFGetLogIdentifier();
        v38 = *(a1 + 48);
        *buf = 138543874;
        v44 = v37;
        v45 = 2112;
        v46 = v38;
        v47 = 2112;
        v48 = v27;
        v39 = "%{public}@Failed to update value for '%@': %@";
LABEL_26:
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, v39, buf, 0x20u);
      }
    }

    else if (v36)
    {
      v37 = HMFGetLogIdentifier();
      v41 = *(a1 + 48);
      *buf = 138543874;
      v44 = v37;
      v45 = 2112;
      v46 = v41;
      v47 = 2112;
      v48 = v27;
      v39 = "%{public}@Failed to save new value for '%@': %@";
      goto LABEL_26;
    }

    objc_autoreleasePoolPop(v28);
    goto LABEL_28;
  }

LABEL_30:

  objc_autoreleasePoolPop(v2);
}

- (id)valueForSDKKey:(id)key
{
  keyCopy = key;
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__279785;
  v20 = __Block_byref_object_dispose__279786;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__HMDCHIPControllerPrivateStorage_valueForSDKKey___block_invoke;
  v12[3] = &unk_278689D20;
  v12[4] = self;
  v8 = keyCopy;
  v13 = v8;
  v9 = context;
  v14 = v9;
  v15 = &v16;
  [v9 unsafeSynchronousBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __50__HMDCHIPControllerPrivateStorage_valueForSDKKey___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) managedObjectContext];
  v6 = [(HMDCHIPControllerPrivateStorage *)v3 fetchKeyValuePairForKey:v4 home:0 context:v5];

  if (v6)
  {
    v7 = [v6 value];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v20 = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v16 = "%{public}@Found value for '%@': %@";
      v17 = v12;
      v18 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, v16, &v20, v18);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v19;
      v16 = "%{public}@No value for '%@'";
      v17 = v12;
      v18 = 22;
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v10);
  objc_autoreleasePoolPop(v2);
}

- (NSNumber)cachedLocalControllerNodeID
{
  controllerNodeID = [(HMDCHIPControllerPrivateStorage *)self controllerNodeID];

  if (!controllerNodeID)
  {
    if (self)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy__279785;
      v14 = __Block_byref_object_dispose__279786;
      v15 = 0;
      home = [(HMDCHIPControllerPrivateStorage *)self home];
      backingStore = [home backingStore];
      context = [backingStore context];

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __52__HMDCHIPControllerPrivateStorage__fetchLocalNodeID__block_invoke;
      v9[3] = &unk_27868A688;
      v9[4] = self;
      v9[5] = &v10;
      [context unsafeSynchronousBlock:v9];
      v7 = v11[5];

      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }

    [(HMDCHIPControllerPrivateStorage *)self setControllerNodeID:v7];
  }

  return [(HMDCHIPControllerPrivateStorage *)self controllerNodeID];
}

void __52__HMDCHIPControllerPrivateStorage__fetchLocalNodeID__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) home];
  v4 = [v3 uuid];
  v5 = [HMCContext findHomeWithModelID:v4];

  if (v5)
  {
    v6 = [v5 matterControllerNodeID];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFHome for : %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)privateDataSourceForControllerNodeID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (!dCopy || [dCopy isEqualToNumber:&unk_283E753E0])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize controller's private storage as node ID is invalid (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_6;
  }

  v11 = v5;
  v12 = v11;
  if (self)
  {
    home = [(HMDCHIPControllerPrivateStorage *)self home];
    backingStore = [home backingStore];
    context = [backingStore context];

    managedObjectContext = [context managedObjectContext];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __56__HMDCHIPControllerPrivateStorage__setControllerNodeID___block_invoke;
    v27 = &unk_278689D98;
    selfCopy2 = self;
    v17 = managedObjectContext;
    v29 = v17;
    v18 = v12;
    v30 = v18;
    v32 = &v22;
    v19 = context;
    v31 = v19;
    [v19 unsafeSynchronousBlock:buf];
    LOBYTE(backingStore) = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
    if ((backingStore & 1) == 0)
    {
LABEL_6:
      self = 0;
      goto LABEL_7;
    }

    [(HMDCHIPControllerPrivateStorage *)self setControllerNodeID:v18];
    v20 = [HMDCHIPControllerPrivateDataSource alloc];
    home2 = [(HMDCHIPControllerPrivateStorage *)self home];
    self = [(HMDCHIPControllerPrivateDataSource *)v20 initWithHome:home2 nodeID:v18];
  }

  else
  {
  }

LABEL_7:

  return self;
}

void __56__HMDCHIPControllerPrivateStorage__setControllerNodeID___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [(HMDCHIPControllerPrivateStorage *)*(a1 + 32) homeWithContext:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 matterControllerNodeID];
    v6 = HMFEqualObjects();

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = *(a1 + 48);
        *buf = 138543618;
        v25 = v11;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Not updating controller node id with the same value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v4 matterControllerNodeID];
        v15 = *(a1 + 48);
        *buf = 138543874;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting private storage as the controller node id has changed: %@ -> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      if ([(HMDCHIPControllerPrivateStorage *)*(a1 + 32) removeAllForHome:v4 context:*(a1 + 40)])
      {
        [v4 setMatterControllerNodeID:*(a1 + 48)];
        v16 = *(a1 + 56);
        v23 = 0;
        v17 = [v16 save:&v23];
        v18 = v23;
        if (v17)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 32);
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543618;
            v25 = v22;
            v26 = 2112;
            v27 = v18;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to save controller node id: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (NSDictionary)debugDictionaryRepresentation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Home UUID";
  home = [(HMDCHIPControllerPrivateStorage *)self home];
  uuid = [home uuid];
  v9[1] = @"Controller Node ID";
  v10[0] = uuid;
  controllerNodeID = [(HMDCHIPControllerPrivateStorage *)self controllerNodeID];
  null = controllerNodeID;
  if (!controllerNodeID)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = null;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!controllerNodeID)
  {
  }

  return v7;
}

- (HMDCHIPControllerPrivateStorage)initWithHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    v5 = homeCopy;
    v11.receiver = self;
    v11.super_class = HMDCHIPControllerPrivateStorage;
    v6 = [(HMDCHIPControllerPrivateStorage *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_home, v5);
    }

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(HMDCHIPControllerPrivateStorage *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t33_279827 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t33_279827, &__block_literal_global_279828);
  }

  v3 = logCategory__hmf_once_v34_279829;

  return v3;
}

void __46__HMDCHIPControllerPrivateStorage_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v34_279829;
  logCategory__hmf_once_v34_279829 = v0;
}

@end