@interface HDHRBloodPressureJournalManager
- (BOOL)closeAllExpiredJournalsBy:(id)by error:(id *)error;
- (BOOL)enumerateJournalsWithPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms error:(id *)error enumerationHandler:(id)handler;
- (BOOL)insertBloodPressureJournal:(id)journal isUserInitiated:(BOOL)initiated error:(id *)error onCommit:(id)commit onRollback:(id)rollback;
- (BOOL)insertBloodPressureJournals:(id)journals isUserInitiated:(BOOL)initiated error:(id *)error onCommit:(id)commit onRollback:(id)rollback;
- (HDHRBloodPressureJournalManager)initWithProfile:(id)profile;
- (id)bloodPressureJournalWithIdentifier:(id)identifier error:(id *)error;
- (id)bloodPressureJournalsWithError:(id *)error;
- (id)bloodPressureJournalsWithLimit:(unint64_t)limit ascending:(BOOL)ascending error:(id *)error;
- (id)bloodPressureJournalsWithPredicate:(id)predicate error:(id *)error;
- (id)latestActiveBloodPressureJournalWithError:(id *)error;
- (void)_rescheduleNotificationandIsUserInitated:(BOOL)initated;
- (void)notifyObserversOfAddOrModifyJournals:(id)journals;
- (void)updateNotificationSyncManagerWithClosedJournals:(id)journals;
@end

@implementation HDHRBloodPressureJournalManager

- (HDHRBloodPressureJournalManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDHRBloodPressureJournalManager;
  v5 = [(HDHRBloodPressureJournalManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = NSStringFromProtocol(&unk_283CE26E0);
    v9 = HKLogBloodPressureJournal();
    v10 = [v7 initWithName:v8 loggingCategory:v9];
    observers = v6->_observers;
    v6->_observers = v10;
  }

  return v6;
}

- (BOOL)enumerateJournalsWithPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms error:(id *)error enumerationHandler:(id)handler
{
  predicateCopy = predicate;
  termsCopy = terms;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __111__HDHRBloodPressureJournalManager_enumerateJournalsWithPredicate_limit_orderingTerms_error_enumerationHandler___block_invoke;
  v21[3] = &unk_27865FDD0;
  v21[4] = self;
  v22 = predicateCopy;
  v24 = handlerCopy;
  limitCopy = limit;
  v23 = termsCopy;
  v17 = handlerCopy;
  v18 = termsCopy;
  v19 = predicateCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDHRHeartCLogEntity performReadTransactionWithHealthDatabase:database error:error block:v21];

  return error;
}

- (id)bloodPressureJournalWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = HDHRBloodPressureJournalPredicateForIdentifier(identifierCopy, 1);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HDHRBloodPressureJournalManager_bloodPressureJournalWithIdentifier_error___block_invoke;
  v11[3] = &unk_27865FDF8;
  v11[4] = &v12;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:v7 limit:0 orderingTerms:0 error:error enumerationHandler:v11])
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

- (id)bloodPressureJournalsWithError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modified_date" entityClass:objc_opt_class() ascending:1];
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDHRBloodPressureJournalManager_bloodPressureJournalsWithError___block_invoke;
  v9[3] = &unk_27865FDF8;
  v9[4] = &v10;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:0 limit:0 orderingTerms:v6 error:error enumerationHandler:v9])
  {
    v7 = [v11[5] copy];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)latestActiveBloodPressureJournalWithError:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = HDHRBloodPressureJournalPredicateForState(0, 1);
  v6 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modified_date" entityClass:objc_opt_class() ascending:1];
  v18[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDHRBloodPressureJournalManager_latestActiveBloodPressureJournalWithError___block_invoke;
  v11[3] = &unk_27865FDF8;
  v11[4] = &v12;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:v5 limit:0 orderingTerms:v7 error:error enumerationHandler:v11])
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

- (id)bloodPressureJournalsWithLimit:(unint64_t)limit ascending:(BOOL)ascending error:(id *)error
{
  ascendingCopy = ascending;
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:ascendingCopy];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HDHRBloodPressureJournalManager_bloodPressureJournalsWithLimit_ascending_error___block_invoke;
  v13[3] = &unk_27865FDF8;
  v13[4] = &v14;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:0 limit:limit orderingTerms:v10 error:error enumerationHandler:v13])
  {
    v11 = [v15[5] copy];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)bloodPressureJournalsWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  array = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDHRBloodPressureJournalManager_bloodPressureJournalsWithPredicate_error___block_invoke;
  v9[3] = &unk_27865FDF8;
  v9[4] = &v10;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:predicateCopy limit:0 orderingTerms:0 error:error enumerationHandler:v9])
  {
    v7 = [v11[5] copy];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)insertBloodPressureJournal:(id)journal isUserInitiated:(BOOL)initiated error:(id *)error onCommit:(id)commit onRollback:(id)rollback
{
  initiatedCopy = initiated;
  v19 = *MEMORY[0x277D85DE8];
  journalCopy = journal;
  v12 = MEMORY[0x277CBEA60];
  rollbackCopy = rollback;
  commitCopy = commit;
  journalCopy2 = journal;
  v16 = [v12 arrayWithObjects:&journalCopy count:1];

  LOBYTE(journalCopy2) = [(HDHRBloodPressureJournalManager *)self insertBloodPressureJournals:v16 isUserInitiated:initiatedCopy error:error onCommit:commitCopy onRollback:rollbackCopy, journalCopy, v19];
  return journalCopy2;
}

- (BOOL)insertBloodPressureJournals:(id)journals isUserInitiated:(BOOL)initiated error:(id *)error onCommit:(id)commit onRollback:(id)rollback
{
  journalsCopy = journals;
  commitCopy = commit;
  rollbackCopy = rollback;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke;
  v21[3] = &unk_27865FE70;
  v21[4] = self;
  v22 = journalsCopy;
  initiatedCopy = initiated;
  v23 = commitCopy;
  v24 = rollbackCopy;
  v17 = rollbackCopy;
  v18 = commitCopy;
  v19 = journalsCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDHRHeartCLogEntity performWriteTransactionWithHealthDatabase:database error:error block:v21];

  return error;
}

uint64_t __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_2;
  v23[3] = &unk_27865FE20;
  v6 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v6;
  v26 = *(a1 + 64);
  v25 = *(a1 + 48);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_346;
  v21[3] = &unk_27865FE48;
  v22 = *(a1 + 56);
  v7 = v5;
  [v5 onCommit:v23 orRollback:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        LODWORD(v12) = [HDHRHeartCLogEntity insertBloodPressureJournal:v12 profile:WeakRetained transaction:v7 error:a3];

        if (!v12)
        {
          v14 = 0;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

uint64_t __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) notifyObserversOfAddOrModifyJournals:*(a1 + 40)];
  _HKInitializeLogging();
  v2 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rescheduling notifications. Journal changed: %{public}@", &v6, 0x16u);
  }

  [*(a1 + 32) _rescheduleNotificationandIsUserInitated:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_346(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)closeAllExpiredJournalsBy:(id)by error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = [by dateByAddingTimeInterval:*MEMORY[0x277D12EE8] * -86400.0];
  v7 = HDHRBloodPressureJournalPredicateForStartDate(v6, 4);
  v32 = 0;
  v8 = [(HDHRBloodPressureJournalManager *)self bloodPressureJournalsWithPredicate:v7 error:&v32];
  v9 = v32;
  if (v9)
  {
    if (error)
    {
      v10 = v9;
      v11 = 0;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }
  }

  else if (v8 && [v8 count])
  {
    selfCopy = self;
    v25 = v6;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          closedJournal = [*(*(&v28 + 1) + 8 * i) closedJournal];
          [v12 addObject:closedJournal];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__HDHRBloodPressureJournalManager_closeAllExpiredJournalsBy_error___block_invoke;
    v26[3] = &unk_27865FE98;
    v26[4] = selfCopy;
    v27 = v12;
    v19 = v12;
    v11 = [(HDHRBloodPressureJournalManager *)selfCopy insertBloodPressureJournals:v19 error:error onCommit:v26 onRollback:0];

    v6 = v25;
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogBloodPressureJournal();
    v11 = 1;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      v22 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_INFO, "%{public}@: There are no expired journals to close. ", buf, 0xCu);
      }
    }
  }

  return v11;
}

void __67__HDHRBloodPressureJournalManager_closeAllExpiredJournalsBy_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateNotificationSyncManagerWithClosedJournals:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained heartHealthProfileExtension];
  v3 = [v2 bloodPressureJournalSyncRequester];
  [v3 requestStateSyncWithReason:@"Blood Pressure journal is expired and closed"];
}

- (void)updateNotificationSyncManagerWithClosedJournals:(id)journals
{
  journalsCopy = journals;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  heartHealthProfileExtension = [WeakRetained heartHealthProfileExtension];
  bloodPressureJournalNotificationSyncManager = [heartHealthProfileExtension bloodPressureJournalNotificationSyncManager];

  [bloodPressureJournalNotificationSyncManager bloodPressureJournalsClosed:journalsCopy];
}

- (void)_rescheduleNotificationandIsUserInitated:(BOOL)initated
{
  initatedCopy = initated;
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  heartHealthProfileExtension = [WeakRetained heartHealthProfileExtension];
  bloodPressureJournalNotificationManager = [heartHealthProfileExtension bloodPressureJournalNotificationManager];

  v14 = 0;
  v8 = [bloodPressureJournalNotificationManager scheduleNotificationsWithReason:initatedCopy error:&v14];
  v9 = v14;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HDHRBloodPressureJournalManager *)self _rescheduleNotificationandIsUserInitated:v9, v10];
    }
  }

  _HKInitializeLogging();
  v11 = HKLogBloodPressureJournal();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

  if (v12)
  {
    v13 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy = self;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_INFO, "[%{public}@] Completed schedule notifications with success state: %d", buf, 0x12u);
    }
  }
}

- (void)notifyObserversOfAddOrModifyJournals:(id)journals
{
  journalsCopy = journals;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HDHRBloodPressureJournalManager_notifyObserversOfAddOrModifyJournals___block_invoke;
  v7[3] = &unk_27865FEC0;
  v7[4] = self;
  v8 = journalsCopy;
  v6 = journalsCopy;
  [(HDHRBloodPressureJournalObserver *)observers notifyObservers:v7];
}

- (void)_rescheduleNotificationandIsUserInitated:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to schedule notifications error: %{public}@", &v3, 0x16u);
}

@end