@interface HDMedicationScheduleManager
+ (id)_fetchDoseEventsWithScheduledItemIdentifier:(void *)identifier profile:(uint64_t)profile error:;
+ (id)_fetchScheduledItemsWithScheduledItemIdentifier:(void *)identifier transaction:(uint64_t)transaction error:;
+ (id)_filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses:(void *)doses existingDoseEvents:(void *)events scheduledItemIdentifier:(uint64_t)identifier status:(void *)status logDate:;
+ (id)_filteredDoseEventsThatNeedUpdatingFrom:(void *)from scheduledItemIdentifier:(uint64_t)identifier status:(void *)status logDate:;
+ (id)_hrMinSecSinceMidnightWithDuration:(void *)duration calendar:;
+ (id)_makeDateComponentsFromCycleStartDate:(uint64_t)date byAddingTimeDifferenceSec:(void *)sec calendar:;
+ (id)_makeIntervalsWithStartTimeFromIntervals:(uint64_t)intervals byAddingTimeDifferenceDuration:(void *)duration calendar:(void *)calendar timeZone:;
+ (uint64_t)_crossReferenceScheduledItemsAndDoseEventsAndLogUnloggedWithScheduledItemIdentifier:(uint64_t)identifier status:(void *)status logDate:(void *)date profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (uint64_t)_durationForDayHourMinuteSecondComponents:(uint64_t)components;
+ (uint64_t)_insertDoseEvents:(void *)events profile:(uint64_t)profile error:;
+ (uint64_t)_newDoseEventWithGeneratedMetadataLogOrigin:(void *)origin scheduleItemIdentifier:(void *)identifier medicationIdentifier:(void *)medicationIdentifier scheduledDoseQuantity:(void *)quantity doseQuantity:(void *)doseQuantity scheduledDate:(void *)date startDate:(uint64_t)startDate status:(void *)self0 doseUnitString:(unsigned __int8)self1 isLastScheduledDose:;
- (BOOL)_addPendingSchedule:(uint64_t)schedule syncIdentity:;
- (BOOL)_enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:(uint64_t)predicate error:(void *)error enumerationHandler:;
- (BOOL)_enumerateSchedulesInDescendingCreationOrderWithPredicate:(char)predicate includeDeleted:(void *)deleted transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
- (BOOL)_fetchMedicationSchedule:(void *)schedule predicate:(uint64_t *)predicate error:;
- (BOOL)_updateSchedulesToTimeZone:(id)zone maintainCalendarDatesAndTimes:(BOOL)times error:(id *)error;
- (BOOL)deleteMedicationSchedule:(id)schedule error:(id *)error;
- (BOOL)enumerateMedicationSchedulesWithPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms error:(id *)error enumerationHandler:(id)handler;
- (BOOL)insertMedicationSchedule:(id)schedule error:(id *)error;
- (BOOL)insertMedicationSchedules:(id)schedules error:(id *)error;
- (BOOL)insertMedicationSchedules:(id)schedules syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity error:(id *)error;
- (BOOL)logUnloggedDoseEventsForScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date error:(id *)error;
- (BOOL)medicationSchedule:(id *)schedule identifier:(id)identifier error:(id *)error;
- (BOOL)medicationSchedule:(id *)schedule medicationIdentifier:(id)identifier error:(id *)error;
- (BOOL)pruneAllScheduleItemsBeforeDate:(id)date createDoseEvents:(BOOL)events error:(id *)error;
- (BOOL)rescheduleMedicationsWithError:(id *)error;
- (BOOL)updateNotificationSent:(BOOL)sent scheduleItemIdentifier:(id)identifier error:(id *)error;
- (BOOL)updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:(BOOL)times error:(id *)error;
- (BOOL)updateTimeZoneExperienceAsDismissedWithError:(id *)error;
- (HDMedicationScheduleManager)initWithProfile:(id)profile userDefaults:(id)defaults medicationNotificationManager:(id)manager;
- (double)_rescheduleOperationDelayWithDefaultDelay:(uint64_t)delay;
- (id)_deviceLocalKeyValueDomain;
- (id)_notifyObserversForDidRescheduleMedications;
- (id)_pendingSchedulesBySyncIdentity;
- (id)medicationSchedulesWithPredicate:(id)predicate error:(id *)error;
- (id)medicationSchedulesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error;
- (id)orderingTermsForSortDescriptors:(id)descriptors error:(id *)error;
- (uint64_t)_hasPersistedRescheduleRequiredOnNextUnlockFlag;
- (uint64_t)_insertMedicationSchedules:(uint64_t)schedules syncProvenance:(void *)provenance syncIdentity:(void *)identity transaction:(uint64_t)transaction error:;
- (uint64_t)_isRescheduleRequiredOnNextUnlock;
- (uint64_t)_runRescheduleOperationIfListContainsActiveMedsListUDC:(uint64_t)c;
- (void)_callTestHookdidRunRescheduleOperationWithSuccess:(void *)success error:;
- (void)_handleBeforeCommitOfTransaction:(id *)transaction;
- (void)_handleScheduleTransactionCommit;
- (void)_handleScheduleTransactionRollback;
- (void)_invalidate;
- (void)_notifyObserversDidPruneScheduleItems:(uint64_t)items;
- (void)_notifySynchronousObserversInTransaction:(void *)transaction didReschedule:;
- (void)_notifySynchronousObserversInTransaction:(void *)transaction willReschedule:;
- (void)_queue_handleNotificationSettingsDidChangeNotification;
- (void)_queue_rescheduleMedications;
- (void)_queue_runRescheduleOperationWithDelay:(void *)result;
- (void)_runRescheduleDelayedOperation;
- (void)_setRescheduleRequiredOnNextUnlock:(uint64_t)unlock;
- (void)_startObservingMedicationsNotificationSettingsDidChangeNotification;
- (void)batchNotifyObserversOnCommitOfTransaction:(id)transaction didAddOrModifySchedule:(id)schedule syncIdentity:(int64_t)identity;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)queue_invalidateDBAccessAssertion;
- (void)queue_takeDBAccessAssertionIfRequired;
- (void)rescheduleMedicationsSynchronously:(BOOL)synchronously;
@end

@implementation HDMedicationScheduleManager

- (uint64_t)_isRescheduleRequiredOnNextUnlock
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock((result + 80));
    v2 = *(v1 + 72);
    os_unfair_lock_unlock((v1 + 80));
    if (v2 == 1)
    {
      return 1;
    }

    else if (v2 == 2)
    {
      return 0;
    }

    else
    {

      return [(HDMedicationScheduleManager *)v1 _hasPersistedRescheduleRequiredOnNextUnlockFlag];
    }
  }

  return result;
}

- (HDMedicationScheduleManager)initWithProfile:(id)profile userDefaults:(id)defaults medicationNotificationManager:(id)manager
{
  profileCopy = profile;
  defaultsCopy = defaults;
  managerCopy = manager;
  v42.receiver = self;
  v42.super_class = HDMedicationScheduleManager;
  v11 = [(HDMedicationScheduleManager *)&v42 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    v13 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v13;

    v15 = objc_alloc(MEMORY[0x277CCD738]);
    v16 = NSStringFromProtocol(&unk_2863CCDA0);
    v17 = HKLogMedication();
    v18 = [v15 initWithName:v16 loggingCategory:v17];
    observers = v12->_observers;
    v12->_observers = v18;

    v12->_observersLock._os_unfair_lock_opaque = 0;
    v20 = objc_alloc(MEMORY[0x277CCDA88]);
    v21 = NSStringFromProtocol(&unk_2863CD5D0);
    v22 = HKLogMedication();
    v23 = [v20 initWithName:v21 loggingCategory:v22];
    synchronousObservers = v12->_synchronousObservers;
    v12->_synchronousObservers = v23;

    objc_storeStrong(&v12->_notificationManager, manager);
    v25 = [[HDMedicationTimeZoneManager alloc] initWithProfile:profileCopy];
    timeZoneManager = v12->_timeZoneManager;
    v12->_timeZoneManager = v25;

    objc_initWeak(&location, v12);
    v27 = objc_alloc(MEMORY[0x277CCDD98]);
    v28 = v12->_queue;
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __90__HDMedicationScheduleManager_initWithProfile_userDefaults_medicationNotificationManager___block_invoke;
    v39 = &unk_2796CD6F8;
    objc_copyWeak(&v40, &location);
    v29 = [v27 initWithQueue:v28 delay:&v36 block:5.0];
    rescheduleOperation = v12->_rescheduleOperation;
    v12->_rescheduleOperation = v29;

    v12->_isOperationRequiredOnNextUnlock = 0;
    v12->_operationLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:{v12->_queue, v36, v37, v38, v39}];

    v32 = objc_loadWeakRetained(&v12->_profile);
    daemon = [v32 daemon];
    behavior = [daemon behavior];
    LODWORD(v21) = [behavior isAppleWatch];

    if (v21)
    {
      [(HDMedicationScheduleManager *)v12 _startObservingMedicationsNotificationSettingsDidChangeNotification];
    }

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __90__HDMedicationScheduleManager_initWithProfile_userDefaults_medicationNotificationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDMedicationScheduleManager *)WeakRetained _queue_rescheduleMedications];
}

- (void)_startObservingMedicationsNotificationSettingsDidChangeNotification
{
  if (val)
  {
    val[24] = -1;
    v2 = val + 24;
    objc_initWeak(&location, val);
    uTF8String = [@"HKMedicationsNotificationSettingsDidChangeNotification" UTF8String];
    v4 = *(val + 2);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __98__HDMedicationScheduleManager__startObservingMedicationsNotificationSettingsDidChangeNotification__block_invoke;
    v5[3] = &unk_2796CD8A8;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(uTF8String, v2, v4, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  [(HDMedicationScheduleManager *)self _invalidate];
  v3.receiver = self;
  v3.super_class = HDMedicationScheduleManager;
  [(HDMedicationScheduleManager *)&v3 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  database = [readyCopy database];
  [database addProtectedDataObserver:self queue:self->_queue];

  database2 = [readyCopy database];
  if ([database2 isProtectedDataAvailable])
  {
    isRescheduleRequiredOnNext = [(HDMedicationScheduleManager *)self _isRescheduleRequiredOnNextUnlock];

    if (isRescheduleRequiredOnNext)
    {
      [(HDMedicationScheduleManager *)self _runRescheduleDelayedOperation];
    }
  }

  else
  {
  }

  userDomainConceptManager = [readyCopy userDomainConceptManager];
  [userDomainConceptManager addUserDomainConceptObserver:self queue:0];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available && [(HDMedicationScheduleManager *)self _isRescheduleRequiredOnNextUnlock])
  {

    [(HDMedicationScheduleManager *)self _runRescheduleDelayedOperation];
  }
}

BOOL __86__HDMedicationScheduleManager__runRescheduleOperationIfListContainsActiveMedsListUDC___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 listType] == 2;

  return v3;
}

- (BOOL)medicationSchedule:(id *)schedule medicationIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager medicationSchedule:medicationIdentifier:error:];
    }
  }

  v12 = HDMedicationSchedulePredicateForMedicationIdentifier(identifierCopy);
  v13 = [(HDMedicationScheduleManager *)self _fetchMedicationSchedule:schedule predicate:v12 error:error];

  return v13;
}

- (BOOL)_fetchMedicationSchedule:(void *)schedule predicate:(uint64_t *)predicate error:
{
  scheduleCopy = schedule;
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__HDMedicationScheduleManager__fetchMedicationSchedule_predicate_error___block_invoke;
    v11[3] = &unk_2796CD7C0;
    v11[4] = &v12;
    v8 = [(HDMedicationScheduleManager *)self _enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:scheduleCopy error:predicate enumerationHandler:v11];
    if (v8)
    {
      if (a2)
      {
        *a2 = v13[5];
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogMedication();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationScheduleManager _fetchMedicationSchedule:self predicate:predicate error:v9];
      }
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)medicationSchedule:(id *)schedule identifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager medicationSchedule:identifier:error:];
    }
  }

  v12 = HDMedicationSchedulePredicateForScheduleUUID(identifierCopy, 1);
  v13 = [(HDMedicationScheduleManager *)self _fetchMedicationSchedule:schedule predicate:v12 error:error];

  return v13;
}

- (id)medicationSchedulesWithPredicate:(id)predicate error:(id *)error
{
  v6 = MEMORY[0x277CBEB18];
  predicateCopy = predicate;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDMedicationScheduleManager_medicationSchedulesWithPredicate_error___block_invoke;
  v12[3] = &unk_2796CD720;
  v9 = v8;
  v13 = v9;
  LODWORD(error) = [(HDMedicationScheduleManager *)self _enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:predicateCopy error:error enumerationHandler:v12];

  if (error)
  {
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)medicationSchedulesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error
{
  predicateCopy = predicate;
  transactionCopy = transaction;
  _HKInitializeLogging();
  v10 = HKLogMedication();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager medicationSchedulesWithPredicate:transaction:error:];
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HDMedicationScheduleManager_medicationSchedulesWithPredicate_transaction_error___block_invoke;
  v18[3] = &unk_2796CD720;
  v14 = v13;
  v19 = v14;
  v15 = [(HDMedicationScheduleManager *)self _enumerateSchedulesInDescendingCreationOrderWithPredicate:predicateCopy includeDeleted:0 transaction:transactionCopy error:error enumerationHandler:v18];

  if (v15)
  {
    v16 = [v14 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)enumerateMedicationSchedulesWithPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms error:(id *)error enumerationHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  termsCopy = terms;
  handlerCopy = handler;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v25 = objc_opt_self();
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:limit];
      *buf = 138544130;
      selfCopy = self;
      v34 = 2114;
      v35 = v25;
      v36 = 2114;
      v37 = v26;
      v38 = 2114;
      v39 = termsCopy;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Enumerating medication schedules with predicate: %{public}@, limit: %{public}@, orderingTerms: %{public}@", buf, 0x2Au);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __118__HDMedicationScheduleManager_enumerateMedicationSchedulesWithPredicate_limit_orderingTerms_error_enumerationHandler___block_invoke;
  v27[3] = &unk_2796CD748;
  v27[4] = self;
  v28 = predicateCopy;
  v30 = handlerCopy;
  limitCopy = limit;
  v29 = termsCopy;
  v20 = handlerCopy;
  v21 = termsCopy;
  v22 = predicateCopy;
  v23 = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:database error:error block:v27];

  return v23;
}

- (BOOL)insertMedicationSchedule:(id)schedule error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  _HKInitializeLogging();
  v7 = HKLogMedication();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager insertMedicationSchedule:error:];
    }
  }

  v13[0] = scheduleCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [(HDMedicationScheduleManager *)self insertMedicationSchedules:v10 error:error];

  return v11;
}

- (BOOL)insertMedicationSchedules:(id)schedules error:(id *)error
{
  schedulesCopy = schedules;
  _HKInitializeLogging();
  v7 = HKLogMedication();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager insertMedicationSchedules:schedulesCopy error:?];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = -[HDMedicationScheduleManager insertMedicationSchedules:syncProvenance:syncIdentity:error:](self, "insertMedicationSchedules:syncProvenance:syncIdentity:error:", schedulesCopy, 0, [WeakRetained currentSyncIdentityPersistentID], error);

  return v11;
}

- (BOOL)insertMedicationSchedules:(id)schedules syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  schedulesCopy = schedules;
  _HKInitializeLogging();
  v11 = HKLogMedication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138544130;
    selfCopy = self;
    v18 = 2048;
    v19 = [schedulesCopy count];
    v20 = 2048;
    provenanceCopy = provenance;
    v22 = 2048;
    identityCopy = identity;
    _os_log_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserting %lld schedules provenance: %lld, syncIdentity: %lld", &v16, 0x2Au);
  }

  v12 = [[HDMedicationScheduleInsertOperation alloc] initWithMedicationSchedules:schedulesCopy syncProvenance:provenance syncIdentity:identity];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [(HDJournalableOperation *)v12 performOrJournalWithProfile:WeakRetained error:error];

  return v14;
}

- (BOOL)logUnloggedDoseEventsForScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date error:(id *)error
{
  dateCopy = date;
  identifierCopy = identifier;
  v12 = [[HDMedicationScheduleLogUnloggedMedicationsOperation alloc] initWithScheduledItemIdentifier:identifierCopy status:status logDate:dateCopy];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(HDJournalableOperation *)v12 performOrJournalWithProfile:WeakRetained error:error];

  return error;
}

- (BOOL)rescheduleMedicationsWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(HDMedicationScheduleManager *)self rescheduleMedicationsWithError:v7];
    }
  }

  notificationManager = self->_notificationManager;
  v18 = 0;
  v9 = [(HDMedicationNotificationManager *)notificationManager rescheduleMedicationsWithError:&v18];
  v10 = v18;
  v11 = v10;
  if (v9)
  {
    [(HDMedicationScheduleManager *)self _setRescheduleRequiredOnNextUnlock:?];
    [(HDMedicationScheduleManager *)&self->super.isa _notifyObserversForDidRescheduleMedications];
  }

  else if ([v10 hk_isDatabaseAccessibilityError])
  {
    [(HDMedicationScheduleManager *)self _setRescheduleRequiredOnNextUnlock:?];
  }

  _HKInitializeLogging();
  v12 = HKLogMedication();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HKStringFromBool();
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reschedule medications completed with success: %{public}@, error: %{public}@", buf, 0x20u);
  }

  v14 = v11;
  if (v14)
  {
    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v9;
}

- (void)rescheduleMedicationsSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (synchronouslyCopy)
  {
    if (v6)
    {
      v7 = HKLogMedication();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Rescheduling medications synchronously", buf, 0xCu);
      }
    }

    v11 = 0;
    v8 = [(HDMedicationScheduleManager *)self rescheduleMedicationsWithError:&v11];
    v9 = v11;
    if (!v8)
    {
      _HKInitializeLogging();
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(HDMedicationScheduleManager *)self rescheduleMedicationsSynchronously:v9, v10];
      }
    }
  }

  else
  {
    if (v6)
    {
      [HDMedicationScheduleManager rescheduleMedicationsSynchronously:?];
    }

    [(HDMedicationScheduleManager *)self _runRescheduleDelayedOperation];
  }
}

- (BOOL)updateNotificationSent:(BOOL)sent scheduleItemIdentifier:(id)identifier error:(id *)error
{
  sentCopy = sent;
  identifierCopy = identifier;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager updateNotificationSent:scheduleItemIdentifier:error:];
    }
  }

  v12 = [[HDMedicationScheduleItemUpdateNotificationSentOperation alloc] initWithScheduleItemIdentifier:identifierCopy notificationSent:sentCopy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [(HDJournalableOperation *)v12 performOrJournalWithProfile:WeakRetained error:error];

  return v14;
}

+ (uint64_t)_crossReferenceScheduledItemsAndDoseEventsAndLogUnloggedWithScheduledItemIdentifier:(uint64_t)identifier status:(void *)status logDate:(void *)date profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v12 = a2;
  statusCopy = status;
  dateCopy = date;
  profileCopy = profile;
  v16 = objc_opt_self();
  v17 = [(HDMedicationScheduleManager *)v16 _fetchDoseEventsWithScheduledItemIdentifier:v12 profile:dateCopy error:transaction];
  if (v17)
  {
    v18 = [(HDMedicationScheduleManager *)v16 _fetchScheduledItemsWithScheduledItemIdentifier:v12 transaction:profileCopy error:transaction];
    if (v18)
    {
      v24 = [(HDMedicationScheduleManager *)v16 _filteredDoseEventsThatNeedUpdatingFrom:v17 scheduledItemIdentifier:v12 status:identifier logDate:statusCopy];
      v19 = [(HDMedicationScheduleManager *)v16 _filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses:v18 existingDoseEvents:v17 scheduledItemIdentifier:v12 status:identifier logDate:statusCopy];
      [v24 arrayByAddingObjectsFromArray:v19];
      v21 = v20 = statusCopy;
      v22 = [(HDMedicationScheduleManager *)v16 _insertDoseEvents:v21 profile:dateCopy error:transaction];

      statusCopy = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)_fetchDoseEventsWithScheduledItemIdentifier:(void *)identifier profile:(uint64_t)profile error:
{
  identifierCopy = identifier;
  v7 = a2;
  objc_opt_self();
  v8 = HDMedicationDoseEventEntityPredicateForScheduleItemIdentifier();

  medicationDoseEventType = [MEMORY[0x277CCD720] medicationDoseEventType];
  v10 = [MEMORY[0x277D10848] samplesWithType:medicationDoseEventType profile:identifierCopy encodingOptions:0 predicate:v8 limit:0 anchor:0 error:profile];

  return v10;
}

+ (id)_fetchScheduledItemsWithScheduledItemIdentifier:(void *)identifier transaction:(uint64_t)transaction error:
{
  v6 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  v8 = HDMedicationScheduleItemPredicateForIdentifier(v6, 1);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__HDMedicationScheduleManager__fetchScheduledItemsWithScheduledItemIdentifier_transaction_error___block_invoke;
  v11[3] = &unk_2796CD810;
  v11[4] = &v12;
  if ([HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v8 orderingTerms:0 transaction:identifierCopy error:transaction enumerationHandler:v11])
  {
    v9 = v13[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)_filteredDoseEventsThatNeedUpdatingFrom:(void *)from scheduledItemIdentifier:(uint64_t)identifier status:(void *)status logDate:
{
  fromCopy = from;
  statusCopy = status;
  v10 = a2;
  objc_opt_self();
  v11 = [v10 hk_filter:&__block_literal_global_432];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HDMedicationScheduleManager__filteredDoseEventsThatNeedUpdatingFrom_scheduledItemIdentifier_status_logDate___block_invoke_2;
  v16[3] = &unk_2796CD858;
  v17 = fromCopy;
  v18 = statusCopy;
  identifierCopy = identifier;
  v12 = statusCopy;
  v13 = fromCopy;
  v14 = [v11 hk_map:v16];

  return v14;
}

+ (id)_filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses:(void *)doses existingDoseEvents:(void *)events scheduledItemIdentifier:(uint64_t)identifier status:(void *)status logDate:
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dosesCopy = doses;
  eventsCopy = events;
  statusCopy = status;
  objc_opt_self();
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v9;
  v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v29)
  {
    v28 = *v44;
    v11 = &unk_2796CD880;
    v31 = dosesCopy;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v12;
        v13 = *(*(&v43 + 1) + 8 * v12);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        doses = [v13 doses];
        v14 = [doses countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v40;
          do
          {
            v17 = 0;
            v36 = v15;
            do
            {
              if (*v40 != v16)
              {
                objc_enumerationMutation(doses);
              }

              v18 = *(*(&v39 + 1) + 8 * v17);
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v38[2] = __175__HDMedicationScheduleManager__filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses_existingDoseEvents_scheduledItemIdentifier_status_logDate___block_invoke;
              v38[3] = v11;
              v38[4] = v13;
              v38[5] = v18;
              if (([dosesCopy hk_containsObjectPassingTest:v38] & 1) == 0)
              {
                medicationIdentifier = [v18 medicationIdentifier];
                dose = [v18 dose];
                [v18 dose];
                v22 = v21 = v11;
                [v13 scheduledDateTime];
                v24 = v23 = v13;
                v25 = +[HDMedicationScheduleManager _newDoseEventWithGeneratedMetadataLogOrigin:scheduleItemIdentifier:medicationIdentifier:scheduledDoseQuantity:doseQuantity:scheduledDate:startDate:status:doseUnitString:isLastScheduledDose:](HDMedicationScheduleManager, 2, eventsCopy, medicationIdentifier, dose, v22, v24, statusCopy, identifier, 0, [v18 isLastScheduledDose]);

                v13 = v23;
                v11 = v21;
                v15 = v36;

                dosesCopy = v31;
                [v34 hk_addNonNilObject:v25];
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [doses countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v15);
        }

        v12 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v29);
  }

  return v34;
}

+ (uint64_t)_insertDoseEvents:(void *)events profile:(uint64_t)profile error:
{
  v6 = a2;
  eventsCopy = events;
  objc_opt_self();
  v8 = [HDMedicationsAppSourceSupport medicationsAppSourceEntityForProfile:eventsCopy error:profile];
  if (v8)
  {
    dataManager = [eventsCopy dataManager];
    v10 = [dataManager insertDataObjects:v6 sourceEntity:v8 deviceEntity:0 sourceVersion:0 creationDate:profile error:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __110__HDMedicationScheduleManager__filteredDoseEventsThatNeedUpdatingFrom_scheduledItemIdentifier_status_logDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 logStatus] != 4 && objc_msgSend(v2, "logStatus") != 5;

  return v3;
}

id __110__HDMedicationScheduleManager__filteredDoseEventsThatNeedUpdatingFrom_scheduledItemIdentifier_status_logDate___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scheduleItemIdentifier];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v3 scheduledDate];
  if (!v6)
  {
    v16 = 0;
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v3 scheduledDoseQuantity];

  if (!v8)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_8;
  }

  v9 = a1[4];
  v5 = [v3 medicationIdentifier];
  v10 = [v3 scheduledDoseQuantity];
  v11 = [v3 doseQuantity];
  v12 = [v3 scheduledDate];
  v14 = a1[5];
  v13 = a1[6];
  v15 = [v3 doseUnitString];
  v16 = +[HDMedicationScheduleManager _newDoseEventWithGeneratedMetadataLogOrigin:scheduleItemIdentifier:medicationIdentifier:scheduledDoseQuantity:doseQuantity:scheduledDate:startDate:status:doseUnitString:isLastScheduledDose:](HDMedicationScheduleManager, 2, v9, v5, v10, v11, v12, v14, v13, v15, [v3 isLastScheduledDose]);

LABEL_7:
LABEL_8:

  return v16;
}

+ (uint64_t)_newDoseEventWithGeneratedMetadataLogOrigin:(void *)origin scheduleItemIdentifier:(void *)identifier medicationIdentifier:(void *)medicationIdentifier scheduledDoseQuantity:(void *)quantity doseQuantity:(void *)doseQuantity scheduledDate:(void *)date startDate:(uint64_t)startDate status:(void *)self0 doseUnitString:(unsigned __int8)self1 isLastScheduledDose:
{
  statusCopy = status;
  dateCopy = date;
  doseQuantityCopy = doseQuantity;
  quantityCopy = quantity;
  medicationIdentifierCopy = medicationIdentifier;
  identifierCopy = identifier;
  originCopy = origin;
  objc_opt_self();
  v22 = [MEMORY[0x277CCD650] syncIdentifierForScheduleItemIdentifier:originCopy medicationIdentifier:identifierCopy];
  v23 = MEMORY[0x277CCD650];
  v24 = [MEMORY[0x277CCD650] syncVersionForStatus:startDate];
  v25 = [v23 _metadataWithSyncIdentifier:v22 syncVersion:v24 isLastScheduledDose:string];

  v26 = [MEMORY[0x277CCD650] medicationDoseEventWithLogOrigin:a2 scheduleItemIdentifier:originCopy medicationIdentifier:identifierCopy scheduledDoseQuantity:medicationIdentifierCopy doseQuantity:quantityCopy scheduledDate:doseQuantityCopy startDate:dateCopy logStatus:startDate doseUnitString:statusCopy metadata:v25];

  return v26;
}

uint64_t __175__HDMedicationScheduleManager__filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses_existingDoseEvents_scheduledItemIdentifier_status_logDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 scheduleItemIdentifier];
  v6 = [*(a1 + 32) identifier];
  if (v5 != v6)
  {
    v7 = [*(a1 + 32) identifier];
    if (!v7)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v2 = v7;
    v8 = [v4 scheduleItemIdentifier];
    v9 = [*(a1 + 32) identifier];
    if (![v8 isEqual:v9])
    {
      v17 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v19 = v9;
    v21 = v8;
  }

  v10 = [v4 medicationIdentifier];
  v11 = [*(a1 + 40) medicationIdentifier];
  v12 = v11;
  if (v10 == v11)
  {

    v17 = 1;
  }

  else
  {
    v13 = [*(a1 + 40) medicationIdentifier];
    if (v13)
    {
      v14 = v13;
      v15 = [v4 medicationIdentifier];
      v16 = [*(a1 + 40) medicationIdentifier];
      v17 = [v15 isEqual:v16];
    }

    else
    {

      v17 = 0;
    }
  }

  v9 = v20;
  v8 = v22;
  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v17;
}

void __98__HDMedicationScheduleManager__startObservingMedicationsNotificationSettingsDidChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDMedicationScheduleManager *)WeakRetained _queue_handleNotificationSettingsDidChangeNotification];
}

- (BOOL)updateTimeZoneExperienceAsDismissedWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] User dismissed timeZone experience", buf, 0xCu);
  }

  v6 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [v6 hdmd_timeZoneDomainWithProfile:WeakRetained];

  if ([v8 setNumber:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D11498] error:error])
  {
    v9 = *MEMORY[0x277D11470];
    v10 = objc_loadWeakRetained(&self->_profile);
    notificationManager = [v10 notificationManager];
    v22 = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [notificationManager removeDeliveredNotificationsWithIdentifiers:v12];

    v13 = objc_loadWeakRetained(&self->_profile);
    healthMedicationsProfileExtension = [v13 healthMedicationsProfileExtension];
    medicationNotificationSyncManager = [healthMedicationsProfileExtension medicationNotificationSyncManager];
    notificationSyncClient = [medicationNotificationSyncManager notificationSyncClient];

    date = [MEMORY[0x277CBEAA8] date];
    v18 = [date dateByAddingTimeInterval:86400.0];

    v19 = [objc_alloc(MEMORY[0x277CCD6C0]) initWithAction:1 categoryIdentifier:v9 expirationDate:v18];
    v20 = [notificationSyncClient sendNotificationInstruction:v19 criteria:0 error:error];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:(BOOL)times error:(id *)error
{
  timesCopy = times;
  _HKInitializeLogging();
  v7 = HKLogMedication();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:error:];
    }
  }

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v11 = [(HDMedicationScheduleManager *)self _updateSchedulesToTimeZone:localTimeZone maintainCalendarDatesAndTimes:timesCopy error:error];

  return v11;
}

- (BOOL)_updateSchedulesToTimeZone:(id)zone maintainCalendarDatesAndTimes:(BOOL)times error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v24 = HKStringFromBool();
      *buf = 138543874;
      selfCopy3 = self;
      v33 = 2114;
      v34 = zoneCopy;
      v35 = 2114;
      v36 = v24;
      _os_log_debug_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating schedules with time zone: %{public}@, maintainCalendarDatesAndTimes: %{public}@", buf, 0x20u);
    }
  }

  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v13 = [(HDMedicationScheduleManager *)self medicationSchedulesWithError:error];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __94__HDMedicationScheduleManager__updateSchedulesToTimeZone_maintainCalendarDatesAndTimes_error___block_invoke;
  v26[3] = &unk_2796CD8D0;
  v14 = zoneCopy;
  v27 = v14;
  selfCopy2 = self;
  timesCopy = times;
  v15 = autoupdatingCurrentCalendar;
  v29 = v15;
  v16 = [v13 hk_map:v26];
  _HKInitializeLogging();
  v17 = HKLogMedication();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    errorCopy = error;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v19 = HKSensitiveLogItem();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    v21 = HKSensitiveLogItem();
    *buf = 138544386;
    selfCopy3 = self;
    v33 = 2114;
    v34 = v18;
    v35 = 2114;
    v36 = v19;
    v37 = 2114;
    v38 = v20;
    v39 = 2114;
    v40 = v21;
    _os_log_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Time zone is updated for %{public}@ old schedules: %{public}@, to %{public}@ new schedules: %{public}@", buf, 0x34u);

    error = errorCopy;
  }

  v22 = [(HDMedicationScheduleManager *)self insertMedicationSchedules:v16 error:error];
  return v22;
}

id __94__HDMedicationScheduleManager__updateSchedulesToTimeZone_maintainCalendarDatesAndTimes_error___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 createdUTCOffset];
  v5 = [v4 name];
  v6 = [*(a1 + 32) name];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) name];
      *buf = 138543618;
      v51 = v9;
      v52 = 2114;
      v53 = v10;
      _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Abort update to the same time zone: %{public}@.", buf, 0x16u);
    }

LABEL_7:
    v12 = 0;
    goto LABEL_19;
  }

  if ([v3 isUnavailable])
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138543362;
      v51 = v11;
      _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Abort update to unavailable schedule.", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v13 = [v3 timeIntervals];
  v14 = [*(a1 + 32) secondsFromGMT];
  v15 = [v3 createdUTCOffset];
  v16 = v14 - [v15 secondsFromGMT];

  v17 = [v3 startDateTime];
  v18 = [v3 endDateTime];
  v19 = [v3 cycleStartDate];
  v20 = v19;
  if (*(a1 + 56) == 1)
  {
    v43 = v19;
    v21 = [v3 startDateTime];
    v22 = -v16;
    v23 = [v21 dateByAddingTimeInterval:v22];

    v24 = [v3 endDateTime];
    v25 = [v24 dateByAddingTimeInterval:v22];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = v13;
    v26 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v46;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v8);
          }

          v30 = *(a1 + 32);
          v31 = [*(*(&v45 + 1) + 8 * i) startTimeComponent];
          [v31 setTimeZone:v30];
        }

        v27 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v27);
    }

    v17 = v23;
    v44 = v25;
    v32 = v43;
  }

  else
  {
    v44 = v18;
    v33 = [v3 timeIntervals];
    v8 = [HDMedicationScheduleManager _makeIntervalsWithStartTimeFromIntervals:v33 byAddingTimeDifferenceDuration:v16 calendar:*(a1 + 48) timeZone:*(a1 + 32)];

    v34 = [v3 cycleStartDate];
    v35 = [HDMedicationScheduleManager _makeDateComponentsFromCycleStartDate:v34 byAddingTimeDifferenceSec:v16 calendar:*(a1 + 48)];

    v32 = v35;
  }

  v36 = objc_alloc(MEMORY[0x277D11570]);
  v37 = [v3 UUID];
  v38 = [v3 medicationIdentifier];
  v39 = *(a1 + 32);
  v40 = [v3 scheduleType];
  v41 = [v3 note];
  v12 = [v36 initWithUUID:v37 medicationIdentifier:v38 createdUTCOffset:v39 startDateTime:v17 endDateTime:v44 timeIntervals:v8 scheduleType:v40 cycleStartDateComponents:v32 note:v41];

LABEL_19:

  return v12;
}

+ (id)_makeIntervalsWithStartTimeFromIntervals:(uint64_t)intervals byAddingTimeDifferenceDuration:(void *)duration calendar:(void *)calendar timeZone:
{
  durationCopy = duration;
  calendarCopy = calendar;
  v10 = a2;
  objc_opt_self();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __121__HDMedicationScheduleManager__makeIntervalsWithStartTimeFromIntervals_byAddingTimeDifferenceDuration_calendar_timeZone___block_invoke;
  v15[3] = &unk_2796CD8F8;
  v17 = calendarCopy;
  intervalsCopy = intervals;
  v16 = durationCopy;
  v11 = calendarCopy;
  v12 = durationCopy;
  v13 = [v10 hk_map:v15];

  return v13;
}

+ (id)_makeDateComponentsFromCycleStartDate:(uint64_t)date byAddingTimeDifferenceSec:(void *)sec calendar:
{
  secCopy = sec;
  v7 = a2;
  objc_opt_self();
  [v7 setCalendar:secCopy];
  date = [v7 date];

  v9 = [date dateByAddingTimeInterval:date];
  v10 = [secCopy components:28 fromDate:v9];
  [v10 setCalendar:secCopy];

  v11 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"GMT"];
  [v10 setTimeZone:v11];

  return v10;
}

id __121__HDMedicationScheduleManager__makeIntervalsWithStartTimeFromIntervals_byAddingTimeDifferenceDuration_calendar_timeZone___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startTimeComponent];
  v5 = [HDMedicationScheduleManager _durationForDayHourMinuteSecondComponents:v4];
  v6 = [HDMedicationScheduleManager _hrMinSecSinceMidnightWithDuration:a1[4] calendar:?];
  v7 = v6;
  if (a1[5])
  {
    [v6 setTimeZone:?];
  }

  v8 = objc_alloc(MEMORY[0x277D11580]);
  v9 = [v3 daysOfWeek];
  v10 = [v3 cycleIndex];
  v11 = [v3 cycleIntervalDays];
  v12 = [v3 dose];

  v13 = [v8 initWithStartTimeComponent:v7 daysOfWeek:v9 cycleIndex:v10 cycleIntervalDays:v11 dose:v12];

  return v13;
}

+ (uint64_t)_durationForDayHourMinuteSecondComponents:(uint64_t)components
{
  v2 = a2;
  objc_opt_self();
  if ([v2 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = 86400 * [v2 day];
  }

  if ([v2 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 += 3600 * [v2 hour];
  }

  if ([v2 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 += 60 * [v2 minute];
  }

  if ([v2 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 += [v2 second];
  }

  return v3;
}

+ (id)_hrMinSecSinceMidnightWithDuration:(void *)duration calendar:
{
  durationCopy = duration;
  objc_opt_self();
  v5 = a2 % 86400;
  v6 = a2 % 86400 / 3600;
  v7 = a2 % 86400 - 3600 * v6;
  v8 = v7 / 60;
  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v11 = v10;
  if ((v5 + 3599) >= 0x1C1F)
  {
    [v10 setHour:v6];
  }

  v9 = (v7 - 60 * v8);
  if ((v7 + 59) >= 0x77)
  {
    [v11 setMinute:v8];
  }

  if (v9)
  {
    [v11 setSecond:v9];
  }

  [v11 setCalendar:durationCopy];
  v12 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"GMT"];
  [v11 setTimeZone:v12];

  return v11;
}

- (BOOL)deleteMedicationSchedule:(id)schedule error:(id *)error
{
  deletedSchedule = [schedule deletedSchedule];
  LOBYTE(error) = [(HDMedicationScheduleManager *)self insertMedicationSchedule:deletedSchedule error:error];

  return error;
}

- (BOOL)pruneAllScheduleItemsBeforeDate:(id)date createDoseEvents:(BOOL)events error:(id *)error
{
  eventsCopy = events;
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager pruneAllScheduleItemsBeforeDate:createDoseEvents:error:];
    }
  }

  v12 = [(HDMedicationNotificationManager *)self->_notificationManager pruneAllScheduleItemsBeforeDate:dateCopy createDoseEvents:eventsCopy error:error];
  v13 = v12;
  if (!v12)
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v18 = HKDiagnosticStringFromDate();
    v16 = v18;
    if (error)
    {
      v19 = *error;
    }

    else
    {
      v19 = 0;
    }

    v20 = 138543874;
    selfCopy2 = self;
    v22 = 2114;
    v23 = v18;
    v24 = 2114;
    v25 = v19;
    _os_log_error_impl(&dword_25181C000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to prune schedule items before date %{public}@ with error: %{public}@", &v20, 0x20u);
    goto LABEL_10;
  }

  if ([v12 count])
  {
    [(HDMedicationScheduleManager *)self _notifyObserversDidPruneScheduleItems:v13];
  }

  _HKInitializeLogging();
  v14 = HKLogMedication();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v16 = HKDiagnosticStringFromDate();
    v20 = 138543874;
    selfCopy2 = self;
    v22 = 2112;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully pruned %@ schedule items before date %{public}@", &v20, 0x20u);

LABEL_10:
  }

LABEL_12:

  return v13 != 0;
}

- (void)batchNotifyObserversOnCommitOfTransaction:(id)transaction didAddOrModifySchedule:(id)schedule syncIdentity:(int64_t)identity
{
  transactionCopy = transaction;
  if ([(HDMedicationScheduleManager *)self _addPendingSchedule:schedule syncIdentity:identity])
  {
    protectedDatabase = [transactionCopy protectedDatabase];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __109__HDMedicationScheduleManager_batchNotifyObserversOnCommitOfTransaction_didAddOrModifySchedule_syncIdentity___block_invoke;
    v13[3] = &unk_2796CD970;
    v13[4] = self;
    v10 = transactionCopy;
    v14 = v10;
    [protectedDatabase beforeCommit:v13];

    v11[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __109__HDMedicationScheduleManager_batchNotifyObserversOnCommitOfTransaction_didAddOrModifySchedule_syncIdentity___block_invoke_2;
    v12[3] = &unk_2796CD998;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __109__HDMedicationScheduleManager_batchNotifyObserversOnCommitOfTransaction_didAddOrModifySchedule_syncIdentity___block_invoke_3;
    v11[3] = &unk_2796CD9C0;
    [v10 onCommit:v12 orRollback:v11];
  }
}

void __63__HDMedicationScheduleManager__handleScheduleTransactionCommit__block_invoke(void *a1, void *a2)
{
  v5 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  if (v3)
  {
    [v5 scheduleManager:v4 didAddOrModifySchedulesBySyncIdentity:a1[5]];
  }

  else
  {
    [v5 scheduleManager:v4 didAddOrModifySchedules:a1[6]];
  }
}

- (id)orderingTermsForSortDescriptors:(id)descriptors error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = descriptorsCopy;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = *MEMORY[0x277D113F8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v12 isEqualToString:v9];

        if (!v13)
        {
          v17 = MEMORY[0x277CCA9B8];
          v18 = [v11 key];
          [v17 hk_assignError:error code:3 format:{@"We don't have have any sort descriptor key defined for key: '%@'. Please add them here", v18}];

          v15 = obj;
          v16 = 0;
          goto LABEL_11;
        }

        v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:{objc_msgSend(v11, "ascending")}];
        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = obj;

  v16 = v5;
LABEL_11:

  return v16;
}

- (void)_queue_rescheduleMedications
{
  v36 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_8(self);
    _HKInitializeLogging();
    v3 = HKLogMedication();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7(&dword_25181C000, v4, v5, "[%{public}@] Reschedule medications for delayed operation", buf);
    }

    [(HDMedicationScheduleManager *)v1 queue_takeDBAccessAssertionIfRequired];
    v6 = objc_alloc_init(MEMORY[0x277D10788]);
    [v6 setCacheScope:1];
    if (*(v1 + 88))
    {
      _HKInitializeLogging();
      v7 = HKLogMedication();
      v8 = OUTLINED_FUNCTION_13(v7);

      if (v8)
      {
        v9 = HKLogMedication();
        if (OUTLINED_FUNCTION_13(v9))
        {
          OUTLINED_FUNCTION_6();
          v32 = 2114;
          v33 = v10;
          OUTLINED_FUNCTION_11(&dword_25181C000, v11, v12, "[%{public}@] Adding accessibility assertion: %{public}@", v13, v14, v15, v16, v25, v26, v27, v28, v29, v30);
        }
      }

      [v6 addAccessibilityAssertion:*(v1 + 88)];
    }

    WeakRetained = objc_loadWeakRetained((v1 + 8));
    database = [WeakRetained database];
    v29 = v1;
    v30 = 0;
    OUTLINED_FUNCTION_0_1();
    v26 = 3221225472;
    v27 = __59__HDMedicationScheduleManager__queue_rescheduleMedications__block_invoke;
    v28 = &unk_2796CD798;
    v20 = [v19 performWithTransactionContext:v6 error:&v30 block:&v25];
    v21 = v30;

    [(HDMedicationScheduleManager *)v1 queue_invalidateDBAccessAssertion];
    _HKInitializeLogging();
    v22 = HKLogMedication();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6();
      v32 = 2114;
      if (v20)
      {
        v23 = v24;
      }

      v33 = v23;
      v34 = 2114;
      v35 = v21;
      _os_log_impl(&dword_25181C000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reschedule medications for delayed operation completed with %{public}@, error: %{public}@", buf, 0x20u);
    }

    [(HDMedicationScheduleManager *)v1 _callTestHookdidRunRescheduleOperationWithSuccess:v20 error:v21];
  }
}

- (void)_invalidate
{
  if (self)
  {
    v6 = *(self + 88);
    v2 = *(self + 88);
    *(self + 88) = 0;

    [v6 invalidate];
    v3 = *(self + 64);
    *(self + 64) = 0;
    v4 = v3;

    [v4 invalidate];
    v5 = *(self + 96);
    if (v5 != -1)
    {
      notify_cancel(v5);
      *(self + 96) = -1;
    }
  }
}

- (void)_runRescheduleDelayedOperation
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    daemon = [WeakRetained daemon];
    healthMedicationsDaemonExtension = [daemon healthMedicationsDaemonExtension];
    medicationsBehavior = [healthMedicationsDaemonExtension medicationsBehavior];
    asyncMedicationReschedulesEnabled = [medicationsBehavior asyncMedicationReschedulesEnabled];

    if (asyncMedicationReschedulesEnabled)
    {
      [(HDMedicationScheduleManager *)self _rescheduleOperationDelayWithDefaultDelay:?];
      OUTLINED_FUNCTION_0_1();
      v12[1] = 3221225472;
      v12[2] = __61__HDMedicationScheduleManager__runRescheduleDelayedOperation__block_invoke;
      v12[3] = &unk_2796CD770;
      v12[4] = self;
      v12[5] = v10;
      dispatch_async(v11, v12);
    }

    else
    {
      _HKInitializeLogging();
      v7 = HKLogMedication();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7(&dword_25181C000, v8, v9, "[%{public}@] Async reschedule of meds is disabled by medications behavior", v13);
      }
    }
  }
}

- (uint64_t)_runRescheduleOperationIfListContainsActiveMedsListUDC:(uint64_t)c
{
  v3 = a2;
  v4 = v3;
  if (c)
  {
    v6 = v3;
    v3 = [v3 hk_containsObjectPassingTest:&__block_literal_global_5];
    v4 = v6;
    if (v3)
    {
      [(HDMedicationScheduleManager *)c _runRescheduleDelayedOperation];
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:(uint64_t)predicate error:(void *)error enumerationHandler:
{
  v7 = a2;
  errorCopy = error;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v14 = __124__HDMedicationScheduleManager__enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate_error_enumerationHandler___block_invoke;
    v15 = &unk_2796CD7E8;
    selfCopy = self;
    v17 = v7;
    v18 = errorCopy;
    v11 = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:database error:predicate block:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_enumerateSchedulesInDescendingCreationOrderWithPredicate:(char)predicate includeDeleted:(void *)deleted transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  v22[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  deletedCopy = deleted;
  errorCopy = error;
  if (self)
  {
    v14 = v11;
    if ((predicate & 1) == 0)
    {
      v15 = MEMORY[0x277D10B70];
      v16 = HDMedicationSchedulePredicateForDeleted(0, 1);
      v17 = [v15 compoundPredicateWithPredicate:v16 otherPredicate:v14];

      v14 = v17;
    }

    v18 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:0];
    v22[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v20 = [HDMedicationScheduleEntity enumerateSchedulesWithPredicate:v14 limit:0 orderingTerms:v19 transaction:deletedCopy error:transaction enumerationHandler:errorCopy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_setRescheduleRequiredOnNextUnlock:(uint64_t)unlock
{
  v21 = *MEMORY[0x277D85DE8];
  if (unlock)
  {
    v4 = *(unlock + 72);
    v5 = a2 ? 1 : 2;
    os_unfair_lock_lock((unlock + 80));
    *(unlock + 72) = v5;
    os_unfair_lock_unlock((unlock + 80));
    if (v5 != v4)
    {
      _deviceLocalKeyValueDomain = [(HDMedicationScheduleManager *)unlock _deviceLocalKeyValueDomain];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v14 = 0;
      v8 = [_deviceLocalKeyValueDomain setNumber:v7 forKey:@"rescheduleRequired" error:&v14];
      v9 = v14;

      if ((v8 & 1) == 0)
      {
        _HKInitializeLogging();
        v10 = HKLogMedication();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = HKStringFromBool();
          OUTLINED_FUNCTION_10();
          v16 = v12;
          v17 = v13;
          v18 = @"rescheduleRequired";
          v19 = v13;
          v20 = v9;
          _os_log_error_impl(&dword_25181C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Unable to set value %{public}@ for key %{public}@: %{public}@", buf, 0x2Au);
        }
      }
    }
  }
}

- (id)_notifyObserversForDidRescheduleMedications
{
  v17 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    _HKInitializeLogging();
    v4 = HKLogMedication();
    v5 = OUTLINED_FUNCTION_14(v4);

    if (v5)
    {
      v6 = HKLogMedication();
      if (OUTLINED_FUNCTION_14(v6))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3[3], "count")}];
        OUTLINED_FUNCTION_6();
        v15 = 2114;
        v16 = v9;
        _os_log_debug_impl(&dword_25181C000, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] Notifying %{public}@ observers of reschedule items.", buf, 0x16u);
      }
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v11 = __74__HDMedicationScheduleManager__notifyObserversForDidRescheduleMedications__block_invoke;
    v12 = &unk_2796CD920;
    v13 = v3;
    return [v7 notifyObservers:v10];
  }

  return result;
}

- (double)_rescheduleOperationDelayWithDefaultDelay:(uint64_t)delay
{
  if (!delay)
  {
    return 0.0;
  }

  v4 = MEMORY[0x253084B70](*(delay + 112));
  v5 = v4;
  if (v4)
  {
    a2 = (*(v4 + 16))(v4, delay, a2);
  }

  return a2;
}

- (void)_queue_runRescheduleOperationWithDelay:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_8(result);
    [(HDMedicationScheduleManager *)v2 queue_takeDBAccessAssertionIfRequired];
    v4 = *(v2 + 64);

    return [v4 executeWithDelay:a2];
  }

  return result;
}

- (void)queue_takeDBAccessAssertionIfRequired
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_8(self);
    if (!*(v1 + 88))
    {
      v2 = MEMORY[0x277CCACA8];
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v7 = [v2 stringWithFormat:@"%@-%@", v4, uUIDString];

      WeakRetained = objc_loadWeakRetained((v1 + 8));
      database = [WeakRetained database];
      v16 = 0;
      v10 = [database takeAccessibilityAssertionWithOwnerIdentifier:v7 timeout:&v16 error:300.0];
      v11 = v16;
      v12 = *(v1 + 88);
      *(v1 + 88) = v10;

      if (!*(v1 + 88))
      {
        _HKInitializeLogging();
        v13 = HKLogMedication();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

        if (v14)
        {
          v15 = HKLogMedication();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v18 = v1;
            v19 = 2114;
            v20 = v11;
            _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_INFO, "[%{public}@] Unable to take accessibility assertion: %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }
}

- (void)queue_invalidateDBAccessAssertion
{
  v9 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_8(self);
    [*(v1 + 88) invalidate];
    v3 = *(v1 + 88);
    *(v1 + 88) = 0;

    _HKInitializeLogging();
    v4 = HKLogMedication();
    v5 = OUTLINED_FUNCTION_14(v4);

    if (v5)
    {
      v6 = HKLogMedication();
      if (OUTLINED_FUNCTION_14(v6))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_debug_impl(&dword_25181C000, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] Database accessibility assertion is invalidated", &v7, 0xCu);
      }
    }
  }
}

- (void)_callTestHookdidRunRescheduleOperationWithSuccess:(void *)success error:
{
  successCopy = success;
  if (self)
  {
    v5 = MEMORY[0x253084B70](*(self + 120));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, self, a2, successCopy);
    }
  }
}

- (uint64_t)_hasPersistedRescheduleRequiredOnNextUnlockFlag
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  _deviceLocalKeyValueDomain = [(HDMedicationScheduleManager *)self _deviceLocalKeyValueDomain];
  v11 = 0;
  v3 = [_deviceLocalKeyValueDomain numberForKey:@"rescheduleRequired" error:&v11];
  v4 = v11;
  v5 = v4;
  if (!v3 && v4)
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      v13 = @"rescheduleRequired";
      v14 = v10;
      v15 = v5;
      _os_log_error_impl(&dword_25181C000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Unable to get value for key %{public}@: %{public}@", buf, 0x20u);
    }
  }

  bOOLValue = [v3 BOOLValue];
  os_unfair_lock_lock((self + 80));
  v8 = 1;
  if (!bOOLValue)
  {
    v8 = 2;
  }

  *(self + 72) = v8;
  os_unfair_lock_unlock((self + 80));

  return bOOLValue;
}

- (id)_deviceLocalKeyValueDomain
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc(MEMORY[0x277D10718]);
    WeakRetained = objc_loadWeakRetained(selfCopy + 1);
    selfCopy = [v2 initWithCategory:0 domainName:@"MedicationScheduleManager" profile:WeakRetained];
  }

  return selfCopy;
}

- (uint64_t)_insertMedicationSchedules:(uint64_t)schedules syncProvenance:(void *)provenance syncIdentity:(void *)identity transaction:(uint64_t)transaction error:
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a2;
  identityCopy = identity;
  if (self)
  {
    if ([v10 count])
    {
      if (provenance == -1)
      {
        WeakRetained = objc_loadWeakRetained((self + 8));
        syncIdentityManager = [WeakRetained syncIdentityManager];
        legacySyncIdentity = [syncIdentityManager legacySyncIdentity];
        entity = [legacySyncIdentity entity];
        provenance = [entity persistentID];
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v10;
      v16 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        v30 = v10;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = objc_loadWeakRetained((self + 8));
            v22 = [HDMedicationScheduleEntity insertMedicationSchedule:v20 syncProvenance:schedules syncIdentity:provenance profile:v21 transaction:identityCopy error:transaction];

            if (v22)
            {
              medicationIdentifier = [v20 medicationIdentifier];

              if (!medicationIdentifier)
              {
                continue;
              }

              medicationIdentifier2 = [v20 medicationIdentifier];
              v37 = medicationIdentifier2;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
              v26 = HDDismissedRemoteScheduleUnavailableRecordsForMedicationSemanticIdentifiers(v25);

              database = [identityCopy database];
              LODWORD(medicationIdentifier2) = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity deleteEntitiesWithPredicate:v26 healthDatabase:database error:transaction];

              if (medicationIdentifier2)
              {
                continue;
              }
            }

            v28 = 0;
            v10 = v30;
            goto LABEL_19;
          }

          v17 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
          v28 = 1;
          v10 = v30;
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v28 = 1;
      }

LABEL_19:
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)_queue_handleNotificationSettingsDidChangeNotification
{
  v7 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_8(self);
    _HKInitializeLogging();
    v2 = HKLogMedication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v1;
    }

    [(HDMedicationScheduleManager *)v1 _queue_rescheduleMedications];
  }
}

- (void)_notifyObserversDidPruneScheduleItems:(uint64_t)items
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (items)
  {
    _HKInitializeLogging();
    v5 = HKLogMedication();
    v6 = OUTLINED_FUNCTION_13(v5);

    if (v6)
    {
      v7 = HKLogMedication();
      if (OUTLINED_FUNCTION_13(v7))
      {
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(items + 24), "count")}];
        *buf = 138543618;
        itemsCopy = items;
        v24 = v23 = 2114;
        OUTLINED_FUNCTION_11(&dword_25181C000, v9, v10, "[%{public}@] Notifying %{public}@ observers of prune schedule items.", v11, v12, v13, v14, v15, v16, v17, v18, itemsCopy2, v20);
      }
    }

    v8 = *(items + 24);
    OUTLINED_FUNCTION_0_1();
    v16 = 3221225472;
    v17 = __69__HDMedicationScheduleManager__notifyObserversDidPruneScheduleItems___block_invoke;
    v18 = &unk_2796CD948;
    itemsCopy2 = items;
    v20 = v4;
    [v8 notifyObservers:&v15];
  }
}

- (BOOL)_addPendingSchedule:(uint64_t)schedule syncIdentity:
{
  v5 = a2;
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v6 = *(self + 48);
    v7 = v6 == 0;
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = *(self + 48);
      *(self + 48) = v8;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:schedule];
    v11 = [*(self + 48) objectForKeyedSubscript:v10];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [*(self + 48) setObject:v11 forKeyedSubscript:v10];
    }

    [v11 addObject:v5];
    os_unfair_lock_unlock((self + 40));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleBeforeCommitOfTransaction:(id *)transaction
{
  v8 = a2;
  if (transaction)
  {
    _pendingSchedulesBySyncIdentity = [(HDMedicationScheduleManager *)transaction _pendingSchedulesBySyncIdentity];
    WeakRetained = objc_loadWeakRetained(transaction + 1);
    currentSyncIdentityPersistentID = [WeakRetained currentSyncIdentityPersistentID];

    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:currentSyncIdentityPersistentID];
    v7 = [_pendingSchedulesBySyncIdentity objectForKeyedSubscript:v6];

    if ([v7 count])
    {
      [(HDMedicationScheduleManager *)transaction _notifySynchronousObserversInTransaction:v8 willReschedule:v7];
      [transaction rescheduleMedicationsSynchronously:1];
      [(HDMedicationScheduleManager *)transaction _notifySynchronousObserversInTransaction:v8 didReschedule:v7];
    }

    else
    {
      [transaction rescheduleMedicationsSynchronously:0];
    }
  }
}

- (void)_handleScheduleTransactionCommit
{
  v22 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = [*(self + 48) copy];
    v3 = *(self + 48);
    *(self + 48) = 0;

    os_unfair_lock_unlock((self + 40));
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [v2 allValues];
    v6 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [v4 addObjectsFromArray:*(*(&v17 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v10 = *(self + 24);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__HDMedicationScheduleManager__handleScheduleTransactionCommit__block_invoke;
    v13[3] = &unk_2796CDA10;
    v13[4] = self;
    v14 = v2;
    v15 = v4;
    v16 = sel_scheduleManager_didAddOrModifySchedulesBySyncIdentity_;
    v11 = v4;
    v12 = v2;
    [v10 notifyObservers:v13];
  }
}

- (void)_handleScheduleTransactionRollback
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 48);
    *(self + 48) = 0;

    os_unfair_lock_unlock((self + 40));
  }
}

- (id)_pendingSchedulesBySyncIdentity
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = [*(self + 48) copy];
    os_unfair_lock_unlock((self + 40));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_notifySynchronousObserversInTransaction:(void *)transaction willReschedule:
{
  v5 = a2;
  transactionCopy = transaction;
  if (self)
  {
    v7 = *(self + 32);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v9 = __87__HDMedicationScheduleManager__notifySynchronousObserversInTransaction_willReschedule___block_invoke;
    v10 = &unk_2796CD9E8;
    selfCopy = self;
    v12 = v5;
    v13 = transactionCopy;
    [v7 notifyObservers:v8];
  }
}

- (void)_notifySynchronousObserversInTransaction:(void *)transaction didReschedule:
{
  v5 = a2;
  transactionCopy = transaction;
  if (self)
  {
    v7 = *(self + 32);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v9 = __86__HDMedicationScheduleManager__notifySynchronousObserversInTransaction_didReschedule___block_invoke;
    v10 = &unk_2796CD9E8;
    selfCopy = self;
    v12 = v5;
    v13 = transactionCopy;
    [v7 notifyObservers:v8];
  }
}

- (void)medicationSchedule:medicationIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(v0, v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_fetchMedicationSchedule:(uint64_t)a1 predicate:(uint64_t *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = v3;
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@] Fetch medication schedule failed with error: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
}

- (void)medicationSchedule:identifier:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(v0, v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)medicationSchedulesWithPredicate:transaction:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(v0, v1);
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)insertMedicationSchedule:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(v0, v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)insertMedicationSchedules:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v8 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)rescheduleMedicationsWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_25181C000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Rescheduling medications", &v2, 0xCu);
}

- (void)rescheduleMedicationsSynchronously:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = HKLogMedication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_impl(&dword_25181C000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Rescheduling medications with delayed operation", &v3, 0xCu);
  }
}

- (void)rescheduleMedicationsSynchronously:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@]: Failed to reschedule medications synchronously: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)updateNotificationSent:scheduleItemIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(v0, v1);
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = HKStringFromBool();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)pruneAllScheduleItemsBeforeDate:createDoseEvents:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(v0, v1);
  v2 = HKDiagnosticStringFromDate();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end