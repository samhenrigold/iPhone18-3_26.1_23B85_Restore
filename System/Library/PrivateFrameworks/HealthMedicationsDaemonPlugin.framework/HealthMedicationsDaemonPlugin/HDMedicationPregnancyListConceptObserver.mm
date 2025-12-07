@interface HDMedicationPregnancyListConceptObserver
+ (id)_predicateForNonactiveDismissedInteractions;
- (HDMedicationPregnancyListConceptObserver)init;
- (HDMedicationPregnancyListConceptObserver)initWithProfile:(id)profile;
- (uint64_t)_deleteNonactiveDismissedInteractionsWithTransaction:(NSObject *)transaction error:;
- (void)_deleteNonactiveDismissedInteractionsWithTransaction:(uint64_t)transaction;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)profileDidBecomeReady:(id)ready;
- (void)userDomainConceptManager:(id)manager didAddUserDomainConcepts:(id)concepts transaction:(id)transaction;
- (void)userDomainConceptManager:(id)manager didDeleteUserDomainConcepts:(id)concepts transaction:(id)transaction;
- (void)userDomainConceptManager:(id)manager didUpdateUserDomainConcepts:(id)concepts transaction:(id)transaction;
@end

@implementation HDMedicationPregnancyListConceptObserver

- (HDMedicationPregnancyListConceptObserver)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationPregnancyListConceptObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDMedicationPregnancyListConceptObserver;
  v5 = [(HDMedicationPregnancyListConceptObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    atomic_store(1u, &v6->_shouldQueryMedicationListToDeleteDismissedInteractionsIfNeeded);
    v8 = v7;
    [profileCopy registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  databaseCopy = database;
  if (self)
  {
    if (availableCopy)
    {
      v7 = atomic_load(&self->_shouldQueryMedicationListToDeleteDismissedInteractionsIfNeeded);
      if (v7)
      {
        v8 = databaseCopy;
        [(HDMedicationPregnancyListConceptObserver *)self _deleteNonactiveDismissedInteractionsWithTransaction:?];
        databaseCopy = v8;
      }
    }
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  v15 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v14 = 138543362;
      *&v14[4] = objc_opt_class();
      v8 = *&v14[4];
      _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Profile did become ready, registering for observers", v14, 0xCu);
    }
  }

  userDomainConceptManager = [readyCopy userDomainConceptManager];
  [userDomainConceptManager addSynchronousUserDomainConceptObserver:self];

  database = [readyCopy database];
  [database addProtectedDataObserver:self];

  database2 = [readyCopy database];

  isProtectedDataAvailable = [database2 isProtectedDataAvailable];
  if (self && isProtectedDataAvailable)
  {
    v13 = atomic_load(&self->_shouldQueryMedicationListToDeleteDismissedInteractionsIfNeeded);
    if (v13)
    {
      [(HDMedicationPregnancyListConceptObserver *)self _deleteNonactiveDismissedInteractionsWithTransaction:?];
    }
  }
}

+ (id)_predicateForNonactiveDismissedInteractions
{
  v13[2] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v1 setEntityClass:objc_opt_class()];
  v2 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v3 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10520] equalToValue:*MEMORY[0x277CCC348]];
  v4 = MEMORY[0x277D10B20];
  v13[0] = v3;
  v13[1] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v6 = [v4 predicateMatchingAllPredicates:v5];
  [v1 setPredicate:v6];

  v7 = MEMORY[0x277D10B18];
  v12 = *MEMORY[0x277D10518];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [v7 predicateWithProperty:@"medication_identifier" comparisonType:7 subqueryDescriptor:v1 subqueryProperties:v8];

  v10 = [MEMORY[0x277D10B20] negatedPredicate:v9];

  return v10;
}

BOOL __103__HDMedicationPregnancyListConceptObserver__deleteNonactiveDismissedInteractionsWithTransaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [(HDSQLiteEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesInDatabase:v6 predicate:*(a1 + 32) error:a3];
  return v7;
}

BOOL __94__HDMedicationPregnancyListConceptObserver__doUserDomainConceptsContainListUserDomainConcept___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 listType] == 2;

  return v3;
}

- (void)userDomainConceptManager:(id)manager didAddUserDomainConcepts:(id)concepts transaction:(id)transaction
{
  v10 = OUTLINED_FUNCTION_1_2(self, a2, manager);
  v8 = v6;
  v9 = v7;
  if (v5 && [v8 hk_containsObjectPassingTest:&__block_literal_global_4])
  {
    [(HDMedicationPregnancyListConceptObserver *)v5 _deleteNonactiveDismissedInteractionsWithTransaction:v9];
  }
}

- (void)_deleteNonactiveDismissedInteractionsWithTransaction:(uint64_t)transaction
{
  if (transaction)
  {
    v7 = 0;
    v3 = [(HDMedicationPregnancyListConceptObserver *)transaction _deleteNonactiveDismissedInteractionsWithTransaction:a2 error:&v7];
    v4 = v7;
    v5 = v4;
    if (v3)
    {
      hk_isDatabaseAccessibilityError = 0;
    }

    else
    {
      hk_isDatabaseAccessibilityError = [v4 hk_isDatabaseAccessibilityError];
    }

    atomic_store(hk_isDatabaseAccessibilityError, (transaction + 16));
  }
}

- (void)userDomainConceptManager:(id)manager didUpdateUserDomainConcepts:(id)concepts transaction:(id)transaction
{
  v10 = OUTLINED_FUNCTION_1_2(self, a2, manager);
  v8 = v6;
  v9 = v7;
  if (v5 && [v8 hk_containsObjectPassingTest:&__block_literal_global_4])
  {
    [(HDMedicationPregnancyListConceptObserver *)v5 _deleteNonactiveDismissedInteractionsWithTransaction:v9];
  }
}

- (void)userDomainConceptManager:(id)manager didDeleteUserDomainConcepts:(id)concepts transaction:(id)transaction
{
  v10 = OUTLINED_FUNCTION_1_2(self, a2, manager);
  v8 = v6;
  v9 = v7;
  if (v5 && [v8 hk_containsObjectPassingTest:&__block_literal_global_4])
  {
    [(HDMedicationPregnancyListConceptObserver *)v5 _deleteNonactiveDismissedInteractionsWithTransaction:v9];
  }
}

- (uint64_t)_deleteNonactiveDismissedInteractionsWithTransaction:(NSObject *)transaction error:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = HKSensitiveLogItem();
    v7 = +[HDMedicationPregnancyListConceptObserver _predicateForNonactiveDismissedInteractions];
    if (v5)
    {
      v8 = [v5 databaseForEntityClass:objc_opt_class()];
      v27 = 0;
      v9 = [(HDSQLiteEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesInDatabase:v8 predicate:v7 error:&v27];
      v10 = v27;

      if (v9)
      {
LABEL_4:
        _HKInitializeLogging();
        v11 = HKLogMedication();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          objc_opt_class();
          OUTLINED_FUNCTION_0_2();
          v13 = v12;
          _os_log_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted %@ dismissed interactions for non-active medications", buf, 0x16u);
        }

        self = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = MEMORY[0x277D10920];
      WeakRetained = objc_loadWeakRetained((self + 8));
      database = [WeakRetained database];
      v26 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __103__HDMedicationPregnancyListConceptObserver__deleteNonactiveDismissedInteractionsWithTransaction_error___block_invoke;
      v24[3] = &unk_2796CD388;
      v25 = v7;
      v17 = [v14 performWriteTransactionWithHealthDatabase:database error:&v26 block:v24];
      v10 = v26;

      if (v17)
      {
        goto LABEL_4;
      }
    }

    _HKInitializeLogging();
    v18 = HKLogMedication();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      objc_opt_class();
      OUTLINED_FUNCTION_0_2();
      v29 = v21;
      v30 = v10;
      v23 = v22;
      _os_log_error_impl(&dword_25181C000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Error deleting %@ dismissed interactions for non-active medications: %@", buf, 0x20u);
    }

    v11 = v10;
    if (v11)
    {
      if (transaction)
      {
        v19 = v11;
        self = 0;
        *transaction = v11;
LABEL_15:
        v10 = v11;
LABEL_16:

        goto LABEL_17;
      }

      _HKLogDroppedError();
    }

    self = 0;
    goto LABEL_15;
  }

LABEL_17:

  return self;
}

@end