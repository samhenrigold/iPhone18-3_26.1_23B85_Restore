@interface HDMedicationScheduleControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (BOOL)insertMedicationScheduleItems:(id)items error:(id *)error;
- (HDMedicationScheduleControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)medicationSchedulesForMedicationIdentifiers:(id)identifiers error:(id *)error;
- (void)remote_deleteSchedule:(id)schedule completion:(id)completion;
- (void)remote_fetchAllSchedulesWithCompletion:(id)completion;
- (void)remote_fetchScheduleWithMedicationIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchSchedulesWithMedicationIdentifiers:(id)identifiers completion:(id)completion;
- (void)remote_logUnloggedMedicationsWithScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date completion:(id)completion;
- (void)remote_observeMedicationScheduleChanges:(BOOL)changes completion:(id)completion;
- (void)remote_rescheduleMedicationsWithCompletion:(id)completion;
- (void)remote_saveSchedule:(id)schedule completion:(id)completion;
- (void)remote_saveScheduleItems:(id)items completion:(id)completion;
- (void)remote_setTimeZoneTipAsDismissedWithCompletion:(id)completion;
- (void)remote_updateNotificationSent:(BOOL)sent scheduleItemIdentifier:(id)identifier completion:(id)completion;
- (void)remote_updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:(BOOL)times completion:(id)completion;
- (void)scheduleManager:(id)manager didAddOrModifySchedules:(id)schedules;
- (void)scheduleManager:(id)manager didPruneScheduleItems:(id)items;
- (void)scheduleManagerDidRescheduleMedications:(id)medications;
@end

@implementation HDMedicationScheduleControlServer

- (void)remote_saveSchedule:(id)schedule completion:(id)completion
{
  completionCopy = completion;
  scheduleCopy = schedule;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v13 = 0;
  v11 = [medicationScheduleManager insertMedicationSchedule:scheduleCopy error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:(BOOL)times completion:(id)completion
{
  timesCopy = times;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v12 = 0;
  v10 = [medicationScheduleManager updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:timesCopy error:&v12];
  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)remote_setTimeZoneTipAsDismissedWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v10 = 0;
  v8 = [medicationScheduleManager updateTimeZoneExperienceAsDismissedWithError:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_fetchScheduleWithMedicationIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v14 = 0;
  v15 = 0;
  LODWORD(profile) = [medicationScheduleManager medicationSchedule:&v15 medicationIdentifier:identifierCopy error:&v14];

  v11 = v15;
  v12 = v14;
  if (profile)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  (completionCopy)[2](completionCopy, v13, v12);
}

- (void)remote_fetchSchedulesWithMedicationIdentifiers:(id)identifiers completion:(id)completion
{
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDMedicationScheduleControlServer *)self medicationSchedulesForMedicationIdentifiers:identifiers error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_fetchAllSchedulesWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v10 = 0;
  v8 = [medicationScheduleManager medicationSchedulesWithError:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_deleteSchedule:(id)schedule completion:(id)completion
{
  completionCopy = completion;
  scheduleCopy = schedule;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v13 = 0;
  v11 = [medicationScheduleManager deleteMedicationSchedule:scheduleCopy error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_rescheduleMedicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v10 = 0;
  v8 = [medicationScheduleManager rescheduleMedicationsWithError:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_observeMedicationScheduleChanges:(BOOL)changes completion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  self->_shouldObserveChanges = changes;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  if (self->_shouldObserveChanges)
  {
    [medicationScheduleManager registerObserver:self queue:0];
  }

  else
  {
    [medicationScheduleManager unregisterObserver:self];
  }

  os_unfair_lock_unlock(&self->_lock);
  completionCopy[2](completionCopy, 1, 0);
}

- (id)medicationSchedulesForMedicationIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v10 = HDMedicationSchedulePredicateForMedicationIdentifiers(identifiersCopy);

  v11 = [medicationScheduleManager medicationSchedulesWithPredicate:v10 error:error];

  return v11;
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  v14 = [[HDMedicationScheduleControlServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];

  return v14;
}

- (HDMedicationScheduleControlServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = HDMedicationScheduleControlServer;
  result = [(HDStandardTaskServer *)&v7 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_shouldObserveChanges = 0;
  }

  return result;
}

- (void)scheduleManagerDidRescheduleMedications:(id)medications
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  shouldObserveChanges = self->_shouldObserveChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (shouldObserveChanges)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__HDMedicationScheduleControlServer_scheduleManagerDidRescheduleMedications___block_invoke;
    v9[3] = &unk_2796CD9C0;
    v9[4] = self;
    v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v9];
    _HKInitializeLogging();
    v6 = HKLogMedication();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = HKLogMedication();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_INFO, "%{public}@: Notify client for did reschedule medications", buf, 0xCu);
      }
    }

    [v5 client_notifyForDidRescheduleMedications];
  }
}

void __77__HDMedicationScheduleControlServer_scheduleManagerDidRescheduleMedications___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__HDMedicationScheduleControlServer_scheduleManagerDidRescheduleMedications___block_invoke_cold_1();
  }
}

- (void)scheduleManager:(id)manager didPruneScheduleItems:(id)items
{
  v14 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  os_unfair_lock_lock(&self->_lock);
  shouldObserveChanges = self->_shouldObserveChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (shouldObserveChanges)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__HDMedicationScheduleControlServer_scheduleManager_didPruneScheduleItems___block_invoke;
    v11[3] = &unk_2796CD9C0;
    v11[4] = self;
    v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v11];
    _HKInitializeLogging();
    v8 = HKLogMedication();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for didPruneScheduleItems", buf, 0xCu);
      }
    }

    [v7 client_notifyForDidPruneSchduleItems:itemsCopy];
  }
}

void __75__HDMedicationScheduleControlServer_scheduleManager_didPruneScheduleItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__HDMedicationScheduleControlServer_scheduleManager_didPruneScheduleItems___block_invoke_cold_1();
  }
}

- (void)scheduleManager:(id)manager didAddOrModifySchedules:(id)schedules
{
  v17 = *MEMORY[0x277D85DE8];
  schedulesCopy = schedules;
  os_unfair_lock_lock(&self->_lock);
  shouldObserveChanges = self->_shouldObserveChanges;
  os_unfair_lock_unlock(&self->_lock);
  if (shouldObserveChanges)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__HDMedicationScheduleControlServer_scheduleManager_didAddOrModifySchedules___block_invoke;
    v12[3] = &unk_2796CD9C0;
    v12[4] = self;
    v7 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v12];
    _HKInitializeLogging();
    v8 = HKLogMedication();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [schedulesCopy count];
        *buf = 138543618;
        selfCopy = self;
        v15 = 2048;
        v16 = v11;
        _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_INFO, "%{public}@: Notify client for didAddOrModifySchedules %ld", buf, 0x16u);
      }
    }

    [v7 client_notifyForAddOrModifySchedules:schedulesCopy];
  }
}

void __77__HDMedicationScheduleControlServer_scheduleManager_didAddOrModifySchedules___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__HDMedicationScheduleControlServer_scheduleManager_didAddOrModifySchedules___block_invoke_cold_1();
  }
}

- (void)remote_saveScheduleItems:(id)items completion:(id)completion
{
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDMedicationScheduleControlServer *)self insertMedicationScheduleItems:items error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (BOOL)insertMedicationScheduleItems:(id)items error:(id *)error
{
  itemsCopy = items;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HDMedicationScheduleControlServer_insertMedicationScheduleItems_error___block_invoke;
  v11[3] = &unk_2796CD388;
  v12 = itemsCopy;
  v9 = itemsCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDMedicationScheduleItemEntity performWriteTransactionWithHealthDatabase:database error:error block:v11];

  return error;
}

uint64_t __73__HDMedicationScheduleControlServer_insertMedicationScheduleItems_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [HDMedicationScheduleItemEntity insertMedicationScheduleItem:*(*(&v14 + 1) + 8 * v10) transaction:v5 error:a3, v14];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)remote_updateNotificationSent:(BOOL)sent scheduleItemIdentifier:(id)identifier completion:(id)completion
{
  sentCopy = sent;
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v15 = 0;
  v13 = [medicationScheduleManager updateNotificationSent:sentCopy scheduleItemIdentifier:identifierCopy error:&v15];

  v14 = v15;
  completionCopy[2](completionCopy, v13, v14);
}

- (void)remote_logUnloggedMedicationsWithScheduledItemIdentifier:(id)identifier status:(int64_t)status logDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

  v18 = 0;
  v16 = [medicationScheduleManager logUnloggedDoseEventsForScheduledItemIdentifier:identifierCopy status:status logDate:dateCopy error:&v18];

  v17 = v18;
  completionCopy[2](completionCopy, v16, v17);
}

@end