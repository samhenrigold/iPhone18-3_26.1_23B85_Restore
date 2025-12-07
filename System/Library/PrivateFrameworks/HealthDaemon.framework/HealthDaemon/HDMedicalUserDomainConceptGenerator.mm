@interface HDMedicalUserDomainConceptGenerator
+ (BOOL)generateUserDomainConceptForMedicalRecord:(id)record entityPersistentID:(id)d insertionContext:(id)context profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)remapMedicalRecordsIfNeededForUserDomainConcept:(id)concept shouldExcludeExistingConcept:(BOOL)existingConcept profile:(id)profile ontologyTransaction:(id)transaction error:(id *)error;
+ (id)_fetchGroupByConceptAndLoadRelationshipsWith:(void *)with codings:(void *)codings ontologyTransaction:(uint64_t)transaction error:;
+ (id)_fetchUserDomainConceptForMedicalRecord:(void *)record existingUserDomainConcept:(int)concept shouldExcludeExistingUserDomainConcept:(void *)domainConcept profile:(void *)profile ontologyTransaction:(char *)transaction outShouldUpdateNewUserDomainConcept:(uint64_t)userDomainConcept error:;
+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error;
+ (int64_t)resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:(id)coding outAdditionalCodings:(id *)codings outConceptToRefreshWith:(id *)with ontologyTransaction:(id)transaction error:(id *)error;
@end

@implementation HDMedicalUserDomainConceptGenerator

+ (BOOL)generateUserDomainConceptForMedicalRecord:(id)record entityPersistentID:(id)d insertionContext:(id)context profile:(id)profile transaction:(id)transaction error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  if ([objc_opt_class() groupsByUserDomainConcept])
  {
    errorCopy = error;
    v16 = recordCopy;
    v17 = profileCopy;
    v18 = transactionCopy;
    v19 = objc_opt_self();
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__148;
    v51 = __Block_byref_object_dispose__148;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    internalContentDatabaseManager = [v17 internalContentDatabaseManager];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __116__HDMedicalUserDomainConceptGenerator__userDomainConceptForMedicalRecord_profile_transaction_shouldUpdateOut_error___block_invoke;
    v37[3] = &unk_2786276B8;
    v40 = &v47;
    v42 = v19;
    v21 = v16;
    v38 = v21;
    v22 = v17;
    v39 = v22;
    v41 = &v43;
    LOBYTE(v17) = [internalContentDatabaseManager performTransactionWithDatabaseTransaction:v18 error:error transactionHandler:v37];

    if (v17)
    {
      v23 = v48[5];
    }

    else
    {
      v23 = 0;
    }

    v25 = *(v44 + 24);
    v26 = v23;

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);

    if (v26 && (!v25 || [HDUserDomainConceptEntity storeUserDomainConcept:v26 method:2 profile:v22 transaction:v18 error:error]))
    {
      v35 = dCopy;
      v27 = v18;
      v28 = v26;
      objc_opt_self();
      protectedDatabase = [v27 protectedDatabase];
      uUID = [v28 UUID];

      v31 = HDDataEntityPredicateForDataUUID();
      v32 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:protectedDatabase predicate:v31 error:error];

      if (v32)
      {
        v33 = v35;
        v24 = +[HDMedicalUserDomainConceptMappingEntity insertUserDomainConceptID:medicalRecordID:transaction:error:](HDMedicalUserDomainConceptMappingEntity, "insertUserDomainConceptID:medicalRecordID:transaction:error:", [v32 persistentID], objc_msgSend(v35, "integerValue"), v27, errorCopy);
      }

      else
      {
        v24 = 0;
        v33 = v35;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

+ (BOOL)remapMedicalRecordsIfNeededForUserDomainConcept:(id)concept shouldExcludeExistingConcept:(BOOL)existingConcept profile:(id)profile ontologyTransaction:(id)transaction error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  profileCopy = profile;
  transactionCopy = transaction;
  v15 = HDMedicalRecordEntityPredicateForMedicalUserDomainConcept(conceptCopy);
  databaseTransaction = [transactionCopy databaseTransaction];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __150__HDMedicalUserDomainConceptGenerator_remapMedicalRecordsIfNeededForUserDomainConcept_shouldExcludeExistingConcept_profile_ontologyTransaction_error___block_invoke;
  v30[3] = &unk_278627690;
  existingConceptCopy = existingConcept;
  v31 = conceptCopy;
  v32 = profileCopy;
  v33 = transactionCopy;
  selfCopy = self;
  v17 = transactionCopy;
  v18 = profileCopy;
  v19 = conceptCopy;
  v20 = v18;
  v21 = v30;
  v22 = databaseTransaction;
  v23 = v15;
  objc_opt_self();
  v24 = [v22 databaseForEntityClass:objc_opt_class()];

  v25 = [(HDSQLiteEntity *)HDMedicalRecordEntity queryWithDatabase:v24 predicate:v23];

  v39[0] = @"data_type";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __117__HDMedicalUserDomainConceptGenerator__enumerateMedicalRecordSamplesWithPredicate_profile_transaction_error_handler___block_invoke;
  v36[3] = &unk_278618880;
  v37 = v20;
  v38 = v21;
  v27 = v21;
  v28 = v20;
  LOBYTE(error) = [v25 enumeratePersistentIDsAndProperties:v26 error:error enumerationHandler:v36];

  return error;
}

BOOL __150__HDMedicalUserDomainConceptGenerator_remapMedicalRecordsIfNeededForUserDomainConcept_shouldExcludeExistingConcept_profile_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCABB0];
  v8 = a2;
  v9 = [v7 numberWithLongLong:a3];
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = a4;
  v20 = v18;
  v21 = objc_opt_self();
  v60 = 0;
  v22 = [(HDMedicalUserDomainConceptGenerator *)v21 _fetchUserDomainConceptForMedicalRecord:v14 existingUserDomainConcept:v16 shouldExcludeExistingUserDomainConcept:v10 profile:v17 ontologyTransaction:v20 outShouldUpdateNewUserDomainConcept:&v60 error:v19];
  if (v22)
  {
    v59 = v15;
    if (v60 == 1)
    {
      v23 = [v20 databaseTransaction];
      v24 = [HDUserDomainConceptEntity storeUserDomainConcept:v22 method:2 profile:v17 transaction:v23 error:v19];

      if (!v24)
      {
        v28 = 0;
        goto LABEL_15;
      }
    }

    v25 = [v16 UUID];
    v26 = [v22 UUID];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      v28 = 1;
LABEL_15:
      v15 = v59;
      goto LABEL_20;
    }

    v49 = v19;
    v51 = v17;
    _HKInitializeLogging();
    v29 = HKLogHealthOntology();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);

    v31 = v59;
    if (v30)
    {
      v32 = HKLogHealthOntology();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v57 = [v14 UUID];
        v53 = [v57 hk_shortRepresentation];
        v55 = [v16 UUID];
        v33 = [v55 hk_shortRepresentation];
        v34 = [v22 UUID];
        v35 = [v34 hk_shortRepresentation];
        *buf = 138544130;
        v62 = v21;
        v63 = 2114;
        v64 = v53;
        v65 = 2114;
        v66 = v33;
        v67 = 2114;
        v68 = v35;
        _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_INFO, "%{public}@: Move UDC mapping for record %{public}@, %{public}@ -> %{public}@", buf, 0x2Au);

        v31 = v59;
      }
    }

    v36 = [v20 databaseTransaction];
    v54 = v31;
    v58 = v22;
    v37 = v36;
    v38 = v16;
    objc_opt_self();
    v56 = v37;
    v39 = [v37 protectedDatabase];
    v40 = [v38 UUID];

    v41 = HDDataEntityPredicateForDataUUID();
    v42 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:v39 predicate:v41 error:v50];

    v52 = v42;
    if (v42)
    {
      v43 = [v56 protectedDatabase];
      v44 = [v58 UUID];
      v45 = HDDataEntityPredicateForDataUUID();
      v46 = [(HDSQLiteEntity *)HDMedicalUserDomainConceptEntity anyInDatabase:v43 predicate:v45 error:v50];

      if (v46)
      {
        v47 = v56;
        v28 = +[HDMedicalUserDomainConceptMappingEntity updateMappingFromRecordWithPersistentID:withMapToUDCWithPersistentID:toMapToUDCWithPersistentID:transaction:error:](HDMedicalUserDomainConceptMappingEntity, "updateMappingFromRecordWithPersistentID:withMapToUDCWithPersistentID:toMapToUDCWithPersistentID:transaction:error:", [v54 longLongValue], objc_msgSend(v52, "persistentID"), objc_msgSend(v46, "persistentID"), v56, v50);
        v15 = v59;
        v17 = v51;
      }

      else
      {
        v28 = 0;
        v15 = v59;
        v17 = v51;
        v47 = v56;
      }
    }

    else
    {
      v28 = 0;
      v15 = v59;
      v17 = v51;
      v47 = v56;
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_20:

  return v28;
}

+ (id)propertyCollectionWithOntologyConcept:(id)concept ontologyTransaction:(id)transaction error:(id *)error
{
  errorCopy = error;
  v37 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  transactionCopy = transaction;
  internalContentDatabaseManager = [transactionCopy internalContentDatabaseManager];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = conceptCopy;
  obj = [conceptCopy attributes];
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = 150004;
        if ([v12 type] != 61813)
        {
          if ([v12 type] == 61839)
          {
            v13 = 150005;
          }

          else
          {
            if ([v12 type] != 989)
            {
              continue;
            }

            v13 = 150009;
          }
        }

        v14 = v7;
        v15 = v12;
        isDeleted = [v15 isDeleted];
        v17 = MEMORY[0x277CCDAF8];
        if (isDeleted)
        {
          v18 = v14;
          v19 = [v17 nullPropertyWithType:v13 version:{objc_msgSend(v15, "version")}];
          [v18 addObject:v19];
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:v13 version:objc_msgSend(v15 BOOLValue:{"version"), objc_msgSend(v15, "BOOLValue")}];
          [v14 addObject:v19];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  v20 = [HDOntologyLocalizedStringProvider localizedOntologyPreferredNamesForConcept:v29 withUserDomainConceptPropertyType:160012];
  [v7 addObjectsFromArray:v20];
  v21 = objc_opt_class();
  identifier = [v29 identifier];
  v31 = 0;
  LODWORD(v21) = [v21 localizedEducationContentForConceptWithIdentifier:identifier ontologyTransaction:transactionCopy localizedEducationContentOut:&v31 error:errorCopy];
  v23 = v31;

  v24 = 0;
  if (v21)
  {
    [v7 hk_addNonNilObject:v23];
    v24 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v7];
  }

  return v24;
}

+ (int64_t)resolveOntologyConceptForRefreshFromUserDomainConceptWithoutOntologyCoding:(id)coding outAdditionalCodings:(id *)codings outConceptToRefreshWith:(id *)with ontologyTransaction:(id)transaction error:(id *)error
{
  codingCopy = coding;
  transactionCopy = transaction;
  adHocConceptSystem = [MEMORY[0x277CCD5D0] adHocConceptSystem];
  codingCollection = [codingCopy codingCollection];
  v15 = [codingCollection codingsExcludingCodingSystem:adHocConceptSystem];

  if ([v15 count])
  {
    withCopy = with;
    errorCopy = error;
    codingsCopy = codings;
    v16 = codingCopy;
    v17 = transactionCopy;
    v18 = v15;
    v19 = objc_opt_self();
    categoryTypes = [v16 categoryTypes];
    firstObject = [categoryTypes firstObject];

    v35 = adHocConceptSystem;
    v36 = transactionCopy;
    if (firstObject)
    {
      longLongValue = [firstObject longLongValue];
    }

    else
    {
      longLongValue = 8;
    }

    countryCode = [v16 countryCode];
    v25 = HKCurrentLocaleCountryCodeIfUnknown();

    v26 = [[HDConceptResolutionConfiguration alloc] initWithCountryCode:v25 recordCategoryType:longLongValue options:0];
    v27 = [(HDMedicalUserDomainConceptGenerator *)v19 _fetchGroupByConceptAndLoadRelationshipsWith:v26 codings:v18 ontologyTransaction:v17 error:errorCopy];

    if (v27)
    {
      isAdHoc = [v27 isAdHoc];
      adHocConceptSystem = v35;
      if (codingsCopy && isAdHoc)
      {
        v29 = v18;
        *codingsCopy = v18;
      }

      transactionCopy = v36;
      if (withCopy)
      {
        v30 = v27;
        *withCopy = v27;
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
      adHocConceptSystem = v35;
      transactionCopy = v36;
    }
  }

  else
  {
    v23 = 2;
  }

  return v23;
}

BOOL __116__HDMedicalUserDomainConceptGenerator__userDomainConceptForMedicalRecord_profile_transaction_shouldUpdateOut_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = [(HDMedicalUserDomainConceptGenerator *)a1[8] _fetchUserDomainConceptForMedicalRecord:0 existingUserDomainConcept:0 shouldExcludeExistingUserDomainConcept:a1[5] profile:a2 ontologyTransaction:(*(a1[7] + 8) + 24) outShouldUpdateNewUserDomainConcept:a3 error:?];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(a1[6] + 8) + 40) != 0;
}

+ (id)_fetchUserDomainConceptForMedicalRecord:(void *)record existingUserDomainConcept:(int)concept shouldExcludeExistingUserDomainConcept:(void *)domainConcept profile:(void *)profile ontologyTransaction:(char *)transaction outShouldUpdateNewUserDomainConcept:(uint64_t)userDomainConcept error:
{
  v114 = *MEMORY[0x277D85DE8];
  v13 = a2;
  recordCopy = record;
  domainConceptCopy = domainConcept;
  profileCopy = profile;
  v15 = objc_opt_self();
  v16 = profileCopy;
  v17 = v13;
  v18 = objc_opt_self();
  v19 = [HDConceptResolutionConfiguration alloc];
  country = [v17 country];
  v21 = HKCurrentLocaleCountryCodeIfUnknown();
  v22 = -[HDConceptResolutionConfiguration initWithCountryCode:recordCategoryType:options:](v19, "initWithCountryCode:recordCategoryType:options:", v21, [v17 recordCategoryType], 0);

  v23 = MEMORY[0x277CCD5C8];
  adHocConceptSystem = [MEMORY[0x277CCD5D0] adHocConceptSystem];
  medicalRecordCodings = [v17 medicalRecordCodings];

  v26 = [v23 stripCodingsMatchingSystem:adHocConceptSystem fromCodings:medicalRecordCodings];

  v105 = [(HDMedicalUserDomainConceptGenerator *)v18 _fetchGroupByConceptAndLoadRelationshipsWith:v22 codings:v26 ontologyTransaction:v16 error:userDomainConcept];

  if (!v105)
  {
    v29 = 0;
    goto LABEL_60;
  }

  if (!recordCopy || (concept & 1) != 0)
  {
LABEL_29:
    if (concept)
    {
      v42 = recordCopy;
    }

    else
    {
      v42 = 0;
    }

    v93 = v105;
    v99 = v42;
    v101 = v17;
    v92 = v16;
    v43 = domainConceptCopy;
    v89 = objc_opt_self();
    coding = [v93 coding];
    country2 = [v101 country];
    v90 = HKCurrentLocaleCountryCodeIfUnknown();

    v45 = objc_alloc(MEMORY[0x277CBEB18]);
    v46 = HDUserDomainConceptEntityPredicateForMedicalCoding(coding);
    v107[0] = v46;
    v47 = HDMedicalUserDomainConceptEntityPredicateForCountryCode(v90);
    v107[1] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:2];
    v96 = [v45 initWithArray:v48];

    if (v99)
    {
      uUID = [v99 UUID];
      v50 = HDUserDomainConceptEntityPredicateForConceptUUID(uUID, 0);
      [v96 addObject:v50];
    }

    v51 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v96];
    databaseTransaction = [v92 databaseTransaction];
    v103 = v51;
    v53 = v43;
    v54 = databaseTransaction;
    objc_opt_self();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v111 = __Block_byref_object_copy__148;
    v112 = __Block_byref_object_dispose__148;
    v113 = 0;
    v55 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:@"creation_date" ascending:1];
    userDomainConceptManager = [v53 userDomainConceptManager];
    v109 = v55;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __130__HDMedicalUserDomainConceptGenerator__oldestUserDomainConceptForPredicate_profile_transaction_medicalUserDomainConceptOut_error___block_invoke;
    v108[3] = &unk_2786276E0;
    v108[4] = buf;
    v58 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v103 limit:1 orderingTerms:v57 error:userDomainConcept enumerationHandler:v108];

    if (v58)
    {
      v59 = *(*&buf[8] + 40);
      v60 = v59;
    }

    else
    {
      v59 = 0;
    }

    _Block_object_dispose(buf, 8);
    v61 = v59;

    if (!v58)
    {
      v29 = 0;
LABEL_59:

      goto LABEL_60;
    }

    v88 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v101, "recordCategoryType")}];
    if (v61)
    {
      categoryTypes = [v61 categoryTypes];
      v63 = [categoryTypes containsObject:v88];

      if (v63)
      {
        v64 = 0;
LABEL_55:
        if (transaction)
        {
          *transaction = v64;
        }

        v61 = v61;
        goto LABEL_58;
      }

      v73 = [v61 medicalConceptByAddingCategoryType:{objc_msgSend(v101, "recordCategoryType")}];

      _HKInitializeLogging();
      v80 = HKLogHealthOntology();
      v81 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);

      if (!v81)
      {
LABEL_54:
        v64 = 1;
        v61 = v73;
        goto LABEL_55;
      }

      v65 = HKLogHealthOntology();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        uUID2 = [v73 UUID];
        hk_shortRepresentation = [uUID2 hk_shortRepresentation];
        uUID3 = [v101 UUID];
        hk_shortRepresentation2 = [uUID3 hk_shortRepresentation];
        *buf = 138543874;
        *&buf[4] = v89;
        *&buf[12] = 2114;
        *&buf[14] = hk_shortRepresentation;
        *&buf[22] = 2114;
        v111 = hk_shortRepresentation2;
        _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_INFO, "%{public}@: Updated UDC %{public}@ for medical record %{public}@ with new category type", buf, 0x20u);
      }
    }

    else
    {
      v65 = [v89 propertyCollectionWithOntologyConcept:v93 ontologyTransaction:v92 error:userDomainConcept];
      if (!v65)
      {
        v61 = 0;
LABEL_58:

        v29 = v61;
        goto LABEL_59;
      }

      v87 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{coding, 0}];
      if ([v93 isAdHoc])
      {
        v66 = MEMORY[0x277CCD5C8];
        adHocConceptSystem2 = [MEMORY[0x277CCD5D0] adHocConceptSystem];
        medicalRecordCodings2 = [v101 medicalRecordCodings];
        v69 = [v66 stripCodingsMatchingSystem:adHocConceptSystem2 fromCodings:medicalRecordCodings2];

        [v87 addObjectsFromArray:v69];
      }

      v70 = objc_alloc(MEMORY[0x277CCD610]);
      v108[0] = v88;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:1];
      v72 = [objc_alloc(MEMORY[0x277CCD5C8]) initWithCodings:v87];
      v73 = [v70 initWithCategoryTypes:v71 countryCode:v90 codingCollection:v72 propertyCollection:v65];

      _HKInitializeLogging();
      v74 = HKLogHealthOntology();
      LODWORD(v72) = os_log_type_enabled(v74, OS_LOG_TYPE_INFO);

      if (v72)
      {
        v75 = HKLogHealthOntology();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          uUID4 = [v73 UUID];
          hk_shortRepresentation3 = [uUID4 hk_shortRepresentation];
          uUID5 = [v101 UUID];
          hk_shortRepresentation4 = [uUID5 hk_shortRepresentation];
          *buf = 138543874;
          *&buf[4] = v89;
          *&buf[12] = 2114;
          *&buf[14] = hk_shortRepresentation3;
          *&buf[22] = 2114;
          v111 = hk_shortRepresentation4;
          _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_INFO, "%{public}@: Created a new UDC %{public}@ for medical record %{public}@", buf, 0x20u);
        }
      }
    }

    goto LABEL_54;
  }

  firstOntologyCoding = [recordCopy firstOntologyCoding];
  firstAdhocCoding = [recordCopy firstAdhocCoding];
  coding2 = [v105 coding];
  if (!(firstOntologyCoding | firstAdhocCoding))
  {
    _HKInitializeLogging();
    v28 = HKLogHealthOntology();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = recordCopy;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@ was not able to find either an ontology coding or an adhoc coding on User Domain Concept %{public}@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (firstOntologyCoding)
  {
    code = [firstOntologyCoding code];
    code2 = [coding2 code];
    v31 = code;
    if (code != code2)
    {
      code3 = [coding2 code];
      if (code3)
      {
        code4 = [firstOntologyCoding code];
        code5 = [coding2 code];
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!firstAdhocCoding)
  {
LABEL_24:
    _HKInitializeLogging();
    v36 = HKLogHealthOntology();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);

    if (v37)
    {
      v38 = HKLogHealthOntology();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        uUID6 = [v17 UUID];
        hk_shortRepresentation5 = [uUID6 hk_shortRepresentation];
        uUID7 = [recordCopy UUID];
        hk_shortRepresentation6 = [uUID7 hk_shortRepresentation];
        *buf = 138543874;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = hk_shortRepresentation5;
        *&buf[22] = 2114;
        v111 = hk_shortRepresentation6;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_INFO, "%{public}@: Medical record %{public}@ no longer maps to UDC %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_29;
  }

  code = [firstAdhocCoding code];
  code2 = [coding2 code];
  v31 = code;
  if (code == code2)
  {
    goto LABEL_19;
  }

  code3 = [coding2 code];
  if (!code3)
  {
LABEL_23:

    goto LABEL_24;
  }

  code4 = [firstAdhocCoding code];
  code5 = [coding2 code];
LABEL_17:
  v35 = code5;
  v95 = [code4 isEqual:code5];

  if (!v95)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (transaction)
  {
    *transaction = 0;
  }

  v29 = recordCopy;

LABEL_60:

  return v29;
}

+ (id)_fetchGroupByConceptAndLoadRelationshipsWith:(void *)with codings:(void *)codings ontologyTransaction:(uint64_t)transaction error:
{
  codingsCopy = codings;
  withCopy = with;
  v10 = a2;
  objc_opt_self();
  internalContentDatabaseManager = [codingsCopy internalContentDatabaseManager];
  v12 = [MEMORY[0x277CCD5C8] collectionWithCodings:withCopy];

  v13 = [internalContentDatabaseManager conceptForCodingCollection:v12 configuration:v10 error:transaction];

  identifier = [v13 identifier];

  if (identifier)
  {
    internalContentDatabaseManager2 = [codingsCopy internalContentDatabaseManager];
    v16 = [internalContentDatabaseManager2 conceptForIdentifier:identifier options:5 error:transaction];

    if (v16)
    {
      groupByConcept = [v16 groupByConcept];
    }

    else
    {
      groupByConcept = 0;
    }
  }

  else
  {
    groupByConcept = 0;
  }

  return groupByConcept;
}

uint64_t __117__HDMedicalUserDomainConceptGenerator__enumerateMedicalRecordSamplesWithPredicate_profile_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = HDSQLiteColumnAsInt64();
  if (_HKValidDataTypeCode())
  {
    v9 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v8];
    v10 = [objc_msgSend(v9 "dataObjectClass")];

    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v16 = @"SkipApplyingConceptIndex";
    v17[0] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v10 objectWithID:v11 encodingOptions:v12 profile:*(a1 + 32) error:a5];

    if (v13)
    {
      v14 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:{@"Type code %ld is not valid", v8}];
    return 0;
  }

  return v14;
}

@end