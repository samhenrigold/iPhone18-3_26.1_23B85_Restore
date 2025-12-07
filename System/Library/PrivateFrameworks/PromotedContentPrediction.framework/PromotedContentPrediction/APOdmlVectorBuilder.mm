@interface APOdmlVectorBuilder
- (APOdmlVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual;
- (BOOL)shouldDefer;
- (double)weightForEvents:(id)events;
- (id)adamIDForBundleID:(id)d;
- (id)eventsForLookbackPeriod:(double)period;
- (id)pullEvents;
- (id)retrieveFilteredEvents:(id)events;
- (id)retrieveVector:(id *)vector;
- (id)updateVector:(id)vector withVector:(id)withVector usingWeight:(double)weight;
- (void)addAppVector:(id)vector;
- (void)buildBundleIDtoAdamIDCache:(id)cache;
@end

@implementation APOdmlVectorBuilder

- (APOdmlVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual
{
  versionCopy = version;
  periodCopy = period;
  elementsCopy = elements;
  taskCopy = task;
  constantCopy = constant;
  durationCopy = duration;
  v38.receiver = self;
  v38.super_class = APOdmlVectorBuilder;
  v22 = [(APOdmlVectorBuilder *)&v38 init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v22->_version, version);
  v24 = [[APOdmlVector alloc] initWithVersion:versionCopy andArray:0];
  vector = v23->_vector;
  v23->_vector = v24;

  v23->_vectorWeightTotal = 0.0;
  v26 = [[APOdmlUnfairLock alloc] initWithOptions:1];
  setVectorAndWeightLock = v23->_setVectorAndWeightLock;
  v23->_setVectorAndWeightLock = v26;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  adamIDtoBundleID = v23->_adamIDtoBundleID;
  v23->_adamIDtoBundleID = dictionary;

  objc_storeStrong(&v23->_task, task);
  if (periodCopy)
  {
    [periodCopy doubleValue];
  }

  else
  {
    v30 = 0x4122750000000000;
  }

  *&v23->_lookbackPeriod = v30;
  v31 = elementsCopy ? [elementsCopy longValue] : 1000;
  v23->_maxQueryElements = v31;
  if (constantCopy)
  {
    [constantCopy doubleValue];
  }

  else
  {
    v32 = 0.0;
  }

  v23->_exponentialDecayConstant = v32;
  v33 = durationCopy ? [durationCopy BOOLValue] : 0;
  v23->_weightByDuration = v33;
  v23->_assetManagerIsCounterfactual = counterfactual;
  pullEvents = [(APOdmlVectorBuilder *)v23 pullEvents];
  events = v23->_events;
  v23->_events = pullEvents;

  if (!v23->_events)
  {
    v36 = 0;
  }

  else
  {
LABEL_15:
    v36 = v23;
  }

  return v36;
}

- (void)addAppVector:(id)vector
{
  v34 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v5 = vectorCopy;
  if (vectorCopy)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(vectorCopy, "adamID")}];
    adamIDtoBundleID = [(APOdmlVectorBuilder *)self adamIDtoBundleID];
    v8 = [adamIDtoBundleID objectForKey:v6];

    if (v8)
    {
      v9 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = objc_opt_class();
        v10 = v25;
        _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_DEFAULT, "[%@]: App vector found; updating.", &v24, 0xCu);
      }

      v11 = [(APOdmlVectorBuilder *)self retrieveFilteredEvents:v8];
      if ([v11 count])
      {
        [(APOdmlVectorBuilder *)self weightForEvents:v11];
        v13 = v12;
        vector = [(APOdmlVectorBuilder *)self vector];
        v15 = [(APOdmlVectorBuilder *)self updateVector:vector withVector:v5 usingWeight:v13];

        setVectorAndWeightLock = [(APOdmlVectorBuilder *)self setVectorAndWeightLock];
        [setVectorAndWeightLock lock];

        [(APOdmlVectorBuilder *)self setVector:v15];
        [(APOdmlVectorBuilder *)self vectorWeightTotal];
        [(APOdmlVectorBuilder *)self setVectorWeightTotal:v13 + v17];
        setVectorAndWeightLock2 = [(APOdmlVectorBuilder *)self setVectorAndWeightLock];
        [setVectorAndWeightLock2 unlock];

        v19 = OdmlLogForCategory(2uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          v21 = v20;
          v22 = [v11 count];
          [(APOdmlVectorBuilder *)self vectorWeightTotal];
          v24 = 138413314;
          v25 = v20;
          v26 = 2112;
          v27 = v8;
          v28 = 2048;
          v29 = v22;
          v30 = 2048;
          v31 = v13;
          v32 = 2048;
          v33 = v23;
          _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_DEFAULT, "[%@]: Vector updated for bundleID %@ with %lu events for a weight of %f. Vector weight total: %f", &v24, 0x34u);
        }
      }
    }

    goto LABEL_12;
  }

  v6 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412290;
    v25 = objc_opt_class();
    v8 = v25;
    _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_ERROR, "[%@] ERROR: We cannot update the vector with a nil vector.", &v24, 0xCu);
LABEL_12:
  }
}

- (id)retrieveVector:(id *)vector
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 138412290;
    *&v25[4] = objc_opt_class();
    v6 = *&v25[4];
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Retrieving normalized app vectors.", v25, 0xCu);
  }

  vector = [(APOdmlVectorBuilder *)self vector];

  if (vector)
  {
    v8 = 0;
  }

  else
  {
    v16 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      *v25 = 138412290;
      *&v25[4] = v17;
      v18 = v17;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "[%@]: Vector is not found.", v25, 0xCu);
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1006 userInfo:0];
    v8 = v19;
    if (vector && v19)
    {
      v20 = v19;
      v15 = 0;
      *vector = v8;
      goto LABEL_18;
    }
  }

  [(APOdmlVectorBuilder *)self vectorWeightTotal:*v25];
  if (v9 <= 0.0)
  {
    v10 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      *v25 = 138412290;
      *&v25[4] = v11;
      v12 = v11;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@]: Vector weight total not greater than 0.", v25, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1005 userInfo:0];

    if (vector && v13)
    {
      v14 = v13;
      v15 = 0;
      *vector = v13;
      v8 = v13;
      goto LABEL_18;
    }

    v8 = v13;
  }

  vector2 = [(APOdmlVectorBuilder *)self vector];
  [(APOdmlVectorBuilder *)self vectorWeightTotal];
  v23 = 1.0 / v22;
  *&v23 = v23;
  v15 = [vector2 scalarMultiply:v23];

LABEL_18:

  return v15;
}

- (id)retrieveFilteredEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  events = [(APOdmlVectorBuilder *)self events];
  v7 = [events countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(events);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"bundleID"];
        v13 = [v12 isEqualToString:eventsCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [events countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)pullEvents
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(APOdmlVectorBuilder *)self shouldDefer])
  {
    v3 = 0;
  }

  else
  {
    [(APOdmlVectorBuilder *)self lookbackPeriod];
    v3 = [(APOdmlVectorBuilder *)self eventsForLookbackPeriod:?];
    if (v3)
    {
      [(APOdmlVectorBuilder *)self buildBundleIDtoAdamIDCache:v3];
      v4 = v3;
    }

    else
    {
      v5 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = objc_opt_class();
        v6 = v13;
        _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "[%@] ERROR: No usage events found.", &v12, 0xCu);
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1004 userInfo:0];
      v8 = MEMORY[0x277CBEAC0];
      eventName = [(APOdmlVectorBuilder *)self eventName];
      v10 = [v8 dictionaryWithObject:eventName forKey:@"featureName"];

      [APOdmlAnalyticsFeatureCalculation sendEvent:v7 additionalDetails:v10 isCounterfactual:[(APOdmlVectorBuilder *)self assetManagerIsCounterfactual]];
    }
  }

  return v3;
}

- (id)eventsForLookbackPeriod:(double)period
{
  v24 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v8 = v7;

  v10 = v8 - period;
  if (v8 >= v8 - period)
  {
    v11 = 0;
    *&v9 = 138412290;
    v21 = v9;
    do
    {
      if (v11 > [(APOdmlVectorBuilder *)self maxQueryElements])
      {
        break;
      }

      v12 = v8 + -43200.0;
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8 + -43200.0];
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
      v15 = [(APOdmlVectorBuilder *)self eventsBetween:v13 and:v14];

      if (v15)
      {
        [array addObjectsFromArray:v15];
        v11 += [v15 count];
      }

      else
      {
        v16 = OdmlLogForCategory(2uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          *buf = v21;
          v23 = v17;
          v18 = v17;
          _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_DEFAULT, "[%@] No events found in date range.", buf, 0xCu);
        }
      }

      v8 = v8 + -43200.0;
    }

    while (v12 >= v10);
  }

  v19 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v19;
}

- (double)weightForEvents:(id)events
{
  v29 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  date = [MEMORY[0x277CBEAA8] date];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = 1.0;
        if ([(APOdmlVectorBuilder *)self weightByDuration])
        {
          v14 = [v12 objectForKey:@"duration"];
          v15 = v14;
          if (v14)
          {
            [v14 doubleValue];
            v13 = v16;
          }
        }

        v17 = [v12 objectForKey:@"absoluteTimestamp"];
        v18 = MEMORY[0x277CBEAA8];
        [v17 doubleValue];
        v19 = [v18 dateWithTimeIntervalSince1970:?];
        [date timeIntervalSinceDate:v19];
        v21 = v20;

        [(APOdmlVectorBuilder *)self exponentialDecayConstant];
        v10 = v10 + v13 * exp(v21 / -86400.0 * v22);
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)updateVector:(id)vector withVector:(id)withVector usingWeight:(double)weight
{
  vectorCopy = vector;
  *&v8 = weight;
  v9 = [withVector scalarMultiply:v8];
  if ([vectorCopy length])
  {
    v10 = [vectorCopy vectorAdd:v9];
  }

  else
  {
    version = [vectorCopy version];

    if (version)
    {
      version2 = [vectorCopy version];
      [v9 setVersion:version2];
    }

    v10 = v9;
  }

  v13 = v10;

  return v13;
}

- (void)buildBundleIDtoAdamIDCache:(id)cache
{
  v23 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = cacheCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if ([(APOdmlVectorBuilder *)self shouldDefer])
        {
          objc_autoreleasePoolPop(v12);

          goto LABEL_16;
        }

        v13 = [v11 objectForKey:@"bundleID"];
        v14 = [dictionary objectForKey:v13];

        if (!v14)
        {
          v15 = [(APOdmlVectorBuilder *)self adamIDForBundleID:v13];
          v16 = v15;
          if (v15 && [v15 intValue])
          {
            [dictionary setObject:v16 forKey:v13];
          }
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_260EDE278;
  v17[3] = &unk_279AC62A0;
  v17[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v17];
LABEL_16:
}

- (id)adamIDForBundleID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v11];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCABB0];
    iTunesMetadata = [v5 iTunesMetadata];
    v9 = [v7 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "storeItemIdentifier")}];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (BOOL)shouldDefer
{
  v17 = *MEMORY[0x277D85DE8];
  task = [(APOdmlVectorBuilder *)self task];
  if (task)
  {
    task2 = [(APOdmlVectorBuilder *)self task];
    shouldDefer = [task2 shouldDefer];

    if (shouldDefer)
    {
      task3 = [(APOdmlVectorBuilder *)self task];
      LODWORD(task) = [task3 deferTask];

      v7 = OdmlLogForCategory(2uLL);
      v8 = v7;
      if (task)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = objc_opt_class();
          v9 = v16;
          _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_DEFAULT, "[%@] We are no longer in an acceptable state to continue processing. Bailing out...", &v15, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = objc_opt_class();
          v10 = v16;
          _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Unable to successfully defer task.", &v15, 0xCu);
        }

        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureCalculatorErrorDomain" code:1003 userInfo:0];
        v11 = MEMORY[0x277CBEAC0];
        eventName = [(APOdmlVectorBuilder *)self eventName];
        v13 = [v11 dictionaryWithObject:eventName forKey:@"featureName"];

        [APOdmlAnalyticsFeatureCalculation sendEvent:v8 additionalDetails:v13 isCounterfactual:[(APOdmlVectorBuilder *)self assetManagerIsCounterfactual]];
      }
    }

    else
    {
      LOBYTE(task) = 0;
    }
  }

  return task;
}

@end