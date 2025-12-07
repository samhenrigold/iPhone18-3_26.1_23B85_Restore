@interface HMBLocalZone
+ (BOOL)shouldMirrorInputExternalData:(id)data overwriteExistingExternalData:(id)externalData;
+ (id)logCategory;
+ (id)outputBlockRowForTuple:(id)tuple activity:(id)activity;
+ (id)outputModelFromUpdateModel:(id)model mergedModel:(id)mergedModel;
- (BOOL)_insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:(unint64_t)row context:(id)context type:(unint64_t)type modelIDs:(id)ds currentDepth:(unint64_t)depth maximumDepth:(unint64_t)maximumDepth options:(id)options error:(id *)self0;
- (BOOL)destroyWithError:(id *)error;
- (BOOL)removeAllRecordsWithError:(id *)error;
- (BOOL)removeBlockWithRow:(unint64_t)row error:(id *)error;
- (BOOL)removeOutputBlockWithRow:(unint64_t)row error:(id *)error;
- (HMBLocalDatabase)localDatabase;
- (HMBLocalZone)initWithLocalDatabase:(id)database zoneID:(id)d zoneRow:(unint64_t)row configuration:(id)configuration mirror:(id)mirror;
- (HMBLocalZoneDelegate)delegate;
- (id)_processItemsForBlockRow:(unint64_t)row error:(id *)error;
- (id)addModels:(id)models andRemoveModelIDs:(id)ds options:(id)options;
- (id)addModels:(id)models options:(id)options;
- (id)allMirrorOutputObservers;
- (id)attributeDescriptions;
- (id)createInputBlockWithType:(unint64_t)type error:(id *)error;
- (id)createLocalInputWithError:(id *)error;
- (id)createMirrorInputWithError:(id *)error;
- (id)createModels:(id)models options:(id)options;
- (id)createOutputBlockWithError:(id *)error;
- (id)externalDataForExternalID:(id)d error:(id *)error;
- (id)externalDataForModelID:(id)d error:(id *)error;
- (id)externalIDForModelID:(id)d error:(id *)error;
- (id)fetchAllModelsWithError:(id *)error;
- (id)fetchExternalIDsForModelIDs:(id)ds error:(id *)error;
- (id)fetchItemsInBlock:(id)block error:(id *)error;
- (id)fetchModelWithModelID:(id)d ofType:(Class)type error:(id *)error;
- (id)fetchModelWithModelID:(id)d recordRow:(unint64_t *)row error:(id *)error;
- (id)fetchModelWithRecordRow:(unint64_t)row error:(id *)error;
- (id)fetchModels;
- (id)fetchModelsOfType:(Class)type error:(id *)error;
- (id)fetchModelsWithParentModelID:(id)d error:(id *)error;
- (id)fetchModelsWithParentModelID:(id)d ofType:(Class)type error:(id *)error;
- (id)fetchOptionsForOutputBlock:(unint64_t)block error:(id *)error;
- (id)fetchReadyBlocksWithType:(unint64_t)type error:(id *)error;
- (id)fetchRecordRowWithExternalID:(id)d returning:(unint64_t)returning error:(id *)error;
- (id)fetchRecordRowWithModelID:(id)d returning:(unint64_t)returning error:(id *)error;
- (id)fetchRecordsForOutputBlock:(unint64_t)block error:(id *)error;
- (id)flush;
- (id)logIdentifier;
- (id)markGroupAsSentWithOutputBlock:(unint64_t)block tuples:(id)tuples;
- (id)modelFromData:(id)data encoding:(unint64_t)encoding storageLocation:(unint64_t)location recordRowID:(unint64_t)d error:(id *)error;
- (id)modelFromRecord:(id)record storageLocation:(unint64_t)location error:(id *)error;
- (id)modelIDForExternalID:(id)d error:(id *)error;
- (id)observersForModelWithID:(id)d;
- (id)queryAllRowRecordsReturning:(unint64_t)returning;
- (id)queryModelsOfType:(Class)type;
- (id)queryModelsOfType:(Class)type filter:(id)filter;
- (id)queryModelsOfType:(Class)type predicate:(id)predicate;
- (id)queryModelsOfType:(Class)type properties:(id)properties filter:(id)filter;
- (id)queryModelsRecursivelyStartingWithModelID:(id)d;
- (id)queryModelsWithParentModelID:(id)d;
- (id)queryModelsWithParentModelID:(id)d ofType:(Class)type;
- (id)removeAllModelsOfTypes:(id)types options:(id)options;
- (id)removeModelIDs:(id)ds options:(id)options;
- (id)removeModelsAndDescendantModelsWithIDs:(id)ds depth:(unint64_t)depth options:(id)options;
- (id)removeModelsWithParentModelID:(id)d options:(id)options;
- (id)setExternalData:(id)data forExternalID:(id)d;
- (id)setExternalData:(id)data forModelID:(id)d;
- (id)setExternalID:(id)d externalData:(id)data forRecordRow:(unint64_t)row;
- (id)shutdown;
- (id)triggerProcessForBlockRow:(unint64_t)row;
- (id)update:(id)update remove:(id)remove;
- (id)updateModels:(id)models andRemoveModelIDs:(id)ds options:(id)options;
- (id)updateModels:(id)models options:(id)options;
- (unint64_t)insertBlockToRemoveAllModelsWithType:(unint64_t)type modelTypes:(id)types options:(id)options error:(id *)error;
- (unint64_t)insertBlockToRemoveChildModelsWithType:(unint64_t)type parentModelID:(id)d options:(id)options error:(id *)error;
- (unint64_t)insertBlockToRemoveModelsAndDescendantModelsWithType:(unint64_t)type modelIDs:(id)ds depth:(unint64_t)depth options:(id)options error:(id *)error;
- (unint64_t)insertBlockWithType:(unint64_t)type options:(id)options items:(id)items error:(id *)error;
- (unint64_t)zoneRow;
- (void)addMirrorOutputObserver:(id)observer;
- (void)addObserver:(id)observer forModelWithID:(id)d;
- (void)addObserverForAllModels:(id)models;
- (void)dealloc;
- (void)migrateUnsupportedModels;
- (void)queueIncompleteProcesses;
- (void)rebuildIndexesIfNeeded;
- (void)removeMirrorOutputObserver:(id)observer;
- (void)removeObserver:(id)observer forModelWithID:(id)d;
- (void)removeObserverForAllModels:(id)models;
- (void)setZoneRow:(unint64_t)row;
- (void)startUp;
@end

@implementation HMBLocalZone

- (id)triggerProcessForBlockRow:(unint64_t)row
{
  v5 = objc_alloc_init(MEMORY[0x277D2C918]);
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CCA8C8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __51__HMBLocalZone_Process__triggerProcessForBlockRow___block_invoke;
  v16 = &unk_2786E0488;
  objc_copyWeak(v18, &location);
  v7 = v5;
  v17 = v7;
  v18[1] = row;
  v8 = [v6 blockOperationWithBlock:&v13];
  v9 = [(HMBLocalZone *)self localDatabase:v13];
  queue = [v9 queue];
  [queue addOperation:v8];

  future = [v7 future];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);

  return future;
}

void __51__HMBLocalZone_Process__triggerProcessForBlockRow___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v12 = 0;
    v5 = [WeakRetained _processItemsForBlockRow:v4 error:&v12];
    v6 = v12;
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithResult:v5];
    }

    else
    {
      [v7 finishWithError:v6];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Reference to self became nil when processing block", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v11 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v11 finishWithError:v6];
  }
}

- (id)_processItemsForBlockRow:(unint64_t)row error:(id *)error
{
  v608 = *MEMORY[0x277D85DE8];
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  localDatabase = [(HMBLocalZone *)self localDatabase];
  queue = [localDatabase queue];

  if (currentQueue != queue)
  {
    _HMFPreconditionFailure();
  }

  localDatabase2 = [(HMBLocalZone *)self localDatabase];
  local = [localDatabase2 local];
  zoneRow = [(HMBLocalZone *)self zoneRow];
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[HMBLocalZone(Process) _processItemsForBlockRow:error:]"];
  v491 = [v8 initWithName:v9 options:1];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v491 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = shortDescription;
    *&buf[22] = 2048;
    rowCopy6 = row;
    _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Beginning processing of block %lu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v584 = 0;
  v585 = &v584;
  v586 = 0x3032000000;
  v587 = __Block_byref_object_copy__688;
  v588 = __Block_byref_object_dispose__689;
  v589 = 0;
  v583 = 0;
  v582[0] = MEMORY[0x277D85DD0];
  v582[1] = 3221225472;
  v582[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke;
  v582[3] = &unk_2786E23A0;
  v582[4] = &v584;
  v582[5] = row;
  v15 = [local sqlBlockWithActivity:v491 error:&v583 block:v582];
  v454 = v583;
  if ((v15 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      identifier2 = [v491 identifier];
      shortDescription2 = [identifier2 shortDescription];
      *buf = 138544386;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription2;
      *&buf[22] = 2048;
      rowCopy6 = row;
      *v604 = 2112;
      *&v604[2] = v25;
      *&v604[10] = 2112;
      *&v604[12] = v454;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch block row %lu from %@: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v24);
    if (error)
    {
      v30 = v454;
      v31 = 0;
      *error = v454;
      goto LABEL_273;
    }

    goto LABEL_26;
  }

  v16 = v585[5];
  if (!v16)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      identifier3 = [v491 identifier];
      shortDescription3 = [identifier3 shortDescription];
      *buf = 138543874;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription3;
      *&buf[22] = 2048;
      rowCopy6 = row;
      _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find block with row %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    if (error)
    {
      v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
LABEL_25:
      v31 = 0;
      *error = v38;
      goto LABEL_273;
    }

LABEL_26:
    v31 = 0;
    goto LABEL_273;
  }

  optionsData = [v16 optionsData];
  v18 = optionsData == 0;

  if (v18)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      identifier4 = [v491 identifier];
      shortDescription4 = [identifier4 shortDescription];
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription4;
      *&buf[22] = 2048;
      rowCopy6 = row;
      _os_log_impl(&dword_22AD27000, v41, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Block %lu has not been committed. Ignoring process request.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    if (error)
    {
      v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v19 = MEMORY[0x277CCAAC8];
  v20 = objc_opt_class();
  optionsData2 = [v585[5] optionsData];
  v581 = 0;
  v465 = [v19 unarchivedObjectOfClass:v20 fromData:optionsData2 error:&v581];
  v452 = v581;

  if (!v465)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      identifier5 = [v491 identifier];
      shortDescription5 = [identifier5 shortDescription];
      *buf = 138543874;
      *&buf[4] = v48;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription5;
      *&buf[22] = 2112;
      rowCopy6 = v452;
      _os_log_impl(&dword_22AD27000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to unarchive processing options from options data: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v45);
    v580 = 0;
    v51 = [(HMBLocalZone *)v46 removeBlockWithRow:row error:&v580];
    v52 = v580;
    if (!v51)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v46;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        identifier6 = [v491 identifier];
        shortDescription6 = [identifier6 shortDescription];
        *buf = 138543874;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription6;
        *&buf[22] = 2112;
        rowCopy6 = v52;
        _os_log_impl(&dword_22AD27000, v55, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to cleanup corrupt block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v53);
    }

    if (error)
    {
      v59 = v452;
      *error = v452;
    }

    v31 = 0;
    goto LABEL_272;
  }

  v574 = 0;
  v575 = &v574;
  v576 = 0x3032000000;
  v577 = __Block_byref_object_copy__688;
  v578 = __Block_byref_object_dispose__689;
  v579 = 0;
  if ([v465 shouldEnqueueMirrorOutput])
  {
    v573 = 0;
    v572[0] = MEMORY[0x277D85DD0];
    v572[1] = 3221225472;
    v572[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_101;
    v572[3] = &unk_2786E23A0;
    v572[5] = zoneRow;
    v572[4] = &v574;
    v22 = [local sqlBlockWithActivity:v491 error:&v573 block:v572];
    v23 = v573;
    if ((v22 & 1) == 0)
    {
      array = v23;
      v385 = objc_autoreleasePoolPush();
      v386 = selfCopy;
      v387 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
      {
        v388 = HMFGetLogIdentifier();
        identifier7 = [v491 identifier];
        shortDescription7 = [identifier7 shortDescription];
        *buf = 138544130;
        *&buf[4] = v388;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription7;
        *&buf[22] = 2048;
        rowCopy6 = zoneRow;
        *v604 = 2112;
        *&v604[2] = array;
        _os_log_impl(&dword_22AD27000, v387, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to insert output block for zone row %lu: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v385);
      v571 = 0;
      v391 = [(HMBLocalZone *)v386 removeBlockWithRow:row error:&v571];
      v461 = v571;
      if (!v391)
      {
        v392 = objc_autoreleasePoolPush();
        v393 = v386;
        v394 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
        {
          v395 = HMFGetLogIdentifier();
          identifier8 = [v491 identifier];
          shortDescription8 = [identifier8 shortDescription];
          *buf = 138543874;
          *&buf[4] = v395;
          *&buf[12] = 2114;
          *&buf[14] = shortDescription8;
          *&buf[22] = 2112;
          rowCopy6 = v461;
          _os_log_impl(&dword_22AD27000, v394, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to clean up corrupt block: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v392);
      }

      if (error)
      {
        v398 = v461;
        v31 = 0;
        *error = v461;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_271;
    }
  }

  if ([v465 shouldRollBackIfMirrorOutputFails])
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    array = 0;
  }

  if (v575[5])
  {
    v461 = objc_alloc_init(MEMORY[0x277D2C900]);
  }

  else
  {
    v461 = 0;
  }

  itemRow = 0;
  type = [v585[5] type];
  v460 = 0;
  v565 = 0;
  v566 = &v565;
  v567 = 0x3032000000;
  v568 = __Block_byref_object_copy__688;
  v569 = __Block_byref_object_dispose__689;
  v570 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v60 = objc_autoreleasePoolPush();
    v457 = selfCopy;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v62 = HMFGetLogIdentifier();
      identifier9 = [v491 identifier];
      shortDescription9 = [identifier9 shortDescription];
      *buf = 138544386;
      *&buf[4] = v62;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription9;
      *&buf[22] = 2048;
      rowCopy6 = row;
      *v604 = 2112;
      *&v604[2] = v465;
      *&v604[10] = 2048;
      *&v604[12] = itemRow;
      _os_log_impl(&dword_22AD27000, v61, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Fetching objects for blockRow: %lu options: %@ lastItemRowID: %lu", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v60);
    transactionItemsBatchLimit = [v465 transactionItemsBatchLimit];
    v564[0] = MEMORY[0x277D85DD0];
    v564[1] = 3221225472;
    v66 = 100;
    if (transactionItemsBatchLimit)
    {
      v66 = transactionItemsBatchLimit;
    }

    v564[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_105;
    v564[3] = &unk_2786E0410;
    v564[4] = &v565;
    v564[5] = row;
    v564[6] = itemRow;
    v564[7] = v66;
    v500 = [local sqlBlockWithActivity:v491 block:v564];
    if (!v500)
    {
      v82 = [v566[5] count] == 0;
      v83 = objc_autoreleasePoolPush();
      v498 = v457;
      if (v82)
      {
        v265 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v265, OS_LOG_TYPE_DEBUG))
        {
          v266 = HMFGetLogIdentifier();
          identifier10 = [v491 identifier];
          shortDescription10 = [identifier10 shortDescription];
          *buf = 138543618;
          *&buf[4] = v266;
          *&buf[12] = 2114;
          *&buf[14] = shortDescription10;
          _os_log_impl(&dword_22AD27000, v265, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] No more rows to process", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v83);
        v81 = 31;
        goto LABEL_226;
      }

      v84 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = HMFGetLogIdentifier();
        identifier11 = [v491 identifier];
        shortDescription11 = [identifier11 shortDescription];
        v88 = [v566[5] count];
        *buf = 138544386;
        *&buf[4] = v85;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription11;
        *&buf[22] = 2048;
        rowCopy6 = v88;
        *v604 = 2048;
        *&v604[2] = row;
        *&v604[10] = 2112;
        *&v604[12] = v465;
        _os_log_impl(&dword_22AD27000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Fetched %lu object(s) to process for blockRow: %lu options: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v83);
      v470 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v566[5], "count")}];
      v562 = 0u;
      v561 = 0u;
      v560 = 0u;
      v559 = 0u;
      obj = v566[5];
      v89 = [obj countByEnumeratingWithState:&v559 objects:v607 count:16];
      if (!v89)
      {
        v500 = 0;
        goto LABEL_152;
      }

      v500 = 0;
      v475 = *v560;
      while (1)
      {
        v488 = 0;
        v477 = v89;
        v460 += v89;
        do
        {
          if (*v560 != v475)
          {
            objc_enumerationMutation(obj);
          }

          v90 = *(*(&v559 + 1) + 8 * v488);
          itemRow = [v90 itemRow];
          v591 = 0;
          v592 = &v591;
          v593 = 0x3032000000;
          v594 = __Block_byref_object_copy__688;
          v595 = __Block_byref_object_dispose__689;
          v596 = 0;
          modelEncoding = [v90 modelEncoding];
          if (modelEncoding)
          {
            modelData = [v90 modelData];
            modelEncoding2 = [v90 modelEncoding];
            v556 = v500;
            v492 = [(HMBLocalZone *)v498 modelFromData:modelData encoding:modelEncoding2 storageLocation:2 recordRowID:0 error:&v556];
            v94 = v556;

            if (v492)
            {
              queryContextsByClass = [local queryContextsByClass];
              v479 = [queryContextsByClass objectForKey:objc_opt_class()];

              hmbModelID = [v492 hmbModelID];
              v97 = *(v592 + 40);
              *(v592 + 40) = hmbModelID;

              v500 = v94;
              goto LABEL_68;
            }

            v145 = objc_autoreleasePoolPush();
            v146 = v498;
            v147 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
            {
              v148 = HMFGetLogIdentifier();
              identifier12 = [v491 identifier];
              shortDescription12 = [identifier12 shortDescription];
              itemRow2 = [v90 itemRow];
              *buf = 138544386;
              *&buf[4] = v148;
              *&buf[12] = 2114;
              *&buf[14] = shortDescription12;
              *&buf[22] = 2048;
              rowCopy6 = itemRow2;
              *v604 = 2112;
              *&v604[2] = selfCopy;
              *&v604[10] = 2112;
              *&v604[12] = v94;
              _os_log_impl(&dword_22AD27000, v147, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to unarchive object for %lu / %@: %@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v145);
            v555[0] = MEMORY[0x277D85DD0];
            v555[1] = 3221225472;
            v555[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_109;
            v555[3] = &unk_2786E24B0;
            v555[4] = v90;
            v500 = [local sqlBlockWithActivity:v491 block:v555];

            if (v500)
            {
              v152 = objc_autoreleasePoolPush();
              v153 = v146;
              v154 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
              {
                v155 = HMFGetLogIdentifier();
                identifier13 = [v491 identifier];
                shortDescription13 = [identifier13 shortDescription];
                itemRow3 = [v90 itemRow];
                *buf = 138544386;
                *&buf[4] = v155;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription13;
                *&buf[22] = 2048;
                rowCopy6 = itemRow3;
                *v604 = 2112;
                *&v604[2] = selfCopy;
                *&v604[10] = 2112;
                *&v604[12] = v500;
                _os_log_impl(&dword_22AD27000, v154, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to flush bogus row for %lu / %@: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v152);
            }
          }

          else
          {
            modelData2 = [v90 modelData];
            v99 = modelData2 == 0;

            if (!v99)
            {
              v100 = objc_alloc(MEMORY[0x277CCAD78]);
              modelData3 = [v90 modelData];
              v102 = modelData3;
              v103 = [v100 initWithUUIDBytes:{objc_msgSend(modelData3, "bytes")}];
              v104 = *(v592 + 40);
              *(v592 + 40) = v103;

              v492 = 0;
              v479 = 0;
              goto LABEL_68;
            }

            v558[0] = MEMORY[0x277D85DD0];
            v558[1] = 3221225472;
            v558[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_107;
            v558[3] = &unk_2786E2140;
            v558[6] = zoneRow;
            v558[5] = &v591;
            v558[4] = v90;
            v159 = [local sqlBlockWithActivity:v491 block:v558];

            if (v159)
            {
              v160 = objc_autoreleasePoolPush();
              v161 = v498;
              v162 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
              {
                v163 = HMFGetLogIdentifier();
                identifier14 = [v491 identifier];
                shortDescription14 = [identifier14 shortDescription];
                externalID = [v90 externalID];
                *buf = 138544386;
                *&buf[4] = v163;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription14;
                *&buf[22] = 2048;
                rowCopy6 = zoneRow;
                *v604 = 2112;
                *&v604[2] = externalID;
                *&v604[10] = 2112;
                *&v604[12] = v159;
                _os_log_impl(&dword_22AD27000, v162, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to determine modelID for %lu / %@: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v160);
            }

            else if (*(v592 + 40))
            {
              v492 = 0;
              v479 = 0;
              v500 = 0;
LABEL_68:
              v105 = objc_autoreleasePoolPush();
              v106 = v498;
              v107 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
              {
                v108 = HMFGetLogIdentifier();
                identifier15 = [v491 identifier];
                shortDescription15 = [identifier15 shortDescription];
                v111 = shortDescription15;
                v112 = *(v592 + 40);
                v113 = @"update/insert";
                if (!modelEncoding)
                {
                  v113 = @"delete";
                }

                *buf = 138544386;
                *&buf[4] = v108;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription15;
                *&buf[22] = 2112;
                rowCopy6 = v112;
                *v604 = 2112;
                *&v604[2] = v113;
                *&v604[10] = 2112;
                *&v604[12] = v90;
                _os_log_impl(&dword_22AD27000, v107, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Found modelID %@ to %@ for row: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v105);
              v114 = *(v592 + 40);
              v554 = 0;
              v495 = [(HMBLocalZone *)v106 fetchRecordRowWithModelID:v114 returning:-1 error:&v554];
              v115 = v554;
              v483 = v115;
              if (v495)
              {
                v116 = objc_autoreleasePoolPush();
                v117 = v106;
                v118 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
                {
                  v119 = HMFGetLogIdentifier();
                  identifier16 = [v491 identifier];
                  shortDescription16 = [identifier16 shortDescription];
                  v122 = *(v592 + 40);
                  *buf = 138544130;
                  *&buf[4] = v119;
                  *&buf[12] = 2114;
                  *&buf[14] = shortDescription16;
                  *&buf[22] = 2112;
                  rowCopy6 = v122;
                  *v604 = 2112;
                  *&v604[2] = v495;
                  _os_log_impl(&dword_22AD27000, v118, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Found existing record for modelID %@: %@", buf, 0x2Au);
                }

                goto LABEL_75;
              }

              v133 = v115 == 0;
              v116 = objc_autoreleasePoolPush();
              v134 = v106;
              if (!v133)
              {
                v135 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  v136 = HMFGetLogIdentifier();
                  identifier17 = [v491 identifier];
                  shortDescription17 = [identifier17 shortDescription];
                  v139 = *(v592 + 40);
                  externalID2 = [v90 externalID];
                  *buf = 138544642;
                  *&buf[4] = v136;
                  *&buf[12] = 2114;
                  *&buf[14] = shortDescription17;
                  *&buf[22] = 2112;
                  rowCopy6 = v139;
                  *v604 = 2048;
                  *&v604[2] = zoneRow;
                  *&v604[10] = 2112;
                  *&v604[12] = externalID2;
                  v605 = 2112;
                  v606 = v483;
                  _os_log_impl(&dword_22AD27000, v135, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to find existing model with modelID %@ for %lu / %@: %@", buf, 0x3Eu);
                }

                objc_autoreleasePoolPop(v116);
                v141 = [HMBLocalSQLContextRowItem alloc];
                uUID = [MEMORY[0x277CCAD78] UUID];
                data = [uUID data];
                data2 = [*(v592 + 40) data];
                v144 = [(HMBLocalSQLContextRowItem *)v141 initWithItemRow:0 externalID:data externalData:data2 modelEncoding:0 modelData:0];
                [array addObject:v144];
LABEL_138:

LABEL_139:
                v500 = v483;
LABEL_140:

                goto LABEL_141;
              }

              v118 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
              {
                v174 = HMFGetLogIdentifier();
                identifier18 = [v491 identifier];
                shortDescription18 = [identifier18 shortDescription];
                v177 = *(v592 + 40);
                *buf = 138543874;
                *&buf[4] = v174;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription18;
                *&buf[22] = 2112;
                rowCopy6 = v177;
                _os_log_impl(&dword_22AD27000, v118, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Did not find existing record for modelID %@", buf, 0x20u);
              }

LABEL_75:

              objc_autoreleasePoolPop(v116);
              if ([v495 modelEncoding])
              {
                modelData4 = [v495 modelData];
                v124 = [modelData4 length] == 0;

                if (!v124)
                {
                  v553 = v483;
                  uUID = [(HMBLocalZone *)v106 modelFromRecord:v495 storageLocation:2 error:&v553];
                  v500 = v553;

                  if (uUID)
                  {
                    if (v492)
                    {
                      requiresModelCreation = [v465 requiresModelCreation];
                      v126 = objc_autoreleasePoolPush();
                      v127 = v106;
                      if (requiresModelCreation)
                      {
                        v128 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                        {
                          v129 = HMFGetLogIdentifier();
                          identifier19 = [v491 identifier];
                          shortDescription19 = [identifier19 shortDescription];
                          hmbDescription = [v492 hmbDescription];
                          *buf = 138543874;
                          *&buf[4] = v129;
                          *&buf[12] = 2114;
                          *&buf[14] = shortDescription19;
                          *&buf[22] = 2112;
                          rowCopy6 = hmbDescription;
                          _os_log_impl(&dword_22AD27000, v128, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Not updating model because model creation is required: %@", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(v126);
                        goto LABEL_140;
                      }

                      v226 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEBUG))
                      {
                        v227 = HMFGetLogIdentifier();
                        identifier20 = [v491 identifier];
                        shortDescription20 = [identifier20 shortDescription];
                        recordRow = [v495 recordRow];
                        hmbDescription2 = [v492 hmbDescription];
                        externalID3 = [v90 externalID];
                        hmbDescription3 = [externalID3 hmbDescription];
                        *buf = 138544386;
                        *&buf[4] = v227;
                        *&buf[12] = 2114;
                        *&buf[14] = shortDescription20;
                        *&buf[22] = 2048;
                        rowCopy6 = recordRow;
                        *v604 = 2112;
                        *&v604[2] = hmbDescription2;
                        *&v604[10] = 2112;
                        *&v604[12] = hmbDescription3;
                        _os_log_impl(&dword_22AD27000, v226, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Updating model %lu / %@ / %@", buf, 0x34u);
                      }

                      objc_autoreleasePoolPop(v126);
                      v549 = v500;
                      v233 = [uUID hmbModelByMergingFromModel:v492 isFromCloud:type == 1 error:&v549];
                      v483 = v549;

                      if (!v233)
                      {
                        v257 = objc_autoreleasePoolPush();
                        v258 = v127;
                        v259 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
                        {
                          v260 = HMFGetLogIdentifier();
                          identifier21 = [v491 identifier];
                          shortDescription21 = [identifier21 shortDescription];
                          hmbDescription4 = [uUID hmbDescription];
                          hmbDescription5 = [v492 hmbDescription];
                          *buf = 138544386;
                          *&buf[4] = v260;
                          *&buf[12] = 2114;
                          *&buf[14] = shortDescription21;
                          *&buf[22] = 2112;
                          rowCopy6 = hmbDescription4;
                          *v604 = 2112;
                          *&v604[2] = hmbDescription5;
                          *&v604[10] = 2112;
                          *&v604[12] = v483;
                          _os_log_impl(&dword_22AD27000, v259, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to merge old record with new values %@ / %@: %@", buf, 0x34u);
                        }

                        objc_autoreleasePoolPop(v257);
                        v500 = v483;
                        goto LABEL_140;
                      }

                      v234 = [HMBLocalZoneProcessModelContext alloc];
                      v235 = v575[5];
                      externalData = [v90 externalData];
                      data2 = [(HMBLocalZoneProcessModelContext *)v234 initWithModel:v233 outputBlockRow:v235 externalData:externalData];

                      v237 = [HMBLocalZoneProcessModelContext alloc];
                      pushBlockRow = [v495 pushBlockRow];
                      externalData2 = [v495 externalData];
                      data = [(HMBLocalZoneProcessModelContext *)v237 initWithModel:uUID outputBlockRow:pushBlockRow externalData:externalData2];

                      v144 = [objc_opt_class() outputModelFromUpdateModel:v492 mergedModel:v233];
                    }

                    else
                    {
                      v214 = objc_autoreleasePoolPush();
                      v215 = v106;
                      v216 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
                      {
                        v217 = HMFGetLogIdentifier();
                        identifier22 = [v491 identifier];
                        shortDescription22 = [identifier22 shortDescription];
                        recordRow2 = [v495 recordRow];
                        hmbDescription6 = [uUID hmbDescription];
                        externalID4 = [v90 externalID];
                        hmbDescription7 = [externalID4 hmbDescription];
                        *buf = 138544386;
                        *&buf[4] = v217;
                        *&buf[12] = 2114;
                        *&buf[14] = shortDescription22;
                        *&buf[22] = 2048;
                        rowCopy6 = recordRow2;
                        *v604 = 2112;
                        *&v604[2] = hmbDescription6;
                        *&v604[10] = 2112;
                        *&v604[12] = hmbDescription7;
                        _os_log_impl(&dword_22AD27000, v216, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Deleting model %lu / %@ / %@", buf, 0x34u);
                      }

                      objc_autoreleasePoolPop(v214);
                      v223 = [HMBLocalZoneProcessModelContext alloc];
                      pushBlockRow2 = [v495 pushBlockRow];
                      externalData3 = [v495 externalData];
                      data = [(HMBLocalZoneProcessModelContext *)v223 initWithModel:uUID outputBlockRow:pushBlockRow2 externalData:externalData3];

                      v144 = 0;
                      data2 = 0;
                      v483 = v500;
                    }

LABEL_129:
                    if (array)
                    {
                      if ([v495 modelEncoding])
                      {
                        v240 = [HMBLocalSQLContextRowItem alloc];
                        uUID2 = [MEMORY[0x277CCAD78] UUID];
                        data3 = [uUID2 data];
                        data4 = [*(v592 + 40) data];
                        modelEncoding3 = [v495 modelEncoding];
                        modelData5 = [v495 modelData];
                        v246 = [(HMBLocalSQLContextRowItem *)v240 initWithItemRow:0 externalID:data3 externalData:data4 modelEncoding:modelEncoding3 modelData:modelData5];
                        [array addObject:v246];
                      }

                      else
                      {
                        v247 = [HMBLocalSQLContextRowItem alloc];
                        uUID2 = [MEMORY[0x277CCAD78] UUID];
                        data3 = [uUID2 data];
                        data4 = [*(v592 + 40) data];
                        modelData5 = [(HMBLocalSQLContextRowItem *)v247 initWithItemRow:0 externalID:data3 externalData:data4 modelEncoding:0 modelData:0];
                        [array addObject:modelData5];
                      }
                    }

                    externalData4 = [v90 externalData];
                    if (externalData4)
                    {
                      externalID5 = [v90 externalID];
                    }

                    else
                    {
                      externalID5 = 0;
                    }

                    v250 = [HMBLocalZoneProcessTuple alloc];
                    v251 = v575[5];
                    recordRow3 = [v495 recordRow];
                    itemRow4 = [v90 itemRow];
                    modelSchema = [v495 modelSchema];
                    modelType = [v495 modelType];
                    v256 = [(HMBLocalZoneProcessTuple *)v250 initWithPreviousContext:data mergedContext:data2 updateModel:v492 outputModel:v144 outputBlockRow:v251 recordRow:recordRow3 itemRow:itemRow4 modelSchema:modelSchema modelType:modelType externalID:externalID5 queryTable:v479];
                    [v470 addObject:v256];

                    goto LABEL_138;
                  }

                  v178 = objc_autoreleasePoolPush();
                  v179 = v106;
                  v180 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                  {
                    v181 = HMFGetLogIdentifier();
                    identifier23 = [v491 identifier];
                    shortDescription23 = [identifier23 shortDescription];
                    recordRow4 = [v495 recordRow];
                    *buf = 138544130;
                    *&buf[4] = v181;
                    *&buf[12] = 2114;
                    *&buf[14] = shortDescription23;
                    *&buf[22] = 2048;
                    rowCopy6 = recordRow4;
                    *v604 = 2112;
                    *&v604[2] = v500;
                    _os_log_impl(&dword_22AD27000, v180, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to unarchive record row %lu: %@", buf, 0x2Au);
                  }

                  objc_autoreleasePoolPop(v178);
                  v550[0] = MEMORY[0x277D85DD0];
                  v550[1] = 3221225472;
                  v550[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_117;
                  v550[3] = &unk_2786E1B00;
                  v185 = v495;
                  v551 = v185;
                  v552 = v479;
                  v483 = [local sqlBlockWithActivity:v491 block:v550];

                  if (v483)
                  {
                    v186 = objc_autoreleasePoolPush();
                    v187 = v179;
                    v188 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                    {
                      v189 = HMFGetLogIdentifier();
                      identifier24 = [v491 identifier];
                      shortDescription24 = [identifier24 shortDescription];
                      recordRow5 = [v185 recordRow];
                      *buf = 138544130;
                      *&buf[4] = v189;
                      *&buf[12] = 2114;
                      *&buf[14] = shortDescription24;
                      *&buf[22] = 2048;
                      rowCopy6 = recordRow5;
                      *v604 = 2112;
                      *&v604[2] = v483;
                      _os_log_impl(&dword_22AD27000, v188, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to remove corrupt record row %lu: %@", buf, 0x2Au);
                    }

                    objc_autoreleasePoolPop(v186);
                  }
                }
              }

              if (v492)
              {
                disallowsModelCreation = [v465 disallowsModelCreation];
                v194 = objc_autoreleasePoolPush();
                v195 = v106;
                if (!disallowsModelCreation)
                {
                  v206 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
                  {
                    v207 = HMFGetLogIdentifier();
                    identifier25 = [v491 identifier];
                    shortDescription25 = [identifier25 shortDescription];
                    hmbDescription8 = [v492 hmbDescription];
                    *buf = 138543874;
                    *&buf[4] = v207;
                    *&buf[12] = 2114;
                    *&buf[14] = shortDescription25;
                    *&buf[22] = 2112;
                    rowCopy6 = hmbDescription8;
                    _os_log_impl(&dword_22AD27000, v206, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Inserting model %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v194);
                  v211 = [HMBLocalZoneProcessModelContext alloc];
                  v212 = v575[5];
                  externalData5 = [v90 externalData];
                  data2 = [(HMBLocalZoneProcessModelContext *)v211 initWithModel:v492 outputBlockRow:v212 externalData:externalData5];

                  v144 = v492;
                  uUID = 0;
                  data = 0;
                  goto LABEL_129;
                }

                v196 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                {
                  v197 = HMFGetLogIdentifier();
                  identifier26 = [v491 identifier];
                  shortDescription26 = [identifier26 shortDescription];
                  hmbDescription9 = [v492 hmbDescription];
                  *buf = 138543874;
                  *&buf[4] = v197;
                  *&buf[12] = 2114;
                  *&buf[14] = shortDescription26;
                  *&buf[22] = 2112;
                  rowCopy6 = hmbDescription9;
                  _os_log_impl(&dword_22AD27000, v196, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Not creating model because model creation is disallowed: %@", buf, 0x20u);
                }
              }

              else
              {
                v194 = objc_autoreleasePoolPush();
                v201 = v106;
                v196 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                {
                  v202 = HMFGetLogIdentifier();
                  identifier27 = [v491 identifier];
                  shortDescription27 = [identifier27 shortDescription];
                  v205 = *(v592 + 40);
                  *buf = 138543874;
                  *&buf[4] = v202;
                  *&buf[12] = 2114;
                  *&buf[14] = shortDescription27;
                  *&buf[22] = 2112;
                  rowCopy6 = v205;
                  _os_log_impl(&dword_22AD27000, v196, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] No previous or updated value found for model with ID %@", buf, 0x20u);
                }
              }

              objc_autoreleasePoolPop(v194);
              uUID = 0;
              goto LABEL_139;
            }

            v557[0] = MEMORY[0x277D85DD0];
            v557[1] = 3221225472;
            v557[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_108;
            v557[3] = &unk_2786E24B0;
            v557[4] = v90;
            v500 = [local sqlBlockWithActivity:v491 block:v557];

            if (v500)
            {
              v167 = objc_autoreleasePoolPush();
              v168 = v498;
              v169 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
              {
                v170 = HMFGetLogIdentifier();
                identifier28 = [v491 identifier];
                shortDescription28 = [identifier28 shortDescription];
                itemRow5 = [v90 itemRow];
                *buf = 138544386;
                *&buf[4] = v170;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription28;
                *&buf[22] = 2048;
                rowCopy6 = itemRow5;
                *v604 = 2112;
                *&v604[2] = selfCopy;
                *&v604[10] = 2112;
                *&v604[12] = v500;
                _os_log_impl(&dword_22AD27000, v169, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to flush bogus row for %lu / %@: %@", buf, 0x34u);
              }

              objc_autoreleasePoolPop(v167);
            }
          }

LABEL_141:
          _Block_object_dispose(&v591, 8);

          v488 = v488 + 1;
        }

        while (v477 != v488);
        v89 = [obj countByEnumeratingWithState:&v559 objects:v607 count:16];
        if (!v89)
        {
LABEL_152:

          v547 = 0u;
          v548 = 0u;
          v545 = 0u;
          v546 = 0u;
          v463 = v470;
          v467 = [v463 countByEnumeratingWithState:&v545 objects:v601 count:16];
          if (!v467)
          {
            goto LABEL_224;
          }

          v466 = *v546;
          while (1)
          {
            for (i = 0; i != v467; ++i)
            {
              if (*v546 != v466)
              {
                objc_enumerationMutation(v463);
              }

              v269 = *(*(&v545 + 1) + 8 * i);
              previousContext = [v269 previousContext];
              mergedContext = [v269 mergedContext];
              externalID6 = [v269 externalID];
              externalData6 = [mergedContext externalData];
              v270 = [objc_opt_class() outputBlockRowForTuple:v269 activity:v491];
              v493 = v270;
              if (externalData6)
              {
                v271 = 1;
              }

              else
              {
                v271 = v270 == 0;
              }

              if (v271)
              {
                v272 = 0;
                data5 = 0;
                goto LABEL_171;
              }

              outputModel = [v269 outputModel];
              v274 = outputModel;
              if (!outputModel)
              {
                model = [previousContext model];
                hmbModelID2 = [model hmbModelID];
                data5 = [hmbModelID2 data];

                v272 = 0;
                v277 = v500;
LABEL_169:

                goto LABEL_170;
              }

              modelContainer = [(HMBLocalZone *)v498 modelContainer];
              v272 = [modelContainer bestModelEncodingForStorageLocation:3];

              modelContainer2 = [(HMBLocalZone *)v498 modelContainer];
              v544 = v500;
              data5 = [modelContainer2 dataFromModel:v274 encoding:v272 storageLocation:3 updatedModelIDs:0 error:&v544];
              v277 = v544;

              if (!data5)
              {
                v278 = objc_autoreleasePoolPush();
                v279 = v498;
                v280 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
                {
                  v501 = HMFGetLogIdentifier();
                  identifier29 = [v491 identifier];
                  shortDescription29 = [identifier29 shortDescription];
                  model2 = [mergedContext model];
                  hmbDescription10 = [model2 hmbDescription];
                  *buf = 138544130;
                  *&buf[4] = v501;
                  *&buf[12] = 2114;
                  *&buf[14] = shortDescription29;
                  *&buf[22] = 2112;
                  rowCopy6 = hmbDescription10;
                  *v604 = 2112;
                  *&v604[2] = v277;
                  _os_log_impl(&dword_22AD27000, v280, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode object %@ (not attempting to push): %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v278);
                data5 = 0;
                model = v493;
                v493 = 0;
                goto LABEL_169;
              }

LABEL_170:

              v500 = v277;
LABEL_171:
              if (!mergedContext)
              {
                modelSchema2 = [v269 modelSchema];
                v300 = modelSchema2 == 0;

                if (v300)
                {
                  hmbType = 0;
                  modelSchema3 = 0;
                }

                else
                {
                  modelSchema3 = [v269 modelSchema];
                  hmbType = 0;
                }

                v290 = 0;
                v287 = 0;
                goto LABEL_185;
              }

              modelContainer3 = [(HMBLocalZone *)v498 modelContainer];
              v287 = [modelContainer3 bestModelEncodingForStorageLocation:2];

              modelContainer4 = [(HMBLocalZone *)v498 modelContainer];
              model3 = [mergedContext model];
              v543 = 0;
              v290 = [modelContainer4 dataFromModel:model3 encoding:v287 storageLocation:2 updatedModelIDs:0 error:&v543];
              v478 = v543;

              if (v290)
              {
                modelContainer5 = [(HMBLocalZone *)v498 modelContainer];
                model4 = [mergedContext model];
                modelSchema3 = [modelContainer5 schemaHashForModel:model4];

                model5 = [mergedContext model];
                hmbType = [model5 hmbType];

                modelSchema4 = [v269 modelSchema];
                if (![modelSchema3 isEqual:modelSchema4])
                {
                  goto LABEL_176;
                }

                modelType2 = [v269 modelType];
                v298 = [hmbType isEqual:modelType2];

                if (v298)
                {

                  modelSchema3 = 0;
                  modelSchema4 = hmbType;
                  hmbType = 0;
LABEL_176:
                }

LABEL_185:
                v527[0] = MEMORY[0x277D85DD0];
                v527[1] = 3221225472;
                v527[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_120;
                v527[3] = &unk_2786E0438;
                v527[4] = v269;
                v478 = v290;
                v528 = v478;
                v529 = v493;
                v530 = v498;
                v309 = v491;
                v531 = v309;
                v471 = hmbType;
                v532 = v471;
                v310 = previousContext;
                v533 = v310;
                v539 = v272;
                v534 = data5;
                v535 = externalID6;
                v536 = externalData6;
                v540 = v287;
                v311 = modelSchema3;
                v537 = v311;
                v542 = type == 1;
                v312 = mergedContext;
                v538 = v312;
                v541 = zoneRow;
                obja = [local sqlTransactionWithActivity:v309 block:v527];

                if (obja)
                {
                  v313 = objc_autoreleasePoolPush();
                  v314 = v498;
                  v315 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
                  {
                    v316 = v311;
                    v317 = HMFGetLogIdentifier();
                    identifier30 = [v309 identifier];
                    shortDescription30 = [identifier30 shortDescription];
                    itemRow6 = [v269 itemRow];
                    zoneID = [(HMBLocalZone *)v314 zoneID];
                    name = [zoneID name];
                    *buf = 138544386;
                    *&buf[4] = v317;
                    *&buf[12] = 2114;
                    *&buf[14] = shortDescription30;
                    *&buf[22] = 2048;
                    rowCopy6 = itemRow6;
                    *v604 = 2112;
                    *&v604[2] = name;
                    *&v604[10] = 2112;
                    *&v604[12] = obja;
                    _os_log_impl(&dword_22AD27000, v315, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] unable to update / insert row for %lu / %@: %@", buf, 0x34u);

                    v311 = v316;
                  }

                  objc_autoreleasePoolPop(v313);
                }

                else
                {
                  if (mergedContext)
                  {
                    v323 = objc_autoreleasePoolPush();
                    v324 = v498;
                    if (v310)
                    {
                      v325 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v325, OS_LOG_TYPE_DEBUG))
                      {
                        v326 = HMFGetLogIdentifier();
                        identifier31 = [v309 identifier];
                        shortDescription31 = [identifier31 shortDescription];
                        model6 = [v312 model];
                        *buf = 138543874;
                        *&buf[4] = v326;
                        *&buf[12] = 2114;
                        *&buf[14] = shortDescription31;
                        *&buf[22] = 2112;
                        rowCopy6 = model6;
                        _os_log_impl(&dword_22AD27000, v325, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending update delegate callback for model: %@", buf, 0x20u);
                      }

                      objc_autoreleasePoolPop(v323);
                      v330 = [HMBProcessingModelUpdate alloc];
                      model7 = [v312 model];
                      model8 = [v310 model];
                      v333 = [(HMBProcessingModelUpdate *)v330 initWithModel:model7 previousModel:model8 options:v465 mirrorOutputFuture:v461];

                      model9 = [v312 model];
                      hmbModelID3 = [model9 hmbModelID];
                      v336 = [(HMBLocalZone *)v324 observersForModelWithID:hmbModelID3];

                      v517 = 0u;
                      v518 = 0u;
                      v515 = 0u;
                      v516 = 0u;
                      v337 = v336;
                      v338 = [v337 countByEnumeratingWithState:&v515 objects:v598 count:16];
                      if (v338)
                      {
                        v339 = *v516;
                        do
                        {
                          for (j = 0; j != v338; ++j)
                          {
                            if (*v516 != v339)
                            {
                              objc_enumerationMutation(v337);
                            }

                            [*(*(&v515 + 1) + 8 * j) localZone:v324 didProcessModelUpdate:v333];
                          }

                          v338 = [v337 countByEnumeratingWithState:&v515 objects:v598 count:16];
                        }

                        while (v338);
                      }
                    }

                    else
                    {
                      v356 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v356, OS_LOG_TYPE_DEBUG))
                      {
                        v357 = HMFGetLogIdentifier();
                        identifier32 = [v309 identifier];
                        shortDescription32 = [identifier32 shortDescription];
                        model10 = [v312 model];
                        *buf = 138543874;
                        *&buf[4] = v357;
                        *&buf[12] = 2114;
                        *&buf[14] = shortDescription32;
                        *&buf[22] = 2112;
                        rowCopy6 = model10;
                        _os_log_impl(&dword_22AD27000, v356, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending creation delegate callback for model: %@", buf, 0x20u);
                      }

                      objc_autoreleasePoolPop(v323);
                      v361 = [HMBProcessingModelCreation alloc];
                      model11 = [v312 model];
                      v333 = [(HMBProcessingModelResult *)v361 initWithModel:model11 options:v465 mirrorOutputFuture:v461];

                      model12 = [v312 model];
                      hmbModelID4 = [model12 hmbModelID];
                      v365 = [(HMBLocalZone *)v324 observersForModelWithID:hmbModelID4];

                      v521 = 0u;
                      v522 = 0u;
                      v519 = 0u;
                      v520 = 0u;
                      v337 = v365;
                      v366 = [v337 countByEnumeratingWithState:&v519 objects:v599 count:16];
                      if (v366)
                      {
                        v367 = *v520;
                        do
                        {
                          for (k = 0; k != v366; ++k)
                          {
                            if (*v520 != v367)
                            {
                              objc_enumerationMutation(v337);
                            }

                            [*(*(&v519 + 1) + 8 * k) localZone:v324 didProcessModelCreation:v333];
                          }

                          v366 = [v337 countByEnumeratingWithState:&v519 objects:v599 count:16];
                        }

                        while (v366);
                      }
                    }
                  }

                  else
                  {
                    v341 = objc_autoreleasePoolPush();
                    v342 = v498;
                    v343 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v343, OS_LOG_TYPE_DEBUG))
                    {
                      v344 = HMFGetLogIdentifier();
                      identifier33 = [v309 identifier];
                      shortDescription33 = [identifier33 shortDescription];
                      model13 = [v310 model];
                      *buf = 138543874;
                      *&buf[4] = v344;
                      *&buf[12] = 2114;
                      *&buf[14] = shortDescription33;
                      *&buf[22] = 2112;
                      rowCopy6 = model13;
                      _os_log_impl(&dword_22AD27000, v343, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending deletion delegate callback for model: %@", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v341);
                    v348 = [HMBProcessingModelDeletion alloc];
                    model14 = [v310 model];
                    v333 = [(HMBProcessingModelResult *)v348 initWithModel:model14 options:v465 mirrorOutputFuture:v461];

                    model15 = [v310 model];
                    hmbParentModelID = [model15 hmbParentModelID];
                    v352 = [(HMBLocalZone *)v342 observersForModelWithID:hmbParentModelID];

                    v525 = 0u;
                    v526 = 0u;
                    v523 = 0u;
                    v524 = 0u;
                    v337 = v352;
                    v353 = [v337 countByEnumeratingWithState:&v523 objects:v600 count:16];
                    if (v353)
                    {
                      v354 = *v524;
                      do
                      {
                        for (m = 0; m != v353; ++m)
                        {
                          if (*v524 != v354)
                          {
                            objc_enumerationMutation(v337);
                          }

                          [*(*(&v523 + 1) + 8 * m) localZone:v342 didProcessModelDeletion:v333];
                        }

                        v353 = [v337 countByEnumeratingWithState:&v523 objects:v600 count:16];
                      }

                      while (v353);
                    }
                  }
                }

                v500 = obja;
                goto LABEL_222;
              }

              v301 = objc_autoreleasePoolPush();
              v302 = v498;
              v303 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
              {
                v304 = HMFGetLogIdentifier();
                identifier34 = [v491 identifier];
                shortDescription34 = [identifier34 shortDescription];
                model16 = [mergedContext model];
                hmbDescription11 = [model16 hmbDescription];
                *buf = 138544130;
                *&buf[4] = v304;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription34;
                *&buf[22] = 2112;
                rowCopy6 = hmbDescription11;
                *v604 = 2112;
                *&v604[2] = v478;
                _os_log_impl(&dword_22AD27000, v303, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode model %@: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v301);
LABEL_222:
            }

            v467 = [v463 countByEnumeratingWithState:&v545 objects:v601 count:16];
            if (!v467)
            {
LABEL_224:

              v81 = 0;
              goto LABEL_225;
            }
          }
        }
      }
    }

    v67 = objc_autoreleasePoolPush();
    v68 = v457;
    v69 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = HMFGetLogIdentifier();
      identifier35 = [v491 identifier];
      shortDescription35 = [identifier35 shortDescription];
      *buf = 138544386;
      *&buf[4] = v70;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription35;
      *&buf[22] = 2048;
      rowCopy6 = row;
      *v604 = 2112;
      *&v604[2] = selfCopy;
      *&v604[10] = 2112;
      *&v604[12] = v500;
      _os_log_impl(&dword_22AD27000, v69, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch transaction entries for %lu / %@: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v67);
    v563 = 0;
    v73 = [(HMBLocalZone *)v68 removeBlockWithRow:row error:&v563];
    v463 = v563;
    if (!v73)
    {
      v74 = objc_autoreleasePoolPush();
      v75 = v68;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = HMFGetLogIdentifier();
        identifier36 = [v491 identifier];
        shortDescription36 = [identifier36 shortDescription];
        *buf = 138543874;
        *&buf[4] = v77;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription36;
        *&buf[22] = 2112;
        rowCopy6 = v463;
        _os_log_impl(&dword_22AD27000, v76, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to clean up corrupt block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v74);
    }

    if (error)
    {
      v80 = v500;
      *error = v500;
    }

    v81 = 1;
LABEL_225:

LABEL_226:
    objc_autoreleasePoolPop(context);
    if (v81 != 31 && v81)
    {
      v31 = 0;
      goto LABEL_270;
    }
  }

  while ([v566[5] count]);
  v509 = 0;
  v510 = &v509;
  v511 = 0x3032000000;
  v512 = __Block_byref_object_copy__688;
  v513 = __Block_byref_object_dispose__689;
  v514 = 0;
  if (!array)
  {
    goto LABEL_232;
  }

  v508 = 0;
  v504[0] = MEMORY[0x277D85DD0];
  v504[1] = 3221225472;
  v504[2] = __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_124;
  v504[3] = &unk_2786E0460;
  v504[4] = v457;
  v506 = &v584;
  v505 = array;
  v507 = &v509;
  v369 = [local sqlTransactionWithActivity:v491 error:&v508 block:v504];
  v370 = v508;
  if (v369)
  {

LABEL_232:
    v370 = v575[5];
    if (v370)
    {
      v371 = v510[5];
      v372 = v457;
      v497 = v370;
      v494 = v371;
      v502 = v465;
      v373 = v491;
      localDatabase3 = [(HMBLocalZone *)v372 localDatabase];
      local2 = [localDatabase3 local];

      v597 = 0;
      v375 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v502 requiringSecureCoding:1 error:&v597];
      v376 = v597;
      if (v375)
      {
        v591 = MEMORY[0x277D85DD0];
        v592 = 3221225472;
        v593 = ____finishEnqueueForOutput_block_invoke;
        v594 = &unk_2786E1B00;
        v377 = v497;
        v595 = v377;
        v596 = v375;
        v378 = [local2 sqlTransactionWithActivity:v373 block:&v591];

        if (v378)
        {
          v379 = objc_autoreleasePoolPush();
          v380 = v372;
          v381 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v381, OS_LOG_TYPE_ERROR))
          {
            v382 = HMFGetLogIdentifier();
            identifier37 = [v373 identifier];
            shortDescription37 = [identifier37 shortDescription];
            *buf = 138543874;
            *&buf[4] = v382;
            *&buf[12] = 2114;
            *&buf[14] = shortDescription37;
            *&buf[22] = 2112;
            rowCopy6 = v378;
            _os_log_impl(&dword_22AD27000, v381, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to update block to enqueue output: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v379);
          v370 = [MEMORY[0x277D2C900] futureWithError:v378];
        }

        else
        {
          mirror = [(HMBLocalZone *)v372 mirror];

          v490 = objc_autoreleasePoolPush();
          v438 = v372;
          v439 = HMFGetOSLogHandle();
          v440 = os_log_type_enabled(v439, OS_LOG_TYPE_INFO);
          if (mirror)
          {
            if (v440)
            {
              v441 = HMFGetLogIdentifier();
              identifier38 = [v373 identifier];
              shortDescription38 = [identifier38 shortDescription];
              unsignedIntegerValue = [v377 unsignedIntegerValue];
              *buf = 138543874;
              *&buf[4] = v441;
              *&buf[12] = 2114;
              *&buf[14] = shortDescription38;
              *&buf[22] = 2048;
              rowCopy6 = unsignedIntegerValue;
              _os_log_impl(&dword_22AD27000, v439, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Triggering output for output block row: %lu", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v490);
            mirror2 = [(HMBLocalZone *)v438 mirror];
            v370 = [mirror2 triggerOutputForOutputRow:objc_msgSend(v377 options:{"unsignedIntegerValue"), v502}];

            if (v494)
            {
              objc_initWeak(&location, v438);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = ____finishEnqueueForOutput_block_invoke_143;
              rowCopy6 = &unk_2786E04B0;
              objc_copyWeak(&v604[16], &location);
              *v604 = v373;
              *&v604[8] = v494;
              v446 = [v370 addCompletionBlock:buf];

              objc_destroyWeak(&v604[16]);
              objc_destroyWeak(&location);
            }
          }

          else
          {
            if (v440)
            {
              v447 = HMFGetLogIdentifier();
              identifier39 = [v373 identifier];
              shortDescription39 = [identifier39 shortDescription];
              *buf = 138543618;
              *&buf[4] = v447;
              *&buf[12] = 2114;
              *&buf[14] = shortDescription39;
              _os_log_impl(&dword_22AD27000, v439, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Unable to trigger output because self.mirror is nil", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v490);
            v450 = MEMORY[0x277D2C900];
            v451 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
            v370 = [v450 futureWithError:v451];
          }
        }

        v376 = v378;
      }

      else
      {
        v406 = objc_autoreleasePoolPush();
        v407 = v372;
        v408 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v408, OS_LOG_TYPE_ERROR))
        {
          v409 = HMFGetLogIdentifier();
          identifier40 = [v373 identifier];
          shortDescription40 = [identifier40 shortDescription];
          *buf = 138543874;
          *&buf[4] = v409;
          *&buf[12] = 2114;
          *&buf[14] = shortDescription40;
          *&buf[22] = 2112;
          rowCopy6 = v376;
          _os_log_impl(&dword_22AD27000, v408, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to encode options for output: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v406);
        v370 = [MEMORY[0x277D2C900] futureWithError:v376];
      }

      completionHandlerAdapter = [v461 completionHandlerAdapter];
      v413 = [v370 addCompletionBlock:completionHandlerAdapter];
    }

    v503 = 0;
    v414 = [(HMBLocalZone *)v457 removeBlockWithRow:row error:&v503];
    v415 = v503;
    if (!v414)
    {
      v416 = objc_autoreleasePoolPush();
      v417 = v457;
      v418 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
      {
        v419 = HMFGetLogIdentifier();
        identifier41 = [v491 identifier];
        shortDescription41 = [identifier41 shortDescription];
        *buf = 138543874;
        *&buf[4] = v419;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription41;
        *&buf[22] = 2112;
        rowCopy6 = v415;
        _os_log_impl(&dword_22AD27000, v418, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to clean up processed block: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v416);
    }

    v422 = [[HMBProcessingResult alloc] initWithOptions:v465 mirrorOutputResult:v370];
    delegate = [(HMBLocalZone *)v457 delegate];
    if (objc_opt_respondsToSelector())
    {
      v424 = objc_autoreleasePoolPush();
      v425 = v457;
      v426 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v426, OS_LOG_TYPE_DEBUG))
      {
        v427 = HMFGetLogIdentifier();
        identifier42 = [v491 identifier];
        shortDescription42 = [identifier42 shortDescription];
        *buf = 138543874;
        *&buf[4] = v427;
        *&buf[12] = 2114;
        *&buf[14] = shortDescription42;
        *&buf[22] = 2112;
        rowCopy6 = v422;
        _os_log_impl(&dword_22AD27000, v426, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Sending processing complete callback with result: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v424);
      [delegate localZone:v425 didCompleteProcessingWithResult:v422];
    }

    v430 = objc_autoreleasePoolPush();
    v431 = v457;
    v432 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v432, OS_LOG_TYPE_DEFAULT))
    {
      v433 = HMFGetLogIdentifier();
      identifier43 = [v491 identifier];
      shortDescription43 = [identifier43 shortDescription];
      *buf = 138544130;
      *&buf[4] = v433;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription43;
      *&buf[22] = 2048;
      rowCopy6 = v460;
      *v604 = 2048;
      *&v604[2] = row;
      _os_log_impl(&dword_22AD27000, v432, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Finished processing %lu row(s) for blockRow: %lu", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v430);
    v31 = v422;
  }

  else
  {
    v399 = objc_autoreleasePoolPush();
    v400 = v457;
    v401 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v401, OS_LOG_TYPE_ERROR))
    {
      v402 = HMFGetLogIdentifier();
      identifier44 = [v491 identifier];
      shortDescription44 = [identifier44 shortDescription];
      *buf = 138543874;
      *&buf[4] = v402;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription44;
      *&buf[22] = 2112;
      rowCopy6 = v370;
      _os_log_impl(&dword_22AD27000, v401, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Unable to write rollback entries: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v399);
    if (error)
    {
      v405 = v370;
      *error = v370;
    }

    v31 = 0;
  }

  _Block_object_dispose(&v509, 8);
LABEL_270:
  _Block_object_dispose(&v565, 8);

LABEL_271:
  _Block_object_dispose(&v574, 8);

LABEL_272:
LABEL_273:

  _Block_object_dispose(&v584, 8);

  return v31;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _selectBlockWithRow:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _insertBlockWithZoneRow:v3 type:0 error:&v10];
  v5 = v10;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return v5;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_105(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v12 = 0;
  v6 = [a2 _selectItemsWithBlockRow:v3 rowGreaterThan:v4 limit:v5 returning:-1 error:&v12];
  v7 = v12;
  v8 = v12;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;

  return v7;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_107(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = [v4 externalID];
  v13 = 0;
  v7 = [v5 _selectRecordModelIDWithZoneRow:v3 externalID:v6 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_108(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteItemWithRow:objc_msgSend(v2 error:{"itemRow"), &v6}];

  v4 = v6;

  return v4;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_109(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteItemWithRow:objc_msgSend(v2 error:{"itemRow"), &v6}];

  v4 = v6;

  return v4;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_117(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = 0;
  [v4 _deleteRecordWithRow:objc_msgSend(v3 error:{"recordRow"), &v12}];

  v5 = v12;
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) recordRow];
  v11 = v5;
  [v6 _deleteQueryForRecordRow:v7 error:&v11];
  v8 = v11;
  v9 = v11;

  return v8;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_120(uint64_t a1, void *a2)
{
  v155 = *MEMORY[0x277D85DE8];
  v123 = a2;
  if ([*(a1 + 32) recordRow])
  {
    if (*(a1 + 40) || *(a1 + 48))
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 56);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = HMFGetLogIdentifier();
        v118 = [*(a1 + 64) identifier];
        v7 = [v118 shortDescription];
        v112 = [*(a1 + 32) recordRow];
        v114 = *(a1 + 48);
        v116 = *(a1 + 128);
        v8 = [*(a1 + 88) hmbDescription];
        v110 = *(a1 + 72);
        v9 = [*(a1 + 96) hmbDescription];
        [*(a1 + 104) hmbDescription];
        v10 = v120 = v3;
        v11 = [*(a1 + 80) model];
        v12 = [v11 hmbModelID];
        *buf = 138545666;
        v134 = v6;
        v135 = 2114;
        v136 = v7;
        v137 = 2048;
        v138 = v112;
        v139 = 2112;
        v140 = v114;
        v141 = 2048;
        v142 = v116;
        v143 = 2112;
        v144 = v8;
        v145 = 2112;
        v146 = v110;
        v147 = 2112;
        v148 = v9;
        v149 = 2112;
        v150 = v10;
        v151 = 2112;
        v152 = v12;
        _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Updating record row: %lu %@ %lu %@ %@ %@ %@ %@", buf, 0x66u);

        v3 = v120;
      }

      objc_autoreleasePoolPop(v3);
      v13 = [*(a1 + 32) recordRow];
      v14 = *(a1 + 136);
      v15 = *(a1 + 40);
      v16 = *(a1 + 112);
      v131 = 0;
      [v123 _updateRecordWithRow:v13 modelEncoding:v14 modelData:v15 modelSchema:v16 error:&v131];
      v17 = v131;
      if (*(a1 + 48))
      {
        v18 = [*(a1 + 32) recordRow];
        v19 = *(a1 + 48);
        v20 = *(a1 + 88);
        v21 = *(a1 + 128);
        v130 = v17;
        v22 = &v130;
        v23 = &v130;
        v24 = v123;
      }

      else
      {
        if (*(a1 + 152) != 1)
        {
          goto LABEL_23;
        }

        v57 = [*(a1 + 80) outputBlockRow];

        if (!v57)
        {
          goto LABEL_23;
        }

        v58 = objc_autoreleasePoolPush();
        v59 = *(a1 + 56);
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = HMFGetLogIdentifier();
          v62 = [*(a1 + 32) recordRow];
          *buf = 138543618;
          v134 = v61;
          v135 = 2048;
          v136 = v62;
          _os_log_impl(&dword_22AD27000, v60, OS_LOG_TYPE_INFO, "%{public}@Received change from mirror while existing record row %lu has pending output push", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v58);
        v63 = objc_opt_class();
        v64 = [*(a1 + 120) externalData];
        v65 = [*(a1 + 80) externalData];
        LODWORD(v63) = [v63 shouldMirrorInputExternalData:v64 overwriteExistingExternalData:v65];

        if (!v63)
        {
          goto LABEL_23;
        }

        v66 = objc_autoreleasePoolPush();
        v67 = *(a1 + 56);
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v69 = HMFGetLogIdentifier();
          v70 = [*(a1 + 64) identifier];
          v71 = [v70 shortDescription];
          *buf = 138543618;
          v134 = v69;
          v135 = 2114;
          v136 = v71;
          _os_log_impl(&dword_22AD27000, v68, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Resetting pending output push data due to change from mirror", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v66);
        v18 = [*(a1 + 32) recordRow];
        v129 = v17;
        v22 = &v129;
        v23 = &v129;
        v24 = v123;
        v19 = 0;
        v20 = 0;
        v21 = 0;
      }

      [v24 _updateRecordWithRow:v18 pushBlockRow:v19 pushData:v20 pushEncoding:v21 error:v23];
      v25 = *v22;

      v17 = v25;
LABEL_23:
      if (*(a1 + 104))
      {
        v72 = [*(a1 + 32) recordRow];
        v73 = *(a1 + 96);
        v74 = *(a1 + 104);
        v128 = v17;
        [v123 _updateRecordWithRow:v72 externalID:v73 externalData:v74 error:&v128];
        v75 = v128;

        v17 = v75;
      }

      if (*(a1 + 72) && *(a1 + 112))
      {
        v76 = [*(a1 + 32) recordRow];
        v77 = *(a1 + 72);
        v78 = *(a1 + 112);
        v127 = v17;
        [v123 _updateRecordWithRow:v76 modelType:v77 modelSchema:v78 error:&v127];
        v79 = v127;

        v17 = v79;
      }

      if (*(a1 + 40))
      {
        v80 = [*(a1 + 32) encodedQueryableColumns];

        if (v80)
        {
          v81 = [*(a1 + 32) queryTable];
          v82 = *(a1 + 144);
          v83 = [*(a1 + 32) recordRow];
          v84 = [*(a1 + 32) encodedQueryableColumns];
          v126 = v17;
          [v81 _updateQueryForZoneRow:v82 recordRow:v83 encodedColumns:v84 error:&v126];
          v85 = v126;

          v17 = v85;
        }
      }

      goto LABEL_38;
    }

    v93 = objc_autoreleasePoolPush();
    v94 = *(a1 + 56);
    v95 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      v96 = HMFGetLogIdentifier();
      v97 = [*(a1 + 64) identifier];
      [v97 shortDescription];
      v98 = v122 = v93;
      v99 = [*(a1 + 32) recordRow];
      v100 = *(a1 + 72);
      v101 = [*(a1 + 80) model];
      v102 = [v101 hmbModelID];
      *buf = 138544386;
      v134 = v96;
      v135 = 2114;
      v136 = v98;
      v137 = 2048;
      v138 = v99;
      v139 = 2112;
      v140 = v100;
      v141 = 2112;
      v142 = v102;
      _os_log_impl(&dword_22AD27000, v95, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Deleting record row: %lu %@ %@", buf, 0x34u);

      v93 = v122;
    }

    objc_autoreleasePoolPop(v93);
    v103 = [*(a1 + 32) recordRow];
    v132 = 0;
    [v123 _deleteRecordWithRow:v103 error:&v132];
    v92 = v132;
LABEL_37:
    v17 = v92;
    goto LABEL_38;
  }

  v26 = *(a1 + 120);
  if (!v26)
  {
    v86 = objc_autoreleasePoolPush();
    v87 = *(a1 + 56);
    v88 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      v89 = HMFGetLogIdentifier();
      v90 = [*(a1 + 64) identifier];
      v91 = [v90 shortDescription];
      *buf = 138543618;
      v134 = v89;
      v135 = 2114;
      v136 = v91;
      _os_log_impl(&dword_22AD27000, v88, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] No record row to update or updated model to insert", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v86);
    v92 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    goto LABEL_37;
  }

  v27 = *(a1 + 144);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  v30 = [v26 model];
  v31 = [v30 hmbModelID];
  v32 = [*(a1 + 120) model];
  v33 = [v32 hmbParentModelID];
  v34 = *(a1 + 72);
  v35 = *(a1 + 112);
  v37 = *(a1 + 128);
  v36 = *(a1 + 136);
  v38 = *(a1 + 88);
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  v125 = 0;
  v41 = [v123 _insertRecordWithZoneRow:v27 externalID:v28 externalData:v29 modelID:v31 parentModelID:v33 modelType:v34 modelEncoding:v36 modelData:v39 modelSchema:v35 pushEncoding:v37 pushData:v38 pushBlockRow:v40 error:&v125];
  v17 = v125;

  v42 = [*(a1 + 32) encodedQueryableColumns];

  if (v42)
  {
    v43 = [*(a1 + 32) queryTable];
    v44 = *(a1 + 144);
    v45 = [*(a1 + 32) encodedQueryableColumns];
    v124 = v17;
    [v43 _updateQueryForZoneRow:v44 recordRow:v41 encodedColumns:v45 error:&v124];
    v46 = v124;

    v17 = v46;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = *(a1 + 56);
  v49 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v50 = HMFGetLogIdentifier();
    v119 = [*(a1 + 64) identifier];
    v51 = [v119 shortDescription];
    v108 = *(a1 + 48);
    v109 = *(a1 + 128);
    v117 = [*(a1 + 120) model];
    v115 = [v117 hmbModelID];
    v52 = [v115 UUIDString];
    [*(a1 + 120) model];
    v113 = v107 = v41;
    v111 = [v113 hmbParentModelID];
    v53 = [v111 UUIDString];
    v106 = *(a1 + 72);
    v54 = [*(a1 + 96) hmbDescription];
    [*(a1 + 104) hmbDescription];
    v55 = v121 = v47;
    v56 = [*(a1 + 88) hmbDescription];
    *buf = 138545922;
    v134 = v50;
    v135 = 2114;
    v136 = v51;
    v137 = 2048;
    v138 = v107;
    v139 = 2112;
    v140 = v108;
    v141 = 2048;
    v142 = v109;
    v143 = 2112;
    v144 = v52;
    v145 = 2112;
    v146 = v53;
    v147 = 2112;
    v148 = v106;
    v149 = 2112;
    v150 = v54;
    v151 = 2112;
    v152 = v55;
    v153 = 2112;
    v154 = v56;
    _os_log_impl(&dword_22AD27000, v49, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Inserting record row: %lu %@ %lu %@ %@ %@ %@ %@ %@", buf, 0x70u);

    v47 = v121;
  }

  objc_autoreleasePoolPop(v47);
LABEL_38:
  v104 = v17;

  return v17;
}

id __56__HMBLocalZone_Process___processItemsForBlockRow_error___block_invoke_124(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = [*(*(a1[6] + 8) + 40) optionsData];
  v7 = a1[5];
  v14 = 0;
  v8 = [v4 _insertBlockWithZoneRow:v5 type:3 options:v6 items:v7 error:&v14];

  v9 = v14;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return v9;
}

- (void)queueIncompleteProcesses
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(HMBLocalZone *)self sql];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke;
  v52[3] = &unk_2786E24B0;
  v52[4] = self;
  v4 = [v3 sqlBlockWithActivity:0 block:v52];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v8;
      v57 = 2112;
      v58 = v4;
      _os_log_impl(&dword_22AD27000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete null items/blocks: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v38 = v4;
  v9 = [HMBLocalSQLIteratorRowRollbackBlock alloc];
  v10 = [(HMBLocalZone *)self sql];
  v11 = [(HMBLocalSQLIteratorRowRollbackBlock *)v9 initWithSQLContext:v10 zoneRow:[(HMBLocalZone *)self zoneRow]];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v11;
  v12 = [(HMBLocalSQLIteratorRowRollbackBlock *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v20;
          v57 = 2112;
          v58 = v16;
          _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Rolling back block: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        __rollbackBlock(selfCopy2, v16);
      }

      v13 = [(HMBLocalSQLIteratorRowRollbackBlock *)obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v13);
  }

  v21 = [(HMBLocalZone *)self sql];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_81;
  v47[3] = &unk_2786E24B0;
  v47[4] = self;
  v22 = [v21 sqlBlockWithActivity:0 block:v47];

  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v26;
      v57 = 2112;
      v58 = v22;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete zombie records: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v39 = v22;
  v27 = [HMBLocalSQLIteratorRowInputBlock alloc];
  v28 = [(HMBLocalZone *)self sql];
  v29 = [(HMBLocalSQLIteratorRowInputBlock *)v27 initWithSQLContext:v28 zoneRow:[(HMBLocalZone *)self zoneRow]];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v29;
  v30 = [(HMBLocalSQLIteratorRowInputBlock *)v40 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v40);
        }

        blockRow = [*(*(&v43 + 1) + 8 * j) blockRow];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_84;
        v42[3] = &unk_2786E03C8;
        v42[4] = self;
        v42[5] = blockRow;
        v35 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v42];
        localDatabase = [(HMBLocalZone *)self localDatabase];
        queue = [localDatabase queue];
        [queue addOperation:v35];
      }

      v31 = [(HMBLocalSQLIteratorRowInputBlock *)v40 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v31);
  }
}

id __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  [v4 _deleteNullItemsWithZoneRow:objc_msgSend(v3 error:{"zoneRow"), &v11}];
  v5 = v11;
  v6 = [*(a1 + 32) zoneRow];
  v10 = v5;
  [v4 _deleteNullBlocksWithZoneRow:v6 error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

id __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_81(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteZombieRecordsWithZoneRow:objc_msgSend(v2 error:{"zoneRow"), &v6}];

  v4 = v6;

  return v4;
}

id __49__HMBLocalZone_Process__queueIncompleteProcesses__block_invoke_84(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AD27000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Processing input block row: %lu", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _processItemsForBlockRow:*(a1 + 40) error:0];
}

- (id)observersForModelWithID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  modelObserversByModelID = [(HMBLocalZone *)self modelObserversByModelID];
  v7 = [modelObserversByModelID objectForKeyedSubscript:dCopy];
  allObjects = [v7 allObjects];
  [v5 addObjectsFromArray:allObjects];

  observersForAllModels = [(HMBLocalZone *)self observersForAllModels];
  allObjects2 = [observersForAllModels allObjects];
  [v5 addObjectsFromArray:allObjects2];

  os_unfair_lock_unlock(&self->_propertyLock);
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    hmbDescription = [v5 hmbDescription];
    v18 = 138543874;
    v19 = v14;
    v20 = 2112;
    v21 = dCopy;
    v22 = 2112;
    v23 = hmbDescription;
    _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Notifying observers for model ID %@: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [v5 copy];

  return v16;
}

+ (id)outputModelFromUpdateModel:(id)model mergedModel:(id)mergedModel
{
  v21 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v6 = [mergedModel copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  hmbExternalProperties = [objc_opt_class() hmbExternalProperties];
  v8 = [hmbExternalProperties countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(hmbExternalProperties);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        hmbSetProperties = [modelCopy hmbSetProperties];
        v14 = [hmbSetProperties containsObject:v12];

        if ((v14 & 1) == 0)
        {
          [v6 hmbUnsetPropertyNamed:v12];
        }
      }

      v9 = [hmbExternalProperties countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (BOOL)shouldMirrorInputExternalData:(id)data overwriteExistingExternalData:(id)externalData
{
  v46 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  externalDataCopy = externalData;
  v8 = externalDataCopy;
  if (dataCopy)
  {
    if (externalDataCopy)
    {
      v39 = 0;
      v9 = [MEMORY[0x277CBC5A0] recordFromExternalData:dataCopy error:&v39];
      v10 = v39;
      if (v9)
      {
        v38 = v10;
        v11 = [MEMORY[0x277CBC5A0] recordFromExternalData:v8 error:&v38];
        v12 = v38;

        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        v16 = v15;
        if (v11)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            [v9 modificationDate];
            v18 = v37 = v12;
            modificationDate = [v11 modificationDate];
            *buf = 138543874;
            v41 = v17;
            v42 = 2112;
            v43 = v18;
            v44 = 2112;
            v45 = modificationDate;
            _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@Comparing mirror input modification date %@ with existing record modification date %@", buf, 0x20u);

            v12 = v37;
          }

          objc_autoreleasePoolPop(v13);
          modificationDate2 = [v9 modificationDate];
          modificationDate3 = [v11 modificationDate];
          v22 = [modificationDate2 compare:modificationDate3] == 1;
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v41 = v35;
            v42 = 2112;
            v43 = v12;
            _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode record from existing external data: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v22 = 1;
        }

        v10 = v12;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v34;
          v42 = 2112;
          v43 = v10;
          _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode record from mirror input external data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v22 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v30;
        _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_INFO, "%{public}@Existing external data was nil when comparing against mirror input external data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v22 = 1;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v26;
      _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@Mirror input external data was nil when comparing against existing external data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

+ (id)outputBlockRowForTuple:(id)tuple activity:(id)activity
{
  v40 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  activityCopy = activity;
  previousContext = [tupleCopy previousContext];
  model = [previousContext model];

  updateModel = [tupleCopy updateModel];
  v11 = objc_opt_class();
  if (!v11)
  {
    v11 = objc_opt_class();
  }

  if ([v11 hmbExcludeFromCloudStorage])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      v29 = activityCopy;
      identifier = [activityCopy identifier];
      shortDescription = [identifier shortDescription];
      hmbModelID = [model hmbModelID];
      hmbModelID2 = hmbModelID;
      if (!hmbModelID)
      {
        hmbModelID2 = [updateModel hmbModelID];
      }

      *buf = 138544130;
      v33 = v28;
      v34 = 2114;
      v35 = shortDescription;
      v36 = 2112;
      v37 = hmbModelID2;
      v38 = 2048;
      itemRow = [tupleCopy itemRow];
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Skipping mirror output push for model ID %@ and row %ld since the model is set to exclude cloud storage", buf, 0x2Au);
      if (!hmbModelID)
      {
      }

      activityCopy = v29;
    }

LABEL_13:

    objc_autoreleasePoolPop(v12);
    outputBlockRow = 0;
    goto LABEL_15;
  }

  hmbSetProperties = [updateModel hmbSetProperties];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __57__HMBLocalZone_Process__outputBlockRowForTuple_activity___block_invoke;
  v31[3] = &__block_descriptor_40_e18_B16__0__NSString_8lu32l8;
  v31[4] = v11;
  v20 = [hmbSetProperties na_all:v31];

  if (v20)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      identifier2 = [activityCopy identifier];
      [identifier2 shortDescription];
      v23 = v30 = activityCopy;
      hmbModelID3 = [updateModel hmbModelID];
      itemRow2 = [tupleCopy itemRow];
      *buf = 138544130;
      v33 = v21;
      v34 = 2114;
      v35 = v23;
      v36 = 2112;
      v37 = hmbModelID3;
      v38 = 2048;
      itemRow = itemRow2;
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Skipping mirror output push for updated model ID %@ and row %ld since the only set properties are excluded from cloud storage", buf, 0x2Au);

      activityCopy = v30;
    }

    goto LABEL_13;
  }

  outputBlockRow = [tupleCopy outputBlockRow];
LABEL_15:

  return outputBlockRow;
}

BOOL __57__HMBLocalZone_Process__outputBlockRowForTuple_activity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hmbProperties];
  v5 = [v4 objectForKeyedSubscript:v3];

  if ([v5 excludeFromCloudStorage])
  {
    v6 = [v5 externalRecordField];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMBLocalZoneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMBLocalDatabase)localDatabase
{
  WeakRetained = objc_loadWeakRetained(&self->_localDatabase);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  localDatabase = [(HMBLocalZone *)self localDatabase];
  logIdentifier = [localDatabase logIdentifier];
  v6 = [v3 initWithName:@"Database" value:logIdentifier];
  v12[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  zoneID = [(HMBLocalZone *)self zoneID];
  v9 = [v7 initWithName:@"Zone ID" value:zoneID];
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  return v10;
}

- (id)logIdentifier
{
  zoneID = [(HMBLocalZone *)self zoneID];
  shortDescription = [zoneID shortDescription];

  return shortDescription;
}

- (id)shutdown
{
  os_unfair_lock_lock_with_options();
  shutdownFuture = [(HMBLocalZone *)self shutdownFuture];

  if (!shutdownFuture)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __24__HMBLocalZone_shutdown__block_invoke;
    v9[3] = &unk_2786E10F8;
    v9[4] = self;
    v4 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v9];
    [(HMBLocalZone *)self setShutdownFuture:v4];
  }

  shutdownFuture2 = [(HMBLocalZone *)self shutdownFuture];
  os_unfair_lock_unlock(&self->_propertyLock);
  if (!shutdownFuture)
  {
    localDatabase = [(HMBLocalZone *)self localDatabase];
    [localDatabase handleLocalZoneShutdown:self];

    recoverIgnoringError = [shutdownFuture2 recoverIgnoringError];
  }

  return shutdownFuture2;
}

void __24__HMBLocalZone_shutdown__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mirror];
  v5 = [v4 shutdown];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v8 = v7;

  v9 = [v8 recoverIgnoringError];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __24__HMBLocalZone_shutdown__block_invoke_2;
  v12[3] = &unk_2786E13C0;
  v12[4] = *(a1 + 32);
  v13 = v3;
  v10 = v3;
  v11 = [v9 addSuccessBlock:v12];
}

void __24__HMBLocalZone_shutdown__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) flush];
  v2 = [v5 recoverIgnoringError];
  v3 = [*(a1 + 40) completionHandlerAdapter];
  v4 = [v2 addCompletionBlock:v3];
}

- (id)createLocalInputWithError:(id *)error
{
  v4 = [(HMBLocalZone *)self createInputBlockWithType:2 error:error];
  if (v4)
  {
    v5 = [(HMBLocalZoneInput *)[HMBLocalZoneLocalInput alloc] initWithLocalZone:self inputBlock:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removeAllModelsOfTypes:(id)types options:(id)options
{
  v55 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  optionsCopy = options;
  v7 = objc_alloc(MEMORY[0x277D0F770]);
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone removeAllModelsOfTypes:options:]"];
  v9 = [v7 initWithName:v8];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    [typesCopy hmbDescription];
    v17 = v16 = v9;
    label = [optionsCopy label];
    *buf = 138544130;
    v48 = v13;
    v49 = 2114;
    v50 = shortDescription;
    v51 = 2112;
    v52 = v17;
    v53 = 2112;
    v54 = label;
    _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing all models of types: %@, options label: %@", buf, 0x2Au);

    v9 = v16;
  }

  objc_autoreleasePoolPop(v10);
  v46 = 0;
  v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:&v46];
  v20 = v46;
  if (v19)
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __47__HMBLocalZone_removeAllModelsOfTypes_options___block_invoke;
    v45[3] = &unk_2786E07C0;
    v45[4] = selfCopy;
    v21 = [typesCopy na_map:v45];
    v44 = v20;
    v22 = [(HMBLocalZone *)selfCopy insertBlockToRemoveAllModelsWithType:2 modelTypes:v21 options:v19 error:&v44];
    v23 = v44;

    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        [v9 identifier];
        v42 = optionsCopy;
        v29 = v28 = v9;
        shortDescription2 = [v29 shortDescription];
        *buf = 138544130;
        v48 = v27;
        v49 = 2114;
        v50 = shortDescription2;
        v51 = 2112;
        v52 = typesCopy;
        v53 = 2112;
        v54 = v23;
        _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage removal for all models of types %@: %@", buf, 0x2Au);

        v9 = v28;
        optionsCopy = v42;
      }

      objc_autoreleasePoolPop(v24);
      v31 = [MEMORY[0x277D2C900] futureWithError:v23];
    }

    else
    {
      v31 = [(HMBLocalZone *)selfCopy triggerProcessForBlockRow:v22];
    }

    v40 = v31;

    v20 = v23;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      identifier2 = [v9 identifier];
      [identifier2 shortDescription];
      v37 = optionsCopy;
      v39 = v38 = v9;
      *buf = 138544130;
      v48 = v35;
      v49 = 2114;
      v50 = v39;
      v51 = 2112;
      v52 = v37;
      v53 = 2112;
      v54 = v20;
      _os_log_impl(&dword_22AD27000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode processing options %@: %@", buf, 0x2Au);

      v9 = v38;
      optionsCopy = v37;
    }

    objc_autoreleasePoolPop(v32);
    v40 = [MEMORY[0x277D2C900] futureWithError:v20];
  }

  return v40;
}

id __47__HMBLocalZone_removeAllModelsOfTypes_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) modelContainer];
  v4 = [v3 typeNameForModelClass:a2];

  return v4;
}

- (id)removeModelsAndDescendantModelsWithIDs:(id)ds depth:(unint64_t)depth options:(id)options
{
  v59 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  v10 = objc_alloc(MEMORY[0x277D0F770]);
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone removeModelsAndDescendantModelsWithIDs:depth:options:]"];
  v12 = [v10 initWithName:v11];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    identifier = [v12 identifier];
    [identifier shortDescription];
    v18 = optionsCopy;
    v20 = v19 = dsCopy;
    [v19 hmbDescription];
    v21 = v44 = v12;
    [v18 label];
    v43 = v13;
    v23 = v22 = depth;
    *buf = 138544386;
    v50 = v16;
    v51 = 2114;
    v52 = v20;
    v53 = 2112;
    v54 = v21;
    v55 = 2048;
    v56 = v22;
    v57 = 2112;
    v58 = v23;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing models and descendant models with IDs: %@, depth: %lu, options label: %@", buf, 0x34u);

    depth = v22;
    v13 = v43;

    v12 = v44;
    dsCopy = v19;
    optionsCopy = v18;
  }

  objc_autoreleasePoolPop(v13);
  v48 = 0;
  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:&v48];
  v25 = v48;
  v26 = v25;
  if (v24)
  {
    v47 = v25;
    v27 = [(HMBLocalZone *)selfCopy insertBlockToRemoveModelsAndDescendantModelsWithType:2 modelIDs:dsCopy depth:depth options:v24 error:&v47];
    v28 = v47;

    if (v28)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        [v12 identifier];
        v33 = v45 = v12;
        shortDescription = [v33 shortDescription];
        *buf = 138544130;
        v50 = v32;
        v51 = 2114;
        v52 = shortDescription;
        v53 = 2112;
        v54 = dsCopy;
        v55 = 2112;
        v56 = v28;
        _os_log_impl(&dword_22AD27000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage removal for models and descendant models with IDs %@: %@", buf, 0x2Au);

        v12 = v45;
      }

      objc_autoreleasePoolPop(v29);
      v35 = [MEMORY[0x277D2C900] futureWithError:v28];
    }

    else
    {
      v35 = [(HMBLocalZone *)selfCopy triggerProcessForBlockRow:v27];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      [v12 identifier];
      v40 = v46 = v12;
      shortDescription2 = [v40 shortDescription];
      *buf = 138544130;
      v50 = v39;
      v51 = 2114;
      v52 = shortDescription2;
      v53 = 2112;
      v54 = optionsCopy;
      v55 = 2112;
      v56 = v26;
      _os_log_impl(&dword_22AD27000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode processing options %@: %@", buf, 0x2Au);

      v12 = v46;
    }

    objc_autoreleasePoolPop(v36);
    v35 = [MEMORY[0x277D2C900] futureWithError:v26];
  }

  return v35;
}

- (id)removeModelsWithParentModelID:(id)d options:(id)options
{
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone removeModelsWithParentModelID:options:]"];
  v10 = [v8 initWithName:v9];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    identifier = [v10 identifier];
    shortDescription = [identifier shortDescription];
    label = [optionsCopy label];
    *buf = 138544130;
    v42 = v14;
    v43 = 2114;
    v44 = shortDescription;
    v45 = 2112;
    v46 = dCopy;
    v47 = 2112;
    v48 = label;
    _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing models with parent model ID: %@, options label: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v40 = 0;
  v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:&v40];
  v19 = v40;
  v20 = v19;
  if (v18)
  {
    v39 = v19;
    v21 = [(HMBLocalZone *)selfCopy insertBlockToRemoveChildModelsWithType:2 parentModelID:dCopy options:v18 error:&v39];
    v22 = v39;

    if (v22)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        identifier2 = [v10 identifier];
        [identifier2 shortDescription];
        v28 = v37 = v10;
        *buf = 138544130;
        v42 = v26;
        v43 = 2114;
        v44 = v28;
        v45 = 2112;
        v46 = dCopy;
        v47 = 2112;
        v48 = v22;
        _os_log_impl(&dword_22AD27000, v25, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage removal for models with parent model ID %@: %@", buf, 0x2Au);

        v10 = v37;
      }

      objc_autoreleasePoolPop(v23);
      v29 = [MEMORY[0x277D2C900] futureWithError:v22];
    }

    else
    {
      v29 = [(HMBLocalZone *)selfCopy triggerProcessForBlockRow:v21];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      identifier3 = [v10 identifier];
      [identifier3 shortDescription];
      v35 = v38 = v30;
      *buf = 138544130;
      v42 = v33;
      v43 = 2114;
      v44 = v35;
      v45 = 2112;
      v46 = optionsCopy;
      v47 = 2112;
      v48 = v20;
      _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode processing options %@: %@", buf, 0x2Au);

      v30 = v38;
    }

    objc_autoreleasePoolPop(v30);
    v29 = [MEMORY[0x277D2C900] futureWithError:v20];
  }

  return v29;
}

- (id)removeModelIDs:(id)ds options:(id)options
{
  v6 = MEMORY[0x277CBEB98];
  optionsCopy = options;
  dsCopy = ds;
  v9 = [v6 set];
  v10 = [(HMBLocalZone *)self addModels:v9 andRemoveModelIDs:dsCopy options:optionsCopy];

  return v10;
}

- (id)updateModels:(id)models options:(id)options
{
  optionsCopy = options;
  modelsCopy = models;
  [optionsCopy setDisallowsModelCreation:1];
  v8 = [(HMBLocalZone *)self addModels:modelsCopy options:optionsCopy];

  return v8;
}

- (id)addModels:(id)models options:(id)options
{
  v6 = MEMORY[0x277CBEB98];
  optionsCopy = options;
  modelsCopy = models;
  v9 = [v6 set];
  v10 = [(HMBLocalZone *)self addModels:modelsCopy andRemoveModelIDs:v9 options:optionsCopy];

  return v10;
}

- (id)createModels:(id)models options:(id)options
{
  optionsCopy = options;
  modelsCopy = models;
  [optionsCopy setRequiresModelCreation:1];
  v8 = [(HMBLocalZone *)self addModels:modelsCopy options:optionsCopy];

  return v8;
}

- (id)updateModels:(id)models andRemoveModelIDs:(id)ds options:(id)options
{
  optionsCopy = options;
  dsCopy = ds;
  modelsCopy = models;
  [optionsCopy setDisallowsModelCreation:1];
  v11 = [(HMBLocalZone *)self addModels:modelsCopy andRemoveModelIDs:dsCopy options:optionsCopy];

  return v11;
}

- (id)addModels:(id)models andRemoveModelIDs:(id)ds options:(id)options
{
  v142 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  dsCopy = ds;
  optionsCopy = options;
  v10 = objc_alloc(MEMORY[0x277D0F770]);
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HMBLocalZone addModels:andRemoveModelIDs:options:]"];
  v12 = [v10 initWithName:v11];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    [v12 identifier];
    v18 = v17 = dsCopy;
    [v18 shortDescription];
    v19 = v110 = v13;
    [modelsCopy hmbDescription];
    v20 = v108 = selfCopy;
    [v17 hmbDescription];
    v21 = v12;
    v23 = v22 = optionsCopy;
    label = [v22 label];
    *buf = 138544386;
    v133 = v16;
    v134 = 2114;
    v135 = v19;
    v136 = 2112;
    v137 = v20;
    v138 = 2112;
    v139 = v23;
    v140 = 2112;
    v141 = label;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Submitting models to add: %@, model IDs to remove: %@, options label: %@", buf, 0x34u);

    optionsCopy = v22;
    v12 = v21;

    selfCopy = v108;
    v13 = v110;

    dsCopy = v17;
  }

  objc_autoreleasePoolPop(v13);
  v126 = 0;
  v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:&v126];
  v26 = v126;
  if (v26)
  {
    v27 = v26;
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      [v12 identifier];
      v32 = v103 = dsCopy;
      shortDescription = [v32 shortDescription];
      *buf = 138544130;
      v133 = v31;
      v134 = 2114;
      v135 = shortDescription;
      v136 = 2112;
      v137 = optionsCopy;
      v138 = 2112;
      v139 = v27;
      _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to archive options %@: %@", buf, 0x2Au);

      dsCopy = v103;
    }

    objc_autoreleasePoolPop(v28);
    v34 = [MEMORY[0x277D2C900] futureWithError:v27];
    v35 = modelsCopy;
  }

  else
  {
    v100 = v25;
    v101 = optionsCopy;
    v102 = v12;
    v109 = selfCopy;
    modelContainer = [(HMBLocalZone *)selfCopy modelContainer];
    v99 = [modelContainer bestModelEncodingForStorageLocation:3];

    v111 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count") + objc_msgSend(modelsCopy, "count")}];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v104 = dsCopy;
    v37 = dsCopy;
    v38 = [v37 countByEnumeratingWithState:&v122 objects:v131 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v123;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v123 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v122 + 1) + 8 * i);
          v43 = [HMBLocalSQLContextRowItem alloc];
          uUID = [MEMORY[0x277CCAD78] UUID];
          data = [uUID data];
          data2 = [v42 data];
          v47 = [(HMBLocalSQLContextRowItem *)v43 initWithItemRow:0 externalID:data externalData:0 modelEncoding:0 modelData:data2];

          [v111 addObject:v47];
        }

        v39 = [v37 countByEnumeratingWithState:&v122 objects:v131 count:16];
      }

      while (v39);
    }

    v48 = [MEMORY[0x277CBEB58] set];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v49 = modelsCopy;
    v50 = [v49 countByEnumeratingWithState:&v118 objects:v130 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v119;
      while (2)
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v119 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v118 + 1) + 8 * j);
          hmbModelID = [v54 hmbModelID];
          if (!hmbModelID || (v56 = hmbModelID, [v54 hmbParentModelID], v57 = objc_claimAutoreleasedReturnValue(), v57, v56, !v57))
          {
            v72 = objc_autoreleasePoolPush();
            v73 = v109;
            v74 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v75 = HMFGetLogIdentifier();
              identifier = [v102 identifier];
              shortDescription2 = [identifier shortDescription];
              *buf = 138543874;
              v133 = v75;
              v134 = 2114;
              v135 = shortDescription2;
              v136 = 2112;
              v137 = v54;
              _os_log_impl(&dword_22AD27000, v74, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Cannot update a model with a nil hmbModelID or hmbParentModelID: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v72);
            v78 = MEMORY[0x277D2C900];
            v79 = MEMORY[0x277CCA9B8];
            v80 = *MEMORY[0x277D0F1A0];
            v128[0] = @"info";
            v128[1] = @"model";
            v129[0] = @"Cannot update a model with a nil hmbModelID or hmbParentModelID";
            hmbDescription = [v54 hmbDescription];
            v129[1] = hmbDescription;
            v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:2];
            v83 = [v79 errorWithDomain:v80 code:3 userInfo:v82];
            v34 = [v78 futureWithError:v83];

            v27 = 0;
            dsCopy = v104;
            v25 = v100;
            optionsCopy = v101;
            goto LABEL_42;
          }

          hmbModelID2 = [v54 hmbModelID];
          [v48 addObject:hmbModelID2];
        }

        v51 = [v49 countByEnumeratingWithState:&v118 objects:v130 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v49;
    v59 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
    v106 = v48;
    if (v59)
    {
      v60 = v59;
      v27 = 0;
      v61 = *v115;
      v62 = v99;
      while (2)
      {
        v63 = 0;
        v64 = v27;
        do
        {
          if (*v115 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v114 + 1) + 8 * v63);
          modelContainer2 = [(HMBLocalZone *)v109 modelContainer];
          v113 = v64;
          v67 = [modelContainer2 dataFromModel:v65 encoding:v62 storageLocation:3 updatedModelIDs:v106 error:&v113];
          v27 = v113;

          if (!v67)
          {
            v84 = objc_autoreleasePoolPush();
            v85 = v109;
            v86 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              v87 = HMFGetLogIdentifier();
              identifier2 = [v102 identifier];
              shortDescription3 = [identifier2 shortDescription];
              *buf = 138544130;
              v133 = v87;
              v134 = 2114;
              v135 = shortDescription3;
              v136 = 2112;
              v137 = v65;
              v138 = 2112;
              v139 = v27;
              _os_log_impl(&dword_22AD27000, v86, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode model %@: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v84);
            v34 = [MEMORY[0x277D2C900] futureWithError:v27];

            dsCopy = v104;
            v25 = v100;
            optionsCopy = v101;
            goto LABEL_41;
          }

          v68 = [HMBLocalSQLContextRowItem alloc];
          uUID2 = [MEMORY[0x277CCAD78] UUID];
          data3 = [uUID2 data];
          v71 = [(HMBLocalSQLContextRowItem *)v68 initWithItemRow:0 externalID:data3 externalData:0 modelEncoding:v62 modelData:v67];

          [v111 addObject:v71];
          ++v63;
          v64 = v27;
        }

        while (v60 != v63);
        v60 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
        if (v60)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

    v112 = v27;
    v25 = v100;
    v90 = [(HMBLocalZone *)v109 insertBlockWithType:2 options:v100 items:v111 error:&v112];
    v91 = v112;

    if (v91)
    {
      v34 = [MEMORY[0x277D2C900] futureWithError:v91];
      v27 = v91;
      dsCopy = v104;
LABEL_41:
      v48 = v106;
    }

    else
    {
      v93 = objc_autoreleasePoolPush();
      v94 = v109;
      v95 = HMFGetOSLogHandle();
      v48 = v106;
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v96 = HMFGetLogIdentifier();
        identifier3 = [v102 identifier];
        shortDescription4 = [identifier3 shortDescription];
        *buf = 138543874;
        v133 = v96;
        v134 = 2114;
        v135 = shortDescription4;
        v136 = 2048;
        v137 = v90;
        _os_log_impl(&dword_22AD27000, v95, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Submitted models with block row: %lu", buf, 0x20u);

        optionsCopy = v101;
        v25 = v100;
      }

      objc_autoreleasePoolPop(v93);
      v34 = [(HMBLocalZone *)v94 triggerProcessForBlockRow:v90];
      v27 = 0;
      dsCopy = v104;
    }

LABEL_42:

    v35 = modelsCopy;
    v12 = v102;
  }

  return v34;
}

- (id)flush
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  localDatabase = [(HMBLocalZone *)self localDatabase];
  queue = [localDatabase queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __21__HMBLocalZone_flush__block_invoke;
  v10[3] = &unk_2786E0798;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [queue addOperationWithBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __21__HMBLocalZone_flush__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mirror];
  v6 = v2;
  if (v2)
  {
    v3 = [v2 flush];
    v4 = [*(a1 + 40) completionHandlerAdapter];
    v5 = [v3 addCompletionBlock:v4];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }
}

- (BOOL)destroyWithError:(id *)error
{
  if (![(HMBLocalZone *)self removeAllRecordsWithError:?])
  {
    return 0;
  }

  localDatabase = [(HMBLocalZone *)self localDatabase];
  local = [localDatabase local];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__HMBLocalZone_destroyWithError___block_invoke;
  v9[3] = &unk_2786E24B0;
  v9[4] = self;
  v7 = [local sqlTransactionWithActivity:0 error:error block:v9];

  return v7;
}

id __33__HMBLocalZone_destroyWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 0;
  [v3 _deleteZoneWithRow:objc_msgSend(v2 error:{"zoneRow"), &v6}];

  v4 = v6;

  return v4;
}

- (void)startUp
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  hasStartedUp = [(HMBLocalZone *)self hasStartedUp];
  [(HMBLocalZone *)self setHasStartedUp:1];
  os_unfair_lock_unlock(&self->_propertyLock);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (hasStartedUp)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Not starting up local zone that has already started up", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting up local zone", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMBLocalZone *)selfCopy migrateUnsupportedModels];
    [(HMBLocalZone *)selfCopy rebuildIndexesIfNeeded];
    [(HMBLocalZone *)selfCopy queueIncompleteProcesses];
    mirror = [(HMBLocalZone *)selfCopy mirror];
    [mirror startUpWithLocalZone:selfCopy];
  }
}

- (id)setExternalData:(id)data forExternalID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v8 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__HMBLocalZone_setExternalData_forExternalID___block_invoke;
  v13[3] = &unk_2786E2418;
  v13[4] = self;
  v14 = dCopy;
  v15 = dataCopy;
  v9 = dataCopy;
  v10 = dCopy;
  v11 = [v8 sqlBlockWithActivity:0 block:v13];

  return v11;
}

id __46__HMBLocalZone_setExternalData_forExternalID___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[6];
  v10 = 0;
  [v4 _updateRecordWithZoneRow:v5 externalID:v6 externalData:v7 error:&v10];

  v8 = v10;

  return v8;
}

- (id)setExternalData:(id)data forModelID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v8 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__HMBLocalZone_setExternalData_forModelID___block_invoke;
  v13[3] = &unk_2786E2418;
  v13[4] = self;
  v14 = dCopy;
  v15 = dataCopy;
  v9 = dataCopy;
  v10 = dCopy;
  v11 = [v8 sqlBlockWithActivity:0 block:v13];

  return v11;
}

id __43__HMBLocalZone_setExternalData_forModelID___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[6];
  v10 = 0;
  [v4 _updateRecordWithZoneRow:v5 modelID:v6 externalData:v7 error:&v10];

  v8 = v10;

  return v8;
}

- (id)modelIDForExternalID:(id)d error:(id *)error
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithExternalID:d returning:0 error:error];
  v5 = v4;
  if (v4)
  {
    modelID = [v4 modelID];
  }

  else
  {
    modelID = 0;
  }

  return modelID;
}

- (id)externalIDForModelID:(id)d error:(id *)error
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithModelID:d returning:1 error:error];
  v5 = v4;
  if (v4)
  {
    externalID = [v4 externalID];
  }

  else
  {
    externalID = 0;
  }

  return externalID;
}

- (id)externalDataForExternalID:(id)d error:(id *)error
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithExternalID:d returning:1 error:error];
  v5 = v4;
  if (v4)
  {
    externalData = [v4 externalData];
  }

  else
  {
    externalData = 0;
  }

  return externalData;
}

- (id)externalDataForModelID:(id)d error:(id *)error
{
  v4 = [(HMBLocalZone *)self fetchRecordRowWithModelID:d returning:1 error:error];
  v5 = v4;
  if (v4)
  {
    externalData = [v4 externalData];
  }

  else
  {
    externalData = 0;
  }

  return externalData;
}

- (void)removeObserver:(id)observer forModelWithID:(id)d
{
  observerCopy = observer;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  modelObserversByModelID = [(HMBLocalZone *)self modelObserversByModelID];
  v8 = [modelObserversByModelID objectForKeyedSubscript:dCopy];

  [v8 removeObject:observerCopy];
  if (![v8 count])
  {
    modelObserversByModelID2 = [(HMBLocalZone *)self modelObserversByModelID];
    [modelObserversByModelID2 setObject:0 forKeyedSubscript:dCopy];
  }

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)removeObserverForAllModels:(id)models
{
  modelsCopy = models;
  os_unfair_lock_lock_with_options();
  observersForAllModels = [(HMBLocalZone *)self observersForAllModels];
  [observersForAllModels removeObject:modelsCopy];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)addObserver:(id)observer forModelWithID:(id)d
{
  observerCopy = observer;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  modelObserversByModelID = [(HMBLocalZone *)self modelObserversByModelID];
  weakObjectsHashTable = [modelObserversByModelID objectForKeyedSubscript:dCopy];

  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    modelObserversByModelID2 = [(HMBLocalZone *)self modelObserversByModelID];
    [modelObserversByModelID2 setObject:weakObjectsHashTable forKeyedSubscript:dCopy];
  }

  [weakObjectsHashTable addObject:observerCopy];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)addObserverForAllModels:(id)models
{
  modelsCopy = models;
  os_unfair_lock_lock_with_options();
  observersForAllModels = [(HMBLocalZone *)self observersForAllModels];
  [observersForAllModels addObject:modelsCopy];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)setZoneRow:(unint64_t)row
{
  os_unfair_lock_lock_with_options();
  self->_zoneRow = row;

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (unint64_t)zoneRow
{
  os_unfair_lock_lock_with_options();
  zoneRow = self->_zoneRow;
  os_unfair_lock_unlock(&self->_propertyLock);
  return zoneRow;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Deallocating HMBLocalZone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMBLocalZone;
  [(HMBLocalZone *)&v7 dealloc];
}

- (HMBLocalZone)initWithLocalDatabase:(id)database zoneID:(id)d zoneRow:(unint64_t)row configuration:(id)configuration mirror:(id)mirror
{
  databaseCopy = database;
  dCopy = d;
  configurationCopy = configuration;
  mirrorCopy = mirror;
  v35.receiver = self;
  v35.super_class = HMBLocalZone;
  v16 = [(HMBLocalZone *)&v35 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_localDatabase, databaseCopy);
    local = [databaseCopy local];
    sql = v17->_sql;
    v17->_sql = local;

    objc_storeStrong(&v17->_zoneID, d);
    v17->_zoneRow = row;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observersForAllModels = v17->_observersForAllModels;
    v17->_observersForAllModels = weakObjectsHashTable;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    modelObserversByModelID = v17->_modelObserversByModelID;
    v17->_modelObserversByModelID = dictionary;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    mirrorOutputObservers = v17->_mirrorOutputObservers;
    v17->_mirrorOutputObservers = weakObjectsHashTable2;

    objc_storeStrong(&v17->_mirror, mirror);
    delegate = [configurationCopy delegate];
    objc_storeWeak(&v17->_delegate, delegate);

    v27 = [configurationCopy copy];
    configuration = v17->_configuration;
    v17->_configuration = v27;

    modelContainer = [configurationCopy modelContainer];

    if (modelContainer)
    {
      v30 = configurationCopy;
    }

    else
    {
      v30 = databaseCopy;
    }

    modelContainer2 = [v30 modelContainer];
    v32 = [modelContainer2 copy];
    modelContainer = v17->_modelContainer;
    v17->_modelContainer = v32;

    [(HMBModelContainer *)v17->_modelContainer updateLocalZone:v17];
    if (mirrorCopy)
    {
      [(HMBModelContainer *)v17->_modelContainer updateMirror:mirrorCopy];
    }
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_1527);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

uint64_t __27__HMBLocalZone_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v26;
  logCategory__hmf_once_v26 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)migrateUnsupportedModels
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [HMBLocalZoneQueryResultAllOfTypeRaw alloc];
  zoneRow = [(HMBLocalZone *)self zoneRow];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(HMBLocalZoneQueryResultAllOfTypeRaw *)v3 initWithLocalZone:self zoneRow:zoneRow modelType:v6 returning:-1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke;
  v14[3] = &unk_2786E0840;
  v14[4] = self;
  [(HMBSQLQueryIterator *)v7 enumerateObjectsUsingBlock:v14];
  error = [(HMBSQLQueryIterator *)v7 error];

  if (error)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      error2 = [(HMBSQLQueryIterator *)v7 error];
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = error2;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to iterate through unknown models in zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v27 = 0;
  v5 = [v4 modelFromRecord:v3 storageLocation:2 error:&v27];
  v6 = v27;
  if (v5)
  {
    if ([v5 hmbIsModelGenericRepresentation])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v10;
        v30 = 2112;
        v31 = v5;
        _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Not migrating unsupported model that has a generic representation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v11 = [v5 hmbType];
      v12 = [*(a1 + 32) modelContainer];
      v13 = [v12 schemaHashForModel:v5];

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138544130;
        v29 = v17;
        v30 = 2112;
        v31 = v11;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v5;
        _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating model type to %@ and schema to %@ for previously-unsupported model: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [*(a1 + 32) sql];
      v26 = v6;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke_42;
      v22[3] = &unk_2786E2418;
      v23 = v3;
      v24 = v11;
      v25 = v13;
      v19 = v13;
      v20 = v11;
      [v18 sqlBlockWithActivity:0 error:&v26 block:v22];
      v21 = v26;

      v6 = v21;
    }
  }
}

id __60__HMBLocalZone_MigrateUnsupported__migrateUnsupportedModels__block_invoke_42(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 recordRow];
  v6 = a1[5];
  v7 = a1[6];
  v10 = 0;
  [v4 _updateRecordWithRow:v5 modelType:v6 modelSchema:v7 error:&v10];

  v8 = v10;

  return v8;
}

- (id)createMirrorInputWithError:(id *)error
{
  v4 = [(HMBLocalZone *)self createInputBlockWithType:1 error:error];
  if (v4)
  {
    v5 = [(HMBLocalZoneInput *)[HMBLocalZoneMirrorInput alloc] initWithLocalZone:self inputBlock:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)removeOutputBlockWithRow:(unint64_t)row error:(id *)error
{
  v7 = [(HMBLocalZone *)self sql];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HMBLocalZone_MirrorOutput__removeOutputBlockWithRow_error___block_invoke;
  v9[3] = &unk_2786E2460;
  v9[4] = self;
  v9[5] = row;
  LOBYTE(error) = [v7 sqlTransactionWithActivity:0 error:error block:v9];

  return error;
}

id __61__HMBLocalZone_MirrorOutput__removeOutputBlockWithRow_error___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  v22 = 0;
  v5 = [v3 _resetOutputForRecordsWithBlockRow:v4 error:&v22];
  v6 = v22;
  if ((v5 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v24 = v10;
      v25 = 2048;
      v26 = v11;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to reset output for records with output block row %lu: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *(a1 + 40);
  v21 = v6;
  v13 = [v3 _deleteBlockWithRow:v12 error:&v21];
  v14 = v21;

  if ((v13 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543874;
      v24 = v18;
      v25 = 2048;
      v26 = v19;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_22AD27000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete block with output block row %lu: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  return v14;
}

- (id)markGroupAsSentWithOutputBlock:(unint64_t)block tuples:(id)tuples
{
  tuplesCopy = tuples;
  v7 = [(HMBLocalZone *)self sql];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HMBLocalZone_MirrorOutput__markGroupAsSentWithOutputBlock_tuples___block_invoke;
  v11[3] = &unk_2786E2460;
  v12 = tuplesCopy;
  blockCopy = block;
  v8 = tuplesCopy;
  v9 = [v7 sqlTransactionWithActivity:0 block:v11];

  return v9;
}

id __68__HMBLocalZone_MirrorOutput__markGroupAsSentWithOutputBlock_tuples___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v42 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = *v47;
  v44 = v3;
  do
  {
    v7 = 0;
    do
    {
      if (*v47 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v46 + 1) + 8 * v7);
      v9 = v3;
      v10 = v8;
      v11 = [v10 model];

      v12 = [v10 recordRow];
      if (v11)
      {
        v13 = [v10 externalID];
        v14 = [v10 externalData];
        v51 = 0;
        [v9 _updateRecordWithRow:v12 externalID:v13 externalData:v14 error:&v51];
        v15 = v51;

        v16 = [v10 recordRow];
        v17 = [v10 outputBlockRow];
        v50 = v15;
        v18 = [v9 _clearPushForRecordRow:v16 expectedOutputBlockRow:v17 error:&v50];
        v19 = v50;

        if (v18 != 1)
        {
          if (v18)
          {
            goto LABEL_24;
          }

          v20 = objc_autoreleasePoolPush();
          v21 = v9;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v24 = [v10 recordRow];
            *buf = 138543874;
            *&buf[4] = v23;
            v54 = 2048;
            v55 = v24;
            v56 = 2112;
            v57 = v19;
            v25 = v22;
            v26 = OS_LOG_TYPE_ERROR;
            v27 = "%{public}@Unable to clear output columns for pushed record %lu: %@";
            goto LABEL_16;
          }

LABEL_23:

          objc_autoreleasePoolPop(v20);
          v3 = v44;
          goto LABEL_24;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = v9;
        v22 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        v23 = HMFGetLogIdentifier();
        v32 = [v10 recordRow];
        *buf = 138543618;
        *&buf[4] = v23;
        v54 = 2048;
        v55 = v32;
        v25 = v22;
        v26 = OS_LOG_TYPE_INFO;
        v27 = "%{public}@Not clearing output columns for record %lu because it appears to have changed.";
LABEL_21:
        v31 = 22;
        goto LABEL_22;
      }

      v28 = [v10 outputBlockRow];
      v51 = 0;
      v29 = [v9 _deleteRecordWithRow:v12 expectedOutputBlockRow:v28 error:&v51];
      v19 = v51;
      if (v29 != 2)
      {
        if (v29 == 1)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = v9;
          v22 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            goto LABEL_23;
          }

          v23 = HMFGetLogIdentifier();
          v33 = [v10 recordRow];
          *buf = 138543618;
          *&buf[4] = v23;
          v54 = 2048;
          v55 = v33;
          v25 = v22;
          v26 = OS_LOG_TYPE_INFO;
          v27 = "%{public}@Not removing record %lu because it appears to have changed.";
          goto LABEL_21;
        }

        if (v29)
        {
          goto LABEL_24;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = v9;
        v22 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v23 = HMFGetLogIdentifier();
        v30 = [v10 recordRow];
        *buf = 138543874;
        *&buf[4] = v23;
        v54 = 2048;
        v55 = v30;
        v56 = 2112;
        v57 = v19;
        v25 = v22;
        v26 = OS_LOG_TYPE_ERROR;
        v27 = "%{public}@Unable to delete pushed record %lu: %@";
LABEL_16:
        v31 = 32;
LABEL_22:
        _os_log_impl(&dword_22AD27000, v25, v26, v27, buf, v31);

        goto LABEL_23;
      }

      v34 = [v10 queryTable];
      v35 = [v10 recordRow];
      *buf = v19;
      [v34 _deleteQueryForRecordRow:v35 error:buf];
      v36 = *buf;

      v19 = v36;
LABEL_24:

      if (v19)
      {
        v39 = v19;

        v40 = v39;
        goto LABEL_31;
      }

      ++v7;
    }

    while (v5 != v7);
    v37 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    v5 = v37;
  }

  while (v37);
LABEL_29:

  v38 = *(v42 + 40);
  v45 = 0;
  [v3 _deleteBlockWithRow:v38 error:&v45];
  v39 = v45;
  v40 = 0;
LABEL_31:

  return v40;
}

- (id)fetchRecordsForOutputBlock:(unint64_t)block error:(id *)error
{
  v7 = [(HMBLocalZone *)self sql];
  queryContextsByModelType = [v7 queryContextsByModelType];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4549;
  v37 = __Block_byref_object_dispose__4550;
  v38 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke;
  v32[3] = &unk_2786E1508;
  v32[6] = block;
  v32[7] = 7;
  v32[4] = self;
  v32[5] = &v33;
  v10 = [v9 sqlBlockWithActivity:0 error:error block:v32];

  if (v10)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__4549;
    v30 = __Block_byref_object_dispose__4550;
    v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v34[5], "count")}];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__4549;
    v24 = __Block_byref_object_dispose__4550;
    v25 = 0;
    v11 = v34[5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke_82;
    v14[3] = &unk_2786E1530;
    v18 = &v20;
    blockCopy = block;
    v15 = queryContextsByModelType;
    selfCopy = self;
    v17 = &v26;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
    if (error)
    {
      *error = v21[5];
    }

    v12 = v27[5];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v12;
}

id __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v20 = 0;
  v6 = [v3 _selectRecordsWithBlockRow:v4 returning:v5 error:&v20];
  v7 = v20;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *(*(*(a1 + 40) + 8) + 40);
  if (v10 && ![v10 count])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 48);
      *buf = 138543618;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting block with output block row %lu because it has no corresponding records", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = *(a1 + 48);
    v19 = v7;
    [v3 _deleteBlockWithRow:v16 error:&v19];
    v17 = v19;

    v7 = v17;
  }

  return v7;
}

void __63__HMBLocalZone_MirrorOutput__fetchRecordsForOutputBlock_error___block_invoke_82(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 modelType];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  if ([v6 pushEncoding])
  {
    v9 = *(a1 + 40);
    v10 = [v6 pushData];
    v42 = 0;
    v11 = [v9 modelFromData:v10 encoding:objc_msgSend(v6 storageLocation:"pushEncoding") recordRowID:1 error:{objc_msgSend(v6, "recordRow"), &v42}];
    v12 = v42;
    v13 = v42;

    if (v11)
    {
      v36 = v13;
      v37 = v7;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = [*(a1 + 40) allMirrorOutputObservers];
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v38 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 localZone:*(a1 + 40) willPerformMirrorOutputForModel:v11];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v16);
      }

      v20 = *(*(*(a1 + 48) + 8) + 40);
      v21 = [HMBMirrorOutputTuple alloc];
      v22 = *(a1 + 64);
      v23 = [v6 recordRow];
      v24 = [v6 externalID];
      v25 = [v6 externalData];
      v26 = [(HMBMirrorOutputTuple *)v21 initWithOutputBlockRow:v22 recordRow:v23 model:v11 queryTable:v8 externalID:v24 externalData:v25];
      [v20 addObject:v26];

      v13 = v36;
      v7 = v37;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
      v34 = *(*(a1 + 48) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = 0;

      *a4 = 1;
    }
  }

  else
  {
    v27 = *(*(*(a1 + 48) + 8) + 40);
    v28 = [HMBMirrorOutputTuple alloc];
    v29 = *(a1 + 64);
    v30 = [v6 recordRow];
    v31 = [v6 externalID];
    v32 = [v6 externalData];
    v33 = [(HMBMirrorOutputTuple *)v28 initWithOutputBlockRow:v29 recordRow:v30 model:0 queryTable:v8 externalID:v31 externalData:v32];
    [v27 addObject:v33];
  }
}

- (id)fetchOptionsForOutputBlock:(unint64_t)block error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4549;
  v31 = __Block_byref_object_dispose__4550;
  v32 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__HMBLocalZone_MirrorOutput__fetchOptionsForOutputBlock_error___block_invoke;
  v26[3] = &unk_2786E23A0;
  v26[4] = &v27;
  v26[5] = block;
  v8 = [v7 sqlBlockWithActivity:0 block:v26];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138544130;
      v34 = v12;
      v35 = 2048;
      blockCopy2 = block;
      v37 = 2112;
      v38 = selfCopy;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch options for block at row %lu.%@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    if (error)
    {
      v13 = v8;
      v14 = 0;
      *error = v8;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v28[5])
  {
    v8 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_17;
  }

  v15 = MEMORY[0x277CCAAC8];
  v16 = objc_opt_class();
  optionsData = [v28[5] optionsData];
  v25 = 0;
  v18 = [v15 unarchivedObjectOfClass:v16 fromData:optionsData error:&v25];
  v8 = v25;

  if (v8)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544130;
      v34 = v22;
      v35 = 2048;
      blockCopy2 = block;
      v37 = 2112;
      v38 = selfCopy2;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive transaction options from options data: %lu.%@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    if (error)
    {
      v23 = v8;
      v14 = 0;
      *error = v8;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = v18;
  }

LABEL_17:
  _Block_object_dispose(&v27, 8);

  return v14;
}

id __63__HMBLocalZone_MirrorOutput__fetchOptionsForOutputBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _selectBlockWithRow:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

- (id)allMirrorOutputObservers
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  mirrorOutputObservers = [(HMBLocalZone *)self mirrorOutputObservers];
  allObjects = [mirrorOutputObservers allObjects];
  [v3 addObjectsFromArray:allObjects];

  os_unfair_lock_unlock(&self->_propertyLock);
  v6 = [v3 copy];

  return v6;
}

- (void)removeMirrorOutputObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  mirrorOutputObservers = [(HMBLocalZone *)self mirrorOutputObservers];
  [mirrorOutputObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)addMirrorOutputObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  mirrorOutputObservers = [(HMBLocalZone *)self mirrorOutputObservers];
  [mirrorOutputObservers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_propertyLock);
}

- (void)rebuildIndexesIfNeeded
{
  v3 = [(HMBLocalZone *)self sql];
  queryContextsByModelType = [v3 queryContextsByModelType];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke;
  v5[3] = &unk_2786E1A38;
  v5[4] = self;
  [queryContextsByModelType enumerateKeysAndObjectsUsingBlock:v5];
}

void __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegate];
  if ([v7 conformsToProtocol:&unk_283ED1098])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    [v9 localZoneWillReindex:*(a1 + 32)];
  }

  v52 = [v6 context];
  v10 = [*(a1 + 32) sql];

  if (v52 != v10)
  {
    _HMFPreconditionFailure();
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v11 = [*(a1 + 32) sql];
  v57 = 0;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke_2;
  v54[3] = &unk_2786E23C8;
  v54[4] = *(a1 + 32);
  v12 = v6;
  v55 = v12;
  v56 = &v58;
  v13 = [v11 sqlBlockWithActivity:0 error:&v57 block:v54];
  v51 = v57;

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v12 modelType];
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      v84 = v51;
      _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine index state of %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  if (v59[3])
  {
    v19 = v51;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = *(a1 + 32);
      v21 = [v12 modelType];
      [v9 localZone:v20 willReindexTableForModel:v21];
    }

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v12 modelType];
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_INFO, "%{public}@Preparing to reindex table for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = *(a1 + 32);
    v53 = v51;
    v28 = v27;
    v29 = v12;
    v30 = [v29 context];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = ____reindexTable_block_invoke;
    v76[3] = &unk_2786E1B00;
    v31 = v29;
    v77 = v31;
    v32 = v28;
    v78 = v32;
    LODWORD(v28) = [v30 sqlBlockWithActivity:0 error:&v53 block:v76];

    if (v28)
    {
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 1;
      v66 = 0;
      v67 = &v66;
      v68 = 0x3032000000;
      v69 = __Block_byref_object_copy__5822;
      v70 = __Block_byref_object_dispose__5823;
      v71 = 0;
      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      v65 = 1;
      v33 = [v32 queryModelsOfType:{objc_msgSend(v31, "modelClass")}];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ____reindexTable_block_invoke_2;
      v84 = &unk_2786E1A88;
      v50 = v31;
      v85 = v50;
      v87 = &v66;
      v34 = v32;
      v86 = v34;
      v88 = &v62;
      v89 = &v72;
      [v33 enumerateObjectsUsingBlock:buf];
      if (v73[3])
      {
        context = objc_autoreleasePoolPush();
        v35 = v34;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v47 = v33;
          v48 = v5;
          v37 = HMFGetLogIdentifier();
          v38 = v63[3];
          v39 = [v50 modelType];
          *v79 = 138543874;
          *&v79[4] = v37;
          *&v79[12] = 2048;
          *&v79[14] = v38 - 1;
          *&v79[22] = 2112;
          v80 = v39;
          _os_log_impl(&dword_22AD27000, v36, OS_LOG_TYPE_INFO, "%{public}@Total of %lu rows re-indexed for %@.", v79, 0x20u);

          v33 = v47;
          v5 = v48;
        }

        objc_autoreleasePoolPop(context);
        v40 = [v35 sql];
        *v79 = MEMORY[0x277D85DD0];
        *&v79[8] = 3221225472;
        *&v79[16] = ____reindexTable_block_invoke_86;
        v80 = &unk_2786E1B00;
        v81 = v35;
        v82 = v50;
        v41 = [v40 sqlBlockWithActivity:0 error:&v53 block:v79];
      }

      else
      {
        v53 = v67[5];
        v41 = *(v73 + 24);
      }

      _Block_object_dispose(&v62, 8);
      _Block_object_dispose(&v66, 8);

      _Block_object_dispose(&v72, 8);
    }

    else
    {
      v41 = 0;
    }

    v19 = v53;
    if ((v41 & 1) == 0)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = *(a1 + 32);
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        v46 = [v31 modelType];
        *buf = 138543874;
        *&buf[4] = v45;
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v84 = v19;
        _os_log_impl(&dword_22AD27000, v44, OS_LOG_TYPE_ERROR, "%{public}@Unable to rebuild index of %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v42);
    }
  }

  _Block_object_dispose(&v58, 8);
}

id __49__HMBLocalZone_Queryable__rebuildIndexesIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = [*(a1 + 40) modelType];
  v10 = 0;
  v7 = [v4 _selectIndexSentinelForZoneRow:v5 modelType:v6 error:&v10];

  v8 = v10;
  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v7 BOOLValue];
  }

  return v8;
}

- (id)queryModelsRecursivelyStartingWithModelID:(id)d
{
  dCopy = d;
  v5 = [[HMBLocalZoneQueryResultRecursiveModelID alloc] initWithLocalZone:self modelID:dCopy];

  return v5;
}

- (id)queryModelsWithParentModelID:(id)d ofType:(Class)type
{
  dCopy = d;
  v7 = [HMBLocalZoneQueryResultParentModelIDOfType alloc];
  v8 = NSStringFromClass(type);
  v9 = [(HMBLocalZoneQueryResultParentModelIDOfType *)v7 initWithLocalZone:self parentModelID:dCopy modelClassName:v8];

  return v9;
}

- (id)queryModelsWithParentModelID:(id)d
{
  dCopy = d;
  v5 = [[HMBLocalZoneQueryResultParentModelID alloc] initWithLocalZone:self parentModelID:dCopy];

  return v5;
}

- (id)queryModelsOfType:(Class)type
{
  v5 = [HMBLocalZoneQueryResultAllOfType alloc];
  v6 = NSStringFromClass(type);
  v7 = [(HMBLocalZoneQueryResultAllOfType *)v5 initWithLocalZone:self modelClassName:v6];

  return v7;
}

- (id)fetchModels
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5822;
  v15 = __Block_byref_object_dispose__5823;
  v16 = 0;
  v3 = [(HMBLocalZone *)self sql];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__HMBLocalZone_Queryable__fetchModels__block_invoke;
  v10[3] = &unk_2786E1A10;
  v10[4] = &v11;
  v4 = [v3 sqlBlockWithActivity:0 block:v10];

  v5 = [HMBLocalZoneQueryResultRecordColumns alloc];
  v6 = v12[5];
  v7 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v8 = [(HMBLocalZoneQueryResult *)v5 initWithLocalZone:self statement:v6 initialSequence:&unk_283EB9E70 arguments:MEMORY[0x277CBEC10] maximumRowsPerSelect:v7];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __38__HMBLocalZone_Queryable__fetchModels__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectAllRecordRows];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

- (id)queryModelsOfType:(Class)type properties:(id)properties filter:(id)filter
{
  propertiesCopy = properties;
  filterCopy = filter;
  v10 = [(HMBLocalZone *)self sql];
  queryContextsByClass = [v10 queryContextsByClass];
  v12 = [queryContextsByClass objectForKey:type];

  if (v12)
  {
    v13 = [v12 performQueryOn:self properties:propertiesCopy filter:filterCopy];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [(HMBLocalZone *)v15 queryModelsOfType:v16 filter:v17, v18];
  }
}

- (id)queryModelsOfType:(Class)type filter:(id)filter
{
  filterCopy = filter;
  v7 = [(HMBLocalZone *)self sql];
  queryContextsByClass = [v7 queryContextsByClass];
  v9 = [queryContextsByClass objectForKey:type];

  if (v9)
  {
    v10 = [v9 performQueryOn:self properties:0 filter:filterCopy];

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMBLocalZone *)v12 queryModelsOfType:v13 predicate:v14, v15];
  }
}

- (id)queryModelsOfType:(Class)type predicate:(id)predicate
{
  predicateCopy = predicate;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HMBLocalZone_Queryable__queryModelsOfType_predicate___block_invoke;
  v10[3] = &unk_2786E19E8;
  v11 = predicateCopy;
  v7 = predicateCopy;
  v8 = [(HMBLocalZone *)self queryModelsOfType:type filter:v10];

  return v8;
}

- (BOOL)removeBlockWithRow:(unint64_t)row error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v10;
    v17 = 2048;
    rowCopy = row;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Removing block with row %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMBLocalZone *)selfCopy sql];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__HMBLocalZone_Block__removeBlockWithRow_error___block_invoke;
  v14[3] = &__block_descriptor_40_e37___NSError_16__0__HMBLocalSQLContext_8l;
  v14[4] = row;
  v12 = [v11 sqlBlockWithActivity:0 error:error block:v14];

  return v12;
}

id __48__HMBLocalZone_Block__removeBlockWithRow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = 0;
  v4 = a2;
  [v4 _deleteItemsWithBlockRow:v3 error:&v11];
  v5 = v11;
  v6 = *(a1 + 32);
  v10 = v5;
  [v4 _deleteBlockWithRow:v6 error:&v10];

  v7 = v10;
  v8 = v10;

  return v7;
}

- (id)fetchItemsInBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6785;
  v18 = __Block_byref_object_dispose__6786;
  v19 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HMBLocalZone_Block__fetchItemsInBlock_error___block_invoke;
  v11[3] = &unk_2786E2500;
  v13 = &v14;
  v8 = blockCopy;
  v12 = v8;
  LODWORD(error) = [v7 sqlBlockWithActivity:0 error:error block:v11];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v9;
}

id __47__HMBLocalZone_Block__fetchItemsInBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  v5 = [v4 _selectItemsWithBlockRow:objc_msgSend(v3 returning:"blockRow") error:{-1, &v11}];

  v6 = v11;
  v7 = v11;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  return v6;
}

- (id)fetchReadyBlocksWithType:(unint64_t)type error:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6785;
  v15 = __Block_byref_object_dispose__6786;
  v16 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMBLocalZone_Block__fetchReadyBlocksWithType_error___block_invoke;
  v10[3] = &unk_2786E2140;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = type;
  LODWORD(error) = [v7 sqlTransactionWithActivity:0 error:error block:v10];

  if (error)
  {
    v8 = v12[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

id __54__HMBLocalZone_Block__fetchReadyBlocksWithType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[6];
  v13 = 0;
  v7 = [v4 _selectReadyBlocksWithZoneRow:v5 type:v6 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (BOOL)_insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:(unint64_t)row context:(id)context type:(unint64_t)type modelIDs:(id)ds currentDepth:(unint64_t)depth maximumDepth:(unint64_t)maximumDepth options:(id)options error:(id *)self0
{
  v66 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dsCopy = ds;
  optionsCopy = options;
  v45 = [MEMORY[0x277CBEB58] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = dsCopy;
  v48 = [v16 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v48)
  {
    v47 = *v52;
    v43 = v16;
    rowCopy = row;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v52 != v47)
        {
          objc_enumerationMutation(v16);
        }

        v18 = *(*(&v51 + 1) + 8 * i);
        zoneRow = [(HMBLocalZone *)self zoneRow];
        v50 = 0;
        v20 = [contextCopy _insertDeletionItemWithZoneRow:zoneRow blockRow:row type:type modelID:v18 error:&v50];
        v21 = v50;
        if (!v20)
        {
          v34 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138544386;
            v56 = v37;
            v57 = 2048;
            v58 = rowCopy;
            v59 = 2048;
            typeCopy = type;
            v61 = 2112;
            v62 = v18;
            v63 = 2112;
            v64 = v21;
            _os_log_impl(&dword_22AD27000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to insert deletion item with blockRow: %lu type: %lu modelID: %@: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v34);
          v32 = optionsCopy;
          if (error)
          {
            v38 = v21;
            *error = v21;
          }

          v16 = v43;
          v33 = 0;
          goto LABEL_24;
        }

        zoneRow2 = [(HMBLocalZone *)self zoneRow];
        v49 = v21;
        v23 = [contextCopy _selectRecordsWithZoneRow:zoneRow2 parentModelID:v18 returning:0 error:&v49];
        v24 = v49;

        if (v23)
        {
          v25 = [v23 na_map:&__block_literal_global_6789];
          [v45 addObjectsFromArray:v25];
        }

        else
        {
          typeCopy2 = type;
          v27 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v31 = v30 = contextCopy;
            *buf = 138543874;
            v56 = v31;
            v57 = 2112;
            v58 = v18;
            v59 = 2112;
            typeCopy = v24;
            _os_log_impl(&dword_22AD27000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to select records with parentModelID: %@: %@", buf, 0x20u);

            contextCopy = v30;
            v16 = v43;
          }

          objc_autoreleasePoolPop(v27);
          type = typeCopy2;
          row = rowCopy;
        }

        self = selfCopy;
      }

      v48 = [v16 countByEnumeratingWithState:&v51 objects:v65 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }
  }

  if (depth >= maximumDepth)
  {
    v33 = 1;
    v32 = optionsCopy;
  }

  else
  {
    v32 = optionsCopy;
    if ([v45 count])
    {
      v33 = [(HMBLocalZone *)self _insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:row context:contextCopy type:type modelIDs:v45 currentDepth:depth + 1 maximumDepth:maximumDepth options:optionsCopy error:error];
    }

    else
    {
      v33 = 1;
    }
  }

LABEL_24:

  return v33;
}

- (unint64_t)insertBlockToRemoveModelsAndDescendantModelsWithType:(unint64_t)type modelIDs:(id)ds depth:(unint64_t)depth options:(id)options error:(id *)error
{
  dsCopy = ds;
  optionsCopy = options;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v14 = [(HMBLocalZone *)self sql];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMBLocalZone_Block__insertBlockToRemoveModelsAndDescendantModelsWithType_modelIDs_depth_options_error___block_invoke;
  v19[3] = &unk_2786E2190;
  v22 = &v25;
  typeCopy = type;
  v19[4] = self;
  v15 = dsCopy;
  v20 = v15;
  depthCopy = depth;
  v16 = optionsCopy;
  v21 = v16;
  LODWORD(error) = [v14 sqlTransactionWithActivity:0 error:error block:v19];

  if (error)
  {
    v17 = v26[3];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);
  return v17;
}

id __105__HMBLocalZone_Block__insertBlockToRemoveModelsAndDescendantModelsWithType_modelIDs_depth_options_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[8];
  v23 = 0;
  v7 = [v4 _insertBlockWithZoneRow:v5 type:v6 error:&v23];
  v8 = v23;
  *(*(a1[7] + 8) + 24) = v7;
  v9 = a1[6];
  v10 = *(*(a1[7] + 8) + 24);
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[8];
  v14 = a1[9];
  v22 = v8;
  [v11 _insertDeletionItemsForModelsAndDescendantModelsWithBlockRow:v10 context:v4 type:v13 modelIDs:v12 currentDepth:1 maximumDepth:v14 options:v9 error:&v22];
  v15 = v22;

  v16 = a1[6];
  v17 = *(*(a1[7] + 8) + 24);
  v21 = v15;
  [v4 _updateBlockWithRow:v17 options:v16 error:&v21];

  v18 = v21;
  v19 = v21;

  return v18;
}

- (unint64_t)insertBlockToRemoveChildModelsWithType:(unint64_t)type parentModelID:(id)d options:(id)options error:(id *)error
{
  dCopy = d;
  optionsCopy = options;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HMBLocalZone_Block__insertBlockToRemoveChildModelsWithType_parentModelID_options_error___block_invoke;
  v17[3] = &unk_2786E2168;
  v20 = &v22;
  typeCopy = type;
  v17[4] = self;
  v13 = dCopy;
  v18 = v13;
  v14 = optionsCopy;
  v19 = v14;
  LODWORD(error) = [v12 sqlTransactionWithActivity:0 error:error block:v17];

  if (error)
  {
    v15 = v23[3];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v15;
}

id __90__HMBLocalZone_Block__insertBlockToRemoveChildModelsWithType_parentModelID_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = *(a1 + 64);
  v21 = 0;
  v7 = [v4 _insertBlockWithZoneRow:v5 type:v6 error:&v21];
  v8 = v21;
  *(*(*(a1 + 56) + 8) + 24) = v7;
  v9 = [*(a1 + 32) zoneRow];
  v10 = *(a1 + 64);
  v11 = *(*(*(a1 + 56) + 8) + 24);
  v12 = *(a1 + 40);
  v20 = v8;
  [v4 _insertDeletionItemsWithZoneRow:v9 blockRow:v11 type:v10 parentModelID:v12 error:&v20];
  v13 = v20;

  v14 = *(a1 + 48);
  v15 = *(*(*(a1 + 56) + 8) + 24);
  v19 = v13;
  [v4 _updateBlockWithRow:v15 options:v14 error:&v19];

  v16 = v19;
  v17 = v19;

  return v16;
}

- (unint64_t)insertBlockToRemoveAllModelsWithType:(unint64_t)type modelTypes:(id)types options:(id)options error:(id *)error
{
  typesCopy = types;
  optionsCopy = options;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HMBLocalZone_Block__insertBlockToRemoveAllModelsWithType_modelTypes_options_error___block_invoke;
  v17[3] = &unk_2786E2168;
  v20 = &v22;
  typeCopy = type;
  v17[4] = self;
  v13 = typesCopy;
  v18 = v13;
  v14 = optionsCopy;
  v19 = v14;
  LODWORD(error) = [v12 sqlTransactionWithActivity:0 error:error block:v17];

  if (error)
  {
    v15 = v23[3];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v15;
}

id __85__HMBLocalZone_Block__insertBlockToRemoveAllModelsWithType_modelTypes_options_error___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) zoneRow];
  v5 = *(a1 + 64);
  v29 = 0;
  v6 = [v3 _insertBlockWithZoneRow:v4 type:v5 error:&v29];
  v7 = v29;
  *(*(*(a1 + 56) + 8) + 24) = v6;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * v12);
        v15 = [*(a1 + 32) zoneRow];
        v16 = *(a1 + 64);
        v17 = *(*(*(a1 + 56) + 8) + 24);
        v24 = v13;
        [v3 _insertDeletionItemsWithZoneRow:v15 blockRow:v17 type:v16 modelType:v14 error:&v24];
        v7 = v24;

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v18 = *(a1 + 48);
  v19 = *(*(*(a1 + 56) + 8) + 24);
  v23 = v7;
  [v3 _updateBlockWithRow:v19 options:v18 error:&v23];
  v20 = v23;
  v21 = v23;

  return v20;
}

- (unint64_t)insertBlockWithType:(unint64_t)type options:(id)options items:(id)items error:(id *)error
{
  optionsCopy = options;
  itemsCopy = items;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HMBLocalZone_Block__insertBlockWithType_options_items_error___block_invoke;
  v17[3] = &unk_2786E2168;
  v20 = &v22;
  typeCopy = type;
  v17[4] = self;
  v13 = optionsCopy;
  v18 = v13;
  v14 = itemsCopy;
  v19 = v14;
  LODWORD(error) = [v12 sqlTransactionWithActivity:0 error:error block:v17];

  if (error)
  {
    v15 = v23[3];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v15;
}

id __63__HMBLocalZone_Block__insertBlockWithType_options_items_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[8];
  v7 = a1[5];
  v8 = a1[6];
  v11 = 0;
  v9 = [v4 _insertBlockWithZoneRow:v5 type:v6 options:v7 items:v8 error:&v11];

  result = v11;
  *(*(a1[7] + 8) + 24) = v9;
  return result;
}

- (id)createInputBlockWithType:(unint64_t)type error:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HMBLocalZone_Block__createInputBlockWithType_error___block_invoke;
  v15[3] = &unk_2786E2140;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = type;
  LODWORD(error) = [v7 sqlBlockWithActivity:0 error:error block:v15];

  if (error)
  {
    v8 = [HMBLocalSQLContextInputBlock alloc];
    v9 = [(HMBLocalZone *)self sql];
    zoneID = [(HMBLocalZone *)self zoneID];
    name = [zoneID name];
    zoneRow = [(HMBLocalZone *)self zoneRow];
    v13 = [(HMBLocalSQLContextInputBlock *)v8 initWithOwner:v9 identifier:name zoneRow:zoneRow blockRow:v17[3] type:type];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v13;
}

id __54__HMBLocalZone_Block__createInputBlockWithType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[6];
  v9 = 0;
  v7 = [v4 _insertBlockWithZoneRow:v5 type:v6 error:&v9];

  result = v9;
  *(*(a1[5] + 8) + 24) = v7;
  return result;
}

- (id)createOutputBlockWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__HMBLocalZone_Block__createOutputBlockWithError___block_invoke;
  v13[3] = &unk_2786E2500;
  v13[4] = self;
  v13[5] = &v14;
  LODWORD(error) = [v5 sqlBlockWithActivity:0 error:error block:v13];

  if (error)
  {
    v6 = [HMBLocalSQLContextOutputBlock alloc];
    v7 = [(HMBLocalZone *)self sql];
    zoneID = [(HMBLocalZone *)self zoneID];
    name = [zoneID name];
    zoneRow = [(HMBLocalZone *)self zoneRow];
    v11 = [(HMBLocalSQLContextOutputBlock *)v6 initWithOwner:v7 identifier:name zoneRow:zoneRow blockRow:v15[3]];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

id __50__HMBLocalZone_Block__createOutputBlockWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = 0;
  v5 = [v4 _insertBlockWithZoneRow:objc_msgSend(v3 type:"zoneRow") error:{0, &v7}];

  result = v7;
  *(*(*(a1 + 40) + 8) + 24) = v5;
  return result;
}

- (id)update:(id)update remove:(id)remove
{
  v49 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  removeCopy = remove;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v44 = v11;
    v45 = 2112;
    v46 = updateCopy;
    v47 = 2112;
    v48 = removeCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Asked to update models: %@ remove model IDs: %@", buf, 0x20u);
  }

  v31 = removeCopy;

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(updateCopy, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = updateCopy;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    obj = v13;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        modelContainer = [(HMBLocalZone *)selfCopy modelContainer];
        v37 = 0;
        v20 = [modelContainer dataFromModel:v18 encoding:2 storageLocation:3 updatedModelIDs:0 error:&v37];
        v21 = v37;

        if (!v20)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = selfCopy;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543874;
            v44 = v29;
            v45 = 2112;
            v46 = v18;
            v47 = 2112;
            v48 = v21;
            _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode model %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
          v25 = v31;
          v13 = obj;
          localDatabase = obj;
          goto LABEL_15;
        }

        v22 = [[HMBLocalZoneRawUpdateEntry alloc] initWithModel:v18 encoded:v20];
        [v12 addObject:v22];
      }

      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  localDatabase = [(HMBLocalZone *)selfCopy localDatabase];
  local = [localDatabase local];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __37__HMBLocalZone_Model__update_remove___block_invoke;
  v33[3] = &unk_2786E2418;
  v34 = v12;
  v35 = selfCopy;
  v25 = v31;
  v36 = v31;
  v21 = [local sqlTransactionWithActivity:0 block:v33];

LABEL_15:

  return v21;
}

id __37__HMBLocalZone_Model__update_remove___block_invoke(id *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = a1[4];
  v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  v4 = 0;
  if (v36)
  {
    v5 = *v46;
    v29 = *v46;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v46 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        v8 = [a1[5] zoneRow];
        v9 = [v7 model];
        v10 = [v9 hmbModelID];
        v44 = v4;
        v11 = [v3 _selectRecordWithZoneRow:v8 modelID:v10 returning:2 error:&v44];
        v12 = v44;

        if (v12)
        {
          v27 = v12;

          goto LABEL_21;
        }

        if (v11)
        {
          v13 = [v11 recordRow];
          v14 = [v7 encoded];
          v42 = 0;
          [v3 _updateRecordWithRow:v13 modelEncoding:2 modelData:v14 modelSchema:0 error:&v42];
          v4 = v42;
        }

        else
        {
          v32 = [a1[5] zoneRow];
          v14 = [v7 model];
          v33 = [v14 hmbModelID];
          v35 = [v7 model];
          v31 = [v35 hmbParentModelID];
          v34 = [v7 model];
          v15 = [v34 hmbType];
          v16 = [v7 encoded];
          v43 = 0;
          v17 = [v3 _insertRecordWithZoneRow:v32 externalID:0 externalData:0 modelID:v33 parentModelID:v31 modelType:v15 modelEncoding:2 modelData:v16 modelSchema:0 pushEncoding:0 pushData:0 pushBlockRow:0 error:&v43];
          v4 = v43;
          v18 = [v7 model];
          [v18 setHmbRecordRow:v17];

          v5 = v29;
        }
      }

      v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = a1[6];
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      v23 = 0;
      v24 = v4;
      do
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v38 + 1) + 8 * v23);
        v26 = [a1[5] zoneRow];
        v37 = v24;
        [v3 _deleteRecordWithZoneRow:v26 modelID:v25 error:&v37];
        v4 = v37;

        ++v23;
        v24 = v4;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v21);
  }

  v27 = v4;
LABEL_21:

  return v27;
}

- (id)modelFromData:(id)data encoding:(unint64_t)encoding storageLocation:(unint64_t)location recordRowID:(unint64_t)d error:(id *)error
{
  dataCopy = data;
  modelContainer = [(HMBLocalZone *)self modelContainer];
  v14 = [modelContainer modelFromData:dataCopy encoding:encoding storageLocation:location error:error];

  [v14 setHmbRecordRow:d];

  return v14;
}

- (id)modelFromRecord:(id)record storageLocation:(unint64_t)location error:(id *)error
{
  recordCopy = record;
  modelData = [recordCopy modelData];
  if (modelData && [recordCopy modelEncoding])
  {
    v9 = -[HMBLocalZone modelFromData:encoding:storageLocation:recordRowID:error:](self, "modelFromData:encoding:storageLocation:recordRowID:error:", modelData, [recordCopy modelEncoding], 2, objc_msgSend(recordCopy, "recordRow"), error);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeAllRecordsWithError:(id *)error
{
  v5 = [(HMBLocalZone *)self sql];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke;
  v7[3] = &unk_2786E24B0;
  v7[4] = self;
  LOBYTE(error) = [v5 sqlTransactionWithActivity:0 error:error block:v7];

  return error;
}

id __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7414;
  v24 = __Block_byref_object_dispose__7415;
  v25 = 0;
  v4 = [*(a1 + 32) zoneRow];
  v5 = (v21 + 5);
  obj = v21[5];
  [v3 _deleteRecordsWithZoneRow:v4 error:&obj];
  objc_storeStrong(v5, obj);
  v6 = [*(a1 + 32) zoneRow];
  v7 = (v21 + 5);
  v18 = v21[5];
  [v3 _deleteItemWithZoneRow:v6 error:&v18];
  objc_storeStrong(v7, v18);
  v8 = [*(a1 + 32) zoneRow];
  v9 = (v21 + 5);
  v17 = v21[5];
  [v3 _deleteBlocksWithZoneRow:v8 error:&v17];
  objc_storeStrong(v9, v17);
  v10 = [*(a1 + 32) zoneRow];
  v11 = (v21 + 5);
  v16 = v21[5];
  [v3 _deleteIndexSentinelsWithZoneRow:v10 error:&v16];
  objc_storeStrong(v11, v16);
  v12 = [v3 queryContextsByModelType];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke_2;
  v15[3] = &unk_2786E2488;
  v15[4] = *(a1 + 32);
  v15[5] = &v20;
  [v12 enumerateKeysAndObjectsUsingBlock:v15];

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v13;
}

void __59__HMBLocalZone_Record_Internal__removeAllRecordsWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 zoneRow];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  [v5 _deleteQueryForRecordRow:v6 error:&obj];

  objc_storeStrong((v7 + 40), obj);
}

- (id)setExternalID:(id)d externalData:(id)data forRecordRow:(unint64_t)row
{
  dCopy = d;
  v8 = [(HMBLocalZone *)self sql];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HMBLocalZone_Record_Internal__setExternalID_externalData_forRecordRow___block_invoke;
  v12[3] = &unk_2786E2460;
  v13 = dCopy;
  rowCopy = row;
  v9 = dCopy;
  v10 = [v8 sqlBlockWithActivity:0 block:v12];

  return v10;
}

id __73__HMBLocalZone_Record_Internal__setExternalID_externalData_forRecordRow___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = 0;
  [a2 _updateRecordWithRow:v2 externalID:v3 externalData:v3 error:&v6];
  v4 = v6;

  return v4;
}

- (id)queryAllRowRecordsReturning:(unint64_t)returning
{
  v5 = [(HMBLocalZone *)self sql];
  v6 = [v5 selectAllRecordsWithZoneRow:-[HMBLocalZone zoneRow](self returning:{"zoneRow"), returning}];

  return v6;
}

- (id)fetchExternalIDsForModelIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v8 = [(HMBLocalZone *)self sql];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__HMBLocalZone_Record_Internal__fetchExternalIDsForModelIDs_error___block_invoke;
  v15[3] = &unk_2786E2418;
  v9 = dsCopy;
  v16 = v9;
  selfCopy = self;
  v10 = v7;
  v18 = v10;
  LODWORD(v7) = [v8 sqlBlockWithActivity:0 error:error block:v15];

  v11 = 0;
  if (v7)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = [v10 na_map:&__block_literal_global_7417];
    v11 = [v12 setWithArray:v13];
  }

  return v11;
}

id __67__HMBLocalZone_Record_Internal__fetchExternalIDsForModelIDs_error___block_invoke(id *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * v9);
        v12 = [a1[5] zoneRow];
        v16 = v10;
        v13 = [v3 _selectRecordWithZoneRow:v12 modelID:v11 returning:3 error:&v16];
        v7 = v16;

        if (v7)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13 == 0;
        }

        if (!v14)
        {
          [a1[6] addObject:v13];
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fetchRecordRowWithExternalID:(id)d returning:(unint64_t)returning error:(id *)error
{
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7414;
  v21 = __Block_byref_object_dispose__7415;
  v22 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HMBLocalZone_Record_Internal__fetchRecordRowWithExternalID_returning_error___block_invoke;
  v13[3] = &unk_2786E23F0;
  v15 = &v17;
  v13[4] = self;
  v10 = dCopy;
  v14 = v10;
  returningCopy = returning;
  LODWORD(error) = [v9 sqlBlockWithActivity:0 error:error block:v13];

  if (error)
  {
    v11 = v18[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

id __78__HMBLocalZone_Record_Internal__fetchRecordRowWithExternalID_returning_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[7];
  v14 = 0;
  v8 = [v4 _selectRecordWithZoneRow:v5 externalID:v6 returning:v7 error:&v14];

  v9 = v14;
  v10 = v14;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  return v9;
}

- (id)fetchRecordRowWithModelID:(id)d returning:(unint64_t)returning error:(id *)error
{
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7414;
  v21 = __Block_byref_object_dispose__7415;
  v22 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HMBLocalZone_Record_Internal__fetchRecordRowWithModelID_returning_error___block_invoke;
  v13[3] = &unk_2786E23F0;
  v15 = &v17;
  v13[4] = self;
  v10 = dCopy;
  v14 = v10;
  returningCopy = returning;
  LODWORD(error) = [v9 sqlBlockWithActivity:0 error:error block:v13];

  if (error)
  {
    v11 = v18[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

id __75__HMBLocalZone_Record_Internal__fetchRecordRowWithModelID_returning_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[7];
  v14 = 0;
  v8 = [v4 _selectRecordWithZoneRow:v5 modelID:v6 returning:v7 error:&v14];

  v9 = v14;
  v10 = v14;
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  return v9;
}

- (id)fetchModelWithModelID:(id)d recordRow:(unint64_t *)row error:(id *)error
{
  dCopy = d;
  if (row)
  {
    *row = 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7414;
  v21 = __Block_byref_object_dispose__7415;
  v22 = 0;
  v9 = [(HMBLocalZone *)self sql];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMBLocalZone_Record_Internal__fetchModelWithModelID_recordRow_error___block_invoke;
  v14[3] = &unk_2786E23C8;
  v16 = &v17;
  v14[4] = self;
  v10 = dCopy;
  v15 = v10;
  v11 = [v9 sqlBlockWithActivity:0 error:error block:v14];

  if (v11)
  {
    if (row)
    {
      *row = [v18[5] recordRow];
    }

    v12 = [(HMBLocalZone *)self modelFromRecord:v18[5] storageLocation:2 error:error];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

id __71__HMBLocalZone_Record_Internal__fetchModelWithModelID_recordRow_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v13 = 0;
  v7 = [v4 _selectRecordWithZoneRow:v5 modelID:v6 returning:2 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (id)fetchModelWithRecordRow:(unint64_t)row error:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7414;
  v15 = __Block_byref_object_dispose__7415;
  v16 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HMBLocalZone_Record_Internal__fetchModelWithRecordRow_error___block_invoke;
  v10[3] = &unk_2786E23A0;
  v10[4] = &v11;
  v10[5] = row;
  LODWORD(row) = [v7 sqlBlockWithActivity:0 error:error block:v10];

  if (row)
  {
    v8 = [(HMBLocalZone *)self modelFromRecord:v12[5] storageLocation:2 error:error];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

id __63__HMBLocalZone_Record_Internal__fetchModelWithRecordRow_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v10 = 0;
  v4 = [a2 _selectRecordWithRow:v3 returning:2 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

- (id)fetchModelsOfType:(Class)type error:(id *)error
{
  v7 = NSStringFromClass(type);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7414;
  v20 = __Block_byref_object_dispose__7415;
  v21 = 0;
  v8 = [(HMBLocalZone *)self sql];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HMBLocalZone_Record__fetchModelsOfType_error___block_invoke;
  v13[3] = &unk_2786E23C8;
  v15 = &v16;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = [v8 sqlBlockWithActivity:0 error:error block:v13];

  if (v10)
  {
    v11 = __modelsFromRecords(self, v17[5], type, error);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

id __48__HMBLocalZone_Record__fetchModelsOfType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v13 = 0;
  v7 = [v4 _selectRecordsWithZoneRow:v5 modelType:v6 returning:2 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (id)fetchAllModelsWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7414;
  v14 = __Block_byref_object_dispose__7415;
  v15 = 0;
  v5 = [(HMBLocalZone *)self sql];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMBLocalZone_Record__fetchAllModelsWithError___block_invoke;
  v9[3] = &unk_2786E2500;
  v9[4] = self;
  v9[5] = &v10;
  v6 = [v5 sqlBlockWithActivity:0 error:error block:v9];

  if (v6)
  {
    v7 = __modelsFromRecords(self, v11[5], 0, error);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

id __48__HMBLocalZone_Record__fetchAllModelsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = 0;
  v5 = [v4 _selectRecordsWithZoneRow:objc_msgSend(v3 returning:"zoneRow") error:{2, &v11}];

  v6 = v11;
  v7 = v11;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  return v6;
}

- (id)fetchModelsWithParentModelID:(id)d error:(id *)error
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7414;
  v19 = __Block_byref_object_dispose__7415;
  v20 = 0;
  v7 = [(HMBLocalZone *)self sql];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HMBLocalZone_Record__fetchModelsWithParentModelID_error___block_invoke;
  v12[3] = &unk_2786E23C8;
  v14 = &v15;
  v12[4] = self;
  v8 = dCopy;
  v13 = v8;
  v9 = [v7 sqlBlockWithActivity:0 error:error block:v12];

  if (v9)
  {
    v10 = __modelsFromRecords(self, v16[5], 0, error);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

id __59__HMBLocalZone_Record__fetchModelsWithParentModelID_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v13 = 0;
  v7 = [v4 _selectRecordsWithZoneRow:v5 parentModelID:v6 returning:2 error:&v13];

  v8 = v13;
  v9 = v13;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  return v8;
}

- (id)fetchModelsWithParentModelID:(id)d ofType:(Class)type error:(id *)error
{
  dCopy = d;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7414;
  v25 = __Block_byref_object_dispose__7415;
  v26 = 0;
  v11 = [(HMBLocalZone *)self sql];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__HMBLocalZone_Record__fetchModelsWithParentModelID_ofType_error___block_invoke;
  v17[3] = &unk_2786E24D8;
  v20 = &v21;
  v17[4] = self;
  v12 = dCopy;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = [v11 sqlBlockWithActivity:0 error:error block:v17];

  if (v14)
  {
    v15 = __modelsFromRecords(self, v22[5], type, error);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v15;
}

id __66__HMBLocalZone_Record__fetchModelsWithParentModelID_ofType_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = a1[5];
  v7 = a1[6];
  v14 = 0;
  v8 = [v4 _selectRecordWithZoneRow:v5 parentModelID:v6 modelType:v7 returning:2 error:&v14];

  v9 = v14;
  v10 = v14;
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;

  return v9;
}

- (id)fetchModelWithModelID:(id)d ofType:(Class)type error:(id *)error
{
  v6 = [(HMBLocalZone *)self fetchModelWithModelID:d recordRow:0 error:?];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model had unexpected type: %@", objc_opt_class()];
      *error = [v7 hmfErrorWithCode:15 reason:v8];

      error = 0;
    }
  }

  else
  {
    error = v6;
  }

  return error;
}

@end