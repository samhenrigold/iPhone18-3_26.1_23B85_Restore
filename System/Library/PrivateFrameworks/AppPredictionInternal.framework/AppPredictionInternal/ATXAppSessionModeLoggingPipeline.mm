@interface ATXAppSessionModeLoggingPipeline
- (ATXAppSessionModeLoggingPipeline)init;
- (ATXAppSessionModeLoggingPipeline)initWithModeTransitionPublisher:(id)publisher appLaunchPublisher:(id)launchPublisher notificationEventPublisher:(id)eventPublisher lastEventTimestamp:(double)timestamp lastActivityType:(unint64_t)type;
- (double)lastPipelineRunTimestampFromStore;
- (unint64_t)lastKnownActivityFromStore;
- (void)lastKnownActivityFromStore;
- (void)logAppSessionMetricsWithXPCActivity:(id)activity;
- (void)persistState;
@end

@implementation ATXAppSessionModeLoggingPipeline

- (ATXAppSessionModeLoggingPipeline)init
{
  [(ATXAppSessionModeLoggingPipeline *)self lastPipelineRunTimestampFromStore];
  v4 = v3;
  lastKnownActivityFromStore = [(ATXAppSessionModeLoggingPipeline *)self lastKnownActivityFromStore];
  v6 = objc_opt_new();
  v7 = [v6 transitionPublisherFromStartTime:v4];

  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  v10 = [v8 appLaunchesSinceDate:v9];

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [v12 publisherFromStartTime:v4];
  v14 = [v11 stripStoreEvent:v13];

  v15 = [(ATXAppSessionModeLoggingPipeline *)self initWithModeTransitionPublisher:v7 appLaunchPublisher:v10 notificationEventPublisher:v14 lastEventTimestamp:lastKnownActivityFromStore lastActivityType:v4];
  return v15;
}

- (ATXAppSessionModeLoggingPipeline)initWithModeTransitionPublisher:(id)publisher appLaunchPublisher:(id)launchPublisher notificationEventPublisher:(id)eventPublisher lastEventTimestamp:(double)timestamp lastActivityType:(unint64_t)type
{
  publisherCopy = publisher;
  launchPublisherCopy = launchPublisher;
  eventPublisherCopy = eventPublisher;
  v19.receiver = self;
  v19.super_class = ATXAppSessionModeLoggingPipeline;
  v16 = [(ATXAppSessionModeLoggingPipeline *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_modeTransitionPublisher, publisher);
    objc_storeStrong(&v17->_appLaunchPublisher, launchPublisher);
    objc_storeStrong(&v17->_notificationEventPublisher, eventPublisher);
    v17->_lastEventTimestamp = timestamp;
    v17->_lastActivityType = type;
  }

  return v17;
}

- (double)lastPipelineRunTimestampFromStore
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v3 doubleForKey:@"modeAppSessionPipelineLastRunTimestampKey"];
  v5 = v4;

  return v5;
}

- (unint64_t)lastKnownActivityFromStore
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v5 = [v4 objectForKey:@"modeAppSessionPipelineLastKnownModeKey"];
  if (!v5)
  {
LABEL_7:
    unsignedIntegerValue = 14;
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = __atxlog_handle_metrics(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppSessionModeLoggingPipeline *)self lastKnownActivityFromStore];
    }

    goto LABEL_7;
  }

  unsignedIntegerValue = [v5 unsignedIntegerValue];
LABEL_8:

  return unsignedIntegerValue;
}

- (void)logAppSessionMetricsWithXPCActivity:(id)activity
{
  v29[2] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  notificationEventPublisher = self->_notificationEventPublisher;
  v29[0] = self->_appLaunchPublisher;
  v29[1] = notificationEventPublisher;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v7 = objc_opt_new();
  v26[0] = 0;
  v26[1] = v26;
  lastEventTimestamp = self->_lastEventTimestamp;
  v26[2] = 0x2020000000;
  *&v26[3] = lastEventTimestamp;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  modeTransitionPublisher = self->_modeTransitionPublisher;
  v25[3] = self->_lastActivityType;
  v10 = [(ATXAppSessionModeLoggingPipeline *)self timeMergedPublisherFromEventPublishers:v6 modeTransitionPublisher:modeTransitionPublisher];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke;
  v20[3] = &unk_278598858;
  v20[4] = self;
  v22 = v27;
  v21 = v7;
  v23 = v26;
  v24 = v25;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30;
  v14[3] = &unk_278598880;
  v14[4] = self;
  v17 = v26;
  v18 = v25;
  v11 = v21;
  v15 = v11;
  v12 = activityCopy;
  v16 = v12;
  v19 = v27;
  v13 = [v10 sinkWithCompletion:v20 shouldContinue:v14];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v27, 8);
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v6 = __atxlog_handle_metrics(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_cold_1(a1, v3);
    }
  }

  else
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v7 = __atxlog_handle_metrics(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v10, 0xCu);
      }
    }

    [*(a1 + 40) logToCoreAnalytics];
    *(*(a1 + 32) + 8) = *(*(*(a1 + 56) + 8) + 24);
    *(*(a1 + 32) + 16) = *(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 32) persistState];
  }
}

uint64_t __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventTime];
    [v5 timeIntervalSinceReferenceDate];
    *(*(*(a1 + 56) + 8) + 24) = v6;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 64) + 8) + 24) = [v4 activityTypeAfterTransition];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) handleNotificationEvent:v4];
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v10 = [ATXModeDimensionSet alloc];
          v11 = ATXActivityTypeToString();
          v12 = [(ATXModeDimensionSet *)v10 initWithMode:v11];

          [*(a1 + 40) handleNextAppLaunch:v4 dimensionSet:v12];
        }

        else
        {
          v12 = __atxlog_handle_metrics(isKindOfClass);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_1(a1, v4);
          }
        }
      }
    }

    v8 = 1;
    if ([*(a1 + 48) didDefer])
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v8 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_metrics(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_2(a1);
    }

    v8 = 1;
  }

  return v8;
}

- (void)persistState
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v5 setDouble:@"modeAppSessionPipelineLastRunTimestampKey" forKey:self->_lastEventTimestamp];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lastActivityType];
  [v5 setObject:v4 forKey:@"modeAppSessionPipelineLastKnownModeKey"];
}

uint64_t __99__ATXAppSessionModeLoggingPipeline_timeMergedPublisherFromEventPublishers_modeTransitionPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)lastKnownActivityFromStore
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 error];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_2(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end