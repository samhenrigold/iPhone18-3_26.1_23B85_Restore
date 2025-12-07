@interface CPAnalyticsLogDestination
- (CPAnalyticsLogDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (id)_descriptionComponentsForEvent:(id)event forProperties:(id)properties;
- (id)_logEventMatchersInConfiguration:(id)configuration;
- (void)logEvent:(id)event withLabel:(id)label shouldLogEventName:(BOOL)name propertiesToLog:(id)log publicPropertiesToLog:(id)toLog;
- (void)processEvent:(id)event;
@end

@implementation CPAnalyticsLogDestination

- (id)_descriptionComponentsForEvent:(id)event forProperties:(id)properties
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  propertiesCopy = properties;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = propertiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [eventCopy propertyForKey:v13];
        if (v14)
        {
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = [v14 description];
          v17 = [v15 initWithFormat:@"%@: %@", v13, v16, v19];
          [v7 addObject:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)logEvent:(id)event withLabel:(id)label shouldLogEventName:(BOOL)name propertiesToLog:(id)log publicPropertiesToLog:(id)toLog
{
  nameCopy = name;
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  labelCopy = label;
  logCopy = log;
  toLogCopy = toLog;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (nameCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    name = [eventCopy name];
    v18 = [v16 initWithFormat:@"eventName: %@", name];
    [v15 addObject:v18];
  }

  v19 = [(CPAnalyticsLogDestination *)self _descriptionComponentsForEvent:eventCopy forProperties:logCopy];
  [v15 addObjectsFromArray:v19];

  if ([v15 count])
  {
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v15 componentsJoinedByString:{@", "}];
    v22 = [v20 initWithFormat:@" { %@ }", v21];
  }

  else
  {
    v22 = &stru_2854ED768;
  }

  v23 = [(CPAnalyticsLogDestination *)self _descriptionComponentsForEvent:eventCopy forProperties:toLogCopy];
  if ([v23 count])
  {
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v25 = [v23 componentsJoinedByString:{@", "}];
    v26 = [v24 initWithFormat:@" { %@ }", v25];
  }

  else
  {
    v26 = &stru_2854ED768;
  }

  if (logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__onceToken != -1)
  {
    dispatch_once(&logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__onceToken, &__block_literal_global_523);
  }

  v27 = [(CPAnalyticsLogDestination *)self log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter;
    timestamp = [eventCopy timestamp];
    v30 = [v28 stringFromDate:timestamp];
    *buf = 138544130;
    v33 = labelCopy;
    v34 = 2112;
    v35 = v22;
    v36 = 2114;
    v37 = v26;
    v38 = 2114;
    v39 = v30;
    _os_log_impl(&dword_24260A000, v27, OS_LOG_TYPE_INFO, "%{public}@:%@%{public}@, (@ %{public}@)", buf, 0x2Au);
  }
}

uint64_t __105__CPAnalyticsLogDestination_logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter;
  logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter = v0;

  v2 = logEvent_withLabel_shouldLogEventName_propertiesToLog_publicPropertiesToLog__dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZ"];
}

- (id)_logEventMatchersInConfiguration:(id)configuration
{
  v22 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v4 = [configurationCopy objectForKeyedSubscript:@"logEvents"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = CPAnalyticsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = configurationCopy;
      _os_log_error_impl(&dword_24260A000, v6, OS_LOG_TYPE_ERROR, "Malformed logEvents in configuration %@", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [CPAnalyticsLogEventMatcher alloc];
          v13 = [(CPAnalyticsLogEventMatcher *)v12 initWithConfig:v11, v15];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)processEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  logEventMatchers = [(CPAnalyticsLogDestination *)self logEventMatchers];
  v6 = [logEventMatchers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(logEventMatchers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 doesMatch:eventCopy])
        {
          eventTypeLabel = [v10 eventTypeLabel];
          shouldLogEventName = [v10 shouldLogEventName];
          eventPropertiesToLog = [v10 eventPropertiesToLog];
          eventPublicPropertiesToLog = [v10 eventPublicPropertiesToLog];
          [(CPAnalyticsLogDestination *)self logEvent:eventCopy withLabel:eventTypeLabel shouldLogEventName:shouldLogEventName propertiesToLog:eventPropertiesToLog publicPropertiesToLog:eventPublicPropertiesToLog];
        }
      }

      v7 = [logEventMatchers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (CPAnalyticsLogDestination)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = CPAnalyticsLogDestination;
  v6 = [(CPAnalyticsLogDestination *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(CPAnalyticsLogDestination *)v6 _logEventMatchersInConfiguration:configCopy];
    logEventMatchers = v7->_logEventMatchers;
    v7->_logEventMatchers = v8;

    v10 = os_log_create("com.apple.photos.CPAnalytics", "CPAnalyticsLogs");
    log = v7->_log;
    v7->_log = v10;
  }

  return v7;
}

@end