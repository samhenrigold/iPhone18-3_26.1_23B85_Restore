@interface HDOntologyShardRegistryEntity
+ (BOOL)enumerateEntriesWithPredicate:(id)predicate orderingTerms:(id)terms database:(id)database error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertEntry:(id)entry database:(id)database error:(id *)error;
+ (id)nextAvailableSlotInAllowedRange:(_NSRange)range predicate:(id)predicate database:(id)database error:(id *)error;
+ (id)uniquedColumns;
- (HDOntologyShardRegistryEntity)init;
@end

@implementation HDOntologyShardRegistryEntity

- (HDOntologyShardRegistryEntity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)insertEntry:(id)entry database:(id)database error:(id *)error
{
  entryCopy = entry;
  databaseCopy = database;
  if (([databaseCopy isWriter] & 1) == 0)
  {
    [HDOntologyShardRegistryEntity insertEntry:a2 database:self error:?];
  }

  objc_opt_self();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HDOntologyShardRegistryEntity_insertEntry_database_error___block_invoke;
  v14[3] = &unk_2796B9DF8;
  v15 = entryCopy;
  v11 = entryCopy;
  v12 = [self insertOrReplaceEntity:1 database:databaseCopy properties:&unk_286374910 error:error bindingHandler:v14];

  return v12 != 0;
}

void __60__HDOntologyShardRegistryEntity_insertEntry_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x253077AE0](a2, @"identifier", v4);

  v5 = [*(a1 + 32) schemaType];
  MEMORY[0x253077AE0](a2, @"schema_type", v5);

  MEMORY[0x253077AD0](a2, @"schema_version", [*(a1 + 32) schemaVersion]);
  MEMORY[0x253077AD0](a2, @"settings", [*(a1 + 32) settings]);
  MEMORY[0x253077AD0](a2, @"slot", [*(a1 + 32) slot]);
  MEMORY[0x253077AD0](a2, @"desired_state", [*(a1 + 32) desiredState]);
  v6 = [*(a1 + 32) desiredStateDate];
  MEMORY[0x253077AA0](a2, @"desired_state_date", v6);

  MEMORY[0x253077AD0](a2, @"current_version", [*(a1 + 32) currentVersion]);
  v7 = [*(a1 + 32) currentVersionDate];
  MEMORY[0x253077AA0](a2, @"current_version_date", v7);

  v8 = [*(a1 + 32) currentRegion];
  MEMORY[0x253077AE0](a2, @"current_region", v8);

  v9 = [*(a1 + 32) currentRegionDate];
  MEMORY[0x253077AA0](a2, @"current_region_date", v9);

  v10 = [*(a1 + 32) currentLocale];
  MEMORY[0x253077AE0](a2, @"current_locale", v10);

  v11 = [*(a1 + 32) currentLocaleDate];
  MEMORY[0x253077AA0](a2, @"current_locale_date", v11);

  MEMORY[0x253077AD0](a2, @"available_version", [*(a1 + 32) availableVersion]);
  v12 = [*(a1 + 32) availableVersionDate];
  MEMORY[0x253077AA0](a2, @"available_version_date", v12);

  v13 = [*(a1 + 32) availableRegion];
  MEMORY[0x253077AE0](a2, @"available_region", v13);

  v14 = [*(a1 + 32) availableRegionDate];
  MEMORY[0x253077AA0](a2, @"available_region_date", v14);

  v15 = [*(a1 + 32) availableLocale];
  MEMORY[0x253077AE0](a2, @"available_locale", v15);

  v16 = [*(a1 + 32) availableLocaleDate];
  MEMORY[0x253077AA0](a2, @"available_locale_date", v16);

  v17 = [*(a1 + 32) availableURL];
  v18 = [v17 absoluteString];
  MEMORY[0x253077AE0](a2, @"available_url", v18);

  v19 = [*(a1 + 32) availableURLDate];
  MEMORY[0x253077AA0](a2, @"available_url_date", v19);

  v20 = [*(a1 + 32) availableChecksum];
  MEMORY[0x253077AE0](a2, @"available_checksum", v20);

  v21 = [*(a1 + 32) availableChecksumDate];
  MEMORY[0x253077AA0](a2, @"available_checksum_date", v21);

  MEMORY[0x253077AD0](a2, @"available_size", [*(a1 + 32) availableSize]);
  v22 = [*(a1 + 32) availableSizeDate];
  MEMORY[0x253077AA0](a2, @"available_size_date", v22);

  MEMORY[0x253077AD0](a2, @"available_state", [*(a1 + 32) availableState]);
  v23 = [*(a1 + 32) availableStateDate];
  MEMORY[0x253077AA0](a2, @"available_state_date", v23);
}

+ (BOOL)enumerateEntriesWithPredicate:(id)predicate orderingTerms:(id)terms database:(id)database error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  v12 = [(HDSQLiteEntity *)HDOntologyShardRegistryEntity queryWithDatabase:database predicate:predicate limit:0 orderingTerms:terms groupBy:0];
  objc_opt_self();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__HDOntologyShardRegistryEntity_enumerateEntriesWithPredicate_orderingTerms_database_error_enumerationHandler___block_invoke;
  v15[3] = &unk_2796B9E20;
  v16 = handlerCopy;
  v13 = handlerCopy;
  LOBYTE(error) = [v12 enumeratePersistentIDsAndProperties:&unk_286374910 error:error enumerationHandler:v15];

  return error;
}

uint64_t __111__HDOntologyShardRegistryEntity_enumerateEntriesWithPredicate_orderingTerms_database_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HDSQLiteColumnWithNameAsString();
  v30 = v4;
  if (v4)
  {
    v37 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  }

  else
  {
    v37 = 0;
  }

  v28 = objc_alloc(MEMORY[0x277CCD760]);
  v36 = HDSQLiteColumnWithNameAsString();
  v27 = HDSQLiteColumnWithNameAsString();
  v26 = HDSQLiteColumnWithNameAsInt64();
  v25 = HDSQLiteColumnWithNameAsInt64();
  v24 = HDSQLiteColumnWithNameAsInt64();
  v23 = HDSQLiteColumnWithNameAsInt64();
  v35 = HDSQLiteColumnWithNameAsDate();
  v22 = HDSQLiteColumnWithNameAsInt64();
  v34 = HDSQLiteColumnWithNameAsDate();
  v21 = HDSQLiteColumnWithNameAsString();
  v20 = HDSQLiteColumnWithNameAsDate();
  v33 = HDSQLiteColumnWithNameAsString();
  v19 = HDSQLiteColumnWithNameAsDate();
  v18 = HDSQLiteColumnWithNameAsInt64();
  v32 = HDSQLiteColumnWithNameAsDate();
  v16 = HDSQLiteColumnWithNameAsString();
  v17 = HDSQLiteColumnWithNameAsDate();
  v15 = HDSQLiteColumnWithNameAsString();
  v14 = HDSQLiteColumnWithNameAsDate();
  v5 = HDSQLiteColumnWithNameAsDate();
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsDate();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = HDSQLiteColumnWithNameAsDate();
  v29 = [v28 initWithIdentifier:v36 schemaType:v27 schemaVersion:v26 settings:v25 slot:v24 desiredState:v23 desiredStateDate:v35 currentVersion:v22 currentVersionDate:v34 currentRegion:v21 currentRegionDate:v20 currentLocale:v33 currentLocaleDate:v19 availableVersion:v18 availableVersionDate:v32 availableRegion:v16 availableRegionDate:v17 availableLocale:v15 availableLocaleDate:v14 availableURL:v37 availableURLDate:v5 availableChecksum:v6 availableChecksumDate:v7 availableSize:v8 availableSizeDate:v9 availableState:v10 availableStateDate:v11];

  v12 = (*(*(a1 + 32) + 16))();
  return v12;
}

+ (id)nextAvailableSlotInAllowedRange:(_NSRange)range predicate:(id)predicate database:(id)database error:(id *)error
{
  length = range.length;
  location = range.location;
  v33[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  databaseCopy = database;
  v13 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v13 setEntityClass:self];
  [v13 setPredicate:predicateCopy];
  v33[0] = @"slot";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v15 = [v13 selectSQLForProperties:v14];

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ SELECT MIN(value) FROM generate_series WHERE value NOT IN (%@)", @"WITH RECURSIVE generate_series(value) AS (SELECT ? UNION ALL SELECT value+1 FROM generate_series WHERE value+1<=?)", v15];
  v17 = length + location - 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke;
  v23[3] = &unk_2796B9E48;
  v25 = location;
  v26 = v17;
  v18 = v13;
  v24 = v18;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke_2;
  v22[3] = &unk_2796B90A8;
  v22[4] = &v27;
  if ([databaseCopy executeSQL:v16 error:error bindingHandler:v23 enumerationHandler:v22])
  {
    v19 = v28[5];
    if (v19)
    {
      v20 = v19;
      goto LABEL_6;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:118 format:{@"No slot is available in range (%ld, %ld) matching predicate %@", location, v17, predicateCopy}];
  }

  v20 = 0;
LABEL_6:

  _Block_object_dispose(&v27, 8);

  return v20;
}

uint64_t __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v5 = 3;
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  return [*(a1 + 32) bindToSelectStatement:a2 bindingIndex:&v5];
}

uint64_t __90__HDOntologyShardRegistryEntity_nextAvailableSlotInAllowedRange_predicate_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x253077B10](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (id)uniquedColumns
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"identifier";
  v4[1] = @"schema_type";
  v4[2] = @"schema_version";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

+ (void)insertEntry:(uint64_t)a1 database:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOntologyShardRegistryEntity.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"database.isWriter"}];
}

@end