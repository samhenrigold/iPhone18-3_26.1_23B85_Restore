@interface HDAdHocConceptEntity
+ (BOOL)deleteNonIndexedConceptsWithTransaction:(id)transaction internalContentDatabaseManager:(id)manager error:(id *)error;
+ (BOOL)enumerateAdHocConceptWithRawIdentifiers:(id)identifiers options:(unint64_t)options profile:(id)profile error:(id *)error enumerationHandler:(id)handler;
+ (id)_adHocConceptForCodingCollection:(uint64_t)collection options:(void *)options transaction:(uint64_t)transaction error:;
+ (id)_conceptForRow:(uint64_t)row options:;
+ (id)adHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error;
+ (id)adHocConceptForIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error;
+ (id)generateAdHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error;
@end

@implementation HDAdHocConceptEntity

+ (id)adHocConceptForIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__HDAdHocConceptEntity_adHocConceptForIdentifier_options_profile_error___block_invoke;
  v17[3] = &unk_278627E78;
  v19 = &v22;
  selfCopy = self;
  v13 = identifierCopy;
  v18 = v13;
  optionsCopy = options;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __72__HDAdHocConceptEntity_adHocConceptForIdentifier_options_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = objc_opt_self();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__154;
  v25 = __Block_byref_object_dispose__154;
  v26 = 0;
  v10 = [v8 protectedDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke;
  v20[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v20[4] = v9;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_2;
  v18[3] = &unk_278614860;
  v11 = v7;
  v19 = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_3;
  v17[3] = &unk_278627EC8;
  v17[4] = &v21;
  v17[5] = v9;
  v17[6] = v6;
  LOBYTE(v9) = [v10 executeCachedStatementForKey:&_adHocConceptForIdentifier_options_transaction_error__statementKey error:a3 SQLGenerator:v20 bindingHandler:v18 enumerationHandler:v17];

  if (v9)
  {
    v12 = v22[5];
    if (!v12)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:118 format:{@"No adHoc concept found for identifier %@", v11}];
      v12 = v22[5];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)adHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error
{
  collectionCopy = collection;
  profileCopy = profile;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HDAdHocConceptEntity_adHocConceptForCodingCollection_options_profile_error___block_invoke;
  v17[3] = &unk_278627E78;
  v19 = &v22;
  selfCopy = self;
  v13 = collectionCopy;
  v18 = v13;
  optionsCopy = options;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __78__HDAdHocConceptEntity_adHocConceptForCodingCollection_options_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = [(HDAdHocConceptEntity *)a1[6] _adHocConceptForCodingCollection:a1[7] options:a2 transaction:a3 error:?];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(a1[5] + 8) + 40) != 0;
}

+ (id)_adHocConceptForCodingCollection:(uint64_t)collection options:(void *)options transaction:(uint64_t)transaction error:
{
  v8 = a2;
  optionsCopy = options;
  v10 = objc_opt_self();
  v11 = [MEMORY[0x277CCD1F8] adHocCodingForCodingCollection:v8];
  code = [v11 code];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  protectedDatabase = [optionsCopy protectedDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke;
  v21[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v21[4] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke_2;
  v19[3] = &unk_278614860;
  v14 = code;
  v20 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke_3;
  v18[3] = &unk_278627EC8;
  v18[4] = &v22;
  v18[5] = v10;
  v18[6] = collection;
  LOBYTE(collection) = [protectedDatabase executeCachedStatementForKey:&_adHocConceptForCodingCollection_options_transaction_error__statementKey error:transaction SQLGenerator:v21 bindingHandler:v19 enumerationHandler:v18];

  if (collection)
  {
    v15 = v23[5];
    if (!v15)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:transaction code:118 format:{@"No adHoc concept found for code %@", v14}];
      v15 = v23[5];
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

+ (id)generateAdHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error
{
  collectionCopy = collection;
  profileCopy = profile;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HDAdHocConceptEntity_generateAdHocConceptForCodingCollection_options_profile_error___block_invoke;
  v17[3] = &unk_278627E78;
  v19 = &v22;
  selfCopy = self;
  v13 = collectionCopy;
  v18 = v13;
  optionsCopy = options;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __86__HDAdHocConceptEntity_generateAdHocConceptForCodingCollection_options_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = objc_opt_self();
  v10 = MEMORY[0x277CCD1F8];
  v11 = [MEMORY[0x277CCD1D0] inMemoryConceptIdentifier];
  v12 = [v10 synthesizeConceptWithIdentifier:v11 forCodingCollection:v7];

  v13 = v12;
  v14 = v8;
  v15 = objc_opt_self();
  v16 = [v14 protectedDatabase];

  v23 = v13;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke;
  v24[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v24[4] = v15;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke_2;
  v22[3] = &unk_278614860;
  v17 = v13;
  LODWORD(v15) = [v16 executeCachedStatementForKey:&_insertAdHocConcept_transaction_error__statementKey error:a3 SQLGenerator:v24 bindingHandler:v22 enumerationHandler:0];

  v18 = 0;
  if (v15)
  {
    v18 = [(HDAdHocConceptEntity *)v9 _adHocConceptForCodingCollection:v7 options:v6 transaction:v14 error:a3];
  }

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (BOOL)enumerateAdHocConceptWithRawIdentifiers:(id)identifiers options:(unint64_t)options profile:(id)profile error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  v13 = MEMORY[0x277D10B28];
  profileCopy = profile;
  v15 = [v13 containsPredicateWithProperty:@"concept_identifier" values:identifiers];
  database = [profileCopy database];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HDAdHocConceptEntity_enumerateAdHocConceptWithRawIdentifiers_options_profile_error_enumerationHandler___block_invoke;
  v19[3] = &unk_278627EA0;
  v20 = handlerCopy;
  selfCopy = self;
  optionsCopy = options;
  v17 = handlerCopy;
  LOBYTE(error) = [self enumerateProperties:&unk_283CAFBC8 withPredicate:v15 healthDatabase:database error:error enumerationHandler:v19];

  return error;
}

uint64_t __105__HDAdHocConceptEntity_enumerateAdHocConceptWithRawIdentifiers_options_profile_error_enumerationHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[4];
  v7 = [(HDAdHocConceptEntity *)a1[5] _conceptForRow:a4 options:a1[6]];
  v8 = (*(v6 + 16))(v6, v7, a5);

  return v8;
}

+ (id)_conceptForRow:(uint64_t)row options:
{
  objc_opt_self();
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AAC6C90](a2, 1);
  v7 = HDSQLiteColumnAsInt64();
  v8 = MEMORY[0x22AAC6C90](a2, 3);
  v9 = MEMORY[0x22AAC6C90](a2, 4);
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = [objc_alloc(MEMORY[0x277CCD1B8]) initWithType:2 value:v6 version:v7 deleted:0];
  v12 = [objc_alloc(MEMORY[0x277CCD1B8]) initWithType:959 value:v8 version:v7 deleted:0];
  v13 = [v10 initWithObjects:{v11, v12, 0}];

  if (v9)
  {
    v14 = [objc_alloc(MEMORY[0x277CCD1B8]) initWithType:1012 value:v9 version:v7 deleted:0];
    [v13 addObject:v14];
  }

  v15 = objc_alloc(MEMORY[0x277CCD1B0]);
  v16 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:v5];
  v17 = [v15 initWithIdentifier:v16 attributes:v13 relationships:MEMORY[0x277CBEBF8] version:v7 deleted:0 options:row];

  return v17;
}

+ (BOOL)deleteNonIndexedConceptsWithTransaction:(id)transaction internalContentDatabaseManager:(id)manager error:(id *)error
{
  transactionCopy = transaction;
  managerCopy = manager;
  if (objc_opt_respondsToSelector())
  {
    [managerCopy unitTesting_willDeleteNonIndexedAdhocConcepts];
  }

  protectedDatabase = [transactionCopy protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__HDAdHocConceptEntity_deleteNonIndexedConceptsWithTransaction_internalContentDatabaseManager_error___block_invoke;
  v13[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v13[4] = self;
  v11 = [protectedDatabase executeCachedStatementForKey:&deleteNonIndexedConceptsWithTransaction_internalContentDatabaseManager_error__statementKey error:error SQLGenerator:v13 bindingHandler:0 enumerationHandler:0];

  return v11;
}

id __101__HDAdHocConceptEntity_deleteNonIndexedConceptsWithTransaction_internalContentDatabaseManager_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = +[(HDSQLiteSchemaEntity *)HDConceptIndexEntity];
  v5 = [*(a1 + 32) disambiguatedSQLForProperty:@"concept_identifier"];
  v6 = [(HDSQLiteSchemaEntity *)HDConceptIndexEntity disambiguatedSQLForProperty:@"concept_identifier"];
  v7 = [v2 initWithFormat:@"DELETE FROM %@ WHERE NOT EXISTS (SELECT 1 FROM %@ WHERE %@ = %@)", v3, v4, v5, v6];

  return v7;
}

id __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"concept_identifier", @"code", @"version", @"valid_regions", @"display_name", v3, @"concept_identifier"];

  return v4;
}

uint64_t __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) rawIdentifier];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = [(HDAdHocConceptEntity *)a1[5] _conceptForRow:a2 options:a1[6]];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

id __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"concept_identifier", @"code", @"version", @"valid_regions", @"display_name", v3, @"code"];

  return v4;
}

uint64_t __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = [(HDAdHocConceptEntity *)a1[5] _conceptForRow:a2 options:a1[6]];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

id __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [*(a1 + 32) disambiguatedDatabaseTable];
  v5 = [v2 initWithFormat:@"INSERT OR IGNORE INTO %@ (%@, %@, %@, %@, %@, %@) VALUES ((COALESCE((SELECT MAX(%@) + 1 FROM %@), %lld)), ?, ?, ?, ?, ?)", v3, @"concept_identifier", @"code", @"version", @"valid_regions", @"display_name", @"creation_date", @"concept_identifier", v4, 0x1000000000000];

  return v5;
}

uint64_t __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) adHocCode];
  HDSQLiteBindStringToStatement();

  sqlite3_bind_int64(a2, 2, [*(a1 + 32) version]);
  v5 = [*(a1 + 32) firstAttributeForType:959];
  v6 = [v5 stringValue];
  HDSQLiteBindStringToStatement();

  v7 = [*(a1 + 32) preferredName];
  HDSQLiteBindFoundationValueToStatement();

  Current = CFAbsoluteTimeGetCurrent();

  return sqlite3_bind_double(a2, 5, Current);
}

@end