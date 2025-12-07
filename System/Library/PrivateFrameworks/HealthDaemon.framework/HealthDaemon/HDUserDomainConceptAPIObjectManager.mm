@interface HDUserDomainConceptAPIObjectManager
+ (id)allAPIObjectsFromUserDomainConceptsWithProfile:(id)profile error:(id *)error;
+ (id)allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile:(id)profile predicate:(id)predicate limit:(int64_t)limit error:(id *)error;
@end

@implementation HDUserDomainConceptAPIObjectManager

+ (id)allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile:(id)profile predicate:(id)predicate limit:(int64_t)limit error:(id *)error
{
  profileCopy = profile;
  predicateCopy = predicate;
  daemon = [profileCopy daemon];
  userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
  registeredUserDomainConceptEntityClasses = [userDomainConceptEntityRegistry registeredUserDomainConceptEntityClasses];

  v14 = [registeredUserDomainConceptEntityClasses hk_map:&__block_literal_global_142];
  v15 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifiers(v14);
  v16 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v15 otherPredicate:predicateCopy];

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __122__HDUserDomainConceptAPIObjectManager_allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile_predicate_limit_error___block_invoke_2;
  v26[3] = &unk_2786145F8;
  v27 = profileCopy;
  v28 = v16;
  limitCopy = limit;
  selfCopy = self;
  v29 = v17;
  v19 = v17;
  v20 = v16;
  v21 = profileCopy;
  LODWORD(v17) = [(HDHealthEntity *)HDUserDomainConceptEntity performReadTransactionWithHealthDatabase:database error:error block:v26];

  if (v17)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  return v22;
}

id __122__HDUserDomainConceptAPIObjectManager_allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile_predicate_limit_error___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 supportsUserAnnotatedMedicationAPIObjectGeneration])
  {
    v3 = [objc_msgSend(a2 "userDomainConceptClass")];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __122__HDUserDomainConceptAPIObjectManager_allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile_predicate_limit_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) userDomainConceptManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __122__HDUserDomainConceptAPIObjectManager_allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile_predicate_limit_error___block_invoke_3;
  v12[3] = &unk_278624338;
  v7 = *(a1 + 56);
  v16 = *(a1 + 64);
  v8 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v5;
  v9 = v5;
  v10 = [v6 enumerateUserDomainConceptsWithPredicate:v8 enumerationOptions:0 limit:v7 orderingTerms:0 transaction:v9 error:a3 enumerationHandler:v12];

  return v10;
}

uint64_t __122__HDUserDomainConceptAPIObjectManager_allUserAnnotatedMedicationsFromUserDomainConceptsWithProfile_predicate_limit_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = v6;
  v11 = a2;
  objc_opt_self();
  v12 = [v10 daemon];

  v13 = [v12 userDomainConceptEntityRegistry];
  v14 = [v11 identifier];
  v15 = [v13 userDomainConceptEntityClassForTypeIdentifier:v14];

  if (v15)
  {
    v23 = 0;
    v16 = [v15 generateUserAnnotatedMedicationForUserDomainConcept:v11 userAnnotatedMedicationOut:&v23 transaction:v9 error:a4];

    v17 = v23;
    if (v16)
    {
      [v8 hk_addNonNilObject:v17];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = MEMORY[0x277CCACA8];
    v20 = [v11 identifier];

    v21 = [v19 stringWithFormat:@"Could not determine User Domain Concept entity class for identifier %@", v20];
    [v18 hk_assignError:a4 code:100 description:v21];

    v16 = 0;
  }

  return v16;
}

+ (id)allAPIObjectsFromUserDomainConceptsWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__HDUserDomainConceptAPIObjectManager_allAPIObjectsFromUserDomainConceptsWithProfile_error___block_invoke;
  v14[3] = &unk_278614698;
  v16 = v7;
  selfCopy = self;
  v15 = profileCopy;
  v9 = v7;
  v10 = profileCopy;
  LODWORD(error) = [(HDHealthEntity *)HDUserDomainConceptEntity performReadTransactionWithHealthDatabase:database error:error block:v14];

  if (error)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __92__HDUserDomainConceptAPIObjectManager_allAPIObjectsFromUserDomainConceptsWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) userDomainConceptManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__HDUserDomainConceptAPIObjectManager_allAPIObjectsFromUserDomainConceptsWithProfile_error___block_invoke_2;
  v11[3] = &unk_278624338;
  v7 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v7;
  v13 = *(a1 + 32);
  v14 = v5;
  v8 = v5;
  v9 = [v6 enumerateUserDomainConceptsWithPredicate:0 enumerationOptions:0 limit:0 orderingTerms:0 transaction:v8 error:a3 enumerationHandler:v11];

  return v9;
}

uint64_t __92__HDUserDomainConceptAPIObjectManager_allAPIObjectsFromUserDomainConceptsWithProfile_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = v6;
  v11 = a2;
  objc_opt_self();
  v12 = [v10 daemon];

  v13 = [v12 userDomainConceptEntityRegistry];
  v14 = [v11 identifier];
  v15 = [v13 userDomainConceptEntityClassForTypeIdentifier:v14];

  if (v15)
  {
    v23 = 0;
    v16 = [v15 generateAPIObjectForUserDomainConcept:v11 apiObjectOut:&v23 transaction:v9 error:a4];

    v17 = v23;
    if (v16)
    {
      [v8 hk_addNonNilObject:v17];
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = MEMORY[0x277CCACA8];
    v20 = [v11 identifier];

    v21 = [v19 stringWithFormat:@"Could not determine User Domain Concept entity class for identifier %@", v20];
    [v18 hk_assignError:a4 code:100 description:v21];

    v16 = 0;
  }

  return v16;
}

@end