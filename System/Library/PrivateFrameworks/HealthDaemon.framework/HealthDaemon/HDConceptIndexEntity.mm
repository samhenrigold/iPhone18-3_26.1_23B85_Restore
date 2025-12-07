@interface HDConceptIndexEntity
+ (BOOL)enumerateConceptIndexEntriesWithPredicate:(id)predicate profile:(id)profile error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertConceptIndexEntries:(id)entries profile:(id)profile error:(id *)error;
+ (BOOL)removeAllConceptIndexEntriesWithProfile:(id)profile error:(id *)error;
+ (id)conceptIndexEntriesForSampleUUID:(id)d type:(unint64_t)type profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)indices;
+ (id)joinClausesForProperty:(id)property;
+ (id)numberOfIndexedConceptsWithProfile:(id)profile error:(id *)error;
+ (id)unitTesting_allConceptIndexEntriesWithProfile:(id)profile error:(id *)error;
@end

@implementation HDConceptIndexEntity

+ (id)indices
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v13 = @"object_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v5 = [v2 initWithEntity:v3 name:@"objects" columns:v4];
  v14[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D10B40]);
  v7 = objc_opt_class();
  v12[0] = @"concept_identifier";
  v12[1] = @"key_path";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v6 initWithEntity:v7 name:@"concept_identifier_key_paths" columns:v8];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  return v10;
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"object_id";
  v2 = +[HDDataEntity defaultForeignKey];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"uuid"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v8 = [v6 innerJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:objc_opt_class() as:0 localReference:@"object_id" targetKey:@"data_id"];
    v9 = [v5 setWithObject:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___HDConceptIndexEntity;
    v9 = objc_msgSendSuper2(&v11, sel_joinClausesForProperty_, propertyCopy);
  }

  return v9;
}

+ (BOOL)insertConceptIndexEntries:(id)entries profile:(id)profile error:(id *)error
{
  entriesCopy = entries;
  profileCopy = profile;
  v11 = profileCopy;
  if (!entriesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntity.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"conceptIndexEntries"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntity.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"profile"}];

    goto LABEL_3;
  }

  if (!profileCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  database = [v11 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__HDConceptIndexEntity_insertConceptIndexEntries_profile_error___block_invoke;
  v18[3] = &unk_278619348;
  v19 = entriesCopy;
  selfCopy = self;
  v13 = entriesCopy;
  v14 = [self performWriteTransactionWithHealthDatabase:database error:error block:v18];

  return v14;
}

uint64_t __64__HDConceptIndexEntity_insertConceptIndexEntries_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36[7] = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v24 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v24)
  {
    v23 = *v28;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = [v26 protectedDatabase];
        v7 = v5;
        v8 = v6;
        v9 = objc_opt_self();
        v36[0] = @"object_id";
        v36[1] = @"concept_identifier";
        v36[2] = @"version";
        v36[3] = @"key_path";
        v36[4] = @"compound_index";
        v36[5] = @"type";
        v36[6] = @"ontology_version";
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:7];
        v11 = [v7 sampleUUID];
        v12 = HDDataEntityPredicateForDataUUID();
        v34 = 0;
        v13 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v8 predicate:v12 error:&v34];
        v14 = v34;

        if (v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14 == 0;
        }

        if (!v15)
        {
          if (a3)
          {
            v20 = v14;
            *a3 = v14;
          }

          else
          {
            _HKLogDroppedError();
          }

LABEL_20:
          v19 = 0;
          goto LABEL_21;
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __64__HDConceptIndexEntity__insertConceptIndexEntry_database_error___block_invoke;
        v31[3] = &unk_278613DE8;
        v16 = v13;
        v32 = v16;
        v17 = v7;
        v33 = v17;
        v18 = [v9 insertOrReplaceEntity:1 database:v8 properties:v10 error:a3 bindingHandler:v31];

        if (!v18)
        {
          goto LABEL_20;
        }
      }

      v19 = 1;
      v24 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 1;
  }

LABEL_21:

  return v19;
}

+ (BOOL)removeAllConceptIndexEntriesWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  if (!profileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntity.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
  }

  database = [profileCopy database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDConceptIndexEntity_removeAllConceptIndexEntriesWithProfile_error___block_invoke;
  v12[3] = &__block_descriptor_40_e35_B24__0__HDDatabaseTransaction_8__16l;
  v12[4] = self;
  v9 = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return v9;
}

uint64_t __70__HDConceptIndexEntity_removeAllConceptIndexEntriesWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [v4 protectedDatabase];

  v7 = [v5 queryWithDatabase:v6 predicate:0];

  v8 = [v7 deleteAllEntitiesWithError:a3];
  return v8;
}

+ (id)conceptIndexEntriesForSampleUUID:(id)d type:(unint64_t)type profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v13 = profileCopy;
  if (dCopy)
  {
    if (profileCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntity.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"sampleUUID"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntity.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"profile"}];

LABEL_3:
  v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:dCopy];
  v15 = MEMORY[0x277D10B18];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v17 = [v15 predicateWithProperty:@"type" equalToValue:v16];

  v18 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v14 otherPredicate:v17];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HDConceptIndexEntity_conceptIndexEntriesForSampleUUID_type_profile_error___block_invoke;
  v26[3] = &unk_27861C490;
  v27 = v19;
  v20 = v19;
  if ([self enumerateConceptIndexEntriesWithPredicate:v18 profile:v13 error:error enumerationHandler:v26])
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

+ (BOOL)enumerateConceptIndexEntriesWithPredicate:(id)predicate profile:(id)profile error:(id *)error enumerationHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__HDConceptIndexEntity_enumerateConceptIndexEntriesWithPredicate_profile_error_enumerationHandler___block_invoke;
  v16[3] = &unk_27861B6E8;
  v18 = handlerCopy;
  selfCopy = self;
  v17 = predicateCopy;
  v13 = handlerCopy;
  v14 = predicateCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __99__HDConceptIndexEntity_enumerateConceptIndexEntriesWithPredicate_profile_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = v5;
  v9 = objc_opt_self();
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:sel__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler_ object:v9 file:@"HDConceptIndexEntity.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:sel__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler_ object:v9 file:@"HDConceptIndexEntity.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = objc_opt_class();
  v11 = [v7 protectedDatabase];

  v12 = [v10 queryWithDatabase:v11 predicate:v8];

  objc_opt_self();
  v19 = @"uuid";
  v20 = @"concept_identifier";
  v21 = @"version";
  v22 = @"key_path";
  v23 = @"compound_index";
  v24 = @"type";
  v25 = @"ontology_version";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:7];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __93__HDConceptIndexEntity__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler___block_invoke;
  v22 = &unk_278616A78;
  v23 = v6;
  v14 = v6;
  v15 = [v12 enumeratePersistentIDsAndProperties:v13 error:a3 enumerationHandler:&v19];

  return v15;
}

+ (id)numberOfIndexedConceptsWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__63;
  v16 = __Block_byref_object_dispose__63;
  v17 = 0;
  database = [profileCopy database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke;
  v11[3] = &unk_27861C1A0;
  v11[4] = &v12;
  v11[5] = self;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v11];

  if (error)
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_2;
  v9[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v9[4] = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_3;
  v8[3] = &unk_278614620;
  v8[4] = *(a1 + 32);
  v6 = [v5 executeCachedStatementForKey:&HDConceptIndexEntityPropertyOntologyVersion_block_invoke_statementKey error:a3 SQLGenerator:v9 bindingHandler:0 enumerationHandler:v8];

  return v6;
}

id __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"SELECT COUNT(DISTINCT %@) FROM %@", @"concept_identifier", v3];

  return v4;
}

uint64_t __65__HDConceptIndexEntity_numberOfIndexedConceptsWithProfile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (id)unitTesting_allConceptIndexEntriesWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  if (!profileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntity.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HDConceptIndexEntity_unitTesting_allConceptIndexEntriesWithProfile_error___block_invoke;
  v14[3] = &unk_27861C490;
  v15 = v8;
  v9 = v8;
  if ([self enumerateConceptIndexEntriesWithPredicate:0 profile:profileCopy error:error enumerationHandler:v14])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

void __64__HDConceptIndexEntity__insertConceptIndexEntry_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"object_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6B90](a2, @"concept_identifier", [*(a1 + 40) conceptIdentifier]);
  MEMORY[0x22AAC6B90](a2, @"version", [*(a1 + 40) conceptVersion]);
  v4 = [*(a1 + 40) keyPath];
  MEMORY[0x22AAC6BD0](a2, @"key_path", v4);

  MEMORY[0x22AAC6B90](a2, @"compound_index", [*(a1 + 40) compoundIndex]);
  MEMORY[0x22AAC6B90](a2, @"type", [*(a1 + 40) type]);
  v6 = [*(a1 + 40) ontologyVersion];
  v5 = [v6 string];
  MEMORY[0x22AAC6BD0](a2, @"ontology_version", v5);
}

uint64_t __93__HDConceptIndexEntity__enumerateConceptIndexEntriesWithPredicate_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsString();
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = HDSQLiteColumnWithNameAsInt64();
  v12 = objc_alloc(MEMORY[0x277CCD768]);
  v13 = HDSQLiteColumnWithNameAsString();
  v14 = [v12 initWithString:v13];

  v15 = [[HDConceptIndexEntry alloc] initWithSampleUUID:v6 conceptIdentifier:v7 conceptVersion:v8 keyPath:v9 compoundIndex:v10 type:v11 ontologyVersion:v14];
  v16 = (*(*(a1 + 32) + 16))();
  v17 = 0;
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    v19 = v17;
    v20 = v19;
    if (v19)
    {
      if (a5)
      {
        v21 = v19;
        *a5 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v16;
}

@end