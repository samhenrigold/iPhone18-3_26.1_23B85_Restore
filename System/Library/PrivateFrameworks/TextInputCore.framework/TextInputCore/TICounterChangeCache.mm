@interface TICounterChangeCache
- (TICounterChangeCache)initWithEventDescriptorRegistry:(id)registry metricDescriptorRegistry:(id)descriptorRegistry;
- (void)addCounterReferencesForMetric:(id)metric;
- (void)addStatisticChanges:(id)changes withContext:(id)context;
- (void)keyboardDidSuspendForDate:(id)date;
- (void)loadReferencedCounters;
- (void)persistForDate:(id)date;
@end

@implementation TICounterChangeCache

- (void)persistForDate:(id)date
{
  v57 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [dateCopy timeIntervalSince1970];
  if (dateCopy)
  {
    v6 = dateCopy;
    if (v5 - self->_timeOfLastPersist < *MEMORY[0x277D6FD90] && !self->_userModelRateLimitingDisabled)
    {
      v38 = dateCopy;
      mEMORY[0x277D6F548] = IXADefaultLogFacility();
      if (os_log_type_enabled(mEMORY[0x277D6F548], OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Counter change cache persistence not required due to rate limiting.", "-[TICounterChangeCache persistForDate:]"];
        *buf = 138412290;
        v56 = v8;
        _os_log_impl(&dword_22CA55000, mEMORY[0x277D6F548], OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      goto LABEL_40;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
  }

  v38 = v6;
  [v6 timeIntervalSince1970];
  self->_timeOfLastPersist = v9;
  mEMORY[0x277D6F548] = [MEMORY[0x277D6F548] sharedUserModelDataStore];
  if ([mEMORY[0x277D6F548] isValid])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [(NSMutableDictionary *)self->_cache allKeys];
    v35 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v35)
    {
      v34 = *v50;
      v39 = mEMORY[0x277D6F548];
      do
      {
        v10 = 0;
        do
        {
          if (*v50 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v10;
          v11 = *(*(&v49 + 1) + 8 * v10);
          v48 = 0;
          v40 = v11;
          v41 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
          v12 = v48;
          v36 = v12;
          if (v12)
          {
            v13 = v12;
            v14 = IXADefaultLogFacility();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error archiving context object: %@", "-[TICounterChangeCache persistForDate:]", v13];
              *buf = 138412290;
              v56 = v31;
              _os_log_error_impl(&dword_22CA55000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            v41 = 0;
          }

          v15 = [(NSMutableDictionary *)self->_cache objectForKey:v40];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          allKeys = [v15 allKeys];
          v16 = [allKeys countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v45;
            do
            {
              v19 = 0;
              v42 = v17;
              do
              {
                if (*v45 != v18)
                {
                  objc_enumerationMutation(allKeys);
                }

                v20 = *(*(&v44 + 1) + 8 * v19);
                v21 = [v15 objectForKeyedSubscript:v20];
                if ([v21 intValue])
                {
                  referencedCounters = self->_referencedCounters;
                  if (!referencedCounters)
                  {
                    [(TICounterChangeCache *)self loadReferencedCounters];
                    referencedCounters = self->_referencedCounters;
                  }

                  if ([(NSMutableSet *)referencedCounters containsObject:v20])
                  {
                    v23 = v15;
                    v24 = [*MEMORY[0x277D6FDB0] stringByAppendingString:v20];
                    v25 = [MEMORY[0x277CCABB0] numberWithInt:0];
                    v26 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
                    inputLanguageAndRegion = [v40 inputLanguageAndRegion];
                    [v39 addValue:v21 andSecondaryValue:v25 andRealValue:v26 andProperties:v41 forKey:v24 forInputMode:inputLanguageAndRegion forDate:v38];

                    v28 = IXADefaultLogFacility();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                    {
                      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Counter change '%@' was persisted.", "-[TICounterChangeCache persistForDate:]", v20];
                      *buf = 138412290;
                      v56 = v29;
                      _os_log_debug_impl(&dword_22CA55000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v15 = v23;
                    v17 = v42;
                  }

                  else
                  {
                    v24 = IXADefaultLogFacility();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                    {
                      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Counter change '%@' was ignored because it's not referenced by any event.", "-[TICounterChangeCache persistForDate:]", v20];
                      *buf = 138412290;
                      v56 = v30;
                      _os_log_debug_impl(&dword_22CA55000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }

                ++v19;
              }

              while (v17 != v19);
              v17 = [allKeys countByEnumeratingWithState:&v44 objects:v53 count:16];
            }

            while (v17);
          }

          v10 = v37 + 1;
          mEMORY[0x277D6F548] = v39;
        }

        while (v37 + 1 != v35);
        v35 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v35);
    }
  }

  else
  {
    obj = IXADefaultLogFacility();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Can't persist counter changes because the database is invalid.", "-[TICounterChangeCache persistForDate:]"];
      *buf = 138412290;
      v56 = v32;
      _os_log_error_impl(&dword_22CA55000, obj, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  [(NSMutableDictionary *)self->_cache removeAllObjects];
LABEL_40:
}

- (void)keyboardDidSuspendForDate:(id)date
{
  dateCopy = date;
  v3 = dateCopy;
  TIDispatchAsync();
}

- (void)addStatisticChanges:(id)changes withContext:(id)context
{
  contextCopy = context;
  v6 = MEMORY[0x277CBEA60];
  changesCopy = changes;
  v8 = [[v6 alloc] initWithArray:changesCopy copyItems:1];

  if ([v8 count])
  {
    v9 = contextCopy;
    v10 = v8;
    TIDispatchAsync();
  }
}

void __56__TICounterChangeCache_addStatisticChanges_withContext___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v2 = objc_opt_new();
    [*(*(a1 + 32) + 24) setObject:v2 forKey:*(a1 + 40)];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v8 value];
        v11 = [v2 objectForKey:v9];
        v12 = v11;
        if (v11)
        {
          v10 = [v11 intValue] + v10;
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        [v2 setValue:v13 forKey:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)addCounterReferencesForMetric:(id)metric
{
  v18 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v5 = [(TIMetricDescriptorRegistry *)self->_metricDescriptorRegistry metricDescriptorWithName:metricCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      calculationExpression = [v6 calculationExpression];

      if (calculationExpression)
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        calculationDependencies = [v6 calculationDependencies];
        v9 = [calculationDependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(calculationDependencies);
              }

              [(TICounterChangeCache *)self addCounterReferencesForMetric:*(*(&v13 + 1) + 8 * v12++)];
            }

            while (v10 != v12);
            v10 = [calculationDependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v10);
        }
      }

      else
      {
        [(NSMutableSet *)self->_referencedCounters addObject:metricCopy];
      }
    }
  }
}

- (void)loadReferencedCounters
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  referencedCounters = self->_referencedCounters;
  self->_referencedCounters = v3;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allEventDescriptors = [(TIEventDescriptorRegistry *)self->_eventDescriptorRegistry allEventDescriptors];
  v6 = [allEventDescriptors countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(allEventDescriptors);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        fieldDescriptors = [v10 fieldDescriptors];
        v12 = [fieldDescriptors countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(fieldDescriptors);
              }

              metricName = [*(*(&v17 + 1) + 8 * v15) metricName];
              [(TICounterChangeCache *)self addCounterReferencesForMetric:metricName];

              ++v15;
            }

            while (v13 != v15);
            v13 = [fieldDescriptors countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [allEventDescriptors countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }
}

- (TICounterChangeCache)initWithEventDescriptorRegistry:(id)registry metricDescriptorRegistry:(id)descriptorRegistry
{
  registryCopy = registry;
  descriptorRegistryCopy = descriptorRegistry;
  v20.receiver = self;
  v20.super_class = TICounterChangeCache;
  v9 = [(TICounterChangeCache *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventDescriptorRegistry, registry);
    objc_storeStrong(&v10->_metricDescriptorRegistry, descriptorRegistry);
    v11 = objc_opt_new();
    cache = v10->_cache;
    v10->_cache = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);

    v15 = dispatch_queue_create("com.apple.textInput.CounterChangeCache", v14);
    workQueue = v10->_workQueue;
    v10->_workQueue = v15;

    referencedCounters = v10->_referencedCounters;
    v10->_referencedCounters = 0;

    v18 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
    v10->_userModelRateLimitingDisabled = [v18 BOOLForKey:*MEMORY[0x277D6FDB8]];
  }

  return v10;
}

@end