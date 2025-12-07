@interface ATXNotificationAdjacentSuggestionMetricsLogger
- (ATXNotificationAdjacentSuggestionMetricsLogger)init;
- (ATXNotificationAdjacentSuggestionMetricsLogger)initWithDatastore:(id)datastore;
- (void)logNotificationAdjacentSuggestionMetricsWithXPCActivity:(id)activity;
@end

@implementation ATXNotificationAdjacentSuggestionMetricsLogger

- (ATXNotificationAdjacentSuggestionMetricsLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationAdjacentSuggestionMetricsLogger *)self initWithDatastore:v3];

  return v4;
}

- (ATXNotificationAdjacentSuggestionMetricsLogger)initWithDatastore:(id)datastore
{
  datastoreCopy = datastore;
  v9.receiver = self;
  v9.super_class = ATXNotificationAdjacentSuggestionMetricsLogger;
  v6 = [(ATXNotificationAdjacentSuggestionMetricsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datastore, datastore);
  }

  return v7;
}

- (void)logNotificationAdjacentSuggestionMetricsWithXPCActivity:(id)activity
{
  v63 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = __atxlog_handle_metrics(activityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v55 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "%@ - Updating the database", buf, 0xCu);
  }

  [(ATXNotificationAndSuggestionDatastore *)self->_datastore updateDatabase];
  didDefer = [activityCopy didDefer];
  if (didDefer)
  {
    v9 = __atxlog_handle_metrics(didDefer);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v55 = v11;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - XPC deferred, terminating.", buf, 0xCu);
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = [v12 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v13 = [v9 doubleForKey:@"suggestionsMetricsTimestamp"];
    v15 = v14;
    v16 = __atxlog_handle_metrics(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412546;
      v55 = v18;
      v56 = 2048;
      v57 = v15;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "%@ - Fetching metrics objects with previous timestamp %f", buf, 0x16u);
    }

    v19 = [(ATXNotificationAndSuggestionDatastore *)self->_datastore metricsForSuggestionsSinceCompletionTimestamp:v15];
    didDefer2 = [activityCopy didDefer];
    v21 = didDefer2;
    v22 = __atxlog_handle_metrics(didDefer2);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v23)
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138412290;
        v55 = v25;
        _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "%@ - XPC deferred, terminating.", buf, 0xCu);
      }
    }

    else
    {
      if (v23)
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138412290;
        v55 = v27;
        _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "%@ - logging fetched metrics", buf, 0xCu);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = v19;
      v28 = v19;
      v29 = [v28 countByEnumeratingWithState:&v50 objects:v62 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = 0.0;
        v32 = *v51;
        while (2)
        {
          v33 = 0;
          v34 = (*&v31)++;
          *&v48 = v34 + v30;
          do
          {
            if (*v51 != v32)
            {
              objc_enumerationMutation(v28);
            }

            v35 = *(*(&v50 + 1) + 8 * v33);
            v36 = objc_autoreleasePoolPush();
            [v35 suggestionCompletionTimestamp];
            if (v37 > v15)
            {
              [v35 suggestionCompletionTimestamp];
              v15 = v38;
            }

            [v35 logToCoreAnalytics];
            didDefer3 = [activityCopy didDefer];
            if (didDefer3)
            {
              v40 = __atxlog_handle_metrics(didDefer3);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                v41 = objc_opt_class();
                v42 = NSStringFromClass(v41);
                *buf = 138412290;
                v55 = v42;
                _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_INFO, "%@ - XPC deferred, terminating.", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v36);
              goto LABEL_29;
            }

            objc_autoreleasePoolPop(v36);
            ++v33;
            ++*&v31;
          }

          while (v30 != v33);
          v30 = [v28 countByEnumeratingWithState:&v50 objects:v62 count:16];
          v31 = v48;
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v31 = 0.0;
      }

LABEL_29:

      v44 = __atxlog_handle_metrics(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = [v28 count];
        *buf = 138413058;
        v55 = v46;
        v56 = 2048;
        v57 = v31;
        v58 = 2048;
        v59 = v47;
        v60 = 2048;
        v61 = v15;
        _os_log_impl(&dword_2263AA000, v44, OS_LOG_TYPE_INFO, "%@ - Logged %ld out of %ld metrics.  New metric timestamp is %f.", buf, 0x2Au);
      }

      [v9 setDouble:@"suggestionsMetricsTimestamp" forKey:v15];
      v19 = v49;
    }
  }
}

@end