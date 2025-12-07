@interface HDMedicalUserDomainConceptEntity
+ (BOOL)insertConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)updateConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)willDeleteConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)_recursiveSQLForMappedUDCs;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)collection propertyCollection:(id)propertyCollection;
+ (id)predicateMatchingSemanticDuplicatesOf:(id)of;
+ (id)predicateMatchingSemanticIdentifier:(id)identifier;
+ (id)privateDataEntities;
+ (id)privateSubEntities;
+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error;
+ (void)_bindRecursiveMappedUDCStatement:(_DWORD *)statement bindingIndex:;
@end

@implementation HDMedicalUserDomainConceptEntity

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"udc_id";
  v2 = +[HDUserDomainConceptEntity defaultForeignKey];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)privateSubEntities
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDMedicalUserDomainConceptEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)privateDataEntities
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)insertConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  protectedDatabase = [transaction protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__HDMedicalUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = conceptCopy;
  dCopy = d;
  v11 = conceptCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&insertConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey_0 error:error SQLGenerator:&__block_literal_global_168 bindingHandler:v13 enumerationHandler:0];

  return error;
}

void __106__HDMedicalUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v3 = [*(a1 + 32) countryCode];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)updateConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  protectedDatabase = [transaction protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__HDMedicalUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = conceptCopy;
  dCopy = d;
  v11 = conceptCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&updateConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey_0 error:error SQLGenerator:&__block_literal_global_328_0 bindingHandler:v13 enumerationHandler:0];

  return error;
}

uint64_t __106__HDMedicalUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) countryCode];
  HDSQLiteBindStringToStatement();

  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (BOOL)willDeleteConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  profileCopy = profile;
  transactionCopy = transaction;
  daemon = [profileCopy daemon];
  behavior = [daemon behavior];
  supportsOntology = [behavior supportsOntology];

  if (supportsOntology)
  {
    internalContentDatabaseManager = [profileCopy internalContentDatabaseManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __133__HDMedicalUserDomainConceptEntity_willDeleteConcreteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error___block_invoke;
    v20[3] = &unk_278625CC8;
    v21 = conceptCopy;
    v22 = profileCopy;
    v18 = [internalContentDatabaseManager performTransactionWithDatabaseTransaction:transactionCopy error:error transactionHandler:v20];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"country_code"])
  {
    v5 = MEMORY[0x277CCACA8];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v7 = [v5 stringWithFormat:@"%@.%@", disambiguatedDatabaseTable, @"country_code"];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___HDMedicalUserDomainConceptEntity;
    v7 = objc_msgSendSuper2(&v9, sel_disambiguatedSQLForProperty_, propertyCopy);
  }

  return v7;
}

+ (id)predicateMatchingSemanticIdentifier:(id)identifier
{
  v18[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  uUID = [identifierCopy UUID];

  if (uUID)
  {
    uUID2 = [identifierCopy UUID];
    v6 = HDUserDomainConceptEntityPredicateForConceptUUID(uUID2, 1);
  }

  else
  {
    countryCode = [identifierCopy countryCode];

    v8 = MEMORY[0x277D10B20];
    uUID2 = [identifierCopy typeIdentifier];
    v9 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier(uUID2);
    v10 = v9;
    if (countryCode)
    {
      v17[0] = v9;
      medicalCoding = [identifierCopy medicalCoding];
      v12 = HDUserDomainConceptEntityPredicateForMedicalCoding(medicalCoding);
      v17[1] = v12;
      countryCode2 = [identifierCopy countryCode];
      v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"country_code" equalToValue:countryCode2];
      v17[2] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
      v6 = [v8 predicateMatchingAllPredicates:v15];
    }

    else
    {
      v18[0] = v9;
      medicalCoding = [identifierCopy medicalCoding];
      v12 = HDUserDomainConceptEntityPredicateForMedicalCoding(medicalCoding);
      v18[1] = v12;
      countryCode2 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"country_code"];
      v18[2] = countryCode2;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
      v6 = [v8 predicateMatchingAllPredicates:v14];
    }
  }

  return v6;
}

+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)collection propertyCollection:(id)propertyCollection
{
  v5 = MEMORY[0x277CCD610];
  propertyCollectionCopy = propertyCollection;
  collectionCopy = collection;
  v8 = [v5 alloc];
  v9 = [v8 initWithCategoryTypes:MEMORY[0x277CBEBF8] countryCode:0 codingCollection:collectionCopy propertyCollection:propertyCollectionCopy];

  return v9;
}

+ (id)predicateMatchingSemanticDuplicatesOf:(id)of
{
  v24[4] = *MEMORY[0x277D85DE8];
  ofCopy = of;
  firstOntologyCoding = [ofCopy firstOntologyCoding];
  firstAdhocCoding = [ofCopy firstAdhocCoding];
  v6 = firstOntologyCoding;
  if ((firstOntologyCoding || (v6 = firstAdhocCoding) != 0) && (HDUserDomainConceptEntityPredicateForMedicalCoding(v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v20 = MEMORY[0x277D10B20];
    v23 = firstAdhocCoding;
    v9 = MEMORY[0x277D10B18];
    uUID = [ofCopy UUID];
    v21 = [v9 predicateWithProperty:@"uuid" notEqualToValue:uUID];
    v24[0] = v21;
    v10 = MEMORY[0x277D10B18];
    v11 = MEMORY[0x277CCABB0];
    identifier = [ofCopy identifier];
    v13 = [v11 numberWithInteger:{objc_msgSend(identifier, "code")}];
    v14 = [v10 predicateWithProperty:@"type" equalToValue:v13];
    v24[1] = v14;
    v24[2] = v8;
    countryCode = [ofCopy countryCode];
    v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"country_code" equalToValue:countryCode];
    v24[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    falsePredicate = [v20 predicateMatchingAllPredicates:v17];

    firstAdhocCoding = v23;
  }

  else
  {
    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  return falsePredicate;
}

+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  profileCopy = profile;
  dateCopy = date;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__134;
  v28 = __Block_byref_object_dispose__134;
  v29 = 0;
  database = [profileCopy database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HDMedicalUserDomainConceptEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v18[3] = &unk_278625CF0;
  v21 = &v24;
  selfCopy = self;
  v13 = profileCopy;
  v19 = v13;
  v14 = dateCopy;
  v20 = v14;
  limitCopy = limit;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v18];

  if (error)
  {
    v15 = v25[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v24, 8);

  return v16;
}

BOOL __73__HDMedicalUserDomainConceptEntity_pruneWithProfile_nowDate_limit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = v6;
  objc_opt_self();
  v11 = v9;
  v12 = objc_opt_self();
  v13 = [v11 protectedDatabase];
  v44 = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke;
  v47 = &__block_descriptor_40_e15___NSString_8__0l;
  v48 = v12;
  v56 = MEMORY[0x277D85DD0];
  v57 = 3221225472;
  v58 = __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2;
  v59 = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v60 = v12;
  v61 = v7;
  LOBYTE(v12) = [v13 executeCachedStatementForKey:&_clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error__statementKey error:a3 SQLGenerator:&v44 bindingHandler:&v56 enumerationHandler:0];

  if ((v12 & 1) == 0)
  {

    v16 = 0;
    goto LABEL_7;
  }

  v14 = MEMORY[0x277CCABB0];
  v15 = [v11 protectedDatabase];
  v16 = [v14 numberWithInt:{objc_msgSend(v15, "getChangesCount")}];

  if (!v16)
  {
LABEL_7:
    v25 = 0;
    goto LABEL_8;
  }

  v17 = [v16 integerValue];
  if (v7 > v17)
  {
    v42 = v7 - v17;
    v39 = v8;
    v40 = v8;
    v18 = v11;
    v19 = v10;
    v20 = objc_opt_self();
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v21 = [v18 protectedDatabase];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke;
    v51[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v51[4] = v20;
    v56 = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_2;
    v59 = &unk_278619A20;
    v61 = v20;
    v38 = v19;
    v60 = v38;
    v62 = v42;
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_3;
    v47 = &unk_278625D18;
    v50 = &v52;
    v22 = v40;
    v48 = v22;
    v23 = v18;
    v49 = v23;
    LODWORD(v18) = [v21 executeCachedStatementForKey:&_tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error__statementKey error:a3 SQLGenerator:v51 bindingHandler:&v56 enumerationHandler:&v44];

    if (v18)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:v53[3]];
    }

    else
    {
      v24 = 0;
    }

    _Block_object_dispose(&v52, 8);
    if (v24)
    {
      v29 = [v24 integerValue];
      if (v42 > v29)
      {
        v41 = v29;
        v43 = v42 - v29;
        v30 = v23;
        v31 = v38;
        v32 = objc_opt_self();
        v33 = [v30 protectedDatabase];
        v44 = MEMORY[0x277D85DD0];
        v45 = 3221225472;
        v46 = __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke;
        v47 = &__block_descriptor_40_e15___NSString_8__0l;
        v48 = v32;
        v56 = MEMORY[0x277D85DD0];
        v57 = 3221225472;
        v58 = __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2;
        v59 = &unk_278619A20;
        v34 = v31;
        v60 = v34;
        v61 = v32;
        v62 = v43;
        LODWORD(v32) = [v33 executeCachedStatementForKey:&_markNewUnmappedUDCsWithTransaction_nowDate_limit_error__statementKey error:a3 SQLGenerator:&v44 bindingHandler:&v56 enumerationHandler:0];

        v35 = 0;
        if (v32)
        {
          v36 = MEMORY[0x277CCABB0];
          v37 = [v30 protectedDatabase];
          v35 = [v36 numberWithInt:{objc_msgSend(v37, "getChangesCount")}];
        }

        if (v35)
        {
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v35, "integerValue") + v41}];
        }

        else
        {
          v25 = 0;
        }

        v8 = v39;

        goto LABEL_22;
      }

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v8 = v39;
LABEL_22:

    goto LABEL_8;
  }

  v16 = v16;
  v25 = v16;
LABEL_8:

  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

id __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptPropertyEntity];
  v4 = +[(HDMedicalUserDomainConceptEntity *)*(a1];
  v5 = [v2 initWithFormat:@"DELETE FROM %@ WHERE (%@ IN (%@) SELECT %@ FROM %@) AND %@ = ? LIMIT ?"], v3, @"udc_id", v4, @"udc_id", @"recursive_mapped_concepts", @"property_type");

  return v5;
}

+ (id)_recursiveSQLForMappedUDCs
{
  objc_opt_self();
  v1 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptEntity];
  v2 = +[(HDSQLiteSchemaEntity *)HDMedicalUserDomainConceptMappingEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptLinkEntity];
  v4 = MEMORY[0x277CBEA60];
  v5 = HKWeakConceptLinkTypes();
  v6 = [v4 hk_arrayWithCount:objc_msgSend(v5 generator:{"count"), &__block_literal_global_359}];
  v7 = [v6 componentsJoinedByString:{@", "}];

  v8 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"WITH RECURSIVE %@(%@, %@) AS (SELECT %@, %@ FROM %@ INNER JOIN %@ USING(%@) UNION SELECT %@.%@, %@.%@ FROM %@ INNER JOIN %@ USING (%@) INNER JOIN %@ ON %@.%@ = %@ WHERE %@ NOT IN (%@) UNION SELECT %@.%@, %@.%@ FROM %@ INNER JOIN %@ ON %@ = %@.%@ INNER JOIN %@ ON %@.%@ = %@.%@ WHERE %@ NOT IN (%@)"), @"recursive_mapped_concepts", @"udc_id", @"uuid", @"udc_id", @"uuid", v1, v2, @"udc_id", v1, @"udc_id", v1, @"uuid", v1, v3, @"udc_id", @"recursive_mapped_concepts", @"recursive_mapped_concepts", @"uuid", @"target_uuid", @"link_type", v7, v1, @"udc_id", v1, @"uuid", v1, v3, @"target_uuid", v1, @"uuid", @"recursive_mapped_concepts", @"recursive_mapped_concepts", @"udc_id", v3, @"udc_id", @"link_type", v7;

  return v8;
}

uint64_t __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v7 = 1;
  [(HDMedicalUserDomainConceptEntity *)*(a1 + 32) _bindRecursiveMappedUDCStatement:a2 bindingIndex:&v7];
  v4 = v7;
  sqlite3_bind_int64(a2, v7, 1);
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, v4 + 1, v5);
}

+ (void)_bindRecursiveMappedUDCStatement:(_DWORD *)statement bindingIndex:
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v4 = 1;
  do
  {
    v5 = v4;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = HKWeakConceptLinkTypes();
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          HDSQLiteBindFoundationValueToStatement();
          ++*statement;
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    v4 = 0;
  }

  while ((v5 & 1) != 0);
}

id __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke(uint64_t a1)
{
  v2 = +[(HDSQLiteSchemaEntity *)HDMedicalUserDomainConceptEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptPropertyEntity];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptEntity];
  v6 = +[(HDMedicalUserDomainConceptEntity *)*(a1];
  v7 = [v4 initWithFormat:@"SELECT %@, %@ FROM %@ INNER JOIN %@ USING(%@) INNER JOIN %@ USING(%@) WHERE NOT EXISTS (%@) SELECT 1 FROM %@ WHERE %@.%@ = %@.%@ AND property_type = ? AND date_value <= ? LIMIT ?"], @"uuid", @"creation_date", v2, v5, @"udc_id", v3, @"udc_id", v6, @"recursive_mapped_concepts", @"recursive_mapped_concepts", @"udc_id", v2, @"udc_id");

  return v7;
}

uint64_t __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = 1;
  [(HDMedicalUserDomainConceptEntity *)*(a1 + 40) _bindRecursiveMappedUDCStatement:a2 bindingIndex:&v8];
  v4 = v8;
  sqlite3_bind_int64(a2, v8, 1);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v4 + 1, v5);
  v6 = *(a1 + 48);

  return sqlite3_bind_int64(a2, v4 + 2, v6);
}

BOOL __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  ++*(*(a1[6] + 8) + 24);
  v6 = MEMORY[0x22AAC6CA0](a2, 0);
  MEMORY[0x22AAC6C50](a2, 1);
  v7 = [MEMORY[0x277CCDAF0] deletedUserDomainConceptWithUUID:v6 creationTimestamp:?];
  v8 = [HDUserDomainConceptEntity storeUserDomainConcept:v7 method:3 profile:a1[4] transaction:a1[5] error:a3]!= 0;

  return v8;
}

id __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke(uint64_t a1)
{
  v2 = +[(HDSQLiteSchemaEntity *)HDMedicalUserDomainConceptEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptPropertyEntity];
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = +[(HDMedicalUserDomainConceptEntity *)*(a1];
  v5 = [v7 initWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@, %@, %@, %@) SELECT %@, ?, ?, ?, ?, ?, ? FROM %@ WHERE (NOT EXISTS (%@) SELECT 1 FROM %@ WHERE %@.%@ = %@.%@) AND NOT EXISTS (SELECT 1 FROM %@ WHERE(%@.%@ = %@.%@ AND %@ = ?)) LIMIT ?"], v3, @"udc_id", @"category", @"property_type", @"version", @"timestamp", @"value_type", @"date_value", @"udc_id", v2, v4, @"recursive_mapped_concepts", v2, @"udc_id", @"recursive_mapped_concepts", @"udc_id", v3, v2, @"udc_id", v3, @"udc_id", @"property_type");

  return v5;
}

uint64_t __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v5 = v4;
  sqlite3_bind_int64(a2, 1, 2);
  sqlite3_bind_int64(a2, 2, 1);
  sqlite3_bind_int64(a2, 3, 0);
  sqlite3_bind_double(a2, 4, v5);
  sqlite3_bind_int64(a2, 5, 5);
  v9 = 7;
  sqlite3_bind_double(a2, 6, v5 + 2592000.0);
  [(HDMedicalUserDomainConceptEntity *)*(a1 + 40) _bindRecursiveMappedUDCStatement:a2 bindingIndex:&v9];
  v6 = v9;
  sqlite3_bind_int64(a2, v9, 1);
  v7 = *(a1 + 48);

  return sqlite3_bind_int64(a2, v6 + 1, v7);
}

@end