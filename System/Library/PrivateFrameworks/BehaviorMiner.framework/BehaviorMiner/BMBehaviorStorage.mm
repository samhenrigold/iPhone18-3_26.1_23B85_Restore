@interface BMBehaviorStorage
- (BMBehaviorStorage)init;
- (BMBehaviorStorage)initWithURL:(id)l readOnly:(BOOL)only error:(id *)error;
- (id)description;
- (id)fetchRulesWithAbsoluteSupport:(unint64_t)support support:(double)a4 confidence:(double)confidence conviction:(double)conviction lift:(double)lift rulePowerFactor:(double)factor uniqueDaysLastWeek:(unint64_t)week uniqueDaysTotal:(unint64_t)self0 filters:(id)self1 limit:(unint64_t)self2 error:(id *)self3;
- (void)resetStorageWithMetadata:(id)metadata error:(id *)error;
- (void)saveRules:(id)rules error:(id *)error;
@end

@implementation BMBehaviorStorage

- (BMBehaviorStorage)init
{
  v3 = BMStorageURLForDomain(@"BehaviorMiner");
  v4 = [(BMBehaviorStorage *)self initWithURL:v3 readOnly:0];

  return v4;
}

- (BMBehaviorStorage)initWithURL:(id)l readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v82[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v72.receiver = self;
  v72.super_class = BMBehaviorStorage;
  v9 = [(BMBehaviorStorage *)&v72 init];
  v10 = v9;
  if (!v9)
  {
LABEL_47:
    v56 = v10;
    goto LABEL_48;
  }

  v9->_readOnly = onlyCopy;
  if ([lCopy isFileURL])
  {
    v11 = lCopy;
    URL = v10->_URL;
    v10->_URL = v11;
  }

  else
  {
    v13 = MEMORY[0x277CBEBC0];
    URL = [lCopy path];
    v14 = [v13 fileURLWithPath:URL];
    v15 = v10->_URL;
    v10->_URL = v14;
  }

  v16 = lCopy;
  v17 = BMLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [BMBehaviorStorage initWithURL:readOnly:error:];
  }

  if (onlyCopy)
  {
    v19 = v16;
    fileSystemRepresentation = [v16 fileSystemRepresentation];
    if (access(fileSystemRepresentation, 0))
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"File does not exist %s", fileSystemRepresentation];
      v22 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA450];
      v82[0] = v21;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:v23];

      v26 = BMLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v24;
        _os_log_impl(&dword_241ACA000, v26, OS_LOG_TYPE_DEFAULT, "Can't initialize CoreBehavior storage: %@", &buf, 0xCu);
      }
    }

    else
    {
      v18 = access(fileSystemRepresentation, 4);
      if (!v18)
      {
        goto LABEL_16;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"No permission to read %s", fileSystemRepresentation];
      v27 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA450];
      v82[0] = v21;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
      v24 = [v27 errorWithDomain:*MEMORY[0x277CCA050] code:257 userInfo:v28];

      v26 = BMLog(v29);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [BMBehaviorStorage initWithURL:readOnly:error:];
      }
    }

    if (v24)
    {
      v30 = v24;
LABEL_28:
      v45 = 0;
      v46 = v24;
      goto LABEL_38;
    }
  }

LABEL_16:
  if (BMLoadBehaviorStoragePersistentContainer_onceToken != -1)
  {
    [BMBehaviorStorage initWithURL:readOnly:error:];
  }

  if (!BMLoadBehaviorStoragePersistentContainer_model)
  {
    v47 = MEMORY[0x277CCA9B8];
    v74[0] = *MEMORY[0x277CCA450];
    *&buf = @"Error loading BehaviorMiner.momd from BehaviorMiner.framework resources";
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v74 count:1];
    v24 = [v47 errorWithDomain:*MEMORY[0x277CCA050] code:-1100 userInfo:v48];

    v49 = v24;
    goto LABEL_28;
  }

  v31 = BMLog(v18);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [BMBehaviorStorage initWithURL:readOnly:error:];
  }

  v32 = objc_alloc(MEMORY[0x277CBE4A0]);
  v24 = [v32 initWithName:@"BehaviorMiner" managedObjectModel:BMLoadBehaviorStoragePersistentContainer_model];
  v33 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v16];
  [v33 setType:*MEMORY[0x277CBE2E8]];
  [v33 setReadOnly:onlyCopy];
  v80 = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  [v24 setPersistentStoreDescriptions:v34];

  path = [v16 path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  v38 = BMLog(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [BMBehaviorStorage initWithURL:readOnly:error:];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v73 = 0;
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v73];
  v40 = v73;

  v42 = BMLog(v41);
  v43 = v42;
  if (v40)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [BMBehaviorStorage initWithURL:readOnly:error:];
    }

    v44 = v40;
    v45 = 0;
    v46 = v40;
  }

  else
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [BMBehaviorStorage initWithURL:readOnly:error:];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__2;
    v78 = __Block_byref_object_dispose__2;
    v79 = 0;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __BMLoadBehaviorStoragePersistentContainer_block_invoke_206;
    v74[3] = &unk_278D06860;
    v74[4] = &buf;
    v50 = [v24 loadPersistentStoresWithCompletionHandler:v74];
    if (*(*(&buf + 1) + 40))
    {
      v51 = BMLog(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [BMBehaviorStorage initWithURL:v51 readOnly:? error:?];
      }

      v46 = *(*(&buf + 1) + 40);
      v52 = v46;
      v45 = 0;
    }

    else
    {
      v45 = v24;
      v46 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

LABEL_38:
  v53 = v46;
  container = v10->_container;
  v10->_container = v45;

  if (error)
  {
    v55 = v53;
    *error = v53;
  }

  if (!v53)
  {
    persistentStoreCoordinator = [(NSPersistentContainer *)v10->_container persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    metadata = [firstObject metadata];
    v61 = BMLog(metadata);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      [BMBehaviorStorage initWithURL:readOnly:error:];
    }

    v62 = [[BMBehaviorDatabaseMetadata alloc] initWithDictionary:metadata];
    metadata = v10->_metadata;
    v10->_metadata = v62;

    v65 = BMLog(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = v10->_metadata;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v66;
      _os_log_impl(&dword_241ACA000, v65, OS_LOG_TYPE_INFO, "Initialized behavior storage with metadata %@", &buf, 0xCu);
    }

    v67 = objc_alloc_init(BMManagedObjectConverter);
    converter = v10->_converter;
    v10->_converter = v67;

    newBackgroundContext = [(NSPersistentContainer *)v10->_container newBackgroundContext];
    context = v10->_context;
    v10->_context = newBackgroundContext;

    [(NSManagedObjectContext *)v10->_context setMergePolicy:*MEMORY[0x277CBE1C8]];
    goto LABEL_47;
  }

  v56 = 0;
LABEL_48:

  return v56;
}

- (id)fetchRulesWithAbsoluteSupport:(unint64_t)support support:(double)a4 confidence:(double)confidence conviction:(double)conviction lift:(double)lift rulePowerFactor:(double)factor uniqueDaysLastWeek:(unint64_t)week uniqueDaysTotal:(unint64_t)self0 filters:(id)self1 limit:(unint64_t)self2 error:(id *)self3
{
  filtersCopy = filters;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__2;
  v53 = __Block_byref_object_dispose__2;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v48 = 0;
  context = [(BMBehaviorStorage *)self context];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __157__BMBehaviorStorage_fetchRulesWithAbsoluteSupport_support_confidence_conviction_lift_rulePowerFactor_uniqueDaysLastWeek_uniqueDaysTotal_filters_limit_error___block_invoke;
  v29[3] = &unk_278D067C0;
  limitCopy = limit;
  v35 = a4;
  confidenceCopy = confidence;
  v26 = filtersCopy;
  v30 = v26;
  selfCopy = self;
  supportCopy = support;
  convictionCopy = conviction;
  liftCopy = lift;
  factorCopy = factor;
  weekCopy = week;
  totalCopy = total;
  v32 = &v49;
  v33 = &v43;
  [context performBlockAndWait:v29];

  if (error)
  {
    *error = v44[5];
  }

  v27 = v50[5];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v27;
}

void __157__BMBehaviorStorage_fetchRulesWithAbsoluteSupport_support_confidence_conviction_lift_rulePowerFactor_uniqueDaysLastWeek_uniqueDaysTotal_filters_limit_error___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = +[BMRuleMO fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setRelationshipKeyPathsForPrefetching:&unk_2853B5AC8];
  if (*(a1 + 64))
  {
    [v2 setFetchLimit:?];
    v3 = MEMORY[0x277CBEA60];
    v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"confidence" ascending:0];
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"support" ascending:0];
    v6 = [v3 arrayWithObjects:{v4, v5, 0}];

    [v2 setSortDescriptors:v6];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"support >= %f AND confidence >= %f", *(a1 + 72), *(a1 + 80)];
  [v7 addObject:v8];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v14 rulePredicate];

        if (v15)
        {
          v16 = [v14 rulePredicate];
          [v7 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  [v2 setPredicate:v17];

  v18 = [*(a1 + 40) context];
  v40 = 0;
  v19 = [v18 executeFetchRequest:v2 error:&v40];
  v20 = v40;

  if (v20 || (v37 = MEMORY[0x277CCACA8], [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88)], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 96)), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 104)), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 112)), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", *(a1 + 120)), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", *(a1 + 128)), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "stringWithFormat:", @"absoluteSupport >= %@ && conviction >= %@ && lift >= %@ && rulePowerFactor >= %@ && uniqueDaysLastWeek >= %@ && uniqueDaysTotal >= %@", v21, v22, v23, v24, v25, v26), v38 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v23, v22, v21, objc_msgSend(*(a1 + 40), "converter"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "metadata"), v28 = objc_claimAutoreleasedReturnValue(), v39 = 0, objc_msgSend(v27, "convertRuleMOs:basketCount:error:", v19, objc_msgSend(v28, "numberOfBaskets"), &v39), v29 = objc_claimAutoreleasedReturnValue(), v20 = v39, objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", v38), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "filteredArrayUsingPredicate:", v30), v31 = objc_claimAutoreleasedReturnValue(), v32 = *(*(a1 + 48) + 8), v33 = *(v32 + 40), *(v32 + 40) = v31, v33, v30, v29, v28, v27, v38, v20))
  {
    v34 = *(*(a1 + 56) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v20;
    v36 = v20;
  }
}

- (void)saveRules:(id)rules error:(id *)error
{
  rulesCopy = rules;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  context = [(BMBehaviorStorage *)self context];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__BMBehaviorStorage_saveRules_error___block_invoke;
  v9[3] = &unk_278D067E8;
  v9[4] = self;
  v8 = rulesCopy;
  v10 = v8;
  v11 = &v12;
  [context performBlockAndWait:v9];

  if (error)
  {
    *error = v13[5];
  }

  _Block_object_dispose(&v12, 8);
}

void __37__BMBehaviorStorage_saveRules_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) converter];
  v3 = [*(a1 + 40) allObjects];
  v4 = [*(a1 + 32) context];
  v5 = [v2 insertRules:v3 inManagedObjectContext:v4];

  v6 = [*(a1 + 32) context];
  LODWORD(v3) = [v6 hasChanges];

  if (v3)
  {
    v7 = [*(a1 + 32) context];
    v11 = 0;
    [v7 save:&v11];
    v8 = v11;

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)resetStorageWithMetadata:(id)metadata error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v7 = BMLog(metadataCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = metadataCopy;
    _os_log_impl(&dword_241ACA000, v7, OS_LOG_TYPE_INFO, "Resetting behavior storage and applying new metadata %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  context = [(BMBehaviorStorage *)self context];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke;
  v16[3] = &unk_278D06810;
  v16[4] = self;
  v16[5] = &buf;
  [context performBlockAndWait:v16];

  context2 = [(BMBehaviorStorage *)self context];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke_2;
  v15[3] = &unk_278D06838;
  v15[4] = self;
  [context2 performBlockAndWait:v15];

  if (!*(*(&buf + 1) + 40))
  {
    container = [(BMBehaviorStorage *)self container];
    persistentStoreCoordinator = [container persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    dictionaryRepresntation = [metadataCopy dictionaryRepresntation];
    [firstObject setMetadata:dictionaryRepresntation];
    [(BMBehaviorStorage *)self setMetadata:metadataCopy];
  }

  if (error)
  {
    *error = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);
}

void __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE360]);
  v3 = +[BMRuleMO fetchRequest];
  v4 = [v2 initWithFetchRequest:v3];

  v5 = [*(a1 + 32) context];
  v17 = 0;
  v6 = [v5 executeRequest:v4 error:&v17];
  v7 = v17;

  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v7;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBE360]);
    v12 = +[BMItemMO fetchRequest];
    v10 = [v11 initWithFetchRequest:v12];

    v13 = [*(a1 + 32) context];
    v16 = 0;
    v14 = [v13 executeRequest:v10 error:&v16];
    v15 = v16;
    v9 = v16;

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v15);
    }
  }
}

void __52__BMBehaviorStorage_resetStorageWithMetadata_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) context];
  [v1 reset];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  container = [(BMBehaviorStorage *)self container];
  v6 = [container debugDescription];
  v7 = [(BMBehaviorStorage *)self URL];
  metadata = [(BMBehaviorStorage *)self metadata];
  v9 = [v3 stringWithFormat:@"<%@ %p> container: %@, URL: %@, metadata: %@", v4, self, v6, v7, metadata];

  return v9;
}

- (void)initWithURL:readOnly:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithURL:readOnly:error:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_241ACA000, v0, OS_LOG_TYPE_FAULT, "Error initializing CoreBehavior storage: %@", v1, 0xCu);
}

- (void)initWithURL:readOnly:error:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithURL:readOnly:error:.cold.6()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_241ACA000, v1, OS_LOG_TYPE_ERROR, "Error creating directory at path %@, %@", v2, 0x16u);
}

- (void)initWithURL:(uint64_t)a1 readOnly:(NSObject *)a2 error:.cold.8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_241ACA000, a2, OS_LOG_TYPE_ERROR, "Error loading persistent store %@", &v3, 0xCu);
}

- (void)initWithURL:readOnly:error:.cold.9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end