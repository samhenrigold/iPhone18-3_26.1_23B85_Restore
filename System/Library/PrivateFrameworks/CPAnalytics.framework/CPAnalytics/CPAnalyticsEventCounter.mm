@interface CPAnalyticsEventCounter
+ (id)_validateAndParseEventName:(id)name;
- (CPAnalyticsEventCounter)initWithConfig:(id)config;
- (CPAnalyticsEventCounter)initWithEventName:(id)name;
- (CPAnalyticsEventCounter)initWithName:(id)name matcher:(id)matcher;
- (id)description;
- (void)countEvent:(id)event;
@end

@implementation CPAnalyticsEventCounter

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  name = [(CPAnalyticsEventCounter *)self name];
  v4 = [v2 stringWithFormat:@"Name: %@", name];

  return v4;
}

- (void)countEvent:(id)event
{
  eventCopy = event;
  matcher = [(CPAnalyticsEventCounter *)self matcher];
  v5 = [matcher doesMatch:eventCopy];

  if (v5)
  {
    countKey = [(CPAnalyticsEventCounter *)self countKey];
    if (!countKey)
    {
      v9 = 1;
LABEL_11:
      [(CPAnalyticsEventCounter *)self setCount:[(CPAnalyticsEventCounter *)self count]+ v9];

      goto LABEL_12;
    }

    v7 = [eventCopy propertyForKey:countKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 1;
        goto LABEL_10;
      }

      integerValue = [v7 count];
    }

    v9 = integerValue;
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

- (CPAnalyticsEventCounter)initWithName:(id)name matcher:(id)matcher
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  matcherCopy = matcher;
  v9 = [(CPAnalyticsEventCounter *)self init];
  if (v9)
  {
    v10 = [nameCopy length];
    if (matcherCopy && v10)
    {
      objc_storeStrong(&v9->_matcher, matcher);
      objc_storeStrong(&v9->_name, name);
    }

    else
    {
      v11 = CPAnalyticsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412546;
        v14 = nameCopy;
        v15 = 2112;
        v16 = matcherCopy;
        _os_log_error_impl(&dword_24260A000, v11, OS_LOG_TYPE_ERROR, "Error creating event counter, name: %@, matcher: %@", &v13, 0x16u);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (CPAnalyticsEventCounter)initWithEventName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = [(CPAnalyticsEventCounter *)self init];
  if (v6)
  {
    v7 = [CPAnalyticsEventMatcher eventMatcherWithEventName:nameCopy];
    if ([nameCopy length] && v7)
    {
      objc_storeStrong(&v6->_matcher, v7);
      objc_storeStrong(&v6->_name, name);
    }

    else
    {
      v8 = CPAnalyticsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412546;
        v11 = nameCopy;
        v12 = 2112;
        v13 = v7;
        _os_log_error_impl(&dword_24260A000, v8, OS_LOG_TYPE_ERROR, "Error creating event counter, eventName: %@, matcher: %@", &v10, 0x16u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (CPAnalyticsEventCounter)initWithConfig:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v14.receiver = self;
  v14.super_class = CPAnalyticsEventCounter;
  v5 = [(CPAnalyticsEventCounter *)&v14 init];
  if (v5)
  {
    v6 = [configCopy objectForKey:@"matchCriteria"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [CPAnalyticsEventMatcher eventMatcherWithConfiguration:v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = [configCopy objectForKey:@"name"];
    v9 = [CPAnalyticsEventCounter _validateAndParseEventName:v8];

    if (!v9)
    {
      v9 = [v6 objectForKeyedSubscript:@"key"];
    }

    if ([v9 length] && v7)
    {
      objc_storeStrong(&v5->_matcher, v7);
      objc_storeStrong(&v5->_name, v9);
      v10 = [configCopy objectForKeyedSubscript:@"countKey"];
      countKey = v5->_countKey;
      v5->_countKey = v10;
    }

    else
    {
      v12 = CPAnalyticsLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = configCopy;
        v17 = 2112;
        v18 = v9;
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&dword_24260A000, v12, OS_LOG_TYPE_ERROR, "Error creating event counter from config: %@, name: %@, matcher: %@", buf, 0x20u);
      }

      countKey = v5;
      v5 = 0;
    }
  }

  return v5;
}

+ (id)_validateAndParseEventName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [nameCopy length])
  {
    v4 = nameCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end