@interface DPCoreDataStorage
@end

@implementation DPCoreDataStorage

void __71___DPCoreDataStorage_initWithDirectory_databaseName_modelURL_readOnly___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDataProtectionChangeFor:v5 willBeAvailable:a3];
}

void __56___DPCoreDataStorage_invalidateManagedObjectContextFor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContexts];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = os_transaction_create();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56___DPCoreDataStorage_invalidateManagedObjectContextFor___block_invoke_2;
  v8[3] = &unk_27858AD68;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v7 performWithOptions:4 andBlock:v8];
}

uint64_t __56___DPCoreDataStorage_invalidateManagedObjectContextFor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reset];
  v2 = [*(a1 + 40) managedObjectContexts];
  [v2 removeObjectForKey:*(a1 + 48)];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 invalidatePersistentStoreCoordinatorFor:v4];
}

void __62___DPCoreDataStorage_invalidatePersistentStoreCoordinatorFor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinators];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 persistentStores];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 removePersistentStore:*(*(&v10 + 1) + 8 * v8++) error:0];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    v9 = [*(a1 + 32) persistentStoreCoordinators];
    [v9 removeObjectForKey:*(a1 + 40)];
  }
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke(void *a1)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 4);
  v3 = [a1[4] persistentStoreCoordinators];
  v4 = [v3 objectForKeyedSubscript:v2[1]];
  v5 = *(v2[2] + 1);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(v2[2] + 1) + 40);
  if (v2[4])
  {
    if (v7)
    {
      return;
    }

    v8 = objc_opt_class();
    v9 = [*v2 databaseDirectory];
    v51 = 0;
    LOBYTE(v8) = [v8 createDatabaseDirectory:v9 error:&v51];
    v10 = v51;

    if ((v8 & 1) == 0 && [v10 code] != 516)
    {
      v29 = +[_DPLog framework];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_1(v2, v10, v29);
      }

      v30 = *(a1[6] + 8);
      v11 = *(v30 + 40);
      *(v30 + 40) = 0;
      goto LABEL_44;
    }

    v11 = [*v2 managedObjectModel];
    if (!v11)
    {
      v28 = +[_DPLog framework];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_5(v2, v28);
      }

      v18 = +[_DPCoreAnalyticsCollector sharedInstance];
      v52 = @"nilMOM";
      v53[0] = MEMORY[0x277CBEC38];
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      [v18 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.CoreData" withMetrics:v19];
      goto LABEL_43;
    }

    v12 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v11];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = MEMORY[0x277CBEBC0];
    v16 = [a1[4] paths];
    v17 = [v16 objectForKeyedSubscript:a1[5]];
    v18 = [v15 fileURLWithPath:v17];

    v19 = [objc_opt_class() persistentStoreOptionsFor:a1[5] readOnly:{objc_msgSend(a1[4], "readOnly")}];
    v20 = [v19 mutableCopy];
    [v20 removeObjectForKey:*MEMORY[0x277CBE1D8]];
    v21 = [v20 copy];
    v22 = *(*(a1[6] + 8) + 40);
    v23 = *MEMORY[0x277CBE2E8];
    v50 = v10;
    v24 = [v22 addPersistentStoreWithType:v23 configuration:0 URL:v18 options:v21 error:&v50];
    v25 = v50;

    if (v24)
    {
      v10 = v25;
LABEL_40:
      v44 = *(*(a1[6] + 8) + 40);
      if (v44)
      {
        v45 = [a1[4] persistentStoreCoordinators];
        [v45 setObject:v44 forKeyedSubscript:a1[5]];
      }

LABEL_43:
LABEL_44:

      return;
    }

    v31 = [v25 domain];
    if ([v31 isEqualToString:*MEMORY[0x277CCA050]])
    {
      if ([v25 code] == 134020)
      {

LABEL_21:
        v32 = [v19 mutableCopy];
        [v32 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE248]];
        v33 = *(*(a1[6] + 8) + 40);
        v49 = 0;
        v46 = v32;
        LOBYTE(v32) = [v33 destroyPersistentStoreAtURL:v18 withType:v23 options:v32 error:&v49];
        v25 = v49;
        if (v32)
        {
          goto LABEL_25;
        }

        v34 = +[_DPLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_2();
        }

        [v46 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE2A8]];
        if ([*(*(a1[6] + 8) + 40) destroyPersistentStoreAtURL:v18 withType:v23 options:v46 error:0])
        {
LABEL_25:
          v35 = +[_DPLog framework];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22622D000, v35, OS_LOG_TYPE_DEFAULT, "Deleted persistent store with old schema.", buf, 2u);
          }

          v36 = *(*(a1[6] + 8) + 40);
          v47 = v25;
          v24 = [v36 addPersistentStoreWithType:v23 configuration:0 URL:v18 options:v19 error:&v47];
          v10 = v47;

          if (v24)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        v40 = +[_DPLog framework];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_3();
        }

        v31 = v46;
        goto LABEL_35;
      }

      if ([v25 code] > 134099)
      {
        v37 = [v25 code];
        v38 = v31;
        v39 = v37;

        if (v39 >= 134171)
        {
          goto LABEL_36;
        }

        goto LABEL_21;
      }
    }

LABEL_35:

LABEL_36:
    v10 = v25;
LABEL_37:
    v41 = +[_DPLog framework];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_4();
    }

    [a1[4] handleDatabaseErrors:v10 forPSC:*(*(a1[6] + 8) + 40) protectionClass:a1[5]];
    v42 = *(a1[6] + 8);
    v43 = *(v42 + 40);
    *(v42 + 40) = 0;

    v24 = 0;
    goto LABEL_40;
  }

  if (v7)
  {
    *(*(a1[7] + 8) + 24) = 1;
    v26 = *(a1[6] + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = 0;
  }
}

void __44___DPCoreDataStorage_mocForProtectionClass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContexts];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (*(a1 + 64))
  {
    if (v7)
    {
      return;
    }

    v8 = [*(a1 + 32) persistentStoreCoordinatorFor:*(a1 + 40)];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      [*(*(*(a1 + 48) + 8) + 40) setPersistentStoreCoordinator:v8];
      [*(*(*(a1 + 48) + 8) + 40) setMergePolicy:*MEMORY[0x277CBE1C8]];
      [*(*(*(a1 + 48) + 8) + 40) setUndoManager:0];
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v13 = [*(a1 + 32) managedObjectContexts];
      [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
    }

    else
    {
      v22 = +[_DPLog daemon];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_2(v3, v22, v23, v24, v25, v26, v27, v28);
      }
    }
  }

  else
  {
    if (v7)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }

    v8 = +[_DPLog daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_1((a1 + 40), v8, v16, v17, v18, v19, v20, v21);
    }
  }
}

void __105___DPCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit___block_invoke(uint64_t a1)
{
  v7 = objc_opt_new();
  v2 = [MEMORY[0x277CBE408] entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  [v7 setEntity:v2];

  [v7 setFetchLimit:*(a1 + 72)];
  [v7 setIncludesSubentities:0];
  [v7 setIncludesPendingChanges:0];
  [v7 setFetchOffset:*(a1 + 80)];
  if (*(a1 + 48))
  {
    [v7 setPredicate:?];
  }

  v3 = *(a1 + 56);
  if (v3 && [v3 count])
  {
    [v7 setSortDescriptors:*(a1 + 56)];
  }

  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v7];
  [v4 setResultType:2];
  v5 = [*(a1 + 40) executeRequest:v4 error:0];
  v6 = [v5 result];
  *(*(*(a1 + 64) + 8) + 24) = [v6 unsignedIntegerValue];

  [*(a1 + 40) reset];
}

void __65___DPCoreDataStorage_countObjectsInContext_entityName_predicate___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBE408] entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];
  [v2 setIncludesSubentities:0];
  [v2 setIncludesPendingChanges:0];
  if (*(a1 + 48))
  {
    [v2 setPredicate:?];
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) countForFetchRequest:v2 error:0];
}

void *__50___DPCoreDataStorage_deleteStorageFor_obliterate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateManagedObjectContextFor:*(a1 + 40)];
  result = [*(a1 + 32) deleteDatabaseForPSC:*(a1 + 48) protectionClass:*(a1 + 40) obliterate:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*a1 databaseDirectory];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "%@ : did not exist and could not be created: %@", v6, 0x16u);
}

void __52___DPCoreDataStorage_persistentStoreCoordinatorFor___block_invoke_cold_5(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [*a1 modelURL];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Failed to load Managed Object Model from %@", v4, 0xCu);
}

void __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "NSManagedObjectContext not available for protectionClass=%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __44___DPCoreDataStorage_mocForProtectionClass___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "NSPersistentStoreCoordinator is nil for protectionClass=%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end