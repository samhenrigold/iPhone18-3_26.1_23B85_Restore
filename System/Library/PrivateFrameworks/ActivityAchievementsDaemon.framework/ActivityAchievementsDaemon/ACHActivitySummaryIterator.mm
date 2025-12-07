@interface ACHActivitySummaryIterator
- (ACHActivitySummaryIterator)initWithHealthStore:(id)store shouldIncludePrivateProperties:(BOOL)properties;
- (id)newEmptyActivitySummaryFromSummary:(id)summary;
- (id)remoteInterface;
- (void)_enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler;
- (void)enumerateActivitySummariesForDateComponentInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler;
- (void)enumerateActivitySummariesForDateComponentInterval:(id)interval includeNilSummaries:(BOOL)summaries handler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation ACHActivitySummaryIterator

- (ACHActivitySummaryIterator)initWithHealthStore:(id)store shouldIncludePrivateProperties:(BOOL)properties
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = ACHActivitySummaryIterator;
  v8 = [(ACHActivitySummaryIterator *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, store);
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    calendar = v9->_calendar;
    v9->_calendar = hk_gregorianCalendar;

    v12 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v9->_healthStore;
    v14 = *MEMORY[0x277CE8AD0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v16 = [v12 initWithHealthStore:healthStore taskIdentifier:v14 exportedObject:v9 taskUUID:uUID];
    proxyProvider = v9->_proxyProvider;
    v9->_proxyProvider = v16;

    v9->_includePrivateProperties = properties;
  }

  return v9;
}

- (void)enumerateActivitySummariesForDateComponentInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler
{
  v51 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  calendar = [(ACHActivitySummaryIterator *)self calendar];
  v10 = [intervalCopy chunked:100 calendar:calendar];
  v11 = [v10 mutableCopy];

  includePrivateProperties = [(ACHActivitySummaryIterator *)self includePrivateProperties];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v12)
  {
    v24 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v39 = 0;
        v40 = &v39;
        v41 = 0x3032000000;
        v42 = __Block_byref_object_copy__3;
        v43 = __Block_byref_object_dispose__3;
        v44 = 0;
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__3;
        v37 = __Block_byref_object_dispose__3;
        v38 = MEMORY[0x277CBEBF8];
        v15 = objc_autoreleasePoolPush();
        proxyProvider = [(ACHActivitySummaryIterator *)self proxyProvider];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke;
        v31[3] = &unk_278491148;
        v32 = includePrivateProperties;
        v31[4] = v14;
        v31[5] = &v33;
        v31[6] = &v39;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke_3;
        v30[3] = &unk_278490958;
        v30[4] = &v39;
        [proxyProvider getSynchronousProxyWithHandler:v31 errorHandler:v30];

        objc_autoreleasePoolPop(v15);
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = v34[5];
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v49 count:16];
        if (v18)
        {
          v19 = *v27;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(v17);
              }

              handlerCopy[2](handlerCopy, *(*(&v26 + 1) + 8 * j));
            }

            v18 = [v17 countByEnumeratingWithState:&v26 objects:v49 count:16];
          }

          while (v18);
        }

        if (v40[5])
        {
          errorHandlerCopy[2]();
        }

        _Block_object_dispose(&v33, 8);

        _Block_object_dispose(&v39, 8);
      }

      v12 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v12);
  }
}

void __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 startDateComponents];
  v6 = [*(a1 + 32) endDateComponents];
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2;
  v8[3] = &unk_278491120;
  v9 = *(a1 + 40);
  [v4 remote_activitySummariesForStartDateComponents:v5 endDateComponents:v6 includePrivateProperties:v7 completion:v8];
}

void __102__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)enumerateActivitySummariesForDateComponentInterval:(id)interval includeNilSummaries:(BOOL)summaries handler:(id)handler errorHandler:(id)errorHandler
{
  summariesCopy = summaries;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (summariesCopy)
  {
    errorHandlerCopy = errorHandler;
    intervalCopy = interval;
    [(ACHActivitySummaryIterator *)self _enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval:intervalCopy handler:v11 errorHandler:errorHandlerCopy];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __122__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_includeNilSummaries_handler_errorHandler___block_invoke;
    aBlock[3] = &unk_278491170;
    v18 = handlerCopy;
    errorHandlerCopy2 = errorHandler;
    intervalCopy2 = interval;
    v16 = _Block_copy(aBlock);
    [(ACHActivitySummaryIterator *)self enumerateActivitySummariesForDateComponentInterval:intervalCopy2 handler:v16 errorHandler:errorHandlerCopy2];

    intervalCopy = v18;
  }
}

void __122__ACHActivitySummaryIterator_enumerateActivitySummariesForDateComponentInterval_includeNilSummaries_handler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 _gregorianDateComponents];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)_enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval:(id)interval handler:(id)handler errorHandler:(id)errorHandler
{
  v51 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  calendar = [(ACHActivitySummaryIterator *)self calendar];
  v10 = [intervalCopy chunked:100 calendar:calendar];
  v11 = [v10 mutableCopy];

  includePrivateProperties = [(ACHActivitySummaryIterator *)self includePrivateProperties];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v11;
  v29 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v29)
  {
    v27 = *v47;
    v12 = *MEMORY[0x277CE8B28];
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v40 = 0;
        v41 = &v40;
        v42 = 0x3032000000;
        v43 = __Block_byref_object_copy__3;
        v44 = __Block_byref_object_dispose__3;
        v45 = 0;
        v34 = 0;
        v35 = &v34;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy__3;
        v38 = __Block_byref_object_dispose__3;
        v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
        proxyProvider = [(ACHActivitySummaryIterator *)self proxyProvider];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke;
        v32[3] = &unk_2784911C0;
        v33 = includePrivateProperties;
        v32[4] = v14;
        v32[5] = self;
        v32[6] = &v34;
        v32[7] = &v40;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke_3;
        v31[3] = &unk_278490958;
        v31[4] = &v40;
        [proxyProvider getSynchronousProxyWithHandler:v32 errorHandler:v31];

        calendar = self->_calendar;
        startDateComponents = [v14 startDateComponents];
        v18 = [(NSCalendar *)calendar dateFromComponents:startDateComponents];

        v19 = self->_calendar;
        endDateComponents = [v14 endDateComponents];
        v21 = [(NSCalendar *)v19 dateFromComponents:endDateComponents];
        while (1)
        {

          if (![v18 hk_isBeforeOrEqualToDate:v21])
          {
            break;
          }

          endDateComponents = [(NSCalendar *)self->_calendar components:v12 fromDate:v18];
          v22 = [v35[5] objectForKeyedSubscript:endDateComponents];
          handlerCopy[2](handlerCopy, v22, endDateComponents);
          v23 = [(NSCalendar *)self->_calendar hk_startOfDateByAddingDays:1 toDate:v18];

          v18 = v23;
        }

        if (v41[5])
        {
          errorHandlerCopy[2]();
        }

        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v40, 8);

        objc_autoreleasePoolPop(context);
        ++v13;
      }

      while (v13 != v29);
      v29 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v29);
  }
}

void __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 startDateComponents];
  v6 = [*(a1 + 32) endDateComponents];
  v7 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2;
  v8[3] = &unk_278491198;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  [v4 remote_activitySummariesForStartDateComponents:v5 endDateComponents:v6 includePrivateProperties:v7 completion:v8];
}

void __126__ACHActivitySummaryIterator__enumerateActivitySummariesIncludingEmptySummariesForDateComponentInterval_handler_errorHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = *MEMORY[0x277CE8B28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = *(a1[4] + 24);
        v14 = [v12 _startDate];
        v15 = [v13 components:v10 fromDate:v14];

        [*(*(a1[5] + 8) + 40) setObject:v12 forKeyedSubscript:v15];
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v6;
}

- (id)newEmptyActivitySummaryFromSummary:(id)summary
{
  v3 = MEMORY[0x277CCCFB0];
  summaryCopy = summary;
  v5 = objc_alloc_init(v3);
  [v5 _setActivitySummaryIndex:{objc_msgSend(summaryCopy, "_activitySummaryIndex")}];
  [v5 setActivityMoveMode:{objc_msgSend(summaryCopy, "activityMoveMode")}];
  activeEnergyBurnedGoal = [summaryCopy activeEnergyBurnedGoal];
  [v5 setActiveEnergyBurnedGoal:activeEnergyBurnedGoal];

  appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];
  [v5 setAppleMoveTimeGoal:appleMoveTimeGoal];

  appleStandHoursGoal = [summaryCopy appleStandHoursGoal];
  [v5 setAppleStandHoursGoal:appleStandHoursGoal];

  appleExerciseTimeGoal = [summaryCopy appleExerciseTimeGoal];

  [v5 setAppleExerciseTimeGoal:appleExerciseTimeGoal];
  return v5;
}

- (id)remoteInterface
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835643F8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v3 initWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_remote_activitySummariesForStartDateComponents_endDateComponents_includePrivateProperties_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

@end