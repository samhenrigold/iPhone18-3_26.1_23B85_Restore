@interface ATXUpdatePredictionsSources
- (ATXUpdatePredictionsSources)init;
- (ATXUpdatePredictionsSources)initWithUpdateSources:(id)sources rateLimiter:(id)limiter;
- (void)forceUpdatePredictionsImmediatelyWithReason:(unint64_t)reason;
- (void)tryUpdatePredictionsDefaultIntervalWithReason:(unint64_t)reason;
- (void)tryUpdatePredictionsImmediatelyWithReason:(unint64_t)reason;
@end

@implementation ATXUpdatePredictionsSources

- (ATXUpdatePredictionsSources)init
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11[0] = v3;
  v4 = objc_opt_new();
  v11[1] = v4;
  v5 = objc_opt_new();
  v11[2] = v5;
  v6 = objc_opt_new();
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  v8 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:2 perPeriod:27000.0];
  v9 = [(ATXUpdatePredictionsSources *)self initWithUpdateSources:v7 rateLimiter:v8];

  return v9;
}

- (ATXUpdatePredictionsSources)initWithUpdateSources:(id)sources rateLimiter:(id)limiter
{
  v23 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  limiterCopy = limiter;
  v21.receiver = self;
  v21.super_class = ATXUpdatePredictionsSources;
  v9 = [(ATXUpdatePredictionsSources *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updateSources, sources);
    objc_storeStrong(&v10->_rateLimiter, limiter);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = sourcesCopy;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) setDelegate:{v10, v17}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (void)tryUpdatePredictionsDefaultIntervalWithReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  tryToIncrementCountAndReturnSuccess = [(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess];
  v6 = tryToIncrementCountAndReturnSuccess;
  v7 = __atxlog_handle_default(tryToIncrementCountAndReturnSuccess);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v10;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsDefaultIntervalWithReason:]";
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ successful", &v15, 0x20u);
    }

    [(ATXUpdatePredictionsSources *)self forwardUpdatePredictionsDefaultIntervalWithReason:reason];
  }

  else
  {
    if (v8)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v13;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsDefaultIntervalWithReason:]";
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ rate limited", &v15, 0x20u);
    }
  }
}

- (void)tryUpdatePredictionsImmediatelyWithReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  tryToIncrementCountAndReturnSuccess = [(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess];
  v6 = tryToIncrementCountAndReturnSuccess;
  v7 = __atxlog_handle_default(tryToIncrementCountAndReturnSuccess);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v10;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsImmediatelyWithReason:]";
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ successful", &v15, 0x20u);
    }

    [(ATXUpdatePredictionsSources *)self forwardUpdatePredictionsImmediatelyWithReason:reason];
  }

  else
  {
    if (v8)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
      v15 = 138412802;
      v16 = v13;
      v17 = 2080;
      v18 = "[ATXUpdatePredictionsSources tryUpdatePredictionsImmediatelyWithReason:]";
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "%@ - %s: prediction update with reason: %@ rate limited", &v15, 0x20u);
    }
  }
}

- (void)forceUpdatePredictionsImmediatelyWithReason:(unint64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:reason];
    v9 = 138412802;
    v10 = v7;
    v11 = 2080;
    v12 = "[ATXUpdatePredictionsSources forceUpdatePredictionsImmediatelyWithReason:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "%@ - %s: forced prediction update with reason: %@", &v9, 0x20u);
  }

  [(ATXUpdatePredictionsSources *)self forwardUpdatePredictionsImmediatelyWithReason:reason];
  [(ATXTimeBucketedRateLimiter *)self->_rateLimiter tryToIncrementCountAndReturnSuccess];
}

@end