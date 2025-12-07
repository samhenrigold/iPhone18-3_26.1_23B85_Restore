@interface HKHRLearnHypertensionJournalSummaryBuilder
+ (id)summaryFromSamples:(id)samples journal:(id)journal;
@end

@implementation HKHRLearnHypertensionJournalSummaryBuilder

+ (id)summaryFromSamples:(id)samples journal:(id)journal
{
  v48 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  journalCopy = journal;
  v7 = [[HKHRLearnHypertensionJournalEntryProvider alloc] initWithJournal:journalCopy];
  if (v7)
  {
    v29 = journalCopy;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30 = samplesCopy;
    [samplesCopy sortedArrayUsingComparator:&__block_literal_global];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v36 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    startDate = 0;
    v10 = 0;
    if (!v36)
    {
      goto LABEL_28;
    }

    v35 = *v38;
    v31 = v7;
    v32 = v8;
    while (1)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [(HKHRLearnHypertensionJournalEntryProvider *)v7 journalEntryForSample:v12, v29];
        dayWindowType = [v13 dayWindowType];
        if (dayWindowType == 1)
        {
          v15 = v33;
          goto LABEL_11;
        }

        if (!dayWindowType)
        {
          v15 = v8;
LABEL_11:
          v16 = v10;
          v10 = v15;
          goto LABEL_14;
        }

        _HKInitializeLogging();
        v16 = HKHRBloodPressureLogForCategory(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          dayWindowType2 = [v13 dayWindowType];
          *buf = 136446722;
          v42 = "+[HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journal:]";
          v43 = 2048;
          v44 = dayWindowType2;
          v45 = 2112;
          v46 = v13;
          _os_log_error_impl(&dword_228942000, v16, OS_LOG_TYPE_ERROR, "[%{public}s] Unsupported dayWindowType:%ld entry:%@", buf, 0x20u);
        }

LABEL_14:

        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "dayIndex")}];
        v18 = [v10 objectForKeyedSubscript:v17];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v21 = v20;

        sampleUUID = [v13 sampleUUID];
        [v21 addObject:sampleUUID];

        [v10 setObject:v21 forKeyedSubscript:v17];
        if (!startDate)
        {
          allKeys = [v8 allKeys];
          if ([allKeys count]>= 7)
          {
            allKeys2 = [v33 allKeys];
            v25 = [allKeys2 count];

            if (v25 < 7)
            {
              startDate = 0;
              v7 = v31;
              v8 = v32;
              goto LABEL_26;
            }

            startDate = [v12 startDate];
            _HKInitializeLogging();
            allKeys = HKHRBloodPressureLogForCategory(1);
            v7 = v31;
            if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v42 = "+[HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journal:]";
              v43 = 2112;
              v44 = startDate;
              _os_log_impl(&dword_228942000, allKeys, OS_LOG_TYPE_DEFAULT, "[%{public}s] date of sample that completed journal: %@)", buf, 0x16u);
            }

            v8 = v32;
          }

          else
          {
            startDate = 0;
          }
        }

LABEL_26:
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (!v36)
      {
LABEL_28:
        v27 = [[HKHRLearnHypertensionJournalSummary alloc] initWithWakeupSampleMap:v8 bedtimeSampleMap:v33 completeDate:startDate];

        journalCopy = v29;
        samplesCopy = v30;
        goto LABEL_32;
      }
    }
  }

  _HKInitializeLogging();
  v8 = HKHRBloodPressureLogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journalCopy journal:v8];
  }

  v27 = 0;
LABEL_32:

  return v27;
}

uint64_t __73__HKHRLearnHypertensionJournalSummaryBuilder_summaryFromSamples_journal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (void)summaryFromSamples:(void *)a1 journal:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 UUID];
  v4 = 136446466;
  v5 = "+[HKHRLearnHypertensionJournalSummaryBuilder summaryFromSamples:journal:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_228942000, a2, OS_LOG_TYPE_ERROR, "[%{public}s] Unable to initialize entryProvider with journal:%@", &v4, 0x16u);
}

@end