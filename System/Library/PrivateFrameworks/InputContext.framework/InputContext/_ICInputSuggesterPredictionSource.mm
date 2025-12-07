@interface _ICInputSuggesterPredictionSource
- (BOOL)_populateError:(id *)error withExplanations:(id)explanations;
- (_ICInputSuggesterPredictionSource)init;
- (id)_getPredictedItemFromStructuredInfo:(id)info;
- (id)_quickTypeQueryWithTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds errorWithExplanations:(id *)explanations;
- (id)getPeopleSuggester;
- (id)requestFromTrigger:(id)trigger searchContext:(id)context;
- (void)getPeopleSuggester;
- (void)hibernate;
- (void)logEngagementForPredictedValues:(id)values position:(unint64_t)position;
- (void)logImpressionForPredictedValues:(id)values;
- (void)predictedItemsWithProactiveTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds handler:(id)handler;
- (void)propogateMetrics:(id)metrics data:(id)data;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)warmUp;
@end

@implementation _ICInputSuggesterPredictionSource

- (void)warmUp
{
  v8 = *MEMORY[0x277D85DE8];
  getPeopleSuggester = [(_ICInputSuggesterPredictionSource *)self getPeopleSuggester];
  v3 = _ICProactiveQuickTypeOSLogFacility(getPeopleSuggester);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412546;
    v5 = @"_ICPeopleSuggestorPredictionSource";
    v6 = 2112;
    v7 = getPeopleSuggester;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_INFO, "%@:  warming up %@", &v4, 0x16u);
  }

  [getPeopleSuggester warmUp];
}

- (id)getPeopleSuggester
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  inputSuggester = [(_ICInputSuggesterPredictionSource *)self inputSuggester];

  if (inputSuggester)
  {
LABEL_2:
    inputSuggester2 = [(_ICInputSuggesterPredictionSource *)self inputSuggester];
    goto LABEL_3;
  }

  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (!isMainThread)
  {
    [(NSCondition *)self->_peopleSuggestorLoadedCondition lock];
    inputSuggester3 = [(_ICInputSuggesterPredictionSource *)self inputSuggester];

    if (inputSuggester3)
    {
      [(NSCondition *)self->_peopleSuggestorLoadedCondition unlock];
    }

    else
    {
      do
      {
        v10 = _ICProactiveQuickTypeOSLogFacility(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [(_ICInputSuggesterPredictionSource *)v13 getPeopleSuggester];
        }

        [(NSCondition *)self->_peopleSuggestorLoadedCondition wait];
        inputSuggester4 = [(_ICInputSuggesterPredictionSource *)self inputSuggester];
      }

      while (!inputSuggester4);
      v12 = _ICProactiveQuickTypeOSLogFacility([(NSCondition *)self->_peopleSuggestorLoadedCondition unlock]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_ICInputSuggesterPredictionSource getPeopleSuggester];
      }
    }

    goto LABEL_2;
  }

  v7 = _ICProactiveQuickTypeOSLogFacility(isMainThread);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource getPeopleSuggester];
  }

  inputSuggester2 = 0;
LABEL_3:

  return inputSuggester2;
}

- (_ICInputSuggesterPredictionSource)init
{
  v16.receiver = self;
  v16.super_class = _ICInputSuggesterPredictionSource;
  v2 = [(_ICInputSuggesterPredictionSource *)&v16 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = @"_ICInputSuggesterPredictionSource";

    v5 = objc_alloc_init(MEMORY[0x277CCA928]);
    peopleSuggestorLoadedCondition = v3->_peopleSuggestorLoadedCondition;
    v3->_peopleSuggestorLoadedCondition = v5;

    array = [MEMORY[0x277CBEB18] array];
    offered = v3->_offered;
    v3->_offered = array;

    v10 = _ICProactiveQuickTypeOSLogFacility(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_ICInputSuggesterPredictionSource init];
    }

    objc_initWeak(&location, v3);
    v11 = dispatch_get_global_queue(17, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41___ICInputSuggesterPredictionSource_init__block_invoke;
    v13[3] = &unk_2797ADC20;
    objc_copyWeak(&v14, &location);
    dispatch_async(v11, v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)_populateError:(id *)error withExplanations:(id)explanations
{
  v21[1] = *MEMORY[0x277D85DE8];
  explanationsCopy = explanations;
  v6 = *error;
  if (!*error)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = objc_opt_new();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69___ICInputSuggesterPredictionSource__populateError_withExplanations___block_invoke;
    v13[3] = &unk_2797ADD78;
    v13[4] = &v14;
    [explanationsCopy enumerateExplanationCodeWithBlock:v13];
    if ([v15[5] count])
    {
      v7 = [v15[5] componentsJoinedByString:@" "];
      v8 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v8 errorWithDomain:@"com.apple.inputcontext.errors" code:5 userInfo:v9];

      v11 = _ICProactiveQuickTypeOSLogFacility(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_ICInputSuggesterPredictionSource _populateError:withExplanations:];
      }
    }

    else
    {
      v7 = _ICProactiveQuickTypeOSLogFacility(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [_ICInputSuggesterPredictionSource _populateError:withExplanations:];
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  return v6 == 0;
}

- (id)_quickTypeQueryWithTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds errorWithExplanations:(id *)explanations
{
  v47 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  contextCopy = context;
  v38 = 0;
  v36 = @"_ICPeopleSuggestorPredictionSource_quickTypeQueryWithQuery";
  v12 = mach_absolute_time();
  v37 = v12;
  v13 = _ICProactiveQuickTypeOSLogFacility(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = @"_ICPeopleSuggestorPredictionSource";
    *&buf[12] = 2112;
    *&buf[14] = triggerCopy;
    _os_log_impl(&dword_254BD0000, v13, OS_LOG_TYPE_INFO, "%@: _quickTypeQueryWithQuery: %@", buf, 0x16u);
  }

  getPeopleSuggester = [(_ICInputSuggesterPredictionSource *)self getPeopleSuggester];
  if (getPeopleSuggester)
  {
    v15 = [(_ICInputSuggesterPredictionSource *)self requestFromTrigger:triggerCopy searchContext:contextCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__2;
    v45 = __Block_byref_object_dispose__2;
    v46 = 0;
    v33 = 0;
    v34[0] = &v33;
    v34[1] = 0x3032000000;
    v34[2] = __Block_byref_object_copy__2;
    v34[3] = __Block_byref_object_dispose__2;
    v35 = 0;
    inputSuggester = self->_inputSuggester;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __128___ICInputSuggesterPredictionSource__quickTypeQueryWithTrigger_searchContext_limit_timeoutInMilliseconds_errorWithExplanations___block_invoke;
    v32[3] = &unk_2797ADDA0;
    v32[4] = buf;
    v32[5] = &v33;
    v17 = [(PSGInputSuggester *)inputSuggester inputSuggestionsWithRequest:v15 completion:v32];
    if (*(v34[0] + 40))
    {
      v18 = _ICProactiveQuickTypeOSLogFacility(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_ICInputSuggesterPredictionSource _quickTypeQueryWithTrigger:v34 searchContext:v18 limit:? timeoutInMilliseconds:? errorWithExplanations:?];
      }

      *explanations = *(v34[0] + 40);
      responseItems3 = MEMORY[0x277CBEBF8];
    }

    else
    {
      explanationSet = [*(*&buf[8] + 40) explanationSet];
      v21 = explanationSet;
      if (explanationSet)
      {
        responseItems = [*(*&buf[8] + 40) responseItems];
        v23 = [responseItems count] == 0;

        if (v23)
        {
          explanationSet2 = [*(*&buf[8] + 40) explanationSet];
          [(_ICInputSuggesterPredictionSource *)self _populateError:explanations withExplanations:explanationSet2];
        }
      }

      v25 = _ICProactiveQuickTypeOSLogFacility(explanationSet);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        responseItems2 = [*(*&buf[8] + 40) responseItems];
        v27 = [responseItems2 count];
        *v39 = 138412546;
        v40 = @"_ICPeopleSuggestorPredictionSource";
        v41 = 2048;
        v42 = v27;
        _os_log_impl(&dword_254BD0000, v25, OS_LOG_TYPE_INFO, "%@: _quickTypeQueryWithTrigger got %lu items", v39, 0x16u);
      }

      responseItems3 = [*(*&buf[8] + 40) responseItems];
    }

    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = _ICProactiveQuickTypeOSLogFacility(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_ICInputSuggesterPredictionSource _quickTypeQueryWithTrigger:v15 searchContext:? limit:? timeoutInMilliseconds:? errorWithExplanations:?];
    }

    responseItems3 = MEMORY[0x277CBEBF8];
  }

  v28 = mach_absolute_time();
  v29 = _ICMachTimeToNanoseconds(v28 - v12);
  v30 = _ICProactiveQuickTypeOSLogFacility(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource _quickTypeQueryWithTrigger:searchContext:limit:timeoutInMilliseconds:errorWithExplanations:];
  }

  return responseItems3;
}

- (void)predictedItemsWithProactiveTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds handler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  contextCopy = context;
  handlerCopy = handler;
  v48[3] = 0;
  v48[1] = @"_ICPeopleSuggestorPredictionSource_predictedItemsWithProactiveTrigger";
  v35 = mach_absolute_time();
  v48[2] = v35;
  v11 = _ICProactiveQuickTypeOSLogFacility(v35);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:];
  }

  v48[0] = 0;
  v12 = [(_ICInputSuggesterPredictionSource *)self _quickTypeQueryWithTrigger:triggerCopy searchContext:contextCopy limit:limit timeoutInMilliseconds:milliseconds errorWithExplanations:v48];
  v37 = v48[0];
  v13 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  v42 = v13;
  if (v14)
  {
    v43 = *v45;
    do
    {
      v15 = 0;
      do
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * v15);
        textualResponseSuggestion = [v16 textualResponseSuggestion];

        if (textualResponseSuggestion)
        {
          v18 = [_ICProactiveTrigger alloc];
          v49 = @"type";
          v50 = @"SmartReply";
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          structuredInfoSuggestion2 = [(_ICProactiveTrigger *)v18 initWithSource:0 attributes:v19];

          date = [MEMORY[0x277CBEAA8] date];
          v22 = [_ICPredictedItem alloc];
          textualResponseSuggestion2 = [v16 textualResponseSuggestion];
          responseText = [textualResponseSuggestion2 responseText];
          textualResponseSuggestion3 = [v16 textualResponseSuggestion];
          responseCategory = [textualResponseSuggestion3 responseCategory];
          applicationBundleIdentifier = [contextCopy applicationBundleIdentifier];
          LOWORD(v34) = 0;
          v28 = [(_ICPredictedItem *)v22 initWithIdentifier:@"SmartReply" itemType:0 score:responseText value:responseCategory label:0 name:date date:1.0 originatingBundleID:applicationBundleIdentifier originatingWebsiteURL:0 predictionAge:30 shouldAggregate:v34 flags:0 targetBundleID:0 operationData:structuredInfoSuggestion2 proactiveTrigger:?];

          [v42 addObject:v28];
LABEL_10:

          goto LABEL_11;
        }

        structuredInfoSuggestion = [v16 structuredInfoSuggestion];

        if (structuredInfoSuggestion)
        {
          structuredInfoSuggestion2 = [v16 structuredInfoSuggestion];
          date = [(_ICInputSuggesterPredictionSource *)self _getPredictedItemFromStructuredInfo:structuredInfoSuggestion2];
          if (date)
          {
            [v42 addObject:date];
          }

          goto LABEL_10;
        }

LABEL_11:
        ++v15;
      }

      while (v14 != v15);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      v14 = v30;
    }

    while (v30);
  }

  handlerCopy[2](handlerCopy, v42, v37);
  v31 = mach_absolute_time();
  v32 = _ICMachTimeToNanoseconds(v31 - v35);
  v33 = _ICProactiveQuickTypeOSLogFacility(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [_ICInputSuggesterPredictionSource predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:];
  }
}

- (id)_getPredictedItemFromStructuredInfo:(id)info
{
  infoCopy = info;
  proactiveTrigger = [infoCopy proactiveTrigger];
  v5 = [_ICProactiveTrigger alloc];
  triggerAttributes = [proactiveTrigger triggerAttributes];
  v7 = [(_ICProactiveTrigger *)v5 initWithSource:0 attributes:triggerAttributes];

  portraitItem = [infoCopy portraitItem];

  if (portraitItem)
  {
    portraitItem2 = [infoCopy portraitItem];

    v10 = [_ICPredictedItem predictedItemFromQuickTypeItem:portraitItem2 trigger:v7];
  }

  else
  {
    portraitItem2 = [infoCopy operationalItem];

    date = [MEMORY[0x277CBEAA8] date];
    v12 = [_ICPredictedItem alloc];
    itemIdentifier = [portraitItem2 itemIdentifier];
    value = [portraitItem2 value];
    bundleIdentifier = [portraitItem2 bundleIdentifier];
    operationData = [portraitItem2 operationData];
    LOWORD(v19) = 0;
    v10 = [(_ICPredictedItem *)v12 initWithIdentifier:itemIdentifier itemType:1 score:value value:0 label:0 name:date date:1.0 originatingBundleID:bundleIdentifier originatingWebsiteURL:0 predictionAge:30 shouldAggregate:v19 flags:0 targetBundleID:operationData operationData:v7 proactiveTrigger:?];

    identifier = [(_ICPredictedItem *)v10 identifier];
    LODWORD(value) = [identifier isEqualToString:@"surf"];

    if (value)
    {
      [(_ICPredictedItem *)v10 setLayoutHint:1];
    }
  }

  return v10;
}

- (id)requestFromTrigger:(id)trigger searchContext:(id)context
{
  triggerCopy = trigger;
  contextCopy = context;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x277CBEB18] array];
  inputContextHistory = [triggerCopy inputContextHistory];

  if (inputContextHistory)
  {
    inputContextHistory2 = [triggerCopy inputContextHistory];
    if ([inputContextHistory2 mostRecentTextEntryIsByMe])
    {
      mostRecentNonSenderTextEntry = 0;
    }

    else
    {
      mostRecentNonSenderTextEntry = [inputContextHistory2 mostRecentNonSenderTextEntry];
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70___ICInputSuggesterPredictionSource_requestFromTrigger_searchContext___block_invoke;
    v26[3] = &unk_2797ADDC8;
    v26[4] = &v27;
    [inputContextHistory2 enumerateAllEntries:v26];
  }

  else
  {
    mostRecentNonSenderTextEntry = 0;
  }

  v9 = objc_alloc(MEMORY[0x277D41EB0]);
  v21 = v28[5];
  shouldDisableAutoCaps = [contextCopy shouldDisableAutoCaps];
  isResponseContextDenylisted = [contextCopy isResponseContextDenylisted];
  context = [triggerCopy context];
  v24 = [context length];
  if (v24)
  {
    context2 = [triggerCopy context];
  }

  else
  {
    context2 = 0;
  }

  locale = [contextCopy locale];
  applicationBundleIdentifier = [contextCopy applicationBundleIdentifier];
  recipients = [contextCopy recipients];
  inputContextHistory3 = [triggerCopy inputContextHistory];
  recipientNames = [inputContextHistory3 recipientNames];
  contentType = [triggerCopy contentType];
  availableApps = [triggerCopy availableApps];
  v17 = [v9 initWithResponseContext:mostRecentNonSenderTextEntry conversationTurns:v21 adaptationContextID:0 shouldDisableAutoCaps:shouldDisableAutoCaps isResponseContextBlacklisted:isResponseContextDenylisted contextBeforeInput:context2 markedText:0 selectedText:0 contextAfterInput:0 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL localeIdentifier:0 bundleIdentifier:locale recipients:applicationBundleIdentifier recipientNames:recipients textContentType:recipientNames availableApps:contentType textualResponseLimit:availableApps structuredInfoLimit:3 totalSuggestionsLimit:{2, 3}];

  if (v24)
  {
  }

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)hibernate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = @"_ICPeopleSuggestorPredictionSource";
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_INFO, "%@: hibernating", &v5, 0xCu);
  }

  getPeopleSuggester = [(_ICInputSuggesterPredictionSource *)self getPeopleSuggester];
  [getPeopleSuggester hibernate];
}

- (void)logImpressionForPredictedValues:(id)values
{
  v3 = MEMORY[0x277D41EA0];
  valuesCopy = values;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance logMetricForEventType:0 externalMetadata:0 predictedValues:valuesCopy];
}

- (void)logEngagementForPredictedValues:(id)values position:(unint64_t)position
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D41EA0];
  valuesCopy = values;
  sharedInstance = [v5 sharedInstance];
  v10 = *MEMORY[0x277D41F18];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:position];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [sharedInstance logMetricForEventType:1 externalMetadata:v9 predictedValues:valuesCopy];
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  typeCopy = type;
  v20[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v8 = stringCopy;
  if (typeCopy == 3)
  {
    v14 = [stringCopy length];
    offered = self->_offered;
    if (v14)
    {
      [(NSMutableArray *)offered addObject:v8];
    }

    else
    {
      if ([(NSMutableArray *)offered count])
      {
        v16 = _ICProactiveQuickTypeOSLogFacility([(PSGInputSuggester *)self->_inputSuggester logMetricForEventType:0 externalMetadata:0 predictedValues:self->_offered]);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [_ICInputSuggesterPredictionSource provideFeedbackForString:? type:? style:?];
        }
      }

      v17 = [(NSMutableArray *)self->_offered copy];
      prevOffered = self->_prevOffered;
      self->_prevOffered = v17;

      [(NSMutableArray *)self->_offered removeAllObjects];
    }
  }

  else if (typeCopy == 1)
  {
    v9 = _ICProactiveQuickTypeOSLogFacility(stringCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_ICInputSuggesterPredictionSource provideFeedbackForString:v8 type:? style:?];
    }

    v10 = [(NSArray *)self->_prevOffered indexOfObject:v8];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      inputSuggester = self->_inputSuggester;
      v19 = *MEMORY[0x277D41F18];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10 + 1];
      v20[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [(PSGInputSuggester *)inputSuggester logMetricForEventType:1 externalMetadata:v13 predictedValues:self->_prevOffered];
    }
  }
}

- (void)propogateMetrics:(id)metrics data:(id)data
{
  dataCopy = data;
  v6 = MEMORY[0x277CCACA8];
  metricsCopy = metrics;
  v8 = [v6 stringWithUTF8String:"SpeedMetric"];
  v9 = [metricsCopy isEqualToString:v8];

  if (v9)
  {
    [(PSGInputSuggester *)self->_inputSuggester logMetricForEventType:2 externalMetadata:dataCopy predictedValues:0];
  }
}

- (void)getPeopleSuggester
{
  *buf = 138412290;
  *a2 = @"_ICPeopleSuggestorPredictionSource";
  _os_log_debug_impl(&dword_254BD0000, log, OS_LOG_TYPE_DEBUG, "%@: Request for uninitialized People Suggester on a background thread, waiting", buf, 0xCu);
}

- (void)_quickTypeQueryWithTrigger:(uint64_t)a1 searchContext:(NSObject *)a2 limit:timeoutInMilliseconds:errorWithExplanations:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412546;
  v4 = @"_ICPeopleSuggestorPredictionSource";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_254BD0000, a2, OS_LOG_TYPE_ERROR, "%@: inputSuggestionsForRequest error: %@", &v3, 0x16u);
}

- (void)_quickTypeQueryWithTrigger:(os_log_t)log searchContext:limit:timeoutInMilliseconds:errorWithExplanations:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"_ICPeopleSuggestorPredictionSource";
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "%@: failed to get People Suggestor!", &v1, 0xCu);
}

- (void)_quickTypeQueryWithTrigger:searchContext:limit:timeoutInMilliseconds:errorWithExplanations:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)provideFeedbackForString:(id *)a1 type:style:.cold.1(id *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [*a1 count];
  OUTLINED_FUNCTION_2_0(&dword_254BD0000, v1, v2, "Feedback Offered by _ICInputSuggesterPredictionSource with strings count = %lu", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)provideFeedbackForString:(void *)a1 type:style:.cold.2(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 length];
  OUTLINED_FUNCTION_2_0(&dword_254BD0000, v1, v2, "Feedback Accepted by _ICInputSuggesterPredictionSource with string length = %lu", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end