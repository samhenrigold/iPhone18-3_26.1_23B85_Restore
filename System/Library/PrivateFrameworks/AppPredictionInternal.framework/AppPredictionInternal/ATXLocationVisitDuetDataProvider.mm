@interface ATXLocationVisitDuetDataProvider
- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates limit:(unint64_t)limit ascending:(BOOL)ascending;
@end

@implementation ATXLocationVisitDuetDataProvider

- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates limit:(unint64_t)limit ascending:(BOOL)ascending
{
  v34 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  predicatesCopy = predicates;
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__43;
  v30 = __Block_byref_object_dispose__43;
  v31 = 0;
  v14 = dispatch_semaphore_create(0);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __106__ATXLocationVisitDuetDataProvider_fetchEventsBetweenStartDate_andEndDate_withPredicates_limit_ascending___block_invoke;
  v23 = &unk_278597EC0;
  v25 = &v26;
  v15 = v14;
  v24 = v15;
  [mEMORY[0x277D41BF8] fetchLocationsOfInterestVisitedDuring:v13 handler:&v20];
  v16 = __atxlog_handle_anchor([MEMORY[0x277D425A0] waitForSemaphore:v15 timeoutSeconds:{10.0, v20, v21, v22, v23}]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v27[5];
    *buf = 138412290;
    v33 = v17;
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "SortedLoiEvents: %@", buf, 0xCu);
  }

  v18 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v18;
}

void __106__ATXLocationVisitDuetDataProvider_fetchEventsBetweenStartDate_andEndDate_withPredicates_limit_ascending___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v30 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  v28 = v3;
  if (v3)
  {
    v27 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v4;
        v5 = *(*(&v35 + 1) + 8 * v4);
        v6 = __atxlog_handle_anchor(v3);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v5;
          _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "LOI: %@", buf, 0xCu);
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v7 = [v5 visits];
        v8 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v32;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v31 + 1) + 8 * i) rangeValue];
              v14 = v13;
              v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v12];
              v16 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:(v12 + v14)];
              v17 = [ATXLocationVisitDuetEvent alloc];
              v18 = [v5 uuid];
              v19 = [(ATXLocationVisitDuetEvent *)v17 initWithLocationOfInterestIdentifier:v18 startDate:v15 endDate:v16];

              [v30 addObject:v19];
            }

            v9 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v9);
        }

        v4 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v3 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      v28 = v3;
    }

    while (v3);
  }

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v39 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v22 = [v30 sortedArrayUsingDescriptors:v21];
  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end