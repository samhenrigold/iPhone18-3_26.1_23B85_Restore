@interface DMCEvents
- (DMCEvents)init;
- (id)_eventsPlistFilePath;
- (void)_injectTimestamps:(id)timestamps;
- (void)_logEvent:(id)event category:(id)category forTopic:(id)topic;
- (void)logErrorEventForTopic:(id)topic reason:(id)reason error:(id)error details:(id)details;
- (void)logRegularEventForTopic:(id)topic reason:(id)reason details:(id)details;
@end

@implementation DMCEvents

- (DMCEvents)init
{
  v7.receiver = self;
  v7.super_class = DMCEvents;
  v2 = [(DMCEvents *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __17__DMCEvents_init__block_invoke;
    block[3] = &unk_1E7ADC760;
    v6 = v2;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, block);
    }
  }

  return v3;
}

void __17__DMCEvents_init__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [*(a1 + 32) _eventsFileFolder];
  v3 = [v5 fileExistsAtPath:v2 isDirectory:0];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) _eventsFileFolder];
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (void)logRegularEventForTopic:(id)topic reason:(id)reason details:(id)details
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = @"Unknown";
  }

  v15 = @"Reason";
  v16[0] = reasonCopy;
  v9 = MEMORY[0x1E695DF20];
  detailsCopy = details;
  reasonCopy2 = reason;
  topicCopy = topic;
  v13 = [v9 dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v14 = [v13 mutableCopy];
  [(DMCEvents *)self _injectTimestamps:v14];
  [v14 setObject:detailsCopy forKeyedSubscript:@"Details"];

  [(DMCEvents *)self _logEvent:v14 category:@"Regular" forTopic:topicCopy];
}

- (void)logErrorEventForTopic:(id)topic reason:(id)reason error:(id)error details:(id)details
{
  v38[1] = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  reasonCopy = reason;
  errorCopy = error;
  detailsCopy = details;
  if (reasonCopy)
  {
    v14 = reasonCopy;
  }

  else
  {
    v14 = @"Unknown";
  }

  v37 = @"Reason";
  v38[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v16 = [v15 mutableCopy];

  [(DMCEvents *)self _injectTimestamps:v16];
  [v16 setObject:detailsCopy forKeyedSubscript:@"Details"];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    [v16 setObject:domain forKeyedSubscript:@"Error Domain"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v16 setObject:v18 forKeyedSubscript:@"Error Code"];

    localizedDescription = [errorCopy localizedDescription];
    [v16 setObject:localizedDescription forKeyedSubscript:@"Error Description"];

    underlyingErrors = [errorCopy underlyingErrors];
    v21 = [underlyingErrors count];

    if (v21)
    {
      selfCopy = self;
      v31 = topicCopy;
      v22 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      underlyingErrors2 = [errorCopy underlyingErrors];
      v24 = [underlyingErrors2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v33;
        do
        {
          v27 = 0;
          do
          {
            if (*v33 != v26)
            {
              objc_enumerationMutation(underlyingErrors2);
            }

            v28 = [*(*(&v32 + 1) + 8 * v27) description];
            [v22 addObject:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [underlyingErrors2 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v25);
      }

      v29 = [v22 copy];
      [v16 setObject:v29 forKeyedSubscript:@"Error Underlying Errors"];

      self = selfCopy;
      topicCopy = v31;
    }
  }

  [(DMCEvents *)self _logEvent:v16 category:@"Error" forTopic:topicCopy, selfCopy, v31];
}

- (void)_logEvent:(id)event category:(id)category forTopic:(id)topic
{
  eventCopy = event;
  categoryCopy = category;
  topicCopy = topic;
  if (_logEvent_category_forTopic__onceToken != -1)
  {
    [DMCEvents _logEvent:category:forTopic:];
  }

  v11 = _logEvent_category_forTopic__serialQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__DMCEvents__logEvent_category_forTopic___block_invoke_2;
  v15[3] = &unk_1E7ADC7B0;
  v15[4] = self;
  v16 = categoryCopy;
  v17 = topicCopy;
  v18 = eventCopy;
  v12 = eventCopy;
  v13 = topicCopy;
  v14 = categoryCopy;
  dispatch_async_and_wait(v11, v15);
}

uint64_t __41__DMCEvents__logEvent_category_forTopic___block_invoke()
{
  _logEvent_category_forTopic__serialQueue = dispatch_queue_create("DMCEvents", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __41__DMCEvents__logEvent_category_forTopic___block_invoke_2(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = [a1[4] _eventsPlistFilePath];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v5 = objc_opt_new();
  v17 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__DMCEvents__logEvent_category_forTopic___block_invoke_3;
  v14[3] = &unk_1E7ADC788;
  v6 = a1[5];
  v7 = a1[6];
  *&v8 = a1[7];
  *(&v8 + 1) = *v2;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v15 = v9;
  v16 = v8;
  [v5 coordinateReadingItemAtURL:v4 options:0 writingItemAtURL:v4 options:0 error:&v17 byAccessor:v14];
  v10 = v17;

  if (v10)
  {
    v13 = *DMCLogObjects(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "[NSFileCoordinator coordinateReadingItemAtURL] failed with error: %{public}@", buf, 0xCu);
    }
  }
}

void __41__DMCEvents__logEvent_category_forTopic___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = [v6 defaultManager];
  v9 = [v5 absoluteString];
  v10 = [v8 fileExistsAtPath:v9];

  if (!v10 || (v13 = MEMORY[0x1E695DF20], [v5 absoluteString], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "DMCDictionaryFromFile:", v14), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "mutableCopy"), v15, v14, !v16))
  {
    v17 = *DMCLogObjects(v11, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_INFO, "Failed to load event dictionary. Creating a new one", buf, 2u);
    }

    v16 = objc_opt_new();
  }

  v18 = [v16 objectForKeyedSubscript:*(a1 + 32)];
  if (v18)
  {
    v19 = v18;
    v20 = [v16 objectForKeyedSubscript:*(a1 + 32)];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v24 = *DMCLogObjects(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v42 = 0;
        _os_log_impl(&dword_1B1630000, v24, OS_LOG_TYPE_ERROR, "Event category is not a dictionary", v42, 2u);
      }

      [v16 setObject:0 forKeyedSubscript:*(a1 + 32)];
    }
  }

  v25 = MEMORY[0x1E695DF90];
  v26 = [v16 objectForKeyedSubscript:*(a1 + 32)];
  v27 = [v25 dictionaryWithDictionary:v26];

  v28 = [v27 objectForKeyedSubscript:*(a1 + 40)];
  if (v28)
  {
    v29 = v28;
    v30 = [v27 objectForKeyedSubscript:*(a1 + 40)];
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();

    if ((v31 & 1) == 0)
    {
      v34 = *DMCLogObjects(v32, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v41 = 0;
        _os_log_impl(&dword_1B1630000, v34, OS_LOG_TYPE_ERROR, "Topic is not an array", v41, 2u);
      }

      [v27 setObject:0 forKeyedSubscript:*(a1 + 40)];
    }
  }

  v35 = MEMORY[0x1E695DF70];
  v36 = [v27 objectForKeyedSubscript:*(a1 + 40)];
  v37 = [v35 arrayWithArray:v36];

  [v37 insertObject:*(a1 + 48) atIndex:0];
  v38 = [*(a1 + 56) _maximumEventCount];
  if ([v37 count] > v38)
  {
    [v37 removeObjectsInRange:{v38, objc_msgSend(v37, "count") - v38}];
  }

  [v27 setObject:v37 forKeyedSubscript:*(a1 + 40)];
  [v16 setObject:v27 forKeyedSubscript:*(a1 + 32)];
  v39 = [v7 absoluteString];
  [v16 DMCWriteToBinaryFile:v39];

  v40 = [v7 absoluteString];

  DMCSetSkipBackupAttributeToItemAtPath(v40, 1);
}

- (void)_injectTimestamps:(id)timestamps
{
  v3 = MEMORY[0x1E695DF00];
  timestampsCopy = timestamps;
  date = [v3 date];
  v5 = +[DMCDateFormatterFactory isoLocalTimeZoneDateFormatter];
  v6 = [v5 stringFromDate:date];

  [timestampsCopy setObject:v6 forKeyedSubscript:@"Timestamp (Localized)"];
  [timestampsCopy setObject:date forKeyedSubscript:@"Timestamp"];
}

- (id)_eventsPlistFilePath
{
  errorFilePath = self->_errorFilePath;
  if (!errorFilePath)
  {
    v4 = DMCEventsFilePath(0);
    v5 = self->_errorFilePath;
    self->_errorFilePath = v4;

    errorFilePath = self->_errorFilePath;
  }

  return errorFilePath;
}

@end