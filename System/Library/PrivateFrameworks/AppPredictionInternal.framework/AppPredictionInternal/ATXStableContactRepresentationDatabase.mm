@interface ATXStableContactRepresentationDatabase
- (ATXStableContactRepresentationDatabase)init;
- (BOOL)_runMigrationSteps:(id)steps;
- (BOOL)migrate;
- (id)cnContactId:(id)id;
- (id)deleteAllData;
- (id)stableContactIdentifier:(id)identifier;
- (void)insertCnContactIdToStableContactIdentifierWithCnContactId:(id)id stableContactIdentifier:(id)identifier;
@end

@implementation ATXStableContactRepresentationDatabase

- (ATXStableContactRepresentationDatabase)init
{
  v3.receiver = self;
  v3.super_class = ATXStableContactRepresentationDatabase;
  return [(ATXAbstractVersionedDatabase *)&v3 initWithDefaultPath:@"stableContactRepresentationDB.db"];
}

- (BOOL)migrate
{
  v10[2] = *MEMORY[0x277D85DE8];
  currentSchemaVersion = [(ATXAbstractVersionedDatabase *)self currentSchemaVersion];
  if (currentSchemaVersion == [(ATXStableContactRepresentationDatabase *)self latestVersion])
  {
    return 1;
  }

  if (currentSchemaVersion == 1)
  {
    goto LABEL_5;
  }

  if (currentSchemaVersion)
  {
    return 1;
  }

  v10[0] = @"CREATE TABLE IF NOT EXISTS canonicalContactRepresentation( cnContactId TEXT PRIMARY KEY,   canonicalCnContactId TEXT NOT NULL) WITHOUT ROWID";
  v10[1] = @"CREATE TABLE IF NOT EXISTS contactInfo( canonicalCnContactId TEXT PRIMARY KEY,   firstName TEXT,   lastName TEXT,   email1 TEXT,   email2 TEXT,   email3 TEXT,   phoneNumber1 TEXT,   phoneNumber2 TEXT,   phoneNumber3 TEXT) WITHOUT ROWID";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v5 = [(ATXStableContactRepresentationDatabase *)self _runMigrationSteps:v4];

  if (v5)
  {
LABEL_5:
    v9[0] = @"DROP TABLE IF EXISTS canonicalContactRepresentation";
    v9[1] = @"CREATE TABLE IF NOT EXISTS cnContactIdToStableContactIdentifier( cnContactId TEXT PRIMARY KEY,   stableContactIdentifier TEXT NOT NULL) WITHOUT ROWID";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v7 = [(ATXStableContactRepresentationDatabase *)self _runMigrationSteps:v6];

    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)_runMigrationSteps:(id)steps
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = steps;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [(ATXAbstractVersionedDatabase *)self db];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __61__ATXStableContactRepresentationDatabase__runMigrationSteps___block_invoke;
        v12[3] = &unk_2785986F0;
        v12[4] = v7;
        v12[5] = &v17;
        [v8 prepAndRunQuery:v7 onPrep:0 onRow:0 onError:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  v9 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v9 & 1;
}

uint64_t __61__ATXStableContactRepresentationDatabase__runMigrationSteps___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __61__ATXStableContactRepresentationDatabase__runMigrationSteps___block_invoke_cold_1(a1, v3, v4);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = MEMORY[0x277D42698];

  return *v5;
}

- (void)insertCnContactIdToStableContactIdentifierWithCnContactId:(id)id stableContactIdentifier:(id)identifier
{
  idCopy = id;
  identifierCopy = identifier;
  queue = self->super._queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke;
  v11[3] = &unk_278597828;
  v11[4] = self;
  v12 = idCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = idCopy;
  dispatch_sync_notxn(queue, v11);
}

void __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke_2;
  v6[3] = &unk_278598718;
  v7 = a1[5];
  v8 = a1[6];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke_3;
  v3[3] = &unk_278598740;
  v4 = a1[5];
  v5 = a1[6];
  [v2 prepAndRunQuery:@"INSERT OR IGNORE INTO cnContactIdToStableContactIdentifier VALUES (:cnContactId onPrep::stableContactIdentifier)" onRow:v6 onError:{0, v3}];
}

void __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":cnContactId" toNSString:v3];
  [v4 bindNamedParam:":stableContactIdentifier" toNSString:*(a1 + 40)];
}

uint64_t __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke_3_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)stableContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  queue = self->super._queue;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync_notxn(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT stableContactIdentifier FROM cnContactIdToStableContactIdentifier WHERE cnContactId = :cnContactId" onPrep:v6 onRow:v5 onError:v3];
}

uint64_t __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"stableContactIdentifier"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42690];
}

uint64_t __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke_4_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)cnContactId:(id)id
{
  idCopy = id;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  queue = self->super._queue;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v10 = idCopy;
  v11 = &v12;
  v6 = idCopy;
  dispatch_sync_notxn(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT cnContactId FROM cnContactIdToStableContactIdentifier WHERE stableContactIdentifier = :stableContactIdentifier" onPrep:v6 onRow:v5 onError:v3];
}

uint64_t __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"cnContactId"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42690];
}

uint64_t __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_default(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke_4_cold_1(a1, v3);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)deleteAllData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  queue = self->super._queue;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ATXStableContactRepresentationDatabase_deleteAllData__block_invoke;
  v5[3] = &unk_278598830;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a2;
  dispatch_sync_notxn(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__ATXStableContactRepresentationDatabase_deleteAllData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__ATXStableContactRepresentationDatabase_deleteAllData__block_invoke_2;
  v3[3] = &unk_278598808;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM cnContactIdToStableContactIdentifier" onPrep:0 onRow:0 onError:v3];
}

uint64_t __55__ATXStableContactRepresentationDatabase_deleteAllData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v8 = __atxlog_handle_notification_management(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    __55__ATXStableContactRepresentationDatabase_deleteAllData__block_invoke_2_cold_1(a1);
  }

  v9 = MEMORY[0x277D42698];
  return *v9;
}

void __61__ATXStableContactRepresentationDatabase__runMigrationSteps___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Error running migration query: %@ %@", &v4, 0x16u);
}

void __124__ATXStableContactRepresentationDatabase_insertCnContactIdToStableContactIdentifierWithCnContactId_stableContactIdentifier___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __66__ATXStableContactRepresentationDatabase_stableContactIdentifier___block_invoke_4_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __54__ATXStableContactRepresentationDatabase_cnContactId___block_invoke_4_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __55__ATXStableContactRepresentationDatabase_deleteAllData__block_invoke_2_cold_1(uint64_t a1)
{
  v6 = NSStringFromSelector(*(a1 + 40));
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end