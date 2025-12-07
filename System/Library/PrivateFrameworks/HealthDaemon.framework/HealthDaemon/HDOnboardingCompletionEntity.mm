@interface HDOnboardingCompletionEntity
+ (BOOL)deleteAllCompletionsForFeatureIdentifier:(id)identifier syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateAllOnboardingCompletionsWithTransaction:(id)transaction predicate:(id)predicate error:(id *)error enumerationHandler:(id)handler;
+ (id)_insertEntityWithUUID:(void *)d featureIdentifier:(uint64_t)identifier version:(void *)version completionDate:(void *)date countryCode:(uint64_t)code countryCodeProvenance:(void *)provenance modificationDate:(char)modificationDate deleted:(uint64_t)self0 syncProvenance:(uint64_t)self1 syncIdentity:(void *)self2 transaction:(uint64_t)self3 error:;
+ (id)_onboardingCompletionsForHighestVersion:(void *)version featureIdentifier:(void *)identifier transaction:(uint64_t)transaction error:;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertCodableOnboardingCompletions:(id)completions syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)insertOnboardingCompletion:(id)completion syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error;
- (id)onboardingCompletionWithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDOnboardingCompletionEntity

+ (id)_onboardingCompletionsForHighestVersion:(void *)version featureIdentifier:(void *)identifier transaction:(uint64_t)transaction error:
{
  v36[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  versionCopy = version;
  objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"feature_identifier" value:versionCopy comparisonType:1];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __108__HDOnboardingCompletionEntity__onboardingCompletionsForHighestVersion_featureIdentifier_transaction_error___block_invoke;
  v31[3] = &unk_27861F3F8;
  v28 = v9;
  v32 = v28;
  v11 = identifierCopy;
  v12 = v10;
  v13 = v31;
  v14 = @"version";
  v15 = objc_opt_self();
  v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" value:MEMORY[0x277CBEC28] comparisonType:1];
  if (v12)
  {
    v17 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v16 otherPredicate:v12];

    v16 = v17;
  }

  v18 = [v11 databaseForEntityClass:{v15, v28}];
  v19 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"version" entityClass:v15 ascending:a2 ^ 1u];

  v36[0] = v19;
  v20 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:v15 ascending:a2 ^ 1u];
  v36[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v22 = [v15 queryWithDatabase:v18 predicate:v16 limit:0 orderingTerms:v21 groupBy:0];

  v23 = HDOnboardingCompletionEntityAllProperties();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __150__HDOnboardingCompletionEntity__enumerateAllOnboardingCompletionModelsWithTransaction_predicate_orderedByProperty_ascending_error_enumerationHandler___block_invoke;
  v33[3] = &unk_278618B48;
  v34 = v13;
  v35 = v15;
  v24 = v13;
  v25 = [v22 enumerateProperties:v23 error:transaction enumerationHandler:v33];

  v26 = 0;
  if (v25)
  {
    v26 = objc_msgSend_copy(v29);
  }

  return v26;
}

uint64_t __108__HDOnboardingCompletionEntity__onboardingCompletionsForHighestVersion_featureIdentifier_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastObject];
  if (v4 && (v5 = [v3 version], v5 != objc_msgSend(v4, "version")))
  {
    v6 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v3];
    v6 = 1;
  }

  return v6;
}

uint64_t __150__HDOnboardingCompletionEntity__enumerateAllOnboardingCompletionModelsWithTransaction_predicate_orderedByProperty_ascending_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v4 = _OnboardingCompletionFromRow(a3, &v10);
  v5 = v10;
  if (v4)
  {
    v6 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpectedly unable to load onboarding completion: %{public}@", buf, 0x16u);
    }

    v6 = 1;
  }

  return v6;
}

+ (BOOL)enumerateAllOnboardingCompletionsWithTransaction:(id)transaction predicate:(id)predicate error:(id *)error enumerationHandler:(id)handler
{
  v23[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  predicateCopy = predicate;
  v12 = [transaction databaseForEntityClass:self];
  v13 = *MEMORY[0x277D10A40];
  v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:self ascending:1];
  v23[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v16 = [self queryWithDatabase:v12 predicate:predicateCopy limit:0 orderingTerms:v15 groupBy:0];

  v17 = HDOnboardingCompletionEntityAllProperties();
  v18 = [v17 arrayByAddingObject:v13];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __116__HDOnboardingCompletionEntity_enumerateAllOnboardingCompletionsWithTransaction_predicate_error_enumerationHandler___block_invoke;
  v21[3] = &unk_2786145A8;
  v22 = handlerCopy;
  v19 = handlerCopy;
  LOBYTE(error) = [v16 enumerateProperties:v18 error:error enumerationHandler:v21];

  return error;
}

uint64_t __116__HDOnboardingCompletionEntity_enumerateAllOnboardingCompletionsWithTransaction_predicate_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HDSQLiteColumnWithNameAsBoolean();
  HDSQLiteColumnWithNameAsInt64();
  v7 = _OnboardingCompletionFromRow(a3, a4);
  v8 = (*(*(a1 + 32) + 16))();

  return v8;
}

+ (id)insertOnboardingCompletion:(id)completion syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error
{
  v55[4] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  transactionCopy = transaction;
  v12 = completionCopy;
  v13 = transactionCopy;
  v14 = objc_opt_self();
  countryCode = [v12 countryCode];
  if (countryCode && (v16 = countryCode, v17 = [v12 countryCodeProvenance], v16, !v17))
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Country code provenance must be set when saving a country code"];
  }

  else
  {
    identityCopy = identity;
    selfCopy = self;
    errorCopy = error;
    v53 = v12;
    v18 = v12;
    [v18 featureIdentifier];
    v19 = v52 = v13;
    version = [v18 version];
    countryCode2 = [v18 countryCode];
    countryCodeProvenance = [v18 countryCodeProvenance];

    v23 = MEMORY[0x277D10B20];
    v24 = MEMORY[0x277D10B18];
    v25 = countryCode2;
    v26 = [v24 predicateWithProperty:@"feature_identifier" value:v19 comparisonType:1];
    v55[0] = v26;
    v27 = MEMORY[0x277D10B18];
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    v29 = [v27 predicateWithProperty:@"version" value:v28 comparisonType:1];

    v55[1] = v29;
    v30 = [MEMORY[0x277D10B18] predicateWithProperty:@"country_code" value:v25 comparisonType:1];

    v55[2] = v30;
    v31 = MEMORY[0x277D10B18];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:countryCodeProvenance];
    v33 = [v31 predicateWithProperty:@"country_code_provenance" value:v32 comparisonType:1];

    v55[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
    v35 = [v23 predicateMatchingAllPredicates:v34];

    v13 = v52;
    v36 = [v52 databaseForEntityClass:v14];
    v54 = 0;
    v37 = [v14 anyInDatabase:v36 predicate:v35 error:&v54];
    v38 = v54;

    if (v37 || !v38)
    {
      if (!v37)
      {

        uUID = [v18 UUID];
        featureIdentifier = [v18 featureIdentifier];
        version2 = [v18 version];
        completionDate = [v18 completionDate];
        countryCode3 = [v18 countryCode];
        countryCodeProvenance2 = [v18 countryCodeProvenance];
        date = [MEMORY[0x277CBEAA8] date];
        v47 = [(HDOnboardingCompletionEntity *)selfCopy _insertEntityWithUUID:uUID featureIdentifier:featureIdentifier version:version2 completionDate:completionDate countryCode:countryCode3 countryCodeProvenance:countryCodeProvenance2 modificationDate:date deleted:0 syncProvenance:0 syncIdentity:identityCopy transaction:v52 error:errorCopy];

        v12 = v53;
        goto LABEL_14;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:errorCopy code:115 description:{@"The user has already completed onboarding for this feature, version, and country"}];
    }

    else if (errorCopy)
    {
      v39 = v38;
      *errorCopy = v38;
    }

    else
    {
      _HKLogDroppedError();
    }

    v12 = v53;
  }

  v47 = 0;
LABEL_14:

  return v47;
}

+ (id)_insertEntityWithUUID:(void *)d featureIdentifier:(uint64_t)identifier version:(void *)version completionDate:(void *)date countryCode:(uint64_t)code countryCodeProvenance:(void *)provenance modificationDate:(char)modificationDate deleted:(uint64_t)self0 syncProvenance:(uint64_t)self1 syncIdentity:(void *)self2 transaction:(uint64_t)self3 error:
{
  v17 = a2;
  dCopy = d;
  versionCopy = version;
  dateCopy = date;
  provenanceCopy = provenance;
  identityCopy = identity;
  v23 = objc_opt_self();
  v24 = [identityCopy databaseForEntityClass:v23];

  v25 = HDOnboardingCompletionEntityAllProperties();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __200__HDOnboardingCompletionEntity__insertEntityWithUUID_featureIdentifier_version_completionDate_countryCode_countryCodeProvenance_modificationDate_deleted_syncProvenance_syncIdentity_transaction_error___block_invoke;
  v35[3] = &unk_27861F420;
  v36 = v17;
  v37 = dCopy;
  v38 = versionCopy;
  v39 = dateCopy;
  v40 = provenanceCopy;
  identifierCopy = identifier;
  modificationDateCopy = modificationDate;
  codeCopy = code;
  deletedCopy = deleted;
  syncProvenanceCopy = syncProvenance;
  v26 = provenanceCopy;
  v27 = dateCopy;
  v28 = versionCopy;
  v29 = dCopy;
  v30 = v17;
  v31 = [v23 insertOrReplaceEntity:1 database:v24 properties:v25 error:transaction bindingHandler:v35];

  return v31;
}

+ (id)insertCodableOnboardingCompletions:(id)completions syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v94 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  profileCopy = profile;
  transactionCopy = transaction;
  v66 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(completionsCopy, "count")}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v12 = completionsCopy;
  v13 = [v12 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v86;
    v70 = transactionCopy;
    v71 = profileCopy;
    v67 = v12;
    v69 = *v86;
LABEL_3:
    v16 = 0;
    v76 = v14;
    while (1)
    {
      if (*v86 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v85 + 1) + 8 * v16);
      v84 = 0;
      v18 = [v17 isValidWithError:&v84];
      v19 = v84;
      if ((v18 & 1) == 0)
      {
        _HKInitializeLogging();
        v32 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy = self;
          v91 = 2114;
          v92 = v19;
          _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Skipping invalid codable: %{public}@", buf, 0x16u);
        }

        goto LABEL_34;
      }

      syncIdentityManager = [profileCopy syncIdentityManager];
      legacySyncIdentity = [syncIdentityManager legacySyncIdentity];

      if ([v17 hasSyncIdentity])
      {
        syncIdentity = [v17 syncIdentity];
        v83 = v19;
        v23 = [HDSyncIdentity syncIdentityWithCodable:syncIdentity error:&v83];
        v24 = v83;
        v25 = v19;
        v19 = v24;

        if (!v23)
        {
          _HKInitializeLogging();
          v59 = *MEMORY[0x277CCC2A0];
          v14 = v76;
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            selfCopy = v19;
            _os_log_fault_impl(&dword_228986000, v59, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v23 = 0;
          goto LABEL_32;
        }

        v26 = transactionCopy;
        syncIdentityManager2 = [profileCopy syncIdentityManager];
        v82 = v19;
        v28 = [syncIdentityManager2 concreteIdentityForIdentity:v23 shouldCreate:1 transaction:v26 error:&v82];
        v29 = v82;

        if (!v28)
        {
          _HKInitializeLogging();
          v60 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            selfCopy = v29;
            _os_log_fault_impl(&dword_228986000, v60, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          legacySyncIdentity = 0;
          v19 = v29;
          v15 = v69;
          transactionCopy = v70;
          v14 = v76;
          profileCopy = v71;
          goto LABEL_32;
        }

        legacySyncIdentity = v28;
        v30 = v69;
        transactionCopy = v70;
        v19 = v29;
        v31 = v71;
      }

      else
      {
        v30 = v15;
        v31 = profileCopy;
      }

      v80 = legacySyncIdentity;
      entity = [legacySyncIdentity entity];
      persistentID = [entity persistentID];
      v33 = v17;
      v34 = transactionCopy;
      v35 = objc_opt_self();
      LODWORD(v36) = [v33 deleted];
      decodedUUID = [v33 decodedUUID];
      v38 = decodedUUID;
      v81 = v19;
      if (decodedUUID)
      {
        v75 = decodedUUID;
        v73 = v34;
        if (v36)
        {
          v39 = v34;
          v40 = v36;
          v41 = v38;
          v42 = objc_opt_self();
          v43 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" value:v41 comparisonType:1];

          v36 = [v39 databaseForEntityClass:v42];
          errorCopy2 = error;
          v45 = [v42 anyInDatabase:v36 predicate:v43 error:error];

          LOBYTE(v36) = v40;
          v46 = [v45 onboardingCompletionWithTransaction:v39 error:error];

          featureIdentifier = [v46 featureIdentifier];
          v47 = featureIdentifier;

          featureIdentifier3 = &stru_283BF39C8;
        }

        else
        {
          featureIdentifier2 = [v33 featureIdentifier];
          featureIdentifier = objc_msgSend_copy(featureIdentifier2);
          v51 = featureIdentifier;

          featureIdentifier3 = [v33 featureIdentifier];
          errorCopy2 = error;
        }

        v52 = v35;
        version = [v33 version];
        decodedCompletionDate = [v33 decodedCompletionDate];
        countryCode = [v33 countryCode];
        countryCodeProvenance = [v33 countryCodeProvenance];
        decodedModificationDate = [v33 decodedModificationDate];
        v64 = errorCopy2;
        v34 = v73;
        v58 = [(HDOnboardingCompletionEntity *)v52 _insertEntityWithUUID:v75 featureIdentifier:featureIdentifier3 version:version completionDate:decodedCompletionDate countryCode:countryCode countryCodeProvenance:countryCodeProvenance modificationDate:decodedModificationDate deleted:v36 syncProvenance:provenance syncIdentity:persistentID transaction:v73 error:v64];

        if ((v36 & 1) == 0)
        {
        }

        v49 = v58 != 0;

        transactionCopy = v70;
        profileCopy = v71;
        v15 = v69;
        v14 = v76;
        v38 = v75;
        v48 = featureIdentifier;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Cannot insert codable without UUID"];
        v48 = 0;
        v49 = 0;
        profileCopy = v31;
        v15 = v30;
        v14 = v76;
      }

      v23 = v48;
      if (!v49)
      {

        v12 = v67;
        v62 = 0;
        v61 = v66;
        goto LABEL_38;
      }

      v12 = v67;
      legacySyncIdentity = v80;
      if (v23)
      {
        [v66 addObject:v23];
        v19 = v81;
LABEL_32:

        goto LABEL_33;
      }

      v19 = v81;
LABEL_33:

LABEL_34:
      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v85 objects:v93 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v61 = v66;
  v62 = objc_msgSend_copy(v66);
LABEL_38:

  return v62;
}

void __200__HDOnboardingCompletionEntity__insertEntityWithUUID_featureIdentifier_version_completionDate_countryCode_countryCodeProvenance_modificationDate_deleted_syncProvenance_syncIdentity_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6BD0](a2, @"feature_identifier", *(a1 + 40));
  MEMORY[0x22AAC6B90](a2, @"version", *(a1 + 72));
  MEMORY[0x22AAC6B50](a2, @"completion_date", *(a1 + 48));
  MEMORY[0x22AAC6BD0](a2, @"country_code", *(a1 + 56));
  MEMORY[0x22AAC6B90](a2, @"country_code_provenance", *(a1 + 80));
  MEMORY[0x22AAC6B50](a2, @"mod_date", *(a1 + 64));
  MEMORY[0x22AAC6B30](a2, @"deleted", *(a1 + 104));
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(a1 + 88));

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)deleteAllCompletionsForFeatureIdentifier:(id)identifier syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"feature_identifier" equalToValue:identifier];
  v11 = [transactionCopy databaseForEntityClass:self];
  v12 = [self queryWithDatabase:v11 predicate:v10];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = @"uuid";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __104__HDOnboardingCompletionEntity_deleteAllCompletionsForFeatureIdentifier_syncIdentity_transaction_error___block_invoke;
  v37[3] = &unk_27861E4C0;
  v15 = v13;
  v38 = v15;
  errorCopy = error;
  LODWORD(v13) = [v12 enumerateProperties:v14 error:error enumerationHandler:v37];

  if (v13)
  {
    v16 = v15;
    v34 = transactionCopy;
    objc_opt_self();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    v18 = 1;
    if (v17)
    {
      v19 = v17;
      v30 = v12;
      v31 = v10;
      v32 = transactionCopy;
      v20 = *v40;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          v23 = v34;
          v24 = v22;
          v25 = objc_opt_self();
          v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
          date = [MEMORY[0x277CBEAA8] date];
          v28 = [(HDOnboardingCompletionEntity *)v25 _insertEntityWithUUID:v24 featureIdentifier:&stru_283BF39C8 version:0 completionDate:v26 countryCode:0 countryCodeProvenance:0 modificationDate:date deleted:1 syncProvenance:0 syncIdentity:identity transaction:v23 error:errorCopy];

          if (!v28)
          {
            v18 = 0;
            goto LABEL_13;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v18 = 1;
LABEL_13:
      v10 = v31;
      transactionCopy = v32;
      v12 = v30;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __104__HDOnboardingCompletionEntity_deleteAllCompletionsForFeatureIdentifier_syncIdentity_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsUUID();
  [*(a1 + 32) addObject:v4];

  return 1;
}

- (id)onboardingCompletionWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__80;
  v17 = __Block_byref_object_dispose__80;
  v18 = 0;
  v7 = HDOnboardingCompletionEntityAllProperties();
  v8 = [transactionCopy databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDOnboardingCompletionEntity_onboardingCompletionWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v12];

  if (error)
  {
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __74__HDOnboardingCompletionEntity_onboardingCompletionWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _OnboardingCompletionFromRow(a3, 0);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[HDOnboardingCompletionEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end