@interface HKHRBloodPressureJournalSummaryBuilder
- (HKHRBloodPressureJournalSummaryBuilder)initWithJournal:(id)journal healthStore:(id)store;
- (id)buildAverageClassificationForSummary:(id)summary;
- (id)buildSummary;
- (void)fetchSamplesWithResultsHandler:(id)handler;
- (void)fetchStatisticsForQuantityType:(id)type completeDate:(id)date resultsHandler:(id)handler;
@end

@implementation HKHRBloodPressureJournalSummaryBuilder

- (HKHRBloodPressureJournalSummaryBuilder)initWithJournal:(id)journal healthStore:(id)store
{
  journalCopy = journal;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKHRBloodPressureJournalSummaryBuilder;
  v8 = [(HKHRBloodPressureJournalSummaryBuilder *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(HKHRBloodPressureJournalSummaryBuilder *)v8 setJournal:journalCopy];
    [(HKHRBloodPressureJournalSummaryBuilder *)v9 setHealthStore:storeCopy];
    date = [MEMORY[0x277CBEAA8] date];
    [(HKHRBloodPressureJournalSummaryBuilder *)v9 setDateOfLastSample:date];
  }

  return v9;
}

- (void)fetchSamplesWithResultsHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA80];
  handlerCopy = handler;
  currentCalendar = [v4 currentCalendar];
  journal = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  startDate = [journal startDate];
  v9 = [currentCalendar startOfDayForDate:startDate];

  v10 = MEMORY[0x277CCD838];
  journal2 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  endDate = [journal2 endDate];
  v13 = [v10 predicateForSamplesWithStartDate:v9 endDate:endDate options:0];

  v14 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v17 = [objc_alloc(MEMORY[0x277CCD8D0]) initWithSampleType:v14 predicate:v13 limit:0 sortDescriptors:v16 resultsHandler:handlerCopy];
  journal3 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  [v17 setIncludeAutomaticTimeZones:{objc_msgSend(journal3, "journalType") == 0}];

  healthStore = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
  [healthStore executeQuery:v17];
}

- (void)fetchStatisticsForQuantityType:(id)type completeDate:(id)date resultsHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  handlerCopy = handler;
  typeCopy = type;
  _HKInitializeLogging();
  v11 = HKHRBloodPressureLogForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    journal = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
    startDate = [journal startDate];
    *buf = 138412802;
    selfCopy = self;
    v28 = 2112;
    v29 = startDate;
    v30 = 2112;
    v31 = dateCopy;
    _os_log_impl(&dword_228942000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Fetching statistics with startDate: %@ and completeDate: %@", buf, 0x20u);
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  journal2 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
  startDate2 = [journal2 startDate];
  v17 = [currentCalendar startOfDayForDate:startDate2];

  v18 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v17 endDate:dateCopy inclusiveEndDates:1 options:0];
  predicateForSamplesWithCorrelationedSample = [MEMORY[0x277CCD838] predicateForSamplesWithCorrelationedSample];
  v20 = MEMORY[0x277CCA920];
  v25[0] = v18;
  v25[1] = predicateForSamplesWithCorrelationedSample;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = [objc_alloc(MEMORY[0x277CCDA68]) initWithQuantityType:typeCopy quantitySamplePredicate:v22 options:2 completionHandler:handlerCopy];
  healthStore = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
  [healthStore executeQuery:v23];
}

- (id)buildSummary
{
  v3 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HKHRBloodPressureJournalSummaryBuilder_buildSummary__block_invoke;
  v8[3] = &unk_27860B5C0;
  v8[4] = self;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(HKHRBloodPressureJournalSummaryBuilder *)self fetchSamplesWithResultsHandler:v8];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if ([v12[5] isComplete])
  {
    v5 = [(HKHRBloodPressureJournalSummaryBuilder *)self buildAverageClassificationForSummary:v12[5]];
    [v12[5] setAverageClassificationCategory:v5];
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __54__HKHRBloodPressureJournalSummaryBuilder_buildSummary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v4 = [v22 lastObject];

  if (v4)
  {
    v5 = [v22 lastObject];
    v6 = [v5 _timeZone];

    v7 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    v8 = [v7 calendarForTimeZone:v6];

    v9 = [v22 lastObject];
    v10 = [v9 endDate];
    v11 = [v8 startOfDayForDate:v10];
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;
  }

  v14 = [*(a1 + 32) journal];
  v15 = [v14 journalType];

  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_8;
    }

    v16 = off_27860A3B8;
  }

  else
  {
    v16 = off_27860A3A8;
  }

  v17 = *v16;
  v18 = [*(a1 + 32) journal];
  v19 = [(__objc2_class *)v17 summaryFromSamples:v22 journal:v18];
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

LABEL_8:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)buildAverageClassificationForSummary:(id)summary
{
  v64 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  v5 = dispatch_group_create();
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__4;
  v56 = __Block_byref_object_dispose__4;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__4;
  v50 = __Block_byref_object_dispose__4;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  dispatch_group_enter(v5);
  v6 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  completeDate = [summaryCopy completeDate];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke;
  v39[3] = &unk_27860B5E8;
  v41 = &v52;
  v8 = v5;
  v40 = v8;
  [(HKHRBloodPressureJournalSummaryBuilder *)self fetchStatisticsForQuantityType:v6 completeDate:completeDate resultsHandler:v39];

  dispatch_group_enter(v8);
  v9 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  completeDate2 = [summaryCopy completeDate];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke_2;
  v36[3] = &unk_27860B5E8;
  v38 = &v46;
  v11 = v8;
  v37 = v11;
  [(HKHRBloodPressureJournalSummaryBuilder *)self fetchStatisticsForQuantityType:v9 completeDate:completeDate2 resultsHandler:v36];

  dispatch_group_enter(v11);
  v12 = objc_alloc(MEMORY[0x277CCD088]);
  healthStore = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
  v14 = [v12 initWithHealthStore:healthStore];

  dateOfLastSample = self->_dateOfLastSample;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke_3;
  v33[3] = &unk_27860B610;
  v35 = &v42;
  v16 = v11;
  v34 = v16;
  [v14 classificationGuidelinesOnDate:dateOfLastSample completionHandler:v33];
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v17 = *MEMORY[0x277CCB8C0];
  if (v53[5] && v47[5])
  {
    healthStore2 = [(HKHRBloodPressureJournalSummaryBuilder *)self healthStore];
    v32 = 0;
    v19 = [healthStore2 dateOfBirthComponentsWithError:&v32];
    v20 = v32;

    if (!v19 || v20)
    {
      _HKInitializeLogging();
      v21 = HKHRBloodPressureLogForCategory(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(HKHRBloodPressureJournalSummaryBuilder *)self buildAverageClassificationForSummary:v20, v21];
      }
    }

    v22 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    v24 = [v22 numberWithInteger:{objc_msgSend(v19, "hk_ageWithCurrentDate:", date)}];

    v25 = [v14 categoryForClassificationGuidelines:v43[3] systolic:v53[5] diastolic:v47[5] age:v24];

    v17 = v25;
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKHRBloodPressureLogForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      journal = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
      uUID = [journal UUID];
      journal2 = [(HKHRBloodPressureJournalSummaryBuilder *)self journal];
      scheduleType = [journal2 scheduleType];
      *buf = 138412802;
      v59 = v31;
      v60 = 2112;
      v61 = uUID;
      v62 = 2048;
      v63 = scheduleType;
      _os_log_error_impl(&dword_228942000, v20, OS_LOG_TYPE_ERROR, "[%@] Failed to query HKStatistics for Journal Summary: Journal ID:(%@) scheduleType:%ld ", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);

  return v17;
}

void __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 averageQuantity];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __79__HKHRBloodPressureJournalSummaryBuilder_buildAverageClassificationForSummary___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 averageQuantity];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

- (void)buildAverageClassificationForSummary:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_228942000, log, OS_LOG_TYPE_ERROR, "[%@] Unable to retrieve date of birth %{public}@", &v3, 0x16u);
}

@end