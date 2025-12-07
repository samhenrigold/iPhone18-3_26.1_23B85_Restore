@interface HMDBackingStoreTransactionBlock
+ (id)logCategory;
+ (void)sort:(id)sort;
- (HMDBackingStore)backingStore;
- (HMDBackingStoreTransactionBlock)initWithBackingStore:(id)store options:(id)options label:(id)label;
- (NSString)description;
- (void)add:(id)add withMessage:(id)message;
- (void)addObjects:(id)objects;
- (void)dumpWithVerbosity:(BOOL)verbosity prefix:(id)prefix logType:(unsigned __int8)type;
- (void)run:(id)run;
- (void)runWithCoreDataBlock:(id)block withCompletionBlock:(id)completionBlock;
- (void)runWithoutSave:(id)save;
- (void)save:(id)save;
@end

@implementation HMDBackingStoreTransactionBlock

- (HMDBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

- (void)dumpWithVerbosity:(BOOL)verbosity prefix:(id)prefix logType:(unsigned __int8)type
{
  typeCopy = type;
  verbosityCopy = verbosity;
  v39 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, typeCopy))
  {
    v10 = HMFGetLogIdentifier();
    options = [(HMDBackingStoreTransactionBlock *)selfCopy options];
    v12 = [options debugString:0];
    *buf = 138543874;
    v34 = v10;
    v35 = 2112;
    v36 = prefixCopy;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_229538000, v9, typeCopy, "%{public}@%@options: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  objects = [(HMDBackingStoreTransactionBlock *)selfCopy objects];
  v14 = [objects count];

  if (v14)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(HMDBackingStoreTransactionBlock *)selfCopy objects];
    v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          change = [v19 change];
          v21 = changeTypeAsNSString([change objectChangeType]);

          if (verbosityCopy)
          {
            v22 = [v21 isEqual:@"delete"] ^ 1;
          }

          else
          {
            v22 = 0;
          }

          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@:", prefixCopy, v21];
          change2 = [v19 change];
          [change2 dumpWithVerbosity:v22 prefix:v23 logType:typeCopy];
        }

        v16 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  options = [(HMDBackingStoreTransactionBlock *)self options];
  objects = [(HMDBackingStoreTransactionBlock *)self objects];
  v6 = [v3 stringWithFormat:@"<HMDBackingStoreTransaction options:%@ objects:%lu>", options, objc_msgSend(objects, "count")];

  return v6;
}

- (void)runWithCoreDataBlock:(id)block withCompletionBlock:(id)completionBlock
{
  completionBlockCopy = completionBlock;
  blockCopy = block;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [backingStore commit:self run:1 save:1 coreDataBlock:blockCopy completionHandler:completionBlockCopy];
}

- (void)save:(id)save
{
  saveCopy = save;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  options = [(HMDBackingStoreTransactionBlock *)self options];
  [backingStore commit:self run:0 save:1 archiveInline:objc_msgSend(options coreDataBlock:"mustSaveArchiveAtomically") completionHandler:{0, saveCopy}];
}

- (void)runWithoutSave:(id)save
{
  saveCopy = save;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [backingStore commit:self run:1 save:0 archiveInline:1 coreDataBlock:0 completionHandler:saveCopy];
}

- (void)run:(id)run
{
  runCopy = run;
  backingStore = [(HMDBackingStoreTransactionBlock *)self backingStore];
  [backingStore commit:self run:1 save:1 coreDataBlock:0 completionHandler:runCopy];
}

- (void)addObjects:(id)objects
{
  v14 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectsCopy);
        }

        [(HMDBackingStoreTransactionBlock *)self add:*(*(&v9 + 1) + 8 * v8++) withMessage:0];
      }

      while (v6 != v8);
      v6 = [objectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)add:(id)add withMessage:(id)message
{
  v61 = *MEMORY[0x277D85DE8];
  addCopy = add;
  messageCopy = message;
  uuid = [addCopy uuid];

  if (!uuid)
  {
    v39 = MEMORY[0x277CBEAD8];
    v40 = *MEMORY[0x277CBE658];
    v41 = MEMORY[0x277CCACA8];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    bsoType = [addCopy bsoType];
    v45 = [v41 stringWithFormat:@"UUID for a transaction object (%@ / %@) must be set before adding to a transaction.", v43, bsoType];
    v46 = [v39 exceptionWithName:v40 reason:v45 userInfo:0];
    v47 = v46;

    objc_exception_throw(v46);
  }

  if ([(HMDBackingStoreTransactionBlock *)self committed])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@adding to a committed transaction block probably indicates a bad state.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v48 = messageCopy;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    objects = [(HMDBackingStoreTransactionBlock *)self objects];
    v51 = [objects countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v51)
    {
      v14 = *v53;
      v49 = addCopy;
      v50 = *v53;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(objects);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          change = [v16 change];
          uuid2 = [change uuid];
          uuid3 = [addCopy uuid];
          v20 = [uuid2 isEqual:uuid3];

          if (v20)
          {
            v21 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              [(HMDBackingStoreTransactionBlock *)selfCopy2 options];
              v25 = objects;
              v27 = v26 = self;
              label = [v27 label];
              *buf = 138543618;
              v57 = v24;
              v58 = 2112;
              v59 = label;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Just got request to add duplicate model object to transaction %@! (Both will be processed):", buf, 0x16u);

              self = v26;
              objects = v25;
              addCopy = v49;
            }

            objc_autoreleasePoolPop(v21);
            change2 = [v16 change];
            v30 = MEMORY[0x277CCACA8];
            change3 = [v16 change];
            v32 = changeTypeAsNSString([change3 objectChangeType]);
            v33 = [v30 stringWithFormat:@"previous (%@)", v32];
            [change2 dumpWithVerbosity:1 prefix:v33 logType:16];

            v34 = MEMORY[0x277CCACA8];
            v35 = changeTypeAsNSString([addCopy objectChangeType]);
            v36 = [v34 stringWithFormat:@"new (%@)", v35];
            [addCopy dumpWithVerbosity:1 prefix:v36 logType:16];

            v14 = v50;
          }
        }

        v51 = [objects countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v51);
    }

    objects2 = [(HMDBackingStoreTransactionBlock *)self objects];
    messageCopy = v48;
    v38 = [[HMDBackingStoreTransactionItem alloc] initWithChange:addCopy message:v48];
    [objects2 addObject:v38];
  }
}

- (HMDBackingStoreTransactionBlock)initWithBackingStore:(id)store options:(id)options label:(id)label
{
  storeCopy = store;
  optionsCopy = options;
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = HMDBackingStoreTransactionBlock;
  v11 = [(HMDBackingStoreTransactionBlock *)&v17 init];
  if (v11)
  {
    array = [MEMORY[0x277CBEB18] array];
    objects = v11->_objects;
    v11->_objects = array;

    objc_storeStrong(&v11->_options, options);
    objc_storeWeak(&v11->_backingStore, storeCopy);
    v11->_committed = 0;
    if (labelCopy)
    {
      v14 = labelCopy;
    }

    else
    {
      v14 = @"anonymous";
    }

    [optionsCopy setLabel:v14];
    v15 = v11;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_226700 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_226700, &__block_literal_global_226701);
  }

  v3 = logCategory__hmf_once_v5_226702;

  return v3;
}

void __46__HMDBackingStoreTransactionBlock_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_226702;
  logCategory__hmf_once_v5_226702 = v0;
}

+ (void)sort:(id)sort
{
  v21 = *MEMORY[0x277D85DE8];
  sortCopy = sort;
  if ([sortCopy count] >= 2)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sortCopy, "count")}];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sortCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = sortCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          change = [v11 change];
          objectChangeType = [change objectChangeType];

          if (objectChangeType == 3)
          {
            v14 = v4;
          }

          else
          {
            v14 = v5;
          }

          [v14 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    __sort(v4);
    __sort(v5);
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    [v15 addObjectsFromArray:v4];
    [v15 addObjectsFromArray:v5];
    [v6 setArray:v15];
  }
}

@end