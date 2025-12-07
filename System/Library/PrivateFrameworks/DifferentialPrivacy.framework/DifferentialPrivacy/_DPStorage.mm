@interface _DPStorage
+ (id)createFetchRequestFor:(id)for entityName:(id)name predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset;
+ (id)entitiesRequiringMaintenance;
+ (id)errorStringFor:(int64_t)for;
+ (id)shuffleOrderOfRecords:(id)records count:(unint64_t)count;
+ (id)storageWithDirectory:(id)directory readOnly:(BOOL)only;
- (BOOL)deleteStorageWithObliterationOption:(BOOL)option;
- (_DPStorage)initWithDirectory:(id)directory readOnly:(BOOL)only;
- (id)removeBadObjects:(id)objects;
- (void)dealloc;
- (void)deleteAllRecordsByKey:(id)key withCompletion:(id)completion;
- (void)deleteRecords:(id)records withCompletion:(id)completion;
- (void)fetchKeynamesFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset withCompletion:(id)completion;
- (void)fetchRecordCountForEntity:(id)entity predicate:(id)predicate completion:(id)completion;
- (void)fetchRecordsFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset randomizeOrder:(BOOL)order withCompletion:(id)completion;
- (void)flush;
- (void)handleEmptyArrayError:(int64_t)error completion:(id)completion;
- (void)saveRecords:(id)records andFlush:(BOOL)flush withCompletion:(id)completion;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
- (void)scheduleStorageCullingWithName:(id)name database:(id)database;
- (void)updateRecords:(id)records withCompletion:(id)completion;
@end

@implementation _DPStorage

- (_DPStorage)initWithDirectory:(id)directory readOnly:(BOOL)only
{
  onlyCopy = only;
  v79[12] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v75.receiver = self;
  v75.super_class = _DPStorage;
  v7 = [(_DPStorage *)&v75 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v72 = [v8 pathForResource:@"DifferentialPrivacyDataModel" ofType:@"momd"];

    v71 = [MEMORY[0x277CBEBC0] fileURLWithPath:v72];
    v7->_readOnly = onlyCopy;
    v9 = [_DPCoreDataStorage storageWithDirectory:directoryCopy databaseName:@"DifferentialPrivacy" modelURL:v71 readOnly:onlyCopy];
    coredataStorage = v7->_coredataStorage;
    v7->_coredataStorage = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.DifferentialPrivacy.storage", v11);
    queue = v7->_queue;
    v7->_queue = v12;

    v69 = +[_DPModelInfoRecord entityName];
    v78[0] = v69;
    v67 = objc_opt_new();
    v79[0] = v67;
    v65 = +[_DPPrivacyBudgetRecord entityName];
    v78[1] = v65;
    v63 = objc_opt_new();
    v79[1] = v63;
    v61 = +[_DPNumericDataRecord entityName];
    v78[2] = v61;
    v59 = objc_opt_new();
    v79[2] = v59;
    v57 = +[_DPBitValueRecord entityName];
    v78[3] = v57;
    v55 = objc_opt_new();
    v79[3] = v55;
    v53 = +[_DPOBHSequenceRecord entityName];
    v78[4] = v53;
    v51 = objc_opt_new();
    v79[4] = v51;
    v49 = +[_DPCMSSequenceRecord entityName];
    v78[5] = v49;
    v47 = objc_opt_new();
    v79[5] = v47;
    v45 = +[_DPCMSWordRecord entityName];
    v78[6] = v45;
    v43 = objc_opt_new();
    v79[6] = v43;
    v14 = +[_DPHCMSSequenceRecord entityName];
    v78[7] = v14;
    v15 = objc_opt_new();
    v79[7] = v15;
    v16 = +[_DPHCMSWordRecord entityName];
    v78[8] = v16;
    v17 = objc_opt_new();
    v79[8] = v17;
    v18 = +[_DPPTRecord entityName];
    v78[9] = v18;
    v73 = directoryCopy;
    v19 = objc_opt_new();
    v79[9] = v19;
    v20 = +[_DPBSSFPRecord entityName];
    v78[10] = v20;
    v21 = objc_opt_new();
    v79[10] = v21;
    +[_DPPrioRecord entityName];
    v22 = v74 = v7;
    v78[11] = v22;
    v23 = objc_opt_new();
    v79[11] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:12];
    converterFromEntity = v74->_converterFromEntity;
    v74->_converterFromEntity = v24;

    v70 = [objc_opt_class() description];
    v76[0] = v70;
    v68 = objc_opt_new();
    v77[0] = v68;
    v66 = [objc_opt_class() description];
    v76[1] = v66;
    v64 = objc_opt_new();
    v77[1] = v64;
    v62 = [objc_opt_class() description];
    v76[2] = v62;
    v60 = objc_opt_new();
    v77[2] = v60;
    v58 = [objc_opt_class() description];
    v76[3] = v58;
    v56 = objc_opt_new();
    v77[3] = v56;
    v54 = [objc_opt_class() description];
    v76[4] = v54;
    v52 = objc_opt_new();
    v77[4] = v52;
    v50 = [objc_opt_class() description];
    v76[5] = v50;
    v48 = objc_opt_new();
    v77[5] = v48;
    v46 = [objc_opt_class() description];
    v76[6] = v46;
    v44 = objc_opt_new();
    v77[6] = v44;
    v42 = [objc_opt_class() description];
    v76[7] = v42;
    v41 = objc_opt_new();
    v77[7] = v41;
    v40 = [objc_opt_class() description];
    v76[8] = v40;
    v39 = objc_opt_new();
    v77[8] = v39;
    v26 = [objc_opt_class() description];
    v76[9] = v26;
    v27 = objc_opt_new();
    v77[9] = v27;
    v28 = [objc_opt_class() description];
    v76[10] = v28;
    v29 = objc_opt_new();
    v77[10] = v29;
    v30 = [objc_opt_class() description];
    v76[11] = v30;
    v31 = objc_opt_new();
    v77[11] = v31;
    v32 = [objc_opt_class() description];
    v76[12] = v32;
    v33 = objc_opt_new();
    v77[12] = v33;
    v34 = [objc_opt_class() description];
    v76[13] = v34;
    v35 = objc_opt_new();
    v77[13] = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:14];
    converterFromClass = v74->_converterFromClass;
    v74->_converterFromClass = v36;

    directoryCopy = v73;
    v7 = v74;
  }

  return v7;
}

+ (id)storageWithDirectory:(id)directory readOnly:(BOOL)only
{
  onlyCopy = only;
  directoryCopy = directory;
  v7 = [[self alloc] initWithDirectory:directoryCopy readOnly:onlyCopy];

  return v7;
}

- (id)removeBadObjects:(id)objects
{
  v12[9] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v4 = objc_autoreleasePoolPush();
  v5 = [objectsCopy mutableCopy];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v12[5] = objc_opt_class();
  v12[6] = objc_opt_class();
  v12[7] = objc_opt_class();
  v12[8] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:9];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31___DPStorage_removeBadObjects___block_invoke;
  v10[3] = &unk_27858AF40;
  v11 = v6;
  v7 = v6;
  v8 = [objectsCopy indexesOfObjectsPassingTest:v10];
  [v5 removeObjectsAtIndexes:v8];

  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)errorStringFor:(int64_t)for
{
  if (errorStringFor__onceToken != -1)
  {
    +[_DPStorage errorStringFor:];
  }

  v4 = errorStringFor__errorsDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:for];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)handleEmptyArrayError:(int64_t)error completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    queue = [(_DPStorage *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___DPStorage_handleEmptyArrayError_completion___block_invoke;
    block[3] = &unk_27858AF68;
    block[4] = self;
    errorCopy = error;
    v9 = completionCopy;
    dispatch_async(queue, block);
  }
}

+ (id)createFetchRequestFor:(id)for entityName:(id)name predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset
{
  v30[1] = *MEMORY[0x277D85DE8];
  forCopy = for;
  nameCopy = name;
  predicateCopy = predicate;
  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CBE408] entityForName:nameCopy inManagedObjectContext:forCopy];
  [v14 setEntity:v15];

  [v14 setPredicate:predicateCopy];
  predicate = [v14 predicate];
  [predicate allowEvaluation];

  [v14 setFetchLimit:limit];
  [v14 setFetchOffset:offset];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v30[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v14 setSortDescriptors:v18];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  sortDescriptors = [v14 sortDescriptors];
  v20 = [sortDescriptors countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(sortDescriptors);
        }

        [*(*(&v25 + 1) + 8 * i) allowEvaluation];
      }

      v21 = [sortDescriptors countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  return v14;
}

+ (id)shuffleOrderOfRecords:(id)records count:(unint64_t)count
{
  recordsCopy = records;
  v6 = [recordsCopy mutableCopy];
  v7 = 0;
  for (i = 0; ; ++i)
  {
    v9 = [recordsCopy count];
    countCopy = count;
    if (v9 <= count)
    {
      countCopy = [recordsCopy count];
    }

    if (i >= countCopy)
    {
      break;
    }

    [v6 exchangeObjectAtIndex:i withObjectAtIndex:{i + arc4random_uniform(v7 + objc_msgSend(v6, "count"))}];
    --v7;
  }

  v11 = [v6 copy];

  return v11;
}

- (void)fetchRecordCountForEntity:(id)entity predicate:(id)predicate completion:(id)completion
{
  entityCopy = entity;
  predicateCopy = predicate;
  completionCopy = completion;
  v12 = completionCopy;
  if (predicateCopy && entityCopy && completionCopy)
  {
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v14 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v15 = [coredataStorage mocForProtectionClass:v14];

    if (v15)
    {
      v16 = os_transaction_create();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2;
      v19[3] = &unk_27858B008;
      v19[4] = self;
      v20 = v15;
      v21 = entityCopy;
      v22 = predicateCopy;
      v25 = a2;
      v23 = v16;
      v24 = v12;
      v17 = v16;
      [v20 performWithOptions:4 andBlock:v19];
    }

    else
    {
      queue = [(_DPStorage *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke;
      block[3] = &unk_27858AF90;
      block[4] = self;
      v27 = v12;
      dispatch_async(queue, block);
    }
  }
}

- (void)fetchKeynamesFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset withCompletion:(id)completion
{
  forCopy = for;
  predicateCopy = predicate;
  completionCopy = completion;
  v16 = completionCopy;
  if (predicateCopy && forCopy && completionCopy)
  {
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v18 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v19 = [coredataStorage mocForProtectionClass:v18];

    if (v19)
    {
      v20 = os_transaction_create();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2;
      v23[3] = &unk_27858B058;
      v23[4] = self;
      v24 = v19;
      v25 = forCopy;
      v26 = predicateCopy;
      limitCopy = limit;
      offsetCopy = offset;
      v31 = a2;
      v27 = v20;
      v28 = v16;
      v21 = v20;
      [v24 performWithOptions:4 andBlock:v23];
    }

    else
    {
      queue = [(_DPStorage *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke;
      block[3] = &unk_27858AF90;
      block[4] = self;
      v33 = v16;
      dispatch_async(queue, block);
    }
  }
}

- (void)fetchRecordsFor:(id)for predicate:(id)predicate fetchLimit:(unint64_t)limit fetchOffset:(unint64_t)offset randomizeOrder:(BOOL)order withCompletion:(id)completion
{
  forCopy = for;
  predicateCopy = predicate;
  completionCopy = completion;
  v18 = completionCopy;
  if (predicateCopy && forCopy && completionCopy)
  {
    offsetCopy = offset;
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v20 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v21 = [coredataStorage mocForProtectionClass:v20];

    if (v21)
    {
      v22 = os_transaction_create();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2;
      v26[3] = &unk_27858B080;
      v26[4] = self;
      v27 = v21;
      v28 = forCopy;
      v29 = predicateCopy;
      orderCopy = order;
      limitCopy = limit;
      v33 = offsetCopy;
      v34 = a2;
      v30 = v22;
      v31 = v18;
      v23 = v22;
      [v27 performWithOptions:4 andBlock:v26];
    }

    else
    {
      queue = [(_DPStorage *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke;
      block[3] = &unk_27858AF90;
      block[4] = self;
      v37 = v18;
      dispatch_async(queue, block);
    }
  }
}

- (void)saveRecords:(id)records andFlush:(BOOL)flush withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  completionCopy = completion;
  if ([recordsCopy count])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__4;
    v30 = __Block_byref_object_dispose__4;
    v31 = [(_DPStorage *)self removeBadObjects:recordsCopy];
    v11 = [v27[5] count];
    if (v11 != [recordsCopy count])
    {
      v12 = +[_DPLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromSelector(a2);
        [(_DPStorage *)v13 saveRecords:v14 andFlush:buf withCompletion:v12];
      }
    }

    if ([v27[5] count])
    {
      coredataStorage = [(_DPStorage *)self coredataStorage];
      v16 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
      v17 = [coredataStorage mocForProtectionClass:v16];

      if (!v17)
      {
        v18 = +[_DPLog daemon];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [_DPStorage saveRecords:v18 andFlush:? withCompletion:?];
        }
      }

      v19 = os_transaction_create();
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __50___DPStorage_saveRecords_andFlush_withCompletion___block_invoke;
      v21[3] = &unk_27858B0D0;
      v24 = &v26;
      v21[4] = self;
      v20 = v17;
      v22 = v20;
      flushCopy = flush;
      v23 = completionCopy;
      [v20 performWithOptions:4 andBlock:v21];
    }

    else
    {
      [(_DPStorage *)self handleEmptyArrayError:4 completion:completionCopy];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    [(_DPStorage *)self handleEmptyArrayError:3 completion:completionCopy];
  }
}

- (void)updateRecords:(id)records withCompletion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([recordsCopy count])
  {
    v9 = [(_DPStorage *)self removeBadObjects:recordsCopy];
    v10 = [v9 count];
    if (v10 != [recordsCopy count])
    {
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPStorage updateRecords:a2 withCompletion:?];
      }
    }

    if ([v9 count])
    {
      coredataStorage = [(_DPStorage *)self coredataStorage];
      v13 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
      v14 = [coredataStorage mocForProtectionClass:v13];

      v15 = os_transaction_create();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43___DPStorage_updateRecords_withCompletion___block_invoke;
      v17[3] = &unk_27858B0F8;
      v18 = v9;
      selfCopy = self;
      v20 = v14;
      v21 = completionCopy;
      v16 = v14;
      [v16 performWithOptions:4 andBlock:v17];
    }

    else
    {
      [(_DPStorage *)self handleEmptyArrayError:4 completion:completionCopy];
    }
  }

  else
  {
    [(_DPStorage *)self handleEmptyArrayError:3 completion:completionCopy];
  }
}

- (void)deleteRecords:(id)records withCompletion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  if ([recordsCopy count])
  {
    v9 = [(_DPStorage *)self removeBadObjects:recordsCopy];
    v10 = [v9 count];
    if (v10 != [recordsCopy count])
    {
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPStorage updateRecords:a2 withCompletion:?];
      }
    }

    if ([v9 count])
    {
      coredataStorage = [(_DPStorage *)self coredataStorage];
      v13 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
      v14 = [coredataStorage mocForProtectionClass:v13];

      v15 = os_transaction_create();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43___DPStorage_deleteRecords_withCompletion___block_invoke;
      v17[3] = &unk_27858B120;
      v18 = v9;
      v19 = v14;
      selfCopy = self;
      v21 = completionCopy;
      v16 = v14;
      [v16 performWithOptions:4 andBlock:v17];
    }

    else
    {
      [(_DPStorage *)self handleEmptyArrayError:4 completion:completionCopy];
    }
  }

  else
  {
    [(_DPStorage *)self handleEmptyArrayError:3 completion:completionCopy];
  }
}

- (void)deleteAllRecordsByKey:(id)key withCompletion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  coredataStorage = [(_DPStorage *)self coredataStorage];
  v9 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  v10 = [coredataStorage mocForProtectionClass:v9];

  v11 = [_DPRecordQueryPredicates entityForKey:keyCopy];
  v12 = os_transaction_create();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51___DPStorage_deleteAllRecordsByKey_withCompletion___block_invoke;
  v17[3] = &unk_27858B148;
  v18 = keyCopy;
  selfCopy = self;
  v20 = v10;
  v21 = v11;
  v22 = completionCopy;
  v13 = completionCopy;
  v14 = v11;
  v15 = v10;
  v16 = keyCopy;
  [v15 performWithOptions:4 andBlock:v17];
}

- (BOOL)deleteStorageWithObliterationOption:(BOOL)option
{
  if (self->_readOnly)
  {
    return 0;
  }

  optionCopy = option;
  coredataStorage = [(_DPStorage *)self coredataStorage];
  v6 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  LOBYTE(optionCopy) = [coredataStorage deleteStorageFor:v6 obliterate:optionCopy];

  return optionCopy;
}

- (void)flush
{
  v3 = os_transaction_create();
  if (![(_DPStorage *)self readOnly])
  {
    coredataStorage = [(_DPStorage *)self coredataStorage];
    v5 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
    v6 = [coredataStorage mocForProtectionClass:v5];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __19___DPStorage_flush__block_invoke;
    v10[3] = &unk_27858A908;
    v11 = v6;
    v7 = v6;
    [v7 performWithOptions:4 andBlock:v10];
  }

  coredataStorage2 = [(_DPStorage *)self coredataStorage];
  v9 = +[_DPDataProtectionStateMonitor dataProtectionClassC];
  [coredataStorage2 invalidateManagedObjectContextFor:v9];
}

- (void)dealloc
{
  [(_DPStorage *)self flush];
  v3.receiver = self;
  v3.super_class = _DPStorage;
  [(_DPStorage *)&v3 dealloc];
}

+ (id)entitiesRequiringMaintenance
{
  v14[10] = *MEMORY[0x277D85DE8];
  v13 = +[_DPNumericDataRecord entityName];
  v14[0] = v13;
  v2 = +[_DPBitValueRecord entityName];
  v14[1] = v2;
  v3 = +[_DPOBHSequenceRecord entityName];
  v14[2] = v3;
  v4 = +[_DPCMSWordRecord entityName];
  v14[3] = v4;
  v5 = +[_DPCMSSequenceRecord entityName];
  v14[4] = v5;
  v6 = +[_DPHCMSWordRecord entityName];
  v14[5] = v6;
  v7 = +[_DPHCMSSequenceRecord entityName];
  v14[6] = v7;
  v8 = +[_DPPTRecord entityName];
  v14[7] = v8;
  v9 = +[_DPBSSFPRecord entityName];
  v14[8] = v9;
  v10 = +[_DPPrioRecord entityName];
  v14[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:10];

  return v11;
}

- (void)scheduleStorageCullingWithName:(id)name database:(id)database
{
  databaseCopy = database;
  nameCopy = name;
  entitiesRequiringMaintenance = [objc_opt_class() entitiesRequiringMaintenance];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __54___DPStorage_scheduleStorageCullingWithName_database___block_invoke;
  v15 = &unk_27858B170;
  v16 = databaseCopy;
  v17 = entitiesRequiringMaintenance;
  v18 = xmmword_2262951C0;
  v8 = entitiesRequiringMaintenance;
  v9 = databaseCopy;
  v10 = MEMORY[0x22AA7A8C0](&v12);
  v11 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn24Hours handler:v10, v12, v13, v14, v15];

  [_DPPeriodicTaskManager registerTask:v11];
}

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  databaseCopy = database;
  v6 = kSecondsIn14Day;
  nameCopy = name;
  entitiesRequiringMaintenance = [objc_opt_class() entitiesRequiringMaintenance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51___DPStorage_scheduleMaintenanceWithName_database___block_invoke;
  v13[3] = &unk_27858B198;
  v14 = databaseCopy;
  v15 = entitiesRequiringMaintenance;
  v16 = xmmword_2262951C0;
  v17 = v6;
  v9 = entitiesRequiringMaintenance;
  v10 = databaseCopy;
  v11 = MEMORY[0x22AA7A8C0](v13);
  v12 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn12Hours handler:v11];

  [_DPPeriodicTaskManager registerTask:v12];
}

- (void)saveRecords:(uint8_t *)buf andFlush:(os_log_t)log withCompletion:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "%@ : %@ : found foreign objects", buf, 0x16u);
}

- (void)updateRecords:(uint64_t)a1 withCompletion:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3(&dword_22622D000, v5, v6, "%@ : %@ : found foreign objects", v7, v8, v9, v10);
}

@end