@interface CNMetricsReporter
+ (id)log;
+ (void)logDatabaseResolution:(id)resolution;
+ (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log;
- (id)compoundKeyForEvent:(id)event;
- (void)logSimpleEvent:(id)event forApplication:(id)application andLog:(BOOL)log;
- (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log;
@end

@implementation CNMetricsReporter

+ (id)log
{
  if (log_cn_once_token_1 != -1)
  {
    +[CNMetricsReporter log];
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __24__CNMetricsReporter_log__block_invoke()
{
  log_cn_once_object_1 = os_log_create("com.apple.contacts", "metrics-reporter");

  return MEMORY[0x2821F96F8]();
}

+ (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log
{
  logCopy = log;
  eventCopy = event;
  dictionaryCopy = dictionary;
  v10 = objc_alloc_init(self);
  [v10 sendDictionary:dictionaryCopy forEvent:eventCopy andLog:logCopy];
}

- (void)sendDictionary:(id)dictionary forEvent:(id)event andLog:(BOOL)log
{
  logCopy = log;
  v17 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  eventCopy = event;
  v10 = [(CNMetricsReporter *)self compoundKeyForEvent:eventCopy];
  v11 = dictionaryCopy;
  AnalyticsSendEventLazy();

  if (logCopy)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = eventCopy;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_244157000, v12, OS_LOG_TYPE_INFO, "CNMetrics Collected for %@ (%@)", buf, 0x16u);
    }
  }
}

- (void)logSimpleEvent:(id)event forApplication:(id)application andLog:(BOOL)log
{
  logCopy = log;
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB38];
  applicationCopy = application;
  eventCopy = event;
  v11 = [v8 alloc];
  v14 = @"application";
  v15[0] = applicationCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v13 = [v11 initWithDictionary:v12];
  [(CNMetricsReporter *)self sendDictionary:v13 forEvent:eventCopy andLog:logCopy];
}

- (id)compoundKeyForEvent:(id)event
{
  eventCopy = event;
  eventKeyPrefix = [(CNMetricsReporter *)self eventKeyPrefix];
  v6 = [eventKeyPrefix stringByAppendingString:eventCopy];

  return v6;
}

+ (void)logDatabaseResolution:(id)resolution
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  resolutionCopy = resolution;
  v6 = [v4 alloc];
  v9 = @"resolution";
  v10[0] = resolutionCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v8 = [v6 initWithDictionary:v7];
  [self sendDictionary:v8 forEvent:@"com.apple.contacts.databaseIntegrity"];
}

@end