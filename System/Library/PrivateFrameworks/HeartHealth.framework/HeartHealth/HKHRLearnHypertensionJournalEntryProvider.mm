@interface HKHRLearnHypertensionJournalEntryProvider
- (BOOL)_setAnchorsFromJournal:(id)journal;
- (HKHRLearnHypertensionJournalEntryProvider)initWithJournal:(id)journal;
- (id)journalEntryForSample:(id)sample;
@end

@implementation HKHRLearnHypertensionJournalEntryProvider

- (HKHRLearnHypertensionJournalEntryProvider)initWithJournal:(id)journal
{
  journalCopy = journal;
  v10.receiver = self;
  v10.super_class = HKHRLearnHypertensionJournalEntryProvider;
  v5 = [(HKHRLearnHypertensionJournalEntryProvider *)&v10 init];
  if (v5)
  {
    if ([journalCopy scheduleType])
    {
      _HKInitializeLogging();
      v6 = HKHRBloodPressureLogForCategory(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(HKHRLearnHypertensionJournalEntryProvider *)v5 initWithJournal:journalCopy, v6];
      }

      goto LABEL_8;
    }

    [(HKHRLearnHypertensionJournalEntryProvider *)v5 setJournal:journalCopy];
    v7 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    [(HKHRLearnHypertensionJournalEntryProvider *)v5 setCalendarCache:v7];

    if (![(HKHRLearnHypertensionJournalEntryProvider *)v5 _setAnchorsFromJournal:journalCopy])
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  v8 = v5;
LABEL_9:

  return v8;
}

- (BOOL)_setAnchorsFromJournal:(id)journal
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(HKHRLearnHypertensionJournalEntryProvider *)self journal:journal];
  timeIntervals = [v4 timeIntervals];

  v6 = [timeIntervals countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(timeIntervals);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        dayWindowType = [v10 dayWindowType];
        if (dayWindowType == 1)
        {
          scheduledTime = [v10 scheduledTime];
          [(HKHRLearnHypertensionJournalEntryProvider *)self setBedtime:scheduledTime];
        }

        else
        {
          if (dayWindowType)
          {
            _HKInitializeLogging();
            wakeup = HKHRBloodPressureLogForCategory(1);
            if (os_log_type_enabled(wakeup, OS_LOG_TYPE_ERROR))
            {
              [(HKHRLearnHypertensionJournalEntryProvider *)self _setAnchorsFromJournal:v10, wakeup];
            }

            v14 = 0;
            goto LABEL_17;
          }

          scheduledTime = [v10 scheduledTime];
          [(HKHRLearnHypertensionJournalEntryProvider *)self setWakeup:scheduledTime];
        }
      }

      v7 = [timeIntervals countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  timeIntervals = [(HKHRLearnHypertensionJournalEntryProvider *)self bedtime];
  if (timeIntervals)
  {
    wakeup = [(HKHRLearnHypertensionJournalEntryProvider *)self wakeup];
    v14 = wakeup != 0;
LABEL_17:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)journalEntryForSample:(id)sample
{
  v70 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  _HKInitializeLogging();
  v5 = HKHRBloodPressureLogForCategory(1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKHRBloodPressureLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [HKHRLearnHypertensionJournalEntryProvider journalEntryForSample:sampleCopy];
    }
  }

  _timeZone = [sampleCopy _timeZone];
  calendarCache = [(HKHRLearnHypertensionJournalEntryProvider *)self calendarCache];
  v10 = [calendarCache calendarForTimeZone:_timeZone];

  _HKInitializeLogging();
  v11 = HKHRBloodPressureLogForCategory(1);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    v13 = HKHRBloodPressureLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(HKHRLearnHypertensionJournalEntryProvider *)sampleCopy journalEntryForSample:_timeZone];
    }
  }

  v61 = _timeZone;
  endDate = [sampleCopy endDate];
  v15 = [v10 startOfDayForDate:endDate];

  bedtime = [(HKHRLearnHypertensionJournalEntryProvider *)self bedtime];
  v17 = [v10 nextDateAfterDate:v15 matchingComponents:bedtime options:512];

  wakeup = [(HKHRLearnHypertensionJournalEntryProvider *)self wakeup];
  v60 = v15;
  v19 = [v10 nextDateAfterDate:v15 matchingComponents:wakeup options:512];

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __67__HKHRLearnHypertensionJournalEntryProvider_journalEntryForSample___block_invoke;
  v62[3] = &unk_27860A8F0;
  v20 = sampleCopy;
  v63 = v20;
  v21 = MEMORY[0x22AAC4F80](v62);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = v21;
  (*(v21 + 16))(v21, v19, v17, v10, v22);
  _HKInitializeLogging();
  v23 = HKHRBloodPressureLogForCategory(1);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);

  if (v24)
  {
    v25 = HKHRBloodPressureLogForCategory(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(HKHRLearnHypertensionJournalEntryProvider *)v20 journalEntryForSample:v22, v25];
    }
  }

  if (![v22 count])
  {
    goto LABEL_23;
  }

  v26 = 0;
  v27 = 1.79769313e308;
  v28 = 0x277CBE000uLL;
  while (1)
  {
    v29 = [v22 objectAtIndexedSubscript:v26];
    endDate2 = [v20 endDate];
    [endDate2 timeIntervalSinceDate:v29];
    v32 = fabs(v31);

    _HKInitializeLogging();
    v33 = HKHRBloodPressureLogForCategory(1);
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);

    if (v34)
    {
      v35 = HKHRBloodPressureLogForCategory(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        uUID = [v20 UUID];
        [*(v28 + 2728) hkhr_ISO8601StringForDate:v29];
        v38 = v37 = v17;
        *buf = 136446978;
        v65 = "[HKHRLearnHypertensionJournalEntryProvider journalEntryForSample:]";
        v66 = 2114;
        v67 = uUID;
        v68 = 2112;
        *v69 = v38;
        *&v69[8] = 2048;
        *&v69[10] = v32;
        _os_log_debug_impl(&dword_228942000, v35, OS_LOG_TYPE_DEBUG, "[%{public}s] sampleUUID:(%{public}@) date:%@ diff:%f", buf, 0x2Au);

        v17 = v37;
        v28 = 0x277CBE000;
      }
    }

    if (v32 >= v27)
    {
      break;
    }

    ++v26;
    v27 = v32;
    if ([v22 count] <= v26)
    {
      goto LABEL_23;
    }
  }

  if (!v26)
  {
LABEL_23:
    LODWORD(v26) = [v22 count];
  }

  v39 = v26 - 1;
  v40 = [v22 objectAtIndexedSubscript:v26 - 1];
  v59 = v19;
  v41 = v19;
  v42 = v17;
  v43 = [v41 hk_isBeforeOrEqualToDate:v17];
  v44 = v39 & 1;
  _HKInitializeLogging();
  v45 = HKHRBloodPressureLogForCategory(1);
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);

  if (v46)
  {
    v47 = HKHRBloodPressureLogForCategory(1);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      uUID2 = [v20 UUID];
      v55 = [MEMORY[0x277CBEAA8] hkhr_ISO8601StringForDate:v40];
      *buf = 136447234;
      v65 = "[HKHRLearnHypertensionJournalEntryProvider journalEntryForSample:]";
      v56 = "bedtime";
      v66 = 2114;
      v68 = 1024;
      v67 = uUID2;
      if (v44 == v43)
      {
        v56 = "wakeup";
      }

      *v69 = v39;
      *&v69[4] = 2112;
      v57 = v55;
      *&v69[6] = v55;
      *&v69[14] = 2080;
      *&v69[16] = v56;
      _os_log_debug_impl(&dword_228942000, v47, OS_LOG_TYPE_DEBUG, "[%{public}s] sampleUUID:(%{public}@) STOP: found closest at index:%d date:%@ type:%s", buf, 0x30u);
    }
  }

  v48 = v44 ^ v43;
  v49 = [v40 hk_dayIndexWithCalendar:v10];
  v50 = [HKHRLearnHypertensionJournalEntry alloc];
  uUID3 = [v20 UUID];
  v52 = [(HKHRLearnHypertensionJournalEntry *)v50 initWithSampleUUID:uUID3 dayWindowType:v48 dayIndex:v49];

  return v52;
}

void __67__HKHRLearnHypertensionJournalEntryProvider_journalEntryForSample___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if ([v9 hk_isAfterDate:v10])
  {
    _HKInitializeLogging();
    v13 = HKHRBloodPressureLogForCategory(1);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v15 = HKHRBloodPressureLogForCategory(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __67__HKHRLearnHypertensionJournalEntryProvider_journalEntryForSample___block_invoke_cold_1(a1);
      }
    }

    v16 = v9;
  }

  else
  {
    v16 = v10;
    v10 = v9;
  }

  v17 = [v12 dateByAddingUnit:16 value:-1 toDate:v16 options:0];
  v18 = [v12 dateByAddingUnit:16 value:1 toDate:v10 options:0];

  [v11 hk_addNonNilObject:v17];
  [v11 hk_addNonNilObject:v10];
  [v11 hk_addNonNilObject:v16];
  [v11 hk_addNonNilObject:v18];
}

- (void)initWithJournal:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 UUID];
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  v12 = 2048;
  v13 = [a2 scheduleType];
  _os_log_error_impl(&dword_228942000, a3, OS_LOG_TYPE_ERROR, "[%@] Journal ID:(%@) scheduleTypeUnsupported:%ld ", &v8, 0x20u);
}

- (void)_setAnchorsFromJournal:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = [a2 dayWindowType];
  _os_log_error_impl(&dword_228942000, a3, OS_LOG_TYPE_ERROR, "[%@] Unsupported HKHRBloodPressureJournalDayWindowType: %ld ", &v7, 0x16u);
}

- (void)journalEntryForSample:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 UUID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)journalEntryForSample:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = [a1 UUID];
  v4 = [a2 name];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)journalEntryForSample:(NSObject *)a3 .cold.3(void *a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [a1 UUID];
  v7 = MEMORY[0x277CBEAA8];
  v8 = [a1 endDate];
  v9 = [v7 hkhr_ISO8601StringForDate:v8];
  v10 = [a2 count];
  v11 = [MEMORY[0x277CBEAA8] hkhr_prettyStringForDateArray:a2];
  v13[0] = 136447234;
  OUTLINED_FUNCTION_0();
  v14 = v6;
  v15 = 2112;
  v16 = v9;
  v17 = 2048;
  v18 = v10;
  v19 = 2112;
  v20 = v12;
  _os_log_debug_impl(&dword_228942000, a3, OS_LOG_TYPE_DEBUG, "[%{public}s] sampleUUID:(%{public}@) sampleDate:%@ | %ld dates to scan:%@", v13, 0x34u);
}

void __67__HKHRLearnHypertensionJournalEntryProvider_journalEntryForSample___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) UUID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end