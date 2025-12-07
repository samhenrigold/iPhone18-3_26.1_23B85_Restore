@interface ATXUrgencyTuningGlobalMetricsLogger
- (ATXUrgencyTuningGlobalMetricsLogger)init;
- (void)logCountForNotificationWithBundleId:(id)id isTimeSensitiveNotification:(BOOL)notification isEngagedTimeSensitiveNotification:(BOOL)sensitiveNotification count:(double)count xpcActivity:(id)activity;
- (void)logUrgencyTuningGlobalMetricsWithXPCActivity:(id)activity;
@end

@implementation ATXUrgencyTuningGlobalMetricsLogger

- (ATXUrgencyTuningGlobalMetricsLogger)init
{
  v6.receiver = self;
  v6.super_class = ATXUrgencyTuningGlobalMetricsLogger;
  v2 = [(ATXUrgencyTuningGlobalMetricsLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    eventTrackerLogger = v2->_eventTrackerLogger;
    v2->_eventTrackerLogger = v3;
  }

  return v2;
}

- (void)logUrgencyTuningGlobalMetricsWithXPCActivity:(id)activity
{
  v44 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4 + -86400.0;
  v6 = objc_opt_new();
  v35 = [v6 engagementStatusOfActiveAndProminentNotificationsWithUrgency:1 sinceTimestamp:v5];
  didDefer = [activityCopy didDefer];
  if (didDefer)
  {
    v8 = __atxlog_handle_metrics(didDefer);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v43 = v10;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", buf, 0xCu);
    }
  }

  else
  {
    v8 = [v6 totalNotificationsPerAppFromStartTime:v5 toEndTime:CFAbsoluteTimeGetCurrent()];
    didDefer2 = [activityCopy didDefer];
    if (didDefer2)
    {
      v12 = __atxlog_handle_metrics(didDefer2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412290;
        v43 = v14;
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", buf, 0xCu);
      }

      v15 = v12;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = v8;
      v36 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v36)
      {
        v31 = v8;
        v32 = v6;
        v33 = *v38;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v38 != v33)
            {
              objc_enumerationMutation(v15);
            }

            v17 = *(*(&v37 + 1) + 8 * i);
            v18 = [v35 objectForKeyedSubscript:{v17, v31, v32}];
            second = [v18 second];

            v20 = [v15 objectForKeyedSubscript:v17];
            unsignedIntegerValue = [v20 unsignedIntegerValue];

            if (second)
            {
              first = [second first];
              v23 = activityCopy;
              v24 = v15;
              unsignedIntegerValue2 = [first unsignedIntegerValue];
              v19Second = [second second];
              v27 = [v19Second unsignedIntegerValue] + unsignedIntegerValue2;

              first2 = [second first];
              unsignedIntegerValue3 = [first2 unsignedIntegerValue];

              v15 = v24;
              activityCopy = v23;
              v30 = unsignedIntegerValue3;
            }

            else
            {
              v27 = 0;
              v30 = 0.0;
            }

            [(ATXUrgencyTuningGlobalMetricsLogger *)self logCountForNotificationWithBundleId:v17 isTimeSensitiveNotification:1 isEngagedTimeSensitiveNotification:1 count:activityCopy xpcActivity:v30];
            [(ATXUrgencyTuningGlobalMetricsLogger *)self logCountForNotificationWithBundleId:v17 isTimeSensitiveNotification:1 isEngagedTimeSensitiveNotification:0 count:activityCopy xpcActivity:v27];
            [(ATXUrgencyTuningGlobalMetricsLogger *)self logCountForNotificationWithBundleId:v17 isTimeSensitiveNotification:0 isEngagedTimeSensitiveNotification:0 count:activityCopy xpcActivity:(unsignedIntegerValue - v27)];
          }

          v36 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v36);
        v8 = v31;
        v6 = v32;
      }
    }
  }
}

- (void)logCountForNotificationWithBundleId:(id)id isTimeSensitiveNotification:(BOOL)notification isEngagedTimeSensitiveNotification:(BOOL)sensitiveNotification count:(double)count xpcActivity:(id)activity
{
  sensitiveNotificationCopy = sensitiveNotification;
  notificationCopy = notification;
  v21 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  idCopy = id;
  v14 = objc_opt_new();
  [v14 setBundleId:idCopy];

  [v14 setIsTimeSensitiveNotification:notificationCopy];
  [v14 setIsTimeSensitiveAndEngagedNotification:sensitiveNotificationCopy];
  [(ATXPETEventTracker2Logger *)self->_eventTrackerLogger trackScalarForMessage:v14 count:count];
  LODWORD(sensitiveNotificationCopy) = [activityCopy didDefer];

  if (sensitiveNotificationCopy)
  {
    v16 = __atxlog_handle_metrics(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", &v19, 0xCu);
    }
  }
}

@end