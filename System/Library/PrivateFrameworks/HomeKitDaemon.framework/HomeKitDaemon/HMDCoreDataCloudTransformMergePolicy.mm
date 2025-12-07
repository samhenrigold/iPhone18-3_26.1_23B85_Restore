@interface HMDCoreDataCloudTransformMergePolicy
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error;
- (HMDCoreDataCloudTransformMergePolicy)init;
@end

@implementation HMDCoreDataCloudTransformMergePolicy

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(conflictsCopy, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = conflictsCopy;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        sourceObject = [v12 sourceObject];
        isDeleted = [sourceObject isDeleted];

        if (isDeleted)
        {
          sourceObject2 = [v12 sourceObject];
          [v6 addObject:sourceObject2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v9);
  }

  v37.receiver = self;
  v37.super_class = HMDCoreDataCloudTransformMergePolicy;
  v16 = [(NSMergePolicy *)&v37 resolveOptimisticLockingVersionConflicts:v7 error:error];
  v17 = v16;
  if (v16)
  {
    v29 = v16;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v6;
    obj = v6;
    v18 = [obj countByEnumeratingWithState:&v33 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v33 + 1) + 8 * j);
          managedObjectContext = [v22 managedObjectContext];
          [managedObjectContext refreshObject:v22 mergeChanges:0];
          [managedObjectContext deleteObject:v22];
          v24 = objc_autoreleasePoolPush();
          selfCopy = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v27;
            v44 = 2112;
            v45 = v22;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Delete trumps other changes for %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
        }

        v19 = [obj countByEnumeratingWithState:&v33 objects:v46 count:16];
      }

      while (v19);
    }

    v6 = v30;
    v17 = v29;
  }

  return v17;
}

- (HMDCoreDataCloudTransformMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = HMDCoreDataCloudTransformMergePolicy;
  return [(NSMergePolicy *)&v3 initWithMergeType:1];
}

@end