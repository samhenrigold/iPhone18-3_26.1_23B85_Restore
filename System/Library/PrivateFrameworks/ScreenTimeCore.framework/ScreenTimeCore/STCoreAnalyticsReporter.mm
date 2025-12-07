@interface STCoreAnalyticsReporter
+ (void)reportEvent:(id)event;
@end

@implementation STCoreAnalyticsReporter

+ (void)reportEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  name = [eventCopy name];
  v5 = eventCopy;
  v6 = AnalyticsSendEventLazy();

  v7 = +[STLog coreAnalytics];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 description];
      payload = [v5 payload];
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = payload;
      _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Sent Core Analytics event: %@ %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(STCoreAnalyticsReporter *)v5 reportEvent:v8];
  }
}

+ (void)reportEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to send Core Analytics event: %@", &v4, 0xCu);
}

@end