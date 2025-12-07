@interface CPAnalyticsLogEventMatcher
- (CPAnalyticsLogEventMatcher)initWithConfig:(id)config;
@end

@implementation CPAnalyticsLogEventMatcher

- (CPAnalyticsLogEventMatcher)initWithConfig:(id)config
{
  v46 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [configCopy objectForKeyedSubscript:@"label"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    v6 = [configCopy objectForKeyedSubscript:@"shouldLogEventName"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = CPAnalyticsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = configCopy;
        _os_log_error_impl(&dword_24260A000, v7, OS_LOG_TYPE_ERROR, "Malformed shouldLogEventName in log event matcher configuration %@", buf, 0xCu);
      }

      selfCopy = 0;
    }

    else
    {
      v7 = [configCopy objectForKeyedSubscript:@"eventPropertiesToLog"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v13 = CPAnalyticsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v45 = configCopy;
          _os_log_error_impl(&dword_24260A000, v13, OS_LOG_TYPE_ERROR, "Malformed eventPropertiesToLog in log event matcher configuration %@", buf, 0xCu);
        }

        selfCopy = 0;
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v31 = v7;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v39;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v39 != v11)
              {
                objc_enumerationMutation(v8);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v27 = CPAnalyticsLog();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v45 = configCopy;
                  _os_log_error_impl(&dword_24260A000, v27, OS_LOG_TYPE_ERROR, "Malformed eventPropertiesToLog in log event matcher configuration %@", buf, 0xCu);
                }

                selfCopy = 0;
                v13 = v8;
                v7 = v31;
                goto LABEL_49;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v13 = [configCopy objectForKeyedSubscript:@"eventPublicPropertiesToLog"];
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          obj = CPAnalyticsLog();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v45 = configCopy;
            _os_log_error_impl(&dword_24260A000, obj, OS_LOG_TYPE_ERROR, "Malformed eventPublicPropertiesToLog in log event matcher configuration %@", buf, 0xCu);
          }

          selfCopy = 0;
          v7 = v31;
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v30 = v13;
          obj = v13;
          v14 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v35;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v28 = CPAnalyticsLog();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v45 = configCopy;
                    _os_log_error_impl(&dword_24260A000, v28, OS_LOG_TYPE_ERROR, "Malformed eventPublicPropertyToLog in log event matcher configuration %@", buf, 0xCu);
                  }

                  selfCopy = 0;
                  goto LABEL_44;
                }
              }

              v15 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          selfCopy = [CPAnalyticsEventMatcher eventMatcherWithConfiguration:configCopy];
          if (selfCopy)
          {
            v33.receiver = self;
            v33.super_class = CPAnalyticsLogEventMatcher;
            v19 = [(CPAnalyticsLogEventMatcher *)&v33 init];
            v20 = v19;
            if (v19)
            {
              objc_storeStrong(&v19->_eventMatcher, selfCopy);
              v21 = [v5 copy];
              eventTypeLabel = v20->_eventTypeLabel;
              v20->_eventTypeLabel = v21;

              v20->_shouldLogEventName = [v6 BOOLValue];
              v23 = [v8 copy];
              eventPropertiesToLog = v20->_eventPropertiesToLog;
              v20->_eventPropertiesToLog = v23;

              v25 = [obj copy];
              eventPublicPropertiesToLog = v20->_eventPublicPropertiesToLog;
              v20->_eventPublicPropertiesToLog = v25;
            }

            self = v20;
            obj = &selfCopy->super.super;
            selfCopy = self;
          }

          else
          {
            obj = 0;
          }

LABEL_44:
          v13 = v30;
          v7 = v31;
        }
      }

LABEL_49:
    }
  }

  else
  {
    v6 = CPAnalyticsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = configCopy;
      _os_log_error_impl(&dword_24260A000, v6, OS_LOG_TYPE_ERROR, "Malformed label in log event matcher configuration %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end