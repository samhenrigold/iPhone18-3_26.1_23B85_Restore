@interface ATXAnchorModelEventHarvester
+ (id)deduplicatedActionEventsByIdFromActionEvents:(id)events;
+ (id)idsFromBiomeEvents:(id)events;
+ (id)idsFromDuetEvents:(id)events;
+ (id)negativeAppsGivenAllAppIds:(id)ids positiveAppIds:(id)appIds;
+ (id)randomSampleFromArray:(id)array sampleSize:(unint64_t)size;
- (id)fetchAppLaunchEventsAfterAnchorOccurrenceDate:(id)date limit:(unint64_t)limit maxSecondsBeforeAnchor:(int64_t)anchor maxSecondsAfterAnchor:(int64_t)afterAnchor isIncluded:(id)included;
- (id)fetchEventsAfterAnchorOccurenceDate:(id)date withBiomePublisher:(id)publisher maxSecondsBeforeAnchor:(int64_t)anchor maxSecondsAfterAnchor:(int64_t)afterAnchor isIncluded:(id)included;
- (id)fetchEventsAfterAnchorOccurrenceDate:(id)date withDuetDataProviderClass:(Class)class limit:(unint64_t)limit maxSecondsBeforeAnchor:(int64_t)anchor maxSecondsAfterAnchor:(int64_t)afterAnchor predicates:(id)predicates;
- (id)negativeActionsOnAnchorOccurrenceDate:(id)date positiveActionEvents:(id)events;
- (id)negativeActionsOnAnchorOccurrenceDate:(id)date positiveActionIds:(id)ids;
@end

@implementation ATXAnchorModelEventHarvester

- (id)fetchEventsAfterAnchorOccurrenceDate:(id)date withDuetDataProviderClass:(Class)class limit:(unint64_t)limit maxSecondsBeforeAnchor:(int64_t)anchor maxSecondsAfterAnchor:(int64_t)afterAnchor predicates:(id)predicates
{
  v11 = -anchor;
  predicatesCopy = predicates;
  dateCopy = date;
  v14 = [dateCopy dateByAddingTimeInterval:v11];
  v15 = [dateCopy dateByAddingTimeInterval:afterAnchor];

  v16 = objc_opt_new();
  v17 = [v16 fetchEventsBetweenStartDate:v14 andEndDate:v15 withPredicates:predicatesCopy];

  if ([v17 count] <= limit)
  {
    limit = [v17 count];
  }

  v18 = [v17 subarrayWithRange:{0, limit}];

  return v18;
}

- (id)fetchEventsAfterAnchorOccurenceDate:(id)date withBiomePublisher:(id)publisher maxSecondsBeforeAnchor:(int64_t)anchor maxSecondsAfterAnchor:(int64_t)afterAnchor isIncluded:(id)included
{
  dateCopy = date;
  includedCopy = included;
  publisherCopy = publisher;
  v14 = objc_opt_new();
  v15 = [dateCopy dateByAddingTimeInterval:-anchor];
  v16 = [dateCopy dateByAddingTimeInterval:afterAnchor];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke;
  v32[3] = &unk_2785988F0;
  v33 = v15;
  v34 = v16;
  v35 = includedCopy;
  v17 = includedCopy;
  v18 = v16;
  v19 = v15;
  v20 = [publisherCopy filterWithIsIncluded:v32];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2;
  v29[3] = &unk_278598918;
  v30 = v14;
  v31 = dateCopy;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_13;
  v27[3] = &unk_278596F60;
  v21 = v30;
  v28 = v21;
  v22 = dateCopy;
  v23 = [v20 sinkWithCompletion:v29 receiveInput:v27];

  v24 = v28;
  v25 = v21;

  return v21;
}

uint64_t __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v5 >= v6 && ([v3 timestamp], v8 = v7, objc_msgSend(*(a1 + 40), "timeIntervalSinceReferenceDate"), v8 <= v9))
  {
    v10 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_anchor(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = *(a1 + 40);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Successfully fetched %@ Biome events after anchor on %@", &v9, 0x16u);
  }
}

- (id)fetchAppLaunchEventsAfterAnchorOccurrenceDate:(id)date limit:(unint64_t)limit maxSecondsBeforeAnchor:(int64_t)anchor maxSecondsAfterAnchor:(int64_t)afterAnchor isIncluded:(id)included
{
  includedCopy = included;
  dateCopy = date;
  v13 = [dateCopy dateByAddingTimeInterval:-anchor];
  v14 = [dateCopy dateByAddingTimeInterval:afterAnchor];

  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && [v13 compare:v14] == -1)
  {
    v18 = objc_alloc_init(MEMORY[0x277CEBBE0]);
    v19 = objc_opt_new();
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __140__ATXAnchorModelEventHarvester_fetchAppLaunchEventsAfterAnchorOccurrenceDate_limit_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke;
    v24 = &unk_278598940;
    v25 = v19;
    v26 = includedCopy;
    v20 = v19;
    [v18 enumerateAppLaunchSessionsBetweenStartDate:v13 endDate:v14 limit:limit shouldReverse:0 bundleIDFilter:0 block:&v21];
    v16 = [v20 copy];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

uint64_t __140__ATXAnchorModelEventHarvester_fetchAppLaunchEventsAfterAnchorOccurrenceDate_limit_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXAppLaunchDuetEvent alloc] initWithATXEvent:v3];

  if (v4 && (*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

+ (id)negativeAppsGivenAllAppIds:(id)ids positiveAppIds:(id)appIds
{
  appIdsCopy = appIds;
  v6 = [ids mutableCopy];
  [v6 minusSet:appIdsCopy];

  return v6;
}

- (id)negativeActionsOnAnchorOccurrenceDate:(id)date positiveActionEvents:(id)events
{
  eventsCopy = events;
  dateCopy = date;
  v8 = [objc_opt_class() idsFromDuetEvents:eventsCopy];

  v9 = [(ATXAnchorModelEventHarvester *)self negativeActionsOnAnchorOccurrenceDate:dateCopy positiveActionIds:v8];

  return v9;
}

+ (id)idsFromDuetEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        identifier = [v10 identifier];
        [v4 addObject:identifier];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)idsFromBiomeEvents:(id)events
{
  v22 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = objc_alloc(MEMORY[0x277CCACA8]);
        [v10 timestamp];
        v14 = [v12 initWithFormat:@"%f", v13];
        [v4 addObject:v14];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

+ (id)deduplicatedActionEventsByIdFromActionEvents:(id)events
{
  v23 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        identifier = [v11 identifier];
        v14 = [v5 containsObject:identifier];

        if ((v14 & 1) == 0)
        {
          identifier2 = [v11 identifier];
          [v5 addObject:identifier2];

          [v4 addObject:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [v4 copy];

  return v16;
}

- (id)negativeActionsOnAnchorOccurrenceDate:(id)date positiveActionIds:(id)ids
{
  dateCopy = date;
  idsCopy = ids;
  v7 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v7 maxSecondsSinceCandidateOccurrenceToConsiderCandidateForPrediction];
  v9 = v8;

  v10 = +[_ATXDataStore sharedInstance];
  v11 = [dateCopy dateByAddingTimeInterval:-v9];
  v12 = [v10 appIntentDuetEventsForActionsBetweenStartDate:v11 endDate:dateCopy];

  v14 = __atxlog_handle_anchor(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelEventHarvester *)v12 negativeActionsOnAnchorOccurrenceDate:v14 positiveActionIds:v9];
  }

  v15 = objc_opt_new();
  if ([v12 count])
  {
    v16 = 0;
    do
    {
      v17 = [v12 objectAtIndexedSubscript:v16];
      identifier = [v17 identifier];
      v19 = [idsCopy containsObject:identifier];

      if ((v19 & 1) == 0)
      {
        [v15 addIndex:v16];
      }

      ++v16;
    }

    while ([v12 count] > v16);
  }

  v20 = [v12 objectsAtIndexes:v15];
  v21 = __atxlog_handle_anchor(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelEventHarvester negativeActionsOnAnchorOccurrenceDate:v20 positiveActionIds:v21];
  }

  return v20;
}

+ (id)randomSampleFromArray:(id)array sampleSize:(unint64_t)size
{
  arrayCopy = array;
  v6 = objc_opt_new();
  v7 = [arrayCopy _pas_shuffledArrayUsingRng:v6];

  if ([v7 count] <= size)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v7 subarrayWithRange:{0, size}];
  }

  v9 = v8;

  return v9;
}

void __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [a2 error];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "Error encountered while fetching events from Biome for after the anchor event on date %@: %@", &v6, 0x16u);
}

- (void)negativeActionsOnAnchorOccurrenceDate:(double)a3 positiveActionIds:.cold.1(void *a1, NSObject *a2, double a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = a3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Producing negative samples: fetched %lu actions that were received in the last %.2f seconds.", &v5, 0x16u);
}

- (void)negativeActionsOnAnchorOccurrenceDate:(void *)a1 positiveActionIds:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Producing negative samples: %lu negative actions remain after filtering out positive actions.", &v3, 0xCu);
}

@end