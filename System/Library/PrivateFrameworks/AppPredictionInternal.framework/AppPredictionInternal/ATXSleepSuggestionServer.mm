@interface ATXSleepSuggestionServer
+ (id)sharedInstance;
- (ATXSleepSuggestionServer)init;
- (ATXSleepSuggestionServer)initWithEvents:(id)events;
- (BOOL)isSleepScheduleBetweenTheBoundariesWithBedtime:(id)bedtime wakeupTime:(id)time;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)queryEvents;
- (void)predictedSleepSuggestionWithCompletionHandler:(id)handler;
@end

@implementation ATXSleepSuggestionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_5 != -1)
  {
    +[ATXSleepSuggestionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_6;

  return v3;
}

void __42__ATXSleepSuggestionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_6;
  sharedInstance__pasExprOnceResult_6 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXSleepSuggestionServer)init
{
  v9.receiver = self;
  v9.super_class = ATXSleepSuggestionServer;
  v2 = [(ATXSleepSuggestionServer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_sleep_schedule(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXSleepSuggestionServer: launched", v8, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.sleepSchedule"];
    listener = v3->_listener;
    v3->_listener = v5;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    [(NSXPCListener *)v3->_listener resume];
  }

  return v3;
}

- (ATXSleepSuggestionServer)initWithEvents:(id)events
{
  eventsCopy = events;
  v6 = [(ATXSleepSuggestionServer *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_events, events);
  }

  return v7;
}

- (void)predictedSleepSuggestionWithCompletionHandler:(id)handler
{
  v91[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!self->_events)
  {
    queryEvents = [(ATXSleepSuggestionServer *)self queryEvents];
    events = self->_events;
    self->_events = queryEvents;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v78 = currentCalendar;
  [currentCalendar setTimeZone:defaultTimeZone];

  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v9 setDateFormat:@"HH:mm"];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = self->_events;
  if (v12 && (v12 = [(NSArray *)v12 count]) != 0)
  {
    v76 = handlerCopy;
    selfCopy = self;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v13 = self->_events;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v80;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v80 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v79 + 1) + 8 * i);
          sleepStartTime = [v18 sleepStartTime];
          v20 = [v9 stringFromDate:sleepStartTime];
          [v10 addObject:v20];

          v22 = __atxlog_handle_sleep_schedule(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [(ATXSleepSuggestionServer *)v88 predictedSleepSuggestionWithCompletionHandler:v18];
          }

          wakeUpTime = [v18 wakeUpTime];
          v24 = [v9 stringFromDate:wakeUpTime];
          [v11 addObject:v24];

          v26 = __atxlog_handle_sleep_schedule(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [(ATXSleepSuggestionServer *)v87 predictedSleepSuggestionWithCompletionHandler:v18];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v15);
    }

    v27 = [v10 count];
    if (v27 >= 3 && (v27 = [v11 count], v27 > 2))
    {
      [v10 sortUsingSelector:sel_compare_];
      v41 = __atxlog_handle_sleep_schedule([v11 sortUsingSelector:sel_compare_]);
      v29 = v78;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSleepSuggestionServer *)v10 predictedSleepSuggestionWithCompletionHandler:v41];
      }

      v43 = __atxlog_handle_sleep_schedule(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSleepSuggestionServer *)v11 predictedSleepSuggestionWithCompletionHandler:v43];
      }

      v35 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v44 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") >> 1}];
      v45 = [v44 componentsSeparatedByString:@":"];
      firstObject = [v45 firstObject];
      [v35 setHour:{objc_msgSend(firstObject, "integerValue")}];

      v75 = v44;
      v47 = [v44 componentsSeparatedByString:@":"];
      lastObject = [v47 lastObject];
      [v35 setMinute:{objc_msgSend(lastObject, "integerValue")}];

      [v35 setCalendar:v78];
      timeZone = [v78 timeZone];
      [v35 setTimeZone:timeZone];

      v50 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v51 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") >> 1}];
      v52 = [v51 componentsSeparatedByString:@":"];
      firstObject2 = [v52 firstObject];
      [v50 setHour:{objc_msgSend(firstObject2, "integerValue")}];

      v54 = [v51 componentsSeparatedByString:@":"];
      lastObject2 = [v54 lastObject];
      [v50 setMinute:{objc_msgSend(lastObject2, "integerValue")}];

      [v50 setCalendar:v78];
      timeZone2 = [v78 timeZone];
      [v50 setTimeZone:timeZone2];

      v58 = __atxlog_handle_sleep_schedule(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [(ATXSleepSuggestionServer *)v50 predictedSleepSuggestionWithCompletionHandler:v35, v58];
      }

      v59 = [(ATXSleepSuggestionServer *)selfCopy isSleepScheduleBetweenTheBoundariesWithBedtime:v50 wakeupTime:v35];
      if (v59)
      {
        v72 = [objc_alloc(MEMORY[0x277CEB838]) initWithBedtimeComponents:v50 wakeupComponents:v35 weekdays:127];
        v60 = [objc_alloc(MEMORY[0x277CEB828]) initWithOccurence:v72];
        v61 = objc_alloc(MEMORY[0x277CBEBD0]);
        v62 = [v61 initWithSuiteName:*MEMORY[0x277CEBD00]];
        v73 = v51;
        v63 = 3600 * [v50 hour];
        minute = [v50 minute];
        [v62 setInteger:v63 + 60 * minute forKey:*MEMORY[0x277CEBDD8]];
        v76[2](v76, v60, 0);
        v65 = selfCopy->_events;
        selfCopy->_events = 0;

        handlerCopy = v76;
        v66 = v72;
        v51 = v73;
      }

      else
      {
        v67 = __atxlog_handle_sleep_schedule(v59);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          [ATXSleepSuggestionServer predictedSleepSuggestionWithCompletionHandler:];
        }

        v74 = MEMORY[0x277CCA9B8];
        v68 = *MEMORY[0x277CEB288];
        v69 = *MEMORY[0x277CEB290];
        v83 = *MEMORY[0x277CCA068];
        v84 = @"Predicted schedule isn't between the boundaries";
        v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v71 = [v74 errorWithDomain:v68 code:v69 userInfo:v70];
        handlerCopy = v76;
        (v76)[2](v76, 0, v71);

        v66 = selfCopy->_events;
        selfCopy->_events = 0;
      }
    }

    else
    {
      v28 = __atxlog_handle_sleep_schedule(v27);
      handlerCopy = v76;
      v29 = v78;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ATXSleepSuggestionServer predictedSleepSuggestionWithCompletionHandler:];
      }

      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CEB288];
      v32 = *MEMORY[0x277CEB280];
      v85 = *MEMORY[0x277CCA068];
      v86 = @"Couldn't find enough events to predict sleep schedule";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v34 = [v30 errorWithDomain:v31 code:v32 userInfo:v33];
      (v76)[2](v76, 0, v34);

      v35 = selfCopy->_events;
      selfCopy->_events = 0;
    }
  }

  else
  {
    v36 = __atxlog_handle_sleep_schedule(v12);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [ATXSleepSuggestionServer predictedSleepSuggestionWithCompletionHandler:];
    }

    v37 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CEB288];
    v39 = *MEMORY[0x277CEB290];
    v90 = *MEMORY[0x277CCA068];
    v91[0] = @"ATXSleepSuggestionServer: Failed to retrieve sleep events from ATXSleepStream";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:&v90 count:1];
    v40 = [v37 errorWithDomain:v38 code:v39 userInfo:v35];
    handlerCopy[2](handlerCopy, 0, v40);

    v29 = currentCalendar;
  }
}

- (id)queryEvents
{
  v2 = objc_alloc_init(MEMORY[0x277CEBCE0]);
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__ATXSleepSuggestionServer_queryEvents__block_invoke;
  v6[3] = &unk_278598F08;
  v4 = v3;
  v7 = v4;
  [v2 enumerateSleepEventsFromStartDate:0 endDate:0 limit:100000 block:v6];

  return v4;
}

void __39__ATXSleepSuggestionServer_queryEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 duration];
  if (v3 >= 14400.0)
  {
    [v5 duration];
    if (v4 < 72000.0)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

- (BOOL)isSleepScheduleBetweenTheBoundariesWithBedtime:(id)bedtime wakeupTime:(id)time
{
  timeCopy = time;
  bedtimeCopy = bedtime;
  hour = [bedtimeCopy hour];
  minute = [bedtimeCopy minute];

  v9 = minute / 60.0 + hour;
  hour2 = [timeCopy hour];
  minute2 = [timeCopy minute];

  v12 = [MEMORY[0x277D41C58] isTime:v9 betweenStartTime:19.9833333 endTime:11.0166667];
  if (v12)
  {
    v13 = MEMORY[0x277D41C58];

    LOBYTE(v12) = [v13 isTime:minute2 / 60.0 + hour2 betweenStartTime:19.9833333 endTime:11.0166667];
  }

  return v12;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = __atxlog_handle_sleep_schedule(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXSleepSuggestionServer: connection attempted", v13, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.proactive.sleepSchedule"];
  v8 = v7;
  if (v7 && (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0) && (v7 = [v8 BOOLValue], (v7 & 1) != 0))
  {
    v9 = ATXSleepSuggestionInterface();
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_54_1];
    [connectionCopy setInvalidationHandler:&__block_literal_global_57];
    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    v11 = __atxlog_handle_sleep_schedule(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXSleepSuggestionServer listener:connectionCopy shouldAcceptNewConnection:v11];
    }

    v10 = 0;
  }

  return v10;
}

void __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_sleep_schedule(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_55(uint64_t a1)
{
  v1 = __atxlog_handle_sleep_schedule(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __63__ATXSleepSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_55_cold_1();
  }
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_7(&dword_2263AA000, v5, v6, "ATXSleepSuggestionServer: Bedtime counted in the prediction:%@");
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_3_7(&dword_2263AA000, v5, v6, "ATXSleepSuggestionServer: Wakeup time counted in the prediction:%@");
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Sorted bedtime array:%@", &v2, 0xCu);
}

- (void)predictedSleepSuggestionWithCompletionHandler:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Sorted wakeup time array:%@", &v2, 0xCu);
}

- (void)predictedSleepSuggestionWithCompletionHandler:(NSObject *)a3 .cold.5(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 134218752;
  v7 = [a1 hour];
  v8 = 2048;
  v9 = [a1 minute];
  v10 = 2048;
  v11 = [a2 hour];
  v12 = 2048;
  v13 = [a2 minute];
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "Predicted Bedtime: %ld:%ld, Wakeup: %ld:%ld", &v6, 0x2Au);
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = @"com.apple.proactive.sleepSchedule";
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSleepSuggestionServer: rejecting connection %@ without entitlement %@", &v2, 0x16u);
}

@end