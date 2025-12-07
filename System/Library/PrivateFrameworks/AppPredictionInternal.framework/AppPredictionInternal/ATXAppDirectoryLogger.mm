@interface ATXAppDirectoryLogger
- (id)_retrieveAllUnprocessedEventsFromBiome;
- (id)_retrieveLastLogProcessedDate;
- (id)_retrieveSessionsFromUnprocessedEvents:(id)events lastSessionEndDate:(id *)date;
- (id)_summarizeSession:(id)session;
- (void)_storeLastLogProcessedDate:(id)date;
- (void)_uploadToCoreAnalytics:(id)analytics;
- (void)uploadSummariesToCoreAnalyticsWithActivity:(id)activity;
@end

@implementation ATXAppDirectoryLogger

- (id)_retrieveLastLogProcessedDate
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 objectForKey:@"AppDirectoryLastLogProcessedDate"];
  if (!v4)
  {
    v5 = __atxlog_handle_app_library(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppDirectoryLogger *)v5 _retrieveLastLogProcessedDate];
    }

    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  }

  return v4;
}

- (void)_storeLastLogProcessedDate:(id)date
{
  v3 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v6 setObject:dateCopy forKey:@"AppDirectoryLastLogProcessedDate"];
}

- (id)_retrieveAllUnprocessedEventsFromBiome
{
  v16 = *MEMORY[0x277D85DE8];
  _retrieveLastLogProcessedDate = [(ATXAppDirectoryLogger *)self _retrieveLastLogProcessedDate];
  v3 = __atxlog_handle_app_library(_retrieveLastLogProcessedDate);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = _retrieveLastLogProcessedDate;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: Processing events since %@", buf, 0xCu);
  }

  v4 = objc_opt_new();
  [_retrieveLastLogProcessedDate timeIntervalSinceReferenceDate];
  v5 = [v4 genericEventPublisherFromStartTime:35 consumerSubType:?];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v5 filterWithIsIncluded:&__block_literal_global_169];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_34;
  v12[3] = &unk_278596F60;
  v13 = v6;
  v8 = v6;
  v9 = [v7 sinkWithCompletion:&__block_literal_global_33_0 receiveInput:v12];

  v10 = [v8 sortedArrayUsingComparator:&__block_literal_global_39];

  return v10;
}

uint64_t __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 eventBody];
    v6 = [v5 event];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v5 = __atxlog_handle_app_library(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2_cold_1(v2);
    }
  }
}

void __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 eventBody];
  v3 = [v4 event];
  [v2 addObject:v3];
}

uint64_t __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2_36(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_retrieveSessionsFromUnprocessedEvents:(id)events lastSessionEndDate:(id *)date
{
  eventsCopy = events;
  v6 = objc_opt_new();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__75;
  v24 = __Block_byref_object_dispose__75;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke;
  v12[3] = &unk_27859F3D0;
  v15 = v18;
  v16 = v26;
  v7 = v6;
  v13 = v7;
  v8 = eventsCopy;
  v14 = v8;
  v17 = &v20;
  [v8 enumerateObjectsUsingBlock:v12];
  if (date)
  {
    *date = v21[5];
  }

  v9 = v14;
  v10 = v7;

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(v26, 8);

  return v10;
}

void __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 eventType];
  v6 = ATXIsSessionStartedByEvent();
  if (v6)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = __atxlog_handle_app_library(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_2(v5);
      }

      goto LABEL_13;
    }

LABEL_12:
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_13;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v13 = __atxlog_handle_app_library(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_1(v5);
    }

    goto LABEL_12;
  }

  [v5 eventType];
  if (ATXIsSessionEndedByEvent())
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) subarrayWithRange:?];
    [v8 addObject:v9];

    v10 = [v5 date];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

LABEL_13:
}

- (id)_summarizeSession:(id)session
{
  v63 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v4 = [sessionCopy objectAtIndexedSubscript:0];
  date = [v4 date];

  v57 = objc_opt_new();
  date3 = date;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = sessionCopy;
  v7 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  v43 = date3;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    eventType = 0;
    v11 = *v59;
    v12 = *MEMORY[0x277CEBA40];
    v56 = *MEMORY[0x277CEBA48];
    v54 = *MEMORY[0x277CEBA30];
    v53 = *MEMORY[0x277CEBA38];
    v52 = *MEMORY[0x277CEBA50];
    v51 = *MEMORY[0x277CEBA58];
    v50 = *MEMORY[0x277CEB9E8];
    v49 = *MEMORY[0x277CEBA10];
    v48 = *MEMORY[0x277CEBA00];
    v47 = *MEMORY[0x277CEBA08];
    v13 = 0.0;
    v46 = *MEMORY[0x277CEBA18];
    v14 = 0.0;
    v15 = 0.0;
    v44 = *MEMORY[0x277CEBA40];
    v45 = *MEMORY[0x277CEB9F8];
    do
    {
      v16 = 0;
      v17 = date3;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v58 + 1) + 8 * v16);
        date2 = [v18 date];
        [date2 timeIntervalSinceDate:v17];
        v21 = v20;

        if (eventType <= 1)
        {
          if (!eventType)
          {
LABEL_14:
            v15 = v15 + v21;
            goto LABEL_16;
          }

          if (eventType == 1)
          {
            v14 = v14 + v21;
          }
        }

        else
        {
          switch(eventType)
          {
            case 9:
              goto LABEL_14;
            case 7:
              v13 = v13 + v21;
              break;
            case 2:
              goto LABEL_14;
          }
        }

LABEL_16:
        if ([v18 eventType] == 1)
        {
          categoryID = [v18 categoryID];
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v9];
          [v12 stringByAppendingString:v23];
          v24 = v8;
          v26 = v25 = v11;
          [v57 setObject:categoryID forKeyedSubscript:v26];

          categoryIndex = [v18 categoryIndex];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v9];
          v29 = [v56 stringByAppendingString:v28];
          [v57 setObject:categoryIndex forKeyedSubscript:v29];

          v11 = v25;
          v8 = v24;
          v12 = v44;

          ++v9;
        }

        [v18 eventType];
        if (ATXIsSessionEndedByEvent())
        {
          bundleId = [v18 bundleId];
          [v57 setObject:bundleId forKeyedSubscript:v54];

          bundleIndex = [v18 bundleIndex];
          [v57 setObject:bundleIndex forKeyedSubscript:v53];

          searchQueryLength = [v18 searchQueryLength];
          [v57 setObject:searchQueryLength forKeyedSubscript:v52];

          searchTab = [v18 searchTab];
          [v57 setObject:searchTab forKeyedSubscript:v51];

          categoryID2 = [v18 categoryID];
          [v57 setObject:categoryID2 forKeyedSubscript:v12];

          categoryIndex2 = [v18 categoryIndex];
          [v57 setObject:categoryIndex2 forKeyedSubscript:v56];

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "eventType")}];
          [v57 setObject:v36 forKeyedSubscript:v50];

          v37 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
          [v57 setObject:v37 forKeyedSubscript:v49];

          v38 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
          [v57 setObject:v38 forKeyedSubscript:v48];

          v39 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          [v57 setObject:v39 forKeyedSubscript:v47];

          v40 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
          [v57 setObject:v40 forKeyedSubscript:v46];

          v41 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
          [v57 setObject:v41 forKeyedSubscript:v45];
        }

        date3 = [v18 date];

        eventType = [v18 eventType];
        ++v16;
        v17 = date3;
      }

      while (v8 != v16);
      v8 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v8);
  }

  return v57;
}

- (void)_uploadToCoreAnalytics:(id)analytics
{
  v10 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v4 = AnalyticsSendEventLazy();
  v5 = v4;
  v6 = __atxlog_handle_app_library(v4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = analyticsCopy;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: Attached log successfully uploaded to CoreAnalytics - %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ATXAppDirectoryLogger _uploadToCoreAnalytics:v7];
  }
}

- (void)uploadSummariesToCoreAnalyticsWithActivity:(id)activity
{
  v34 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  _retrieveAllUnprocessedEventsFromBiome = [(ATXAppDirectoryLogger *)self _retrieveAllUnprocessedEventsFromBiome];
  didDefer = [activityCopy didDefer];
  if (didDefer)
  {
    v7 = __atxlog_handle_app_library(didDefer);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: deferring uploading of logs to Core Analytics after merely fetching unprocessed events", buf, 2u);
    }
  }

  else
  {
    v30 = 0;
    v8 = [(ATXAppDirectoryLogger *)self _retrieveSessionsFromUnprocessedEvents:_retrieveAllUnprocessedEventsFromBiome lastSessionEndDate:&v30];
    v7 = v30;
    v9 = __atxlog_handle_app_library(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAppDirectoryLogger *)v8 uploadSummariesToCoreAnalyticsWithActivity:_retrieveAllUnprocessedEventsFromBiome];
    }

    didDefer2 = [activityCopy didDefer];
    if (didDefer2)
    {
      v11 = __atxlog_handle_app_library(didDefer2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXAppDirectoryLogger: deferring uploading of logs to Core Analytics after merely fetching sessions", buf, 2u);
      }
    }

    else
    {
      if ([_retrieveAllUnprocessedEventsFromBiome count] && v7)
      {
        [(ATXAppDirectoryLogger *)self _storeLastLogProcessedDate:v7];
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v22 = v8;
        v23 = v7;
        v24 = _retrieveAllUnprocessedEventsFromBiome;
        v25 = activityCopy;
        v14 = *v27;
        v15 = *MEMORY[0x277CEB9F0];
        v16 = 1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v18 = [(ATXAppDirectoryLogger *)self _summarizeSession:*(*(&v26 + 1) + 8 * i), v22, v23, v24, v25];
            v19 = [MEMORY[0x277CCABB0] numberWithBool:v16 & 1];
            [v18 setObject:v19 forKeyedSubscript:v15];

            v21 = __atxlog_handle_app_library(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v32 = v18;
              _os_log_debug_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEBUG, "ATXAppDirectoryLogger: Uploading session %@", buf, 0xCu);
            }

            [(ATXAppDirectoryLogger *)self _uploadToCoreAnalytics:v18];
            v16 = 0;
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
          v16 = 0;
        }

        while (v13);
        _retrieveAllUnprocessedEventsFromBiome = v24;
        activityCopy = v25;
        v8 = v22;
        v7 = v23;
      }
    }
  }
}

void __63__ATXAppDirectoryLogger__retrieveAllUnprocessedEventsFromBiome__block_invoke_2_cold_1(void *a1)
{
  v5 = [a1 error];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
}

void __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_1(void *a1)
{
  v5 = [a1 date];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

void __83__ATXAppDirectoryLogger__retrieveSessionsFromUnprocessedEvents_lastSessionEndDate___block_invoke_cold_2(void *a1)
{
  v5 = [a1 date];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
}

- (void)uploadSummariesToCoreAnalyticsWithActivity:(void *)a1 .cold.1(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

@end