@interface PSGInputSuggester
+ (id)sharedInstance;
- (PSGInputSuggester)initWithClient:(id)client;
- (void)_reportSpeedMetricWithData:(id)data;
- (void)hibernate;
- (void)inputSuggestionsWithRequest:(id)request completion:(id)completion;
- (void)logMetricForEventType:(unsigned __int8)type externalMetadata:(id)metadata predictedValues:(id)values;
- (void)logMetricForEventType:(unsigned __int8)type externalMetadata:(id)metadata request:(id)request responseItems:(id)items;
- (void)logTimeoutForRequest:(id)request;
- (void)warmUp;
- (void)warmUpForLocaleIdentifier:(id)identifier;
@end

@implementation PSGInputSuggester

- (void)warmUp
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [(PSGInputSuggester *)self warmUpForLocaleIdentifier:localeIdentifier];
}

- (void)logTimeoutForRequest:(id)request
{
  requestCopy = request;
  if (requestCopy || (requestCopy = self->_lastRequest) != 0)
  {
    p_super = &requestCopy->super;
    [(PSGInputSuggesterClient *)self->_client logErrorForRequest:requestCopy trigger:0 errorType:0];
  }

  else
  {
    p_super = psg_default_log_handle();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_260D18000, p_super, OS_LOG_TYPE_ERROR, "Logging called before any request has been made!", v6, 2u);
    }
  }
}

- (void)logMetricForEventType:(unsigned __int8)type externalMetadata:(id)metadata predictedValues:(id)values
{
  typeCopy = type;
  v57 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  valuesCopy = values;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__9;
  v51 = __Block_byref_object_dispose__10;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__9;
  v45 = __Block_byref_object_dispose__10;
  v46 = 0;
  if (typeCopy == 2)
  {
    v22 = psg_default_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v56 = metadataCopy;
      _os_log_debug_impl(&dword_260D18000, v22, OS_LOG_TYPE_DEBUG, "[Speed] %@", buf, 0xCu);
    }

    [(PSGInputSuggester *)self _reportSpeedMetricWithData:metadataCopy];
    goto LABEL_36;
  }

  v25 = typeCopy;
  if (typeCopy == 1)
  {
    first = [(_PASTuple2 *)self->_lastImpression first];
    v9 = v48[5];
    v48[5] = first;

    second = [(_PASTuple2 *)self->_lastImpression second];
    v11 = v42[5];
    v42[5] = second;
  }

  else
  {
    if (typeCopy)
    {
      log = psg_default_log_handle();
      if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v56) = typeCopy;
        _os_log_fault_impl(&dword_260D18000, log, OS_LOG_TYPE_FAULT, "Unknown event type: %d", buf, 8u);
      }

      goto LABEL_35;
    }

    lastPredictionQueue = self->_lastPredictionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PSGInputSuggester_logMetricForEventType_externalMetadata_predictedValues___block_invoke;
    block[3] = &unk_279ABCDA0;
    block[4] = self;
    block[5] = &v47;
    block[6] = &v41;
    dispatch_sync(lastPredictionQueue, block);
  }

  if (!v48[5])
  {
    log = psg_default_log_handle();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
LABEL_35:

      goto LABEL_36;
    }

    *buf = 0;
    v23 = "No known request has been recorded!";
LABEL_41:
    _os_log_error_impl(&dword_260D18000, log, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_35;
  }

  if (![v42[5] count])
  {
    log = psg_default_log_handle();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v23 = "No known response items to log.";
    goto LABEL_41;
  }

  if ([valuesCopy count])
  {
    log = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = valuesCopy;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v54 count:16];
    if (v12)
    {
      v31 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v15 = v42[5];
          v16 = [v15 countByEnumeratingWithState:&v32 objects:v53 count:16];
          if (v16)
          {
            v17 = *v33;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v33 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v32 + 1) + 8 * j);
                predictedValue = [v19 predictedValue];
                v21 = [v14 isEqualToString:predictedValue];

                if (v21)
                {
                  [log addObject:v19];
                  goto LABEL_24;
                }
              }

              v16 = [v15 countByEnumeratingWithState:&v32 objects:v53 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v54 count:16];
      }

      while (v12);
    }

    [(PSGInputSuggester *)self logMetricForEventType:v25 externalMetadata:metadataCopy request:v48[5] responseItems:log];
    goto LABEL_35;
  }

  v24 = psg_default_log_handle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D18000, v24, OS_LOG_TYPE_DEFAULT, "No predictedValues given. Logging last recorded as a fallback.", buf, 2u);
  }

  [(PSGInputSuggester *)self logMetricForEventType:v25 externalMetadata:metadataCopy request:v48[5] responseItems:v42[5]];
LABEL_36:
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
}

void __76__PSGInputSuggester_logMetricForEventType_externalMetadata_predictedValues___block_invoke(void *a1)
{
  v8 = *(a1[4] + 32);
  v2 = [v8 first];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [v8 second];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_reportSpeedMetricWithData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy count])
  {
    v5 = [dataCopy objectForKeyedSubscript:@"keyboardLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if ([v6 length])
    {
      v7 = [dataCopy objectForKeyedSubscript:@"keyboardRegion"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if ([v8 length])
      {
        v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v6, v8];
        v10 = [dataCopy objectForKeyedSubscript:@"totalMessageDuration"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v11 = [v10 intValue], v11 == -1))
        {
          v12 = psg_default_log_handle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v20 = dataCopy;
            _os_log_fault_impl(&dword_260D18000, v12, OS_LOG_TYPE_FAULT, "[SpeedMetric] messageDuration missing | data: %@", buf, 0xCu);
          }
        }

        else
        {
          v18 = v11;
          v12 = [dataCopy objectForKeyedSubscript:@"totalMessageLength"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (v13 = [v12 intValue], v13 == -1))
          {
            v14 = psg_default_log_handle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v20 = dataCopy;
              _os_log_fault_impl(&dword_260D18000, v14, OS_LOG_TYPE_FAULT, "[SpeedMetric] messageLength missing | data: %@", buf, 0xCu);
            }
          }

          else
          {
            v17 = v13;
            v14 = [dataCopy objectForKeyedSubscript:@"totalWordsEntered"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [v14 intValue], v15 == -1))
            {
              v16 = psg_default_log_handle();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v20 = dataCopy;
                _os_log_fault_impl(&dword_260D18000, v16, OS_LOG_TYPE_FAULT, "[SpeedMetric] messageWords missing | data: %@", buf, 0xCu);
              }
            }

            else
            {
              [(PSGInputSuggesterClient *)self->_client logSpeedMetricForLocaleIdentifier:v9 messageDurationMilliseconds:v18 messageLength:v17 messageWords:v15];
            }
          }
        }
      }

      else
      {
        v9 = psg_default_log_handle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v20 = dataCopy;
          _os_log_fault_impl(&dword_260D18000, v9, OS_LOG_TYPE_FAULT, "[SpeedMetric] keyboardRegion missing | data: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = psg_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v20 = dataCopy;
        _os_log_fault_impl(&dword_260D18000, v8, OS_LOG_TYPE_FAULT, "[SpeedMetric] keyboardLanguage missing | data: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = psg_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_260D18000, v6, OS_LOG_TYPE_FAULT, "[SpeedMetric] Empty data", buf, 2u);
    }
  }
}

- (void)logMetricForEventType:(unsigned __int8)type externalMetadata:(id)metadata request:(id)request responseItems:(id)items
{
  typeCopy = type;
  v32 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  requestCopy = request;
  itemsCopy = items;
  v13 = itemsCopy;
  if (typeCopy == 2)
  {
    lastImpression = psg_default_log_handle();
    if (os_log_type_enabled(lastImpression, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v28) = 0;
      v15 = "Use [PSGInputSuggester logMetricForEventType:externalMetadata:predictedValues:] instead for logging Speed Metric";
      v16 = lastImpression;
      v17 = 2;
LABEL_4:
      _os_log_fault_impl(&dword_260D18000, v16, OS_LOG_TYPE_FAULT, v15, &v28, v17);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (![itemsCopy count])
  {
    v20 = psg_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = 67109120;
      LODWORD(v29) = typeCopy;
      _os_log_error_impl(&dword_260D18000, v20, OS_LOG_TYPE_ERROR, "No response item specified for logging event type %d", &v28, 8u);
    }

    lastImpression = self->_lastImpression;
    self->_lastImpression = 0;
    goto LABEL_25;
  }

  if (typeCopy == 1)
  {
    v21 = self->_lastImpression;
    self->_lastImpression = 0;

    v22 = [metadataCopy objectForKey:@"pos"];
    lastImpression = v22;
    if (v22)
    {
      unsignedIntegerValue = [v22 unsignedIntegerValue];
      if (unsignedIntegerValue && unsignedIntegerValue <= [v13 count])
      {
        goto LABEL_22;
      }

      v24 = psg_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = 134217984;
        v29 = unsignedIntegerValue;
        v25 = "position param (%tu) out of range";
LABEL_27:
        _os_log_error_impl(&dword_260D18000, v24, OS_LOG_TYPE_ERROR, v25, &v28, 0xCu);
      }
    }

    else
    {
      v24 = psg_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412290;
        v29 = @"pos";
        v25 = "position param %@ not specified for engagement logging";
        goto LABEL_27;
      }
    }

    unsignedIntegerValue = 10000;
LABEL_22:
    v26 = psg_default_log_handle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = [v13 count];
      v28 = 134218240;
      v29 = unsignedIntegerValue;
      v30 = 2048;
      v31 = v27;
      _os_log_debug_impl(&dword_260D18000, v26, OS_LOG_TYPE_DEBUG, "Logging engagement at position %tu of %tu item(s)", &v28, 0x16u);
    }

    [(PSGInputSuggesterClient *)self->_client logEngagement:v13 request:requestCopy position:unsignedIntegerValue];
    goto LABEL_25;
  }

  if (typeCopy)
  {
    lastImpression = psg_default_log_handle();
    if (!os_log_type_enabled(lastImpression, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v28 = 67109120;
    LODWORD(v29) = typeCopy;
    v15 = "Unknown event type: %d";
    v16 = lastImpression;
    v17 = 8;
    goto LABEL_4;
  }

  [(PSGInputSuggesterClient *)self->_client logImpression:v13 request:requestCopy];
  v18 = [MEMORY[0x277D42648] tupleWithFirst:requestCopy second:v13];
  v19 = self->_lastImpression;
  self->_lastImpression = v18;

  lastImpression = psg_default_log_handle();
  if (os_log_type_enabled(lastImpression, OS_LOG_TYPE_DEBUG))
  {
    v28 = 134217984;
    v29 = [v13 count];
    _os_log_debug_impl(&dword_260D18000, lastImpression, OS_LOG_TYPE_DEBUG, "Logging impression for %tu item(s)", &v28, 0xCu);
  }

LABEL_25:
}

- (void)hibernate
{
  v2 = +[PSGWordBoundaryFSTGrammar sharedInstance];
  [v2 clearLMCache];
}

- (void)warmUpForLocaleIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = psg_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_260D18000, v5, OS_LOG_TYPE_INFO, "PSGInputSuggester triggering endpoint warming up", buf, 2u);
  }

  v6 = dispatch_semaphore_create(0);
  client = self->_client;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__PSGInputSuggester_warmUpForLocaleIdentifier___block_invoke;
  v21[3] = &unk_279ABD150;
  v8 = v6;
  v22 = v8;
  [(PSGInputSuggesterClient *)client warmUpWithCompletion:v21];
  mEMORY[0x277D3A468] = [MEMORY[0x277D3A468] sharedInstance];
  v10 = psg_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = mEMORY[0x277D3A468];
    _os_log_impl(&dword_260D18000, v10, OS_LOG_TYPE_INFO, "PSGInputSuggester serving endpoint warming up %@", buf, 0xCu);
  }

  v11 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__PSGInputSuggester_warmUpForLocaleIdentifier___block_invoke_14;
  v18[3] = &unk_279ABCD78;
  v12 = mEMORY[0x277D3A468];
  v19 = v12;
  v13 = v11;
  v20 = v13;
  [v12 warmUpWithCompletion:v18];
  v14 = +[PSGWordBoundaryFSTGrammar sharedInstance];
  [v14 warmUpForLocaleIdentifier:identifierCopy];

  if ([MEMORY[0x277D425A0] waitForSemaphore:v8 timeoutSeconds:0.5] == 1)
  {
    v15 = psg_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D18000, v15, OS_LOG_TYPE_ERROR, "PSGInputSuggester triggering endpoint warmUp timeout", buf, 2u);
    }
  }

  if ([MEMORY[0x277D425A0] waitForSemaphore:v13 timeoutSeconds:0.5] == 1)
  {
    v16 = psg_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D18000, v16, OS_LOG_TYPE_ERROR, "PSGInputSuggester serving endpoint warmUp timeout", buf, 2u);
    }
  }

  v17 = psg_default_log_handle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_260D18000, v17, OS_LOG_TYPE_INFO, "PSGInputSuggester warmUp DONE", buf, 2u);
  }
}

intptr_t __47__PSGInputSuggester_warmUpForLocaleIdentifier___block_invoke(uint64_t a1)
{
  v2 = psg_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_260D18000, v2, OS_LOG_TYPE_INFO, "PSGInputSuggester triggering endpoint warmed up", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __47__PSGInputSuggester_warmUpForLocaleIdentifier___block_invoke_14(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = psg_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_260D18000, v2, OS_LOG_TYPE_INFO, "PSGInputSuggester serving endpoint warmed up %@", &v5, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)inputSuggestionsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  objc_storeStrong(&self->_lastRequest, request);
  client = self->_client;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__PSGInputSuggester_inputSuggestionsWithRequest_completion___block_invoke;
  v12[3] = &unk_279ABCD50;
  v12[4] = self;
  v13 = requestCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = requestCopy;
  [(PSGInputSuggesterClient *)client inputSuggestionsWithRequest:v11 completion:v12];
}

void __60__PSGInputSuggester_inputSuggestionsWithRequest_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PSGInputSuggester_inputSuggestionsWithRequest_completion___block_invoke_2;
  block[3] = &unk_279ABD128;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = a3;
  dispatch_async(v8, block);
  (*(a1[6] + 16))();
}

void __60__PSGInputSuggester_inputSuggestionsWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D42648];
  v3 = *(a1 + 40);
  v7 = [*(a1 + 48) responseItems];
  v4 = [v2 tupleWithFirst:v3 second:v7];
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

- (PSGInputSuggester)initWithClient:(id)client
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = PSGInputSuggester;
  v6 = [(PSGInputSuggester *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
    v8 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGInputSuggester.lastPrediction" qosClass:9];
    lastPredictionQueue = v7->_lastPredictionQueue;
    v7->_lastPredictionQueue = v8;
  }

  return v7;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PSGInputSuggester_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, block);
  }

  v2 = sharedInstance__pasExprOnceResult;

  return v2;
}

void __35__PSGInputSuggester_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(*(a1 + 32));
  v4 = +[PSGInputSuggesterClient sharedInstance];
  v5 = [v3 initWithClient:v4];
  v6 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v2);
}

@end