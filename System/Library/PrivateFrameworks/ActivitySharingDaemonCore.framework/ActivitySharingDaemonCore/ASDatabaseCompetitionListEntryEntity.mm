@interface ASDatabaseCompetitionListEntryEntity
+ (BOOL)_insertCompetitionLists:(id)lists profile:(id)profile error:(id *)error;
+ (BOOL)enumerateAllCompetitionListsWithProfile:(id)profile error:(id *)error handler:(id)handler;
+ (BOOL)removeAllCompetitionListsWithProfile:(id)profile error:(id *)error;
+ (BOOL)saveCompetitionList:(id)list profile:(id)profile withError:(id *)error;
+ (id)_insertCompetitionList:(id)list database:(id)database error:(id *)error;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)uniquedColumns;
@end

@implementation ASDatabaseCompetitionListEntryEntity

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"friend_uuid";
  v4[1] = @"type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[ASDatabaseCompetitionListEntryEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (BOOL)saveCompetitionList:(id)list profile:(id)profile withError:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  listCopy = list;
  v9 = objc_opt_class();
  v12[0] = listCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  LOBYTE(error) = [v9 _insertCompetitionLists:v10 profile:profileCopy error:error];
  return error;
}

+ (BOOL)enumerateAllCompetitionListsWithProfile:(id)profile error:(id *)error handler:(id)handler
{
  profileCopy = profile;
  handlerCopy = handler;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke;
  v14[3] = &unk_278C4BEC8;
  v16 = handlerCopy;
  selfCopy = self;
  v15 = profileCopy;
  v11 = handlerCopy;
  v12 = profileCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v14];

  return error;
}

uint64_t __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:v5];
  v8 = [*(a1 + 48) entityEncoderForProfile:*(a1 + 32) transaction:v6 purpose:1 encodingOptions:0 authorizationFilter:0];

  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277D10B70] truePredicate];
  v11 = [v9 queryWithDatabase:v7 predicate:v10];

  v12 = [v8 orderedProperties];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2;
  v16[3] = &unk_278C4BEA0;
  v17 = v8;
  v18 = *(a1 + 40);
  v13 = v8;
  v14 = [v11 enumeratePersistentIDsAndProperties:v12 error:a3 enumerationHandler:v16];

  return v14;
}

BOOL __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 objectForPersistentID:a2 row:a4 error:&v14];
  v9 = v14;
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2_cold_1(v9, v10);
    }

    v11 = v9;
    if (v11)
    {
      if (a5)
      {
        v12 = v11;
        *a5 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v8 != 0;
}

+ (BOOL)removeAllCompetitionListsWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke;
  v14[3] = &unk_278C4BEF0;
  selfCopy = self;
  v15 = profileCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke_2;
  v12[3] = &unk_278C4BF18;
  v8 = v15;
  v13 = v8;
  v9 = [self performWriteTransactionWithHealthDatabase:database error:error block:v14 inaccessibilityHandler:v12];

  if ((v9 & 1) == 0)
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      [ASDatabaseCompetitionListEntryEntity removeAllCompetitionListsWithProfile:error error:v10];
    }
  }

  return v9;
}

uint64_t __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277D10B70] truePredicate];
  v6 = objc_opt_class();
  v7 = [*(a1 + 32) database];
  v8 = [v6 deleteEntitiesWithPredicate:v5 healthDatabase:v7 error:a3];

  return v8;
}

uint64_t __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(ASDatabaeCompetitionListEntryBulkDeletionJournalEntry);
  v6 = [*(a1 + 32) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (BOOL)_insertCompetitionLists:(id)lists profile:(id)profile error:(id *)error
{
  listsCopy = lists;
  profileCopy = profile;
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke;
  v19[3] = &unk_278C4BEF0;
  selfCopy = self;
  v20 = listsCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke_2;
  v16[3] = &unk_278C4BF40;
  v11 = v20;
  v17 = v11;
  v12 = profileCopy;
  v18 = v12;
  v13 = [self performWriteTransactionWithHealthDatabase:database error:error block:v19 inaccessibilityHandler:v16];

  if ((v13 & 1) == 0)
  {
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      [ASDatabaseCompetitionListEntryEntity _insertCompetitionLists:v11 profile:error error:v14];
    }
  }

  return v13;
}

uint64_t __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v20 = 0;
        v13 = [v12 _insertCompetitionList:v11 database:v5 error:&v20];
        v14 = v20;
        v15 = v14;
        if (!v13)
        {
          v17 = v14;
          if (v17)
          {
            if (a3)
            {
              v18 = v17;
              *a3 = v17;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v16 = 0;
          goto LABEL_15;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

uint64_t __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [ASDatabaseCompetitionListEntryJournalEntry alloc];
        v13 = [(ASDatabaseCompetitionListEntryJournalEntry *)v12 initWithCompetitionList:v11, v17];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [*(a1 + 40) database];
  v15 = [v14 addJournalEntries:v5 error:a3];

  return v15;
}

+ (id)_insertCompetitionList:(id)list database:(id)database error:(id *)error
{
  listCopy = list;
  databaseCopy = database;
  v10 = ASAllDatabaseCompetitionListEntryKeys();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionList_database_error___block_invoke;
  v14[3] = &unk_278C4BF68;
  v15 = listCopy;
  v11 = listCopy;
  v12 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v10 error:error bindingHandler:v14];

  return v12;
}

void __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionList_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCAD78];
  v5 = [*(a1 + 32) friendUUID];
  v6 = [v4 hk_UUIDWithData:v5];
  MEMORY[0x23EF0E4A0](a2, @"friend_uuid", v6);

  MEMORY[0x23EF0E490](a2, @"type", [*(a1 + 32) type]);
  v7 = [*(a1 + 32) systemFieldsOnlyRecord];
  MEMORY[0x23EF0E480](a2, @"system_fields", v7);

  [*(a1 + 32) owner];

  JUMPOUT(0x23EF0E490);
}

void __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "Error instantiating database competition lists during database retrieval: %{public}@", &v2, 0xCu);
}

+ (void)removeAllCompetitionListsWithProfile:(uint64_t *)a1 error:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "Error removing competitions: %{public}@", &v3, 0xCu);
}

+ (void)_insertCompetitionLists:(uint64_t)a1 profile:(void *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, a2, a3, "Error inserting competition lists %{public}@: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end