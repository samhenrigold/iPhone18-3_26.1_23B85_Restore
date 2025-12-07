@interface HDMedicationTimeZoneManager
- (BOOL)_isAuthorizedToFireTimeZoneNotificationWithProfile:(id)profile;
- (BOOL)_updateTimeZoneExperienceAsEnabled:(BOOL)enabled transaction:(id)transaction error:(id *)error;
- (BOOL)_updateTimeZoneOffsetOffset:(id)offset transaction:(id)transaction error:(id *)error;
- (HDMedicationTimeZoneManager)initWithProfile:(id)profile;
- (id)_mostRecentTimeZoneOffsetWithProfile:(id)profile;
- (void)_performTimeZoneDetectionOperationOrJournalWithProfile:(uint64_t)profile motive:;
- (void)handleTimeZoneChange;
- (void)profileDidBecomeReady:(id)ready;
- (void)scheduleManager:(id)manager didAddOrModifySchedules:(id)schedules;
@end

@implementation HDMedicationTimeZoneManager

- (HDMedicationTimeZoneManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HDMedicationTimeZoneManager;
  v5 = [(HDMedicationTimeZoneManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    hkmd_supportsTimeZone = [behavior hkmd_supportsTimeZone];

    if (hkmd_supportsTimeZone)
    {
      v10 = HKCreateSerialDispatchQueue();
      queue = v6->_queue;
      v6->_queue = v10;

      WeakRetained = objc_loadWeakRetained(&v6->_profile);
      [WeakRetained registerProfileReadyObserver:v6 queue:v6->_queue];
    }
  }

  return v6;
}

- (void)handleTimeZoneChange
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Time zone changed", &v5, 0xCu);
  }

  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [(HDMedicationTimeZoneManager *)self _performTimeZoneDetectionOperationOrJournalWithProfile:1 motive:?];
}

- (BOOL)_isAuthorizedToFireTimeZoneNotificationWithProfile:(id)profile
{
  v21 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = MEMORY[0x253084B70](self->_unitTestingAuthorizedToFireTimeZoneNotificationHandler);
  v6 = v5;
  if (!v5)
  {
    healthMedicationsProfileExtension = [profileCopy healthMedicationsProfileExtension];
    medicationUserDefaults = [healthMedicationsProfileExtension medicationUserDefaults];

    v11 = [medicationUserDefaults objectForKey:*MEMORY[0x277D114A0]];
    v9 = v11;
    if (v11 && ([v11 BOOLValue] & 1) == 0)
    {
      _HKInitializeLogging();
      v14 = HKLogMedication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        selfCopy3 = self;
        v15 = "[%{public}@]: Should not fire timezone alert. Setting toggle off";
        goto LABEL_12;
      }
    }

    else
    {
      notificationManager = [profileCopy notificationManager];
      areHealthNotificationsAuthorized = [notificationManager areHealthNotificationsAuthorized];

      if (areHealthNotificationsAuthorized)
      {
        v7 = 1;
        goto LABEL_14;
      }

      _HKInitializeLogging();
      v14 = HKLogMedication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        selfCopy3 = self;
        v15 = "[%{public}@]: Should not fire timezone alert. Health notifications not authorized.";
LABEL_12:
        _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, v15, &v17, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  v7 = (*(v5 + 16))(v5);
  _HKInitializeLogging();
  medicationUserDefaults = HKLogMedication();
  if (os_log_type_enabled(medicationUserDefaults, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HKStringFromBool();
    v17 = 138543618;
    selfCopy3 = self;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_25181C000, medicationUserDefaults, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Unit testing. Handler returned value: '%{public}@'", &v17, 0x16u);
LABEL_14:
  }

  return v7;
}

- (BOOL)_updateTimeZoneOffsetOffset:(id)offset transaction:(id)transaction error:(id *)error
{
  v7 = MEMORY[0x277D10718];
  offsetCopy = offset;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = [v7 hdmd_timeZoneDomainWithProfile:WeakRetained];

  [v10 setNumber:offsetCopy forKey:*MEMORY[0x277D114B8] error:error];
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(error) = [v10 setDate:date forKey:*MEMORY[0x277D114B0] error:error];

  return error;
}

- (BOOL)_updateTimeZoneExperienceAsEnabled:(BOOL)enabled transaction:(id)transaction error:(id *)error
{
  enabledCopy = enabled;
  v34 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [v7 hdmd_timeZoneDomainWithProfile:WeakRetained];

  _HKInitializeLogging();
  v10 = HKLogMedication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HKStringFromBool();
    *buf = 138543618;
    selfCopy2 = self;
    v32 = 2114;
    v33 = v11;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v13 = *MEMORY[0x277D11498];
  v28 = 0;
  [v9 setNumber:v12 forKey:v13 error:&v28];
  v14 = v28;

  if (v14)
  {
    _HKInitializeLogging();
    hkmd_requestForTimeZoneNotification = HKLogMedication();
    if (os_log_type_enabled(hkmd_requestForTimeZoneNotification, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationTimeZoneManager _updateTimeZoneExperienceAsEnabled:transaction:error:];
    }
  }

  else
  {
    hkmd_requestForTimeZoneNotification = [MEMORY[0x277CE1FC0] hkmd_requestForTimeZoneNotification];
    if (enabledCopy)
    {
      _HKInitializeLogging();
      v16 = HKLogMedication();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        content = [hkmd_requestForTimeZoneNotification content];
        title = [content title];
        *buf = 138543618;
        selfCopy2 = self;
        v32 = 2114;
        v33 = title;
        _os_log_impl(&dword_25181C000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Will post notification request: %{public}@", buf, 0x16u);
      }

      v19 = MEMORY[0x253084B70](self->_unitTestingNotificationFiringHandler);
      v20 = v19;
      if (v19)
      {
        (*(v19 + 16))(v19, hkmd_requestForTimeZoneNotification);
      }

      v21 = objc_loadWeakRetained(&self->_profile);
      notificationManager = [v21 notificationManager];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __84__HDMedicationTimeZoneManager__updateTimeZoneExperienceAsEnabled_transaction_error___block_invoke;
      v27[3] = &unk_2796CE3B0;
      v27[4] = self;
      [notificationManager postNotificationWithRequest:hkmd_requestForTimeZoneNotification completion:v27];
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_profile);
      notificationManager2 = [v20 notificationManager];
      identifier = [hkmd_requestForTimeZoneNotification identifier];
      v29 = identifier;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [notificationManager2 removeDeliveredNotificationsWithIdentifiers:v25];
    }
  }

  return v14 == 0;
}

void __84__HDMedicationTimeZoneManager__updateTimeZoneExperienceAsEnabled_transaction_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogMedication();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Did successfully post timezone changed notification", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __84__HDMedicationTimeZoneManager__updateTimeZoneExperienceAsEnabled_transaction_error___block_invoke_cold_1(a1, v5, v7);
  }
}

- (id)_mostRecentTimeZoneOffsetWithProfile:(id)profile
{
  v3 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 hdmd_timeZoneDomainWithProfile:WeakRetained];

  v6 = [v5 numberForKey:*MEMORY[0x277D114B8] error:0];

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  healthMedicationsProfileExtension = [WeakRetained healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];
  [medicationScheduleManager registerObserver:self queue:self->_queue];
}

- (void)_performTimeZoneDetectionOperationOrJournalWithProfile:(uint64_t)profile motive:
{
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = a2;
    v6 = [[HDMedicationTimeZoneDetectionOperation alloc] initWithMotive:profile];
    v14 = 0;
    v7 = [(HDJournalableOperation *)v6 performOrJournalWithProfile:v5 error:&v14];

    v8 = v14;
    v9 = MEMORY[0x253084B70](*(self + 32));
    if (v9)
    {
      (v9)[2](v9, v7, [(HDJournalableOperation *)v6 didJournal], profile, v8);
    }

    _HKInitializeLogging();
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (profile == 2)
      {
        profile = @"Schedule Change";
      }

      else if (profile == 1)
      {
        profile = @"TimeZone Change";
      }

      else
      {
        profile = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", profile];
      }

      v12 = profile;
      v13 = HKStringFromBool();

      *buf = 138544130;
      selfCopy = self;
      v17 = 2114;
      v18 = profile;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: TimeZone operation ran with motive: '%{public}@' and returned result: '%{public}@ error: '%{public}@'", buf, 0x2Au);
    }
  }
}

- (void)scheduleManager:(id)manager didAddOrModifySchedules:(id)schedules
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: schedules modified re-evaluating our timezone tile status.", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  [(HDMedicationTimeZoneManager *)self _performTimeZoneDetectionOperationOrJournalWithProfile:2 motive:?];
}

void __84__HDMedicationTimeZoneManager__updateTimeZoneExperienceAsEnabled_transaction_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@]: Failed to post timezone changed notification request error:%{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end