@interface ICHTMLSearchIndexerDataSource
- (id)allIndexableObjectIDsInReversedReindexingOrderWithContext:(id)context;
- (void)contextWillSave:(id)save;
@end

@implementation ICHTMLSearchIndexerDataSource

- (id)allIndexableObjectIDsInReversedReindexingOrderWithContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __91__ICHTMLSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke;
  v10 = &unk_2799AC9C8;
  v4 = contextCopy;
  v11 = v4;
  v12 = &v13;
  [v4 performBlockAndWait:&v7];
  v5 = [v14[5] copy];

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __91__ICHTMLSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"store != nil"];
  [v2 addObject:v3];

  v4 = +[NoteContext visibleNotesPredicate];
  [v2 addObject:v4];

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v2];
  v6 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Note"];
  [v6 setResultType:1];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:1];
  v28[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v6 setSortDescriptors:v8];

  [v6 setPredicate:v5];
  v9 = *(a1 + 32);
  v27 = 0;
  v10 = [v9 executeFetchRequest:v6 error:&v27];
  v11 = v27;
  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __91__ICHTMLSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_1();
    }
  }

  v13 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Store"];

  [v13 setResultType:1];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"account.didChooseToMigrate != YES"];
  [v13 setPredicate:v14];

  v15 = *(a1 + 32);
  v26 = 0;
  v16 = [v15 executeFetchRequest:v13 error:&v26];
  v17 = v26;
  if (v17)
  {
    v18 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __91__ICHTMLSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_2();
    }
  }

  v19 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Account"];

  [v19 setResultType:1];
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"didChooseToMigrate != YES"];
  [v19 setPredicate:v20];

  v21 = *(a1 + 32);
  v25 = 0;
  v22 = [v21 executeFetchRequest:v19 error:&v25];
  v23 = v25;
  if (v23)
  {
    v24 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __91__ICHTMLSearchIndexerDataSource_allIndexableObjectIDsInReversedReindexingOrderWithContext___block_invoke_cold_3();
    }
  }

  [*(*(*(a1 + 40) + 8) + 40) ic_addObjectsFromNonNilArray:v10];
  [*(*(*(a1 + 40) + 8) + 40) ic_addObjectsFromNonNilArray:v16];
  [*(*(*(a1 + 40) + 8) + 40) ic_addObjectsFromNonNilArray:v22];
}

- (void)contextWillSave:(id)save
{
  v35 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  v33.receiver = self;
  v33.super_class = ICHTMLSearchIndexerDataSource;
  [(ICBaseSearchIndexerDataSource *)&v33 contextWillSave:saveCopy];
  object = [saveCopy object];
  persistentStoreCoordinator = [object persistentStoreCoordinator];
  persistentStoreCoordinator2 = [(ICHTMLSearchIndexerDataSource *)self persistentStoreCoordinator];
  v8 = [persistentStoreCoordinator isEqual:persistentStoreCoordinator2];

  if (v8)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    updatedObjects = [object updatedObjects];
    v10 = [updatedObjects countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = object;
      v28 = saveCopy;
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(updatedObjects);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          v15 = ICDynamicCast();
          if (v15)
          {
            changedValues = [v14 changedValues];
            v17 = [changedValues objectForKeyedSubscript:@"didChooseToMigrate"];

            if (v17)
            {
              if ([v15 didChooseToMigrate])
              {
                v18 = MEMORY[0x277D361A0];
                accountIdentifier = [v15 accountIdentifier];
                LOBYTE(v18) = [v18 isAccountReindexedForMigration:accountIdentifier];

                if ((v18 & 1) == 0)
                {
                  v21 = os_log_create("com.apple.notes", "SearchIndexer");
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    [(ICHTMLSearchIndexerDataSource *)v15 contextWillSave:v21];
                  }

                  v22 = MEMORY[0x277D361A0];
                  accountIdentifier2 = [v15 accountIdentifier];
                  [v22 markAccountReindexedForMigration:accountIdentifier2];

                  v20 = 0;
                  goto LABEL_17;
                }
              }
            }
          }
        }

        v11 = [updatedObjects countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v20 = 1;
LABEL_17:
      saveCopy = v28;
      object = v27;
    }

    else
    {
      v20 = 1;
    }

    v24 = ICUseCoreDataCoreSpotlightIntegration();
    if ((v20 & 1) == 0 && (v24 & 1) == 0)
    {
      v25 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [ICHTMLSearchIndexerDataSource contextWillSave:v25];
      }

      [(ICBaseSearchIndexerDataSource *)self setNeedsReindexing:1];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x277D36150] object:self];
    }
  }
}

- (void)contextWillSave:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 accountIdentifier];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_25C69C000, a2, OS_LOG_TYPE_DEBUG, "legacy account %@ migration state changed to YES, so let's re-index everything.", v4, 0xCu);
}

@end