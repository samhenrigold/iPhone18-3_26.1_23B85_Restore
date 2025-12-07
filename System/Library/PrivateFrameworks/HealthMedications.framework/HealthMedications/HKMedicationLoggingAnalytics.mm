@interface HKMedicationLoggingAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
+ (int64_t)_detailedScheduleLoggingContextForScheduleType:(int64_t)type;
+ (int64_t)_extractCommonScheduleTypeForMedicationSchedules:(id)schedules;
+ (int64_t)_unitTesting_detailedLoggingContextForLoggingContext:(int64_t)context schedules:(id)schedules;
+ (void)submitLogMetricWithHealthStore:(id)store actions:(int64_t)actions provenance:(int64_t)provenance context:(int64_t)context medicationIdentifiers:(id)identifiers loggingMultipleMeds:(BOOL)meds hoursAgoLoggedForMax:(id)max hoursAgoLoggedForMin:(id)self0 hoursFromScheduledTimeLoggedMax:(id)self1 hoursFromScheduledTimeLoggedMin:(id)self2 hoursFromScheduledToTakenOrSkippedMax:(id)self3 hoursFromScheduledToTakenOrSkippedMin:(id)self4 isPartiallyLoggingScheduledMeds:(id)self5 dataSource:(id)self6;
@end

@implementation HKMedicationLoggingAnalytics

+ (BOOL)shouldSubmit
{
  _isMetricEnabled = [self _isMetricEnabled];
  if (_isMetricEnabled)
  {

    LOBYTE(_isMetricEnabled) = [self _isAllowed];
  }

  return _isMetricEnabled;
}

+ (BOOL)_isMetricEnabled
{
  v2 = +[HKMedicationLogMetric eventName];
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

+ (void)submitLogMetricWithHealthStore:(id)store actions:(int64_t)actions provenance:(int64_t)provenance context:(int64_t)context medicationIdentifiers:(id)identifiers loggingMultipleMeds:(BOOL)meds hoursAgoLoggedForMax:(id)max hoursAgoLoggedForMin:(id)self0 hoursFromScheduledTimeLoggedMax:(id)self1 hoursFromScheduledTimeLoggedMin:(id)self2 hoursFromScheduledToTakenOrSkippedMax:(id)self3 hoursFromScheduledToTakenOrSkippedMin:(id)self4 isPartiallyLoggingScheduledMeds:(id)self5 dataSource:(id)self6
{
  v72 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  identifiersCopy = identifiers;
  maxCopy = max;
  minCopy = min;
  loggedMaxCopy = loggedMax;
  loggedMinCopy = loggedMin;
  skippedMaxCopy = skippedMax;
  skippedMinCopy = skippedMin;
  scheduledMedsCopy = scheduledMeds;
  sourceCopy = source;
  shouldSubmit = [self shouldSubmit];
  v47 = minCopy;
  v48 = maxCopy;
  v45 = loggedMinCopy;
  v46 = loggedMaxCopy;
  if (shouldSubmit)
  {
    HKMedicationsSharedAnalyticsQueue(shouldSubmit);
    v43 = skippedMinCopy;
    v29 = v28 = skippedMaxCopy;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke;
    block[3] = &unk_2796CAC28;
    v51 = storeCopy;
    v52 = identifiersCopy;
    selfCopy = self;
    contextCopy = context;
    actionsCopy = actions;
    provenanceCopy = provenance;
    medsCopy = meds;
    v53 = maxCopy;
    v54 = minCopy;
    v55 = loggedMaxCopy;
    v56 = loggedMinCopy;
    v57 = v28;
    v58 = v43;
    v59 = scheduledMedsCopy;
    v60 = sourceCopy;
    dispatch_async(v29, block);

    skippedMaxCopy = v28;
    skippedMinCopy = v43;

    v30 = v51;
    v31 = storeCopy;
    v32 = identifiersCopy;
  }

  else
  {
    _HKInitializeLogging();
    v33 = HKLogMedication();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);

    v31 = storeCopy;
    v32 = identifiersCopy;
    if (!v34)
    {
      goto LABEL_7;
    }

    v30 = HKLogMedication();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = MEMORY[0x277CCABB0];
      v44 = v35;
      v37 = [v36 numberWithBool:{objc_msgSend(self, "_isMetricEnabled")}];
      v38 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isAllowed")}];
      *buf = 138543874;
      v67 = v35;
      v31 = storeCopy;
      v68 = 2114;
      v69 = v37;
      v70 = 2114;
      v71 = v38;
      _os_log_impl(&dword_2517E7000, v30, OS_LOG_TYPE_INFO, "[%{public}@] Skipping submitting metric. isMetricEnabled: %{public}@, isHealthDataSubmissionAllowed: %{public}@", buf, 0x20u);

      v32 = identifiersCopy;
    }
  }

LABEL_7:
}

void __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke(uint64_t a1)
{
  v2 = [[HKMedicationScheduleControl alloc] initWithHealthStore:*(a1 + 32)];
  v3 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke_2;
  v16[3] = &unk_2796CAC00;
  v21 = *(a1 + 112);
  v22 = *(a1 + 120);
  v23 = *(a1 + 136);
  v24 = *(a1 + 144);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v17 = v9;
  v18 = v8;
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v19 = v15;
  v20 = v14;
  [(HKMedicationScheduleControl *)v2 fetchSchedulesWithMedicationIdentifiers:v3 completion:v16];
}

void __357__HKMedicationLoggingAnalytics_submitLogMetricWithHealthStore_actions_provenance_context_medicationIdentifiers_loggingMultipleMeds_hoursAgoLoggedForMax_hoursAgoLoggedForMin_hoursFromScheduledTimeLoggedMax_hoursFromScheduledTimeLoggedMin_hoursFromScheduledToTakenOrSkippedMax_hoursFromScheduledToTakenOrSkippedMin_isPartiallyLoggingScheduledMeds_dataSource___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 96) _unitTesting_detailedLoggingContextForLoggingContext:*(a1 + 104) schedules:a2];
  v4 = [[HKMedicationLogMetric alloc] initWithActions:*(a1 + 112) provenance:*(a1 + 120) context:v3 loggingMultipleMeds:*(a1 + 128) hoursAgoLoggedForMax:*(a1 + 32) hoursAgoLoggedForMin:*(a1 + 40) hoursFromScheduledTimeLoggedMax:*(a1 + 48) hoursFromScheduledTimeLoggedMin:*(a1 + 56) hoursFromScheduledToTakenOrSkippedMax:*(a1 + 64) hoursFromScheduledToTakenOrSkippedMin:*(a1 + 72) isPartiallyLoggingScheduledMeds:*(a1 + 80) dataSource:*(a1 + 88)];
  v5 = +[HKMedicationLogMetric eventName];
  v6 = [(HKMedicationLogMetric *)v4 eventPayload];
  AnalyticsSendEvent();

  _HKInitializeLogging();
  v7 = HKLogMedication();
  LODWORD(v6) = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = HKSensitiveLogItem();
      v12 = HKStringFromMedicationLoggingContext(v3);
      *buf = 138543874;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_2517E7000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Submitted metric %{public}@ with context: %{public}@", buf, 0x20u);
    }
  }
}

+ (int64_t)_unitTesting_detailedLoggingContextForLoggingContext:(int64_t)context schedules:(id)schedules
{
  if (context != 1)
  {
    return context;
  }

  v6 = [self _extractCommonScheduleTypeForMedicationSchedules:schedules];

  return [self _detailedScheduleLoggingContextForScheduleType:v6];
}

+ (int64_t)_detailedScheduleLoggingContextForScheduleType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    return 1;
  }

  else
  {
    return qword_25180A660[type - 1];
  }
}

+ (int64_t)_extractCommonScheduleTypeForMedicationSchedules:(id)schedules
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  schedulesCopy = schedules;
  v4 = [schedulesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(schedulesCopy);
        }

        scheduleType = [*(*(&v11 + 1) + 8 * i) scheduleType];
        if (v6)
        {
          if (v6 != scheduleType)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v6 = scheduleType;
        }
      }

      v5 = [schedulesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  return v6;
}

@end