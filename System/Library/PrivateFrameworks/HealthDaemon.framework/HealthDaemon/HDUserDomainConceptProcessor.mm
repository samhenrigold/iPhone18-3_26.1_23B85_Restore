@interface HDUserDomainConceptProcessor
+ (BOOL)processUserDomainConceptsAfter:(int64_t)after transactionLimit:(int64_t)limit outAnchor:(int64_t *)anchor outProcessedConceptsCount:(int64_t *)count profile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDUserDomainConceptProcessor)init;
@end

@implementation HDUserDomainConceptProcessor

- (HDUserDomainConceptProcessor)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)processUserDomainConceptsAfter:(int64_t)after transactionLimit:(int64_t)limit outAnchor:(int64_t *)anchor outProcessedConceptsCount:(int64_t *)count profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"sync_anchor" entityClass:objc_opt_class() ascending:1];
  v40[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  afterCopy = after;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:after];
  v19 = HDUserDomainConceptEntityPredicateForConceptsWithAnchorAfter(v18);

  userDomainConceptManager = [profileCopy userDomainConceptManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __142__HDUserDomainConceptProcessor_processUserDomainConceptsAfter_transactionLimit_outAnchor_outProcessedConceptsCount_profile_transaction_error___block_invoke;
  v26[3] = &unk_27861AFA0;
  v21 = profileCopy;
  v27 = v21;
  selfCopy = self;
  v22 = transactionCopy;
  v28 = v22;
  v29 = &v32;
  v30 = &v36;
  v23 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v19 enumerationOptions:2 limit:limit orderingTerms:v17 transaction:v22 error:error enumerationHandler:v26];

  if (v23)
  {
    if (count)
    {
      *count = v33[3];
    }

    if (anchor)
    {
      *anchor = v37[3];
    }
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v23;
}

uint64_t __142__HDUserDomainConceptProcessor_processUserDomainConceptsAfter_transactionLimit_outAnchor_outProcessedConceptsCount_profile_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(a1 + 32) daemon];
  v8 = [v7 userDomainConceptEntityRegistry];
  v9 = [v6 identifier];
  v10 = [v8 userDomainConceptEntityClassForTypeIdentifier:v9];

  if (!v10)
  {
    v32 = MEMORY[0x277CCA9B8];
    v33 = MEMORY[0x277CCACA8];
    v21 = [v6 identifier];
    v34 = [v33 stringWithFormat:@"Could not determine User Domain Concept entity class for identifier %@", v21];
    [v32 hk_assignError:a4 code:100 description:v34];

    v11 = 0;
    goto LABEL_16;
  }

  v11 = v6;
  v12 = [*(a1 + 32) daemon];
  v13 = [v12 behavior];
  v14 = [v13 supportsOntology];

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = v15;
    v18 = v11;
    objc_opt_self();
    v11 = [v10 refreshOntologyContentForUserDomainConcept:v18 profile:v17 transaction:v16 error:a4];
  }

  if (!v11)
  {
    v21 = 0;
    goto LABEL_16;
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = v11;
  v22 = v19;
  v23 = v20;
  v38 = objc_opt_self();
  v24 = [v10 predicateMatchingSemanticDuplicatesOf:v21];
  if (!v24)
  {

LABEL_15:
    ++*(*(*(a1 + 48) + 8) + 24);
    *(*(*(a1 + 56) + 8) + 24) = a3;
    v11 = 1;
    goto LABEL_16;
  }

  v41 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modification_date" entityClass:objc_opt_class() ascending:0];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__54;
  v49[4] = __Block_byref_object_dispose__54;
  v40 = v21;
  v50 = v40;
  v25 = [v22 userDomainConceptManager];
  v61[0] = v41;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __124__HDUserDomainConceptProcessor__enumerateAndDeduplicateConceptsWithOriginConcept_withEntityClass_profile_transaction_error___block_invoke;
  v43[3] = &unk_27861AFC8;
  v46 = &v51;
  v47 = v49;
  v48 = v10;
  v27 = v22;
  v44 = v27;
  v28 = v23;
  v45 = v28;
  v29 = [v25 enumerateUserDomainConceptsWithPredicate:v24 enumerationOptions:2 limit:0 orderingTerms:v26 transaction:v28 error:a4 enumerationHandler:v43];

  _HKInitializeLogging();
  v30 = HKLogHealthOntology();
  LODWORD(v26) = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);

  if (v26)
  {
    v31 = HKLogHealthOntology();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v39 = v52[3];
      v36 = [v40 UUID];
      v37 = [v36 hk_shortRepresentation];
      *buf = 138543874;
      v56 = v38;
      v57 = 2048;
      v58 = v39;
      v59 = 2114;
      v60 = v37;
      _os_log_debug_impl(&dword_228986000, v31, OS_LOG_TYPE_DEBUG, "%{public}@: Enumerated %ld potential duplicates for UDC %{public}@", buf, 0x20u);
    }
  }

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v51, 8);

  if (v29)
  {
    goto LABEL_15;
  }

  v11 = 0;
  v21 = v40;
LABEL_16:

  return v11;
}

uint64_t __124__HDUserDomainConceptProcessor__enumerateAndDeduplicateConceptsWithOriginConcept_withEntityClass_profile_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v7 = [*(*(*(a1 + 56) + 8) + 40) UUID];
  v8 = [v6 UUID];
  if ([v7 isEqual:v8])
  {
  }

  else
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) isSemanticallyEquivalent:v6];

    if (v9)
    {
      v10 = [*(a1 + 64) deduplicateUserDomainConcept:*(*(*(a1 + 56) + 8) + 40) with:v6 profile:*(a1 + 32) transaction:*(a1 + 40) error:a4];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v13 = 0;
        goto LABEL_6;
      }
    }
  }

  v13 = 1;
LABEL_6:

  return v13;
}

@end