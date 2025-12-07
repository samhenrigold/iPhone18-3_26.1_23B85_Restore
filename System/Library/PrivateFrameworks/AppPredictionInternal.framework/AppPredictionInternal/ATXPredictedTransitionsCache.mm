@interface ATXPredictedTransitionsCache
+ (id)ceilingDateToNextHour:(id)hour;
+ (id)getNextTransitionInCache:(id)cache fromDate:(id)date;
+ (void)removeEntriesFromCache:(id)cache beforeDate:(id)date;
- (ATXPredictedTransitionsCache)initWithLocationManager:(id)manager;
- (BOOL)cacheHeadingFromLoiType:(int64_t)type toLoiType:(int64_t)loiType forDate:(id)date;
- (id)cacheForDestinationLoiType:(int64_t)type;
- (id)getNextHomeToWorkTransitionsOnActivity:(id)activity;
- (id)getNextWorkToHomeTransitionsOnActivity:(id)activity;
- (void)dump;
- (void)fetchEntriesStartingDate:(id)date onActivity:(id)activity;
- (void)prewarmOnActivity:(id)activity;
- (void)pruneStaleEntries;
@end

@implementation ATXPredictedTransitionsCache

- (ATXPredictedTransitionsCache)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = ATXPredictedTransitionsCache;
  v6 = [(ATXPredictedTransitionsCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
    v8 = objc_opt_new();
    homeToWork = v7->_homeToWork;
    v7->_homeToWork = v8;

    v10 = objc_opt_new();
    workToHome = v7->_workToHome;
    v7->_workToHome = v10;
  }

  return v7;
}

- (id)getNextHomeToWorkTransitionsOnActivity:(id)activity
{
  v4 = MEMORY[0x277CBEAA8];
  activityCopy = activity;
  v6 = [v4 now];
  [(ATXPredictedTransitionsCache *)self fetchEntriesStartingDate:v6 onActivity:activityCopy];

  LOBYTE(v6) = [activityCopy shouldDefer];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    homeToWork = self->_homeToWork;
    v10 = [MEMORY[0x277CBEAA8] now];
    v7 = [v8 getNextTransitionInCache:homeToWork fromDate:v10];
  }

  return v7;
}

- (id)getNextWorkToHomeTransitionsOnActivity:(id)activity
{
  v4 = MEMORY[0x277CBEAA8];
  activityCopy = activity;
  v6 = [v4 now];
  [(ATXPredictedTransitionsCache *)self fetchEntriesStartingDate:v6 onActivity:activityCopy];

  LOBYTE(v6) = [activityCopy shouldDefer];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_opt_class();
    workToHome = self->_workToHome;
    v10 = [MEMORY[0x277CBEAA8] now];
    v7 = [v8 getNextTransitionInCache:workToHome fromDate:v10];
  }

  return v7;
}

+ (id)ceilingDateToNextHour:(id)hour
{
  v3 = MEMORY[0x277CBEA80];
  hourCopy = hour;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:60 fromDate:hourCopy];

  v7 = [currentCalendar dateFromComponents:v6];
  v8 = [v7 dateByAddingTimeInterval:3600.0];

  return v8;
}

+ (id)getNextTransitionInCache:(id)cache fromDate:(id)date
{
  dateCopy = date;
  cacheCopy = cache;
  v7 = [objc_opt_class() ceilingDateToNextHour:dateCopy];

  v8 = [cacheCopy objectForKeyedSubscript:v7];

  return v8;
}

- (void)prewarmOnActivity:(id)activity
{
  activityCopy = activity;
  [(ATXPredictedTransitionsCache *)self dump];
  v5 = [MEMORY[0x277CBEAA8] now];
  [(ATXPredictedTransitionsCache *)self fetchEntriesStartingDate:v5 onActivity:activityCopy];
}

- (void)fetchEntriesStartingDate:(id)date onActivity:(id)activity
{
  dateCopy = date;
  activityCopy = activity;
  [(ATXPredictedTransitionsCache *)self pruneStaleEntries];
  v8 = +[_ATXGlobals sharedInstance];
  transitionLookaheadMinSeconds = [v8 transitionLookaheadMinSeconds];

  v10 = [dateCopy dateByAddingTimeInterval:transitionLookaheadMinSeconds];
  v11 = [objc_opt_class() ceilingDateToNextHour:v10];
  v12 = +[_ATXGlobals sharedInstance];
  transitionLookaheadMaxSeconds = [v12 transitionLookaheadMaxSeconds];

  v14 = [dateCopy dateByAddingTimeInterval:transitionLookaheadMaxSeconds];
  v15 = __atxlog_handle_dailyroutines(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ATXPredictedTransitionsCache fetchEntriesStartingDate:onActivity:];
  }

  [v11 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v14 timeIntervalSinceReferenceDate];
  if (v17 >= v18)
  {
LABEL_17:
    v23 = v11;
LABEL_18:
    [(ATXPredictedTransitionsCache *)self dump];
    v11 = v23;
  }

  else
  {
    while (1)
    {
      v19 = objc_autoreleasePoolPush();
      shouldDefer = [activityCopy shouldDefer];
      if (shouldDefer)
      {
        break;
      }

      v21 = [(ATXPredictedTransitionsCache *)self cacheHeadingFromLoiType:1 toLoiType:0 forDate:v11];
      if ((v21 & 1) == 0)
      {
        v28 = __atxlog_handle_dailyroutines(v21);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
LABEL_15:
          [ATXPredictedTransitionsCache fetchEntriesStartingDate:onActivity:];
        }

LABEL_16:

        objc_autoreleasePoolPop(v19);
        goto LABEL_17;
      }

      v22 = [(ATXPredictedTransitionsCache *)self cacheHeadingFromLoiType:0 toLoiType:1 forDate:v11];
      if ((v22 & 1) == 0)
      {
        v28 = __atxlog_handle_dailyroutines(v22);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v23 = [v11 dateByAddingTimeInterval:3600.0];

      objc_autoreleasePoolPop(v19);
      [v23 timeIntervalSinceReferenceDate];
      v25 = v24;
      [v14 timeIntervalSinceReferenceDate];
      v11 = v23;
      if (v25 >= v26)
      {
        goto LABEL_18;
      }
    }

    v27 = __atxlog_handle_dailyroutines(shouldDefer);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "Abandoning cache update early since we were asked to defer", v29, 2u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (BOOL)cacheHeadingFromLoiType:(int64_t)type toLoiType:(int64_t)loiType forDate:(id)date
{
  v41 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v9 = __atxlog_handle_dailyroutines(dateCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
  }

  v10 = [MEMORY[0x277D41BF8] stringForLOIType:type];
  v11 = [MEMORY[0x277D41BF8] stringForLOIType:loiType];
  v12 = [(ATXPredictedTransitionsCache *)self cacheForDestinationLoiType:loiType];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:dateCopy];

    if (v14)
    {
      v16 = __atxlog_handle_dailyroutines(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
      }

      v17 = 1;
      goto LABEL_38;
    }

    v18 = [(ATXPredictedLocationsManagerProtocol *)self->_manager getPredictedLocationsOfInterestFromLOIName:v10 startDate:dateCopy];
    v16 = v18;
    if (v18)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v35 = v11;
        v22 = *v37;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v19);
            }

            type = [*(*(&v36 + 1) + 8 * i) type];
            if (type == loiType)
            {
              v26 = __atxlog_handle_dailyroutines(type);
              v11 = v35;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
              }

              v25 = 1;
              goto LABEL_25;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

        v25 = 0;
        v11 = v35;
      }

      else
      {
        v25 = 0;
      }

LABEL_25:

      v28 = objc_opt_new();
      v27 = v28;
      if (!v25)
      {
        v32 = __atxlog_handle_dailyroutines(v28);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
        }

        v30 = v27;
        goto LABEL_32;
      }

      v29 = [(ATXPredictedLocationsManagerProtocol *)self->_manager getPredictedExitTimesFromLOIName:v10 startDate:dateCopy];
      if (v29)
      {
        v30 = v29;

        v32 = __atxlog_handle_dailyroutines(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
        }

LABEL_32:

        [v13 setObject:v30 forKeyedSubscript:dateCopy];
        v17 = 1;
        v27 = v30;
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v33 = __atxlog_handle_dailyroutines(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
      }
    }

    else
    {
      v27 = __atxlog_handle_dailyroutines(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [ATXPredictedTransitionsCache cacheHeadingFromLoiType:toLoiType:forDate:];
      }
    }

    v17 = 0;
    goto LABEL_37;
  }

  v17 = 0;
LABEL_39:

  return v17;
}

- (id)cacheForDestinationLoiType:(int64_t)type
{
  if (type == 1)
  {
    homeToWork = self->_homeToWork;
    goto LABEL_5;
  }

  if (!type)
  {
    homeToWork = self->_workToHome;
LABEL_5:
    v4 = homeToWork;
    goto LABEL_9;
  }

  v5 = __atxlog_handle_dailyroutines(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXPredictedTransitionsCache cacheForDestinationLoiType:];
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (void)dump
{
  v2 = __atxlog_handle_dailyroutines(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [ATXPredictedTransitionsCache dump];
  }

  v4 = __atxlog_handle_dailyroutines(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ATXPredictedTransitionsCache dump];
  }
}

- (void)pruneStaleEntries
{
  v3 = objc_opt_class();
  homeToWork = self->_homeToWork;
  v5 = [MEMORY[0x277CBEAA8] now];
  [v3 removeEntriesFromCache:homeToWork beforeDate:v5];

  v6 = objc_opt_class();
  workToHome = self->_workToHome;
  v8 = [MEMORY[0x277CBEAA8] now];
  [v6 removeEntriesFromCache:workToHome beforeDate:v8];
}

+ (void)removeEntriesFromCache:(id)cache beforeDate:(id)date
{
  dateCopy = date;
  cacheCopy = cache;
  allKeys = [cacheCopy allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__ATXPredictedTransitionsCache_removeEntriesFromCache_beforeDate___block_invoke;
  v12[3] = &unk_278597FA8;
  v13 = dateCopy;
  v8 = dateCopy;
  v9 = [allKeys _pas_filteredArrayWithTest:v12];

  v11 = __atxlog_handle_dailyroutines(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[ATXPredictedTransitionsCache removeEntriesFromCache:beforeDate:];
  }

  [cacheCopy removeObjectsForKeys:v9];
}

BOOL __66__ATXPredictedTransitionsCache_removeEntriesFromCache_beforeDate___block_invoke(uint64_t a1, void *a2)
{
  [a2 timeIntervalSinceReferenceDate];
  v4 = v3;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  return v4 < v5;
}

- (void)fetchEntriesStartingDate:onActivity:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cacheHeadingFromLoiType:toLoiType:forDate:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cacheForDestinationLoiType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "Asked to cache for unsupported loi type %ld", v1, 0xCu);
}

+ (void)removeEntriesFromCache:beforeDate:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end