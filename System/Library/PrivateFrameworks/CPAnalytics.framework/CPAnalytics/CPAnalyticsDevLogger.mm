@interface CPAnalyticsDevLogger
- (CPAnalyticsDevLogger)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (void)processEvent:(id)event;
@end

@implementation CPAnalyticsDevLogger

- (void)processEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (processEvent__devLoggerOnce != -1)
  {
    dispatch_once(&processEvent__devLoggerOnce, &__block_literal_global);
  }

  v4 = processEvent__devLogger;
  if (os_log_type_enabled(processEvent__devLogger, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    timestamp = [eventCopy timestamp];
    name = [eventCopy name];
    copyRawPayload = [eventCopy copyRawPayload];
    v9 = 138412802;
    v10 = timestamp;
    v11 = 2112;
    v12 = name;
    v13 = 2112;
    v14 = copyRawPayload;
    _os_log_debug_impl(&dword_24260A000, v5, OS_LOG_TYPE_DEBUG, "%@: %@ payload: %@", &v9, 0x20u);
  }
}

uint64_t __37__CPAnalyticsDevLogger_processEvent___block_invoke()
{
  processEvent__devLogger = os_log_create("com.apple.photos.CPAnalytics", "CPAnalyticsDevLogger");

  return MEMORY[0x2821F96F8]();
}

- (CPAnalyticsDevLogger)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  v5.receiver = self;
  v5.super_class = CPAnalyticsDevLogger;
  return [(CPAnalyticsDevLogger *)&v5 init:config];
}

@end