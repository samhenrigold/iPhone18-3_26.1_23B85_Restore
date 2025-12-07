@interface SGMessageEventDissector
+ (id)dateFromString:(id)string;
+ (id)describeCategory:(unsigned __int8)category;
+ (id)enrichmentsFromSchema:(id)schema forMessage:(id)message forEntity:(id)entity category:(id)category;
+ (id)fallbackSchemaForGenericEventWithTitle:(id)title startDate:(id)date endDate:(id)endDate;
+ (id)getFlightInformationForFlightEventData:(id)data;
+ (id)loadEventClassifierModelFromPath:(id)path;
+ (id)loadLazyPlistWithBasename:(id)basename;
+ (id)nilEntities:(id)entities;
+ (id)schemaOrgAndMissingEntitiesForExtractedEvent:(id)event;
+ (id)sharedInstance;
+ (id)tupleWithEntity:(id)entity label:(id)label;
+ (unsigned)messageEventCategoryForCategoryString:(id)string;
+ (void)logMLMessageEventExtractionInteractions:(id)interactions context:(id)context;
- (BOOL)isDissectorProcessingWithinRateLimit;
- (BOOL)isMessageOfTypeEvent:(id)event;
- (BOOL)shouldProcessTextMessage:(id)message entity:(id)entity;
- (id)_init;
- (id)eventClassifierMobileAssetsPath;
- (id)eventExtractionMobileAssetsPath;
- (id)eventsFromMessage:(id)message eventExtractionAssetsPath:(id)path;
- (id)loadEventClassifierModel;
- (id)schemaOrgAndMissingEntitiesForMessage:(id)message withMLModelParameters:(id)parameters;
- (void)addEnrichmentForEvents:(id)events toEntity:(id)entity message:(id)message context:(id)context timingProcessingInMs:(unint64_t)ms;
- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context;
- (void)logFailedEventExtractionForMessage:(id)message category:(id)category missingEntities:(id)entities timingProcessingInMs:(unint64_t)ms;
- (void)logFailedEventExtractionForMessage:(id)message failureCode:(int64_t)code;
- (void)logMLMessageEventExtractionForSchema:(id)schema message:(id)message category:(id)category timingProcessingInMs:(unint64_t)ms;
@end

@implementation SGMessageEventDissector

- (id)schemaOrgAndMissingEntitiesForMessage:(id)message withMLModelParameters:(id)parameters
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  parametersCopy = parameters;
  if ([objc_opt_class() featureEnabled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_opt_new();
    v10 = objc_autoreleasePoolPush();
    v11 = objc_opt_class();
    v12 = [parametersCopy objectForKeyedSubscript:@"eventClassifierPath"];
    v13 = [v11 loadEventClassifierModelFromPath:v12];

    objc_autoreleasePoolPop(v10);
    if (v13)
    {
      textContent = [messageCopy textContent];
      v15 = [v13 predictedLabelHypothesesForString:textContent maximumCount:1];

      v16 = sgEventsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v15 allKeys];
        v17 = [allKeys objectAtIndexedSubscript:0];
        allKeys2 = [v15 allKeys];
        [allKeys2 objectAtIndexedSubscript:0];
        v18 = v28 = v8;
        v19 = [v15 objectForKeyedSubscript:v18];
        [v19 doubleValue];
        *buf = 138412546;
        v31 = v17;
        v32 = 2048;
        v33 = v20;
        _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Message classification by Event-Classifier: %@ (Score: %.02f)", buf, 0x16u);

        v8 = v28;
      }

      if (v15)
      {
        [v9 addObject:v15];
      }
    }

    v21 = [parametersCopy objectForKeyedSubscript:@"assetFolderPath"];
    v22 = [(SGMessageEventDissector *)self eventsFromMessage:messageCopy eventExtractionAssetsPath:v21];

    if (v22 && objc_msgSend_count(v22))
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __87__SGMessageEventDissector_schemaOrgAndMissingEntitiesForMessage_withMLModelParameters___block_invoke;
      v29[3] = &unk_27894F0A8;
      v29[4] = self;
      v23 = [v22 _pas_mappedArrayWithTransform:v29];
      [v9 addObjectsFromArray:v23];
    }

    v24 = [v9 copy];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id __87__SGMessageEventDissector_schemaOrgAndMissingEntitiesForMessage_withMLModelParameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() schemaOrgAndMissingEntitiesForExtractedEvent:v2];

  return v3;
}

- (void)logFailedEventExtractionForMessage:(id)message failureCode:(int64_t)code
{
  messageCopy = message;
  v7 = objc_opt_new();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [v7 setObject:localeIdentifier forKeyedSubscript:@"deviceLocale"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  [v7 setObject:v10 forKeyedSubscript:@"failureReasonCode"];

  mobileAssetsEnabled = [objc_opt_class() mobileAssetsEnabled];
  v12 = MEMORY[0x277CCABB0];
  if (mobileAssetsEnabled)
  {
    v13 = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    intValue = [v13 intValue];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__21654;
    v31 = __Block_byref_object_dispose__21655;
    v32 = 0;
    lock = self->_lock;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__SGMessageEventDissector_logFailedEventExtractionForMessage_failureCode___block_invoke;
    v26[3] = &unk_27894F080;
    v26[4] = &v27;
    [(_PASLock *)lock runWithLockAcquired:v26];
    v16 = v28[5];
    _Block_object_dispose(&v27, 8);

    intValue2 = [v16 intValue];
    messageProcessingLimit = [v12 numberWithInt:(intValue - intValue2)];
    [v7 setObject:messageProcessingLimit forKeyedSubscript:@"messageProcessingRate"];
  }

  else
  {
    v13 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    messageProcessingLimit = [v13 messageProcessingLimit];
    intValue3 = [messageProcessingLimit intValue];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__21654;
    v31 = __Block_byref_object_dispose__21655;
    v32 = 0;
    v20 = self->_lock;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__SGMessageEventDissector_logFailedEventExtractionForMessage_failureCode___block_invoke_2;
    v25[3] = &unk_27894F080;
    v25[4] = &v27;
    [(_PASLock *)v20 runWithLockAcquired:v25];
    v21 = v28[5];
    _Block_object_dispose(&v27, 8);

    intValue4 = [v21 intValue];
    v23 = [v12 numberWithInt:(intValue3 - intValue4)];
    [v7 setObject:v23 forKeyedSubscript:@"messageProcessingRate"];
  }

  v24 = +[SGRTCLogging defaultLogger];
  [v24 logMLMessageEventExtractionForTemplateName:@"ML_EventMessage" extractionStatus:1 outputInfo:v7 outputExceptions:MEMORY[0x277CBEBF8] timingProcessing:0];
}

- (void)logFailedEventExtractionForMessage:(id)message category:(id)category missingEntities:(id)entities timingProcessingInMs:(unint64_t)ms
{
  messageCopy = message;
  categoryCopy = category;
  entitiesCopy = entities;
  v12 = objc_opt_new();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [v12 setObject:localeIdentifier forKeyedSubscript:@"deviceLocale"];

  [v12 setObject:categoryCopy forKeyedSubscript:@"outputCategory"];
  mobileAssetsEnabled = [objc_opt_class() mobileAssetsEnabled];
  v16 = MEMORY[0x277CCABB0];
  if (mobileAssetsEnabled)
  {
    v17 = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    intValue = [v17 intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    lock = self->_lock;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __108__SGMessageEventDissector_logFailedEventExtractionForMessage_category_missingEntities_timingProcessingInMs___block_invoke;
    v31[3] = &unk_27894F080;
    v31[4] = &v32;
    [(_PASLock *)lock runWithLockAcquired:v31];
    v20 = v33[5];
    _Block_object_dispose(&v32, 8);

    intValue2 = [v20 intValue];
    messageProcessingLimit = [v16 numberWithInt:(intValue - intValue2)];
    [v12 setObject:messageProcessingLimit forKeyedSubscript:@"messageProcessingRate"];
  }

  else
  {
    v17 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    messageProcessingLimit = [v17 messageProcessingLimit];
    intValue3 = [messageProcessingLimit intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    v24 = self->_lock;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __108__SGMessageEventDissector_logFailedEventExtractionForMessage_category_missingEntities_timingProcessingInMs___block_invoke_2;
    v30[3] = &unk_27894F080;
    v30[4] = &v32;
    [(_PASLock *)v24 runWithLockAcquired:v30];
    v25 = v33[5];
    _Block_object_dispose(&v32, 8);

    intValue4 = [v25 intValue];
    v27 = [v16 numberWithInt:(intValue3 - intValue4)];
    [v12 setObject:v27 forKeyedSubscript:@"messageProcessingRate"];
  }

  v28 = +[SGRTCLogging defaultLogger];
  [v28 logMLMessageEventExtractionForTemplateName:@"ML_EventMessage" extractionStatus:1 outputInfo:v12 outputExceptions:entitiesCopy timingProcessing:ms];
}

- (void)logMLMessageEventExtractionForSchema:(id)schema message:(id)message category:(id)category timingProcessingInMs:(unint64_t)ms
{
  schemaCopy = schema;
  messageCopy = message;
  categoryCopy = category;
  v12 = objc_opt_new();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [v12 setObject:localeIdentifier forKeyedSubscript:@"deviceLocale"];

  [v12 setObject:categoryCopy forKeyedSubscript:@"outputCategory"];
  mobileAssetsEnabled = [objc_opt_class() mobileAssetsEnabled];
  v16 = MEMORY[0x277CCABB0];
  if (mobileAssetsEnabled)
  {
    v17 = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    intValue = [v17 intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    lock = self->_lock;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __102__SGMessageEventDissector_logMLMessageEventExtractionForSchema_message_category_timingProcessingInMs___block_invoke;
    v31[3] = &unk_27894F080;
    v31[4] = &v32;
    [(_PASLock *)lock runWithLockAcquired:v31];
    v20 = v33[5];
    _Block_object_dispose(&v32, 8);

    intValue2 = [v20 intValue];
    messageProcessingLimit = [v16 numberWithInt:(intValue - intValue2)];
    [v12 setObject:messageProcessingLimit forKeyedSubscript:@"messageProcessingRate"];
  }

  else
  {
    v17 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    messageProcessingLimit = [v17 messageProcessingLimit];
    intValue3 = [messageProcessingLimit intValue];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21654;
    v36 = __Block_byref_object_dispose__21655;
    v37 = 0;
    v24 = self->_lock;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __102__SGMessageEventDissector_logMLMessageEventExtractionForSchema_message_category_timingProcessingInMs___block_invoke_2;
    v30[3] = &unk_27894F080;
    v30[4] = &v32;
    [(_PASLock *)v24 runWithLockAcquired:v30];
    v25 = v33[5];
    _Block_object_dispose(&v32, 8);

    intValue4 = [v25 intValue];
    v27 = [v16 numberWithInt:(intValue3 - intValue4)];
    [v12 setObject:v27 forKeyedSubscript:@"messageProcessingRate"];
  }

  v28 = +[SGRTCLogging defaultLogger];
  [v28 logMLMessageEventExtractionForTemplateName:@"ML_EventMessage" extractionStatus:0 outputInfo:v12 outputExceptions:MEMORY[0x277CBEBF8] timingProcessing:ms];
}

- (BOOL)isMessageOfTypeEvent:(id)event
{
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__21654;
  v21 = __Block_byref_object_dispose__21655;
  v22 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SGMessageEventDissector_isMessageOfTypeEvent___block_invoke;
  v14[3] = &unk_27894F058;
  v14[4] = self;
  v16 = &v17;
  v6 = eventCopy;
  v15 = v6;
  [(_PASLock *)lock runWithLockAcquired:v14];
  if ([objc_opt_class() mobileAssetsEnabled])
  {
    eventClassifierThreshold = [(NSDictionary *)self->_dissectorConfig objectForKeyedSubscript:@"EventClassifierThreshold"];
  }

  else
  {
    v8 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    eventClassifierThreshold = [v8 eventClassifierThreshold];
  }

  v9 = v18[5];
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"Event"];
    if (v10)
    {
      v11 = [v18[5] objectForKeyedSubscript:@"Event"];
      v12 = [v11 compare:eventClassifierThreshold] == 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

void __48__SGMessageEventDissector_isMessageOfTypeEvent___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[3] result];
  if (v4 || ([*(a1 + 32) loadEventClassifierModel], v5 = objc_claimAutoreleasedReturnValue(), v6 = v3[3], v3[3] = v5, v6, objc_msgSend(v3[3], "result"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v4;
    v8 = [v4 predictedLabelHypothesesForString:*(a1 + 40) maximumCount:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = sgEventsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(*(*(a1 + 48) + 8) + 40) allKeys];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [v14 allKeys];
      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v14 objectForKeyedSubscript:v16];
      [v17 doubleValue];
      v19 = 138412546;
      v20 = v13;
      v21 = 2048;
      v22 = v18;
      _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Message classification by Event-Classifier: %@ (Score: %.02f)", &v19, 0x16u);
    }
  }
}

- (id)loadEventClassifierModel
{
  v3 = objc_alloc(MEMORY[0x277D425E8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SGMessageEventDissector_loadEventClassifierModel__block_invoke;
  v6[3] = &unk_278951C48;
  v6[4] = self;
  v4 = [v3 initWithBlock:v6 idleTimeout:300.0];

  return v4;
}

NSObject *__51__SGMessageEventDissector_loadEventClassifierModel__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() mobileAssetsEnabled])
  {
    v2 = [*(a1 + 32) eventClassifierMobileAssetsPath];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v2 = [v9 eventClassifierModelPath];

    if (v2)
    {
LABEL_3:
      v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v2];
      v4 = objc_opt_new();
      [v4 setComputeUnits:0];
      v14 = 0;
      v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v3 configuration:v4 error:&v14];
      v6 = v14;
      if (v6)
      {
        v7 = v6;
        v8 = sgEventsLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model: %@", buf, 0xCu);
        }
      }

      else
      {
        v13 = 0;
        v8 = [objc_alloc(MEMORY[0x277CD89D0]) initWithMLModel:v5 error:&v13];
        v7 = v13;
        if (!v7)
        {
          v8 = v8;
          v10 = v8;
          goto LABEL_15;
        }

        v11 = sgEventsLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to convert ML Model to NL Model: %@", buf, 0xCu);
        }
      }

      v10 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  v7 = sgEventsLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model. Model Path does not exist", buf, 2u);
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (id)eventsFromMessage:(id)message eventExtractionAssetsPath:(id)path
{
  v75[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  pathCopy = path;
  v8 = sgEventsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = pathCopy;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Fetching events from ML Runtime Plugin com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin eventExtractionAssetsPath: %{private}@", &buf, 0xCu);
  }

  textContent = [messageCopy textContent];
  v10 = textContent;
  if (textContent)
  {
    v74[0] = @"TaskName";
    v74[1] = @"InputMessage";
    v75[0] = @"EventSuggestionsFromMessage";
    v75[1] = textContent;
    v74[2] = @"AssetFolderPath";
    v75[2] = pathCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
    v12 = [objc_alloc(MEMORY[0x277D253F0]) initWithParametersDict:v11];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__21654;
    v72 = __Block_byref_object_dispose__21655;
    v73 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    if (serialQueue__pasOnceToken4 != -1)
    {
      dispatch_once(&serialQueue__pasOnceToken4, &__block_literal_global_467);
    }

    v13 = serialQueue__pasExprOnceResult;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke;
    block[3] = &unk_278956180;
    v14 = v12;
    v61 = v14;
    v62 = @"com.apple.eventMetaDataExtractor.eventMetaDataExtractorPlugin";
    p_buf = &buf;
    v64 = &v65;
    dispatch_async_and_wait(v13, block);
    v15 = *(*(&buf + 1) + 40);
    if (!v15)
    {
      if (*(v66 + 24))
      {
        v50 = 102;
      }

      else
      {
        v50 = 103;
      }

      [(SGMessageEventDissector *)self logFailedEventExtractionForMessage:messageCopy failureCode:v50];
      v19 = 0;
      goto LABEL_33;
    }

    v16 = [v15 objectForKeyedSubscript:@"events"];
    if (!v16 || ([*(*(&buf + 1) + 40) objectForKeyedSubscript:@"events"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_count(v17) == 0, v17, v16, v18))
    {
      v49 = sgEventsLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v59 = 0;
        _os_log_error_impl(&dword_231E60000, v49, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: ML Runtime failed to return events information, bailing", v59, 2u);
      }

      v23 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:@"errorCode"];
      -[SGMessageEventDissector logFailedEventExtractionForMessage:failureCode:](self, "logFailedEventExtractionForMessage:failureCode:", messageCopy, [v23 intValue]);
      v19 = 0;
    }

    else
    {
      v19 = [*(*(&buf + 1) + 40) objectForKeyedSubscript:@"events"];
      v20 = [v19 objectAtIndexedSubscript:0];
      v21 = [v20 objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
      v22 = [v21 isEqualToString:@"Flight"];

      if (!v22)
      {
LABEL_33:

        _Block_object_dispose(&v65, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_34;
      }

      v23 = objc_opt_new();
      v58 = [v23 getFlightReferencesAndReservationId:messageCopy];
      v24 = [v58 objectForKeyedSubscript:@"flightReferences"];
      if (v24)
      {
        v25 = [v58 objectForKeyedSubscript:@"flightReferences"];
        v26 = objc_msgSend_count(v25) == 0;

        if (!v26)
        {
          v54 = [v58 objectForKeyedSubscript:@"flightReferences"];
          v52 = [v54 objectAtIndexedSubscript:0];
          v27 = [v52 objectForKeyedSubscript:@"airline"];
          v28 = [v27 objectForKeyedSubscript:@"IATA"];
          v29 = [v19 objectAtIndexedSubscript:0];
          [v29 setObject:v28 forKeyedSubscript:@"carrierCode"];

          v55 = [v58 objectForKeyedSubscript:@"flightReferences"];
          v30 = [v55 objectAtIndexedSubscript:0];
          v31 = [v30 objectForKeyedSubscript:@"flightNumber"];
          v32 = [v19 objectAtIndexedSubscript:0];
          [v32 setObject:v31 forKeyedSubscript:@"flightNumber"];

          v33 = [v58 objectForKeyedSubscript:@"reservationId"];
          v34 = [v19 objectAtIndexedSubscript:0];
          v35 = v34;
          v36 = v33 ? v33 : &stru_284703F00;
          [v34 setObject:v36 forKeyedSubscript:@"reservationId"];

          if (objc_msgSend_count(v19) == 2)
          {
            v37 = [v58 objectForKeyedSubscript:@"flightReferences"];
            v38 = objc_msgSend_count(v37) == 2;

            if (v38)
            {
              v56 = [v58 objectForKeyedSubscript:@"flightReferences"];
              v53 = [v56 objectAtIndexedSubscript:1];
              v39 = [v53 objectForKeyedSubscript:@"airline"];
              v40 = [v39 objectForKeyedSubscript:@"IATA"];
              v41 = [v19 objectAtIndexedSubscript:1];
              [v41 setObject:v40 forKeyedSubscript:@"carrierCode"];

              v57 = [v58 objectForKeyedSubscript:@"flightReferences"];
              v42 = [v57 objectAtIndexedSubscript:1];
              v43 = [v42 objectForKeyedSubscript:@"flightNumber"];
              v44 = [v19 objectAtIndexedSubscript:1];
              [v44 setObject:v43 forKeyedSubscript:@"flightNumber"];

              v45 = [v58 objectForKeyedSubscript:@"reservationId"];
              v46 = [v19 objectAtIndexedSubscript:1];
              v47 = v46;
              if (v45)
              {
                v48 = v45;
              }

              else
              {
                v48 = &stru_284703F00;
              }

              [v46 setObject:v48 forKeyedSubscript:@"reservationId"];
            }
          }
        }
      }
    }

    goto LABEL_33;
  }

  v11 = sgEventsLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Nil MessageBody Found. Bailing.", &buf, 2u);
  }

  v19 = 0;
LABEL_34:

  return v19;
}

void __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D253E8];
  v4 = a1[4];
  v5 = a1[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke_2;
  v9[3] = &unk_27894F030;
  v11 = a1[6];
  v6 = v2;
  v10 = v6;
  [v3 performTask:v4 forPluginID:v5 completionHandler:v9];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v6 timeoutSeconds:8.0] == 1)
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 0;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: MLRuntime Plugin task timeout", v8, 2u);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }
}

void __71__SGMessageEventDissector_eventsFromMessage_eventExtractionAssetsPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 JSONResult];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: MLRuntime Plugin Task failed with error:  %@", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)addEnrichmentForEvents:(id)events toEntity:(id)entity message:(id)message context:(id)context timingProcessingInMs:(unint64_t)ms
{
  v67 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  entityCopy = entity;
  messageCopy = message;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = eventsCopy;
  v47 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v47)
  {
    v44 = *v58;
    selfCopy = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v13;
        v14 = *(*(&v57 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [objc_opt_class() schemaOrgAndMissingEntitiesForExtractedEvent:{v14, context}];
        v17 = v15;
        v18 = v16;
        objc_autoreleasePoolPop(v17);
        v19 = [v18 objectForKeyedSubscript:@"schema"];
        v20 = [v18 objectForKeyedSubscript:@"category"];
        v21 = objc_autoreleasePoolPush();
        v22 = v21;
        if (v19)
        {
          [(SGMessageEventDissector *)self logMLMessageEventExtractionForSchema:v19 message:messageCopy category:v20 timingProcessingInMs:ms];
          v23 = objc_autoreleasePoolPush();
          v24 = [objc_opt_class() enrichmentsFromSchema:v19 forMessage:messageCopy forEntity:entityCopy category:v20];
          objc_autoreleasePoolPop(v23);
          log = v24;
          if (v24)
          {
            v48 = v22;
            v50 = v19;
            v42 = v20;
            v43 = v18;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v53 objects:v65 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v54;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v54 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v53 + 1) + 8 * i);
                  v31 = objc_autoreleasePoolPush();
                  v32 = [MEMORY[0x277D01FA0] extractedFromTemplateWithName:@"ML_EventMessage"];
                  [v30 addTag:v32];

                  v33 = [MEMORY[0x277D01FA0] extractedFromTemplateWithShortName:@"ML_EventMessage"];
                  [v30 addTag:v33];

                  v34 = sgEventsLogHandle();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v62 = v30;
                    v63 = 2112;
                    v64 = entityCopy;
                    _os_log_impl(&dword_231E60000, v34, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Adding Enrichment: %@ to entity:%@", buf, 0x16u);
                  }

                  [entityCopy addEnrichment:v30];
                  objc_autoreleasePoolPop(v31);
                }

                v27 = [v25 countByEnumeratingWithState:&v53 objects:v65 count:16];
              }

              while (v27);
            }

            self = selfCopy;
            v20 = v42;
            v18 = v43;
            v22 = v48;
            v19 = v50;
          }

          [objc_opt_class() logMLMessageEventExtractionInteractions:entityCopy context:contextCopy];
          v35 = v51;
        }

        else
        {
          v49 = v21;
          v36 = v18;
          v37 = [v18 objectForKeyedSubscript:@"missingEntities"];
          [(SGMessageEventDissector *)self logFailedEventExtractionForMessage:messageCopy category:v20 missingEntities:v37 timingProcessingInMs:ms];

          log = sgEventsLogHandle();
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v62 = v14;
            v63 = 2112;
            v64 = entityCopy;
            _os_log_error_impl(&dword_231E60000, log, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Could not extract event deatils from event dictionary: %@ for entity: %@", buf, 0x16u);
          }

          v18 = v36;
          v19 = 0;
          v35 = v51;
          v22 = v49;
        }

        objc_autoreleasePoolPop(v22);
        v13 = v35 + 1;
      }

      while (v13 != v47);
      v47 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v47);
  }

  objc_autoreleasePoolPop(context);
}

- (id)eventExtractionMobileAssetsPath
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[SGAsset regionAsset];
  v3 = [v2 filesystemPathForAssetDataRelativePath:@"MLEventExtractionModel.assets"];

  if (_os_feature_enabled_impl())
  {
    v4 = +[SGAsset localeAsset];
    v5 = [v4 filesystemPathForAssetDataRelativePath:@"MLEventExtractionModel.assets"];

    v3 = v5;
  }

  v6 = sgEventsLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138477827;
      v11 = v3;
      _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: MLEventExtractionAssets Path: %{private}@", &v10, 0xCu);
    }

    v8 = v3;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to find MA path for MLEventExtractionAssets", &v10, 2u);
    }
  }

  return v3;
}

- (id)eventClassifierMobileAssetsPath
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[SGAsset regionAsset];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", @"EventClassifier", @"mlmodelc"];
  v4 = [v2 filesystemPathForAssetDataRelativePath:v3];

  if (_os_feature_enabled_impl())
  {
    v5 = +[SGAsset localeAsset];
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", @"EventClassifier", @"mlmodelc"];
    v7 = [v5 filesystemPathForAssetDataRelativePath:v6];

    v4 = v7;
  }

  v8 = sgEventsLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v13 = v4;
      _os_log_debug_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: EventClassifier Model Path: %{private}@", buf, 0xCu);
    }

    v10 = v4;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to find MA path for EventClassifier model", buf, 2u);
    }
  }

  return v4;
}

- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context
{
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  if ([objc_opt_class() featureEnabled])
  {
    v11 = mach_absolute_time();
    v12 = objc_autoreleasePoolPush();
    if ([(SGMessageEventDissector *)self shouldProcessTextMessage:messageCopy entity:entityCopy])
    {
      hasEventEnrichment = [entityCopy hasEventEnrichment];
      objc_autoreleasePoolPop(v12);
      if ((hasEventEnrichment & 1) == 0)
      {
        v14 = sgEventsLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Message is potential event message, dissecting to extract events", buf, 2u);
        }

        if ([objc_opt_class() mobileAssetsEnabled])
        {
          eventExtractionMobileAssetsPath = [(SGMessageEventDissector *)self eventExtractionMobileAssetsPath];
          if (eventExtractionMobileAssetsPath)
          {
LABEL_8:
            v16 = [(SGMessageEventDissector *)self eventsFromMessage:messageCopy eventExtractionAssetsPath:eventExtractionMobileAssetsPath];
            v17 = v16;
            if (v16 && objc_msgSend_count(v16))
            {
              v18 = mach_absolute_time() - v11;
              if (SGMachTimeToNanoseconds_onceToken != -1)
              {
                dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
              }

              v19 = v18 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734 / 0xF4240;
              v20 = objc_msgSend_count(v17);
              v24[0] = MEMORY[0x277D85DD0];
              v24[1] = 3221225472;
              v24[2] = __61__SGMessageEventDissector_dissectTextMessage_entity_context___block_invoke;
              v24[3] = &unk_27894F008;
              v24[4] = self;
              v21 = v19 / v20;
              v17 = v17;
              v25 = v17;
              v26 = entityCopy;
              v27 = messageCopy;
              v28 = contextCopy;
              v29 = v21;
              [v26 runWithDissectorLock:v24];
            }

            else
            {
              v23 = sgEventsLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to fetch events from MLRuntime, bailing", buf, 2u);
              }
            }

LABEL_20:

            goto LABEL_21;
          }
        }

        else
        {
          v22 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
          eventExtractionMobileAssetsPath = [v22 eventExtractionAssetsPath];

          if (eventExtractionMobileAssetsPath)
          {
            goto LABEL_8;
          }
        }

        v17 = sgEventsLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to fetch Event Extraction Assets from TRIAL, bailing", buf, 2u);
        }

        goto LABEL_20;
      }
    }

    else
    {
      objc_autoreleasePoolPop(v12);
    }
  }

LABEL_21:
}

- (BOOL)shouldProcessTextMessage:(id)message entity:(id)entity
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (!+[SGMessageEventDissector allowMessageEventDissector])
  {
    v11 = sgEventsLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    LOWORD(v17) = 0;
    v12 = "SGMessageEventDissector: Skipping Message Event dissector: allowMessageEventDissector is OFF";
    v13 = v11;
    v14 = 2;
LABEL_10:
    _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    goto LABEL_11;
  }

  textContent = [messageCopy textContent];
  v7 = [textContent length];

  if (!v7 || (_os_feature_enabled_impl() & 1) == 0 && ![messageCopy isPotentialEventMessage])
  {
    goto LABEL_12;
  }

  textContent2 = [messageCopy textContent];
  v9 = [(SGMessageEventDissector *)self isMessageOfTypeEvent:textContent2];

  if (!v9)
  {
    v11 = sgEventsLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v17 = 138412290;
    v18 = @"Event";
    v12 = "SGMessageEventDissector: Skipping Message: Message is not classified as %@ type by the Event-Classifier.";
    v13 = v11;
    v14 = 12;
    goto LABEL_10;
  }

  if (![(SGMessageEventDissector *)self isDissectorProcessingWithinRateLimit])
  {
    v16 = sgEventsLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissector: Skipping Message: Exceeded Rate Limit", &v17, 2u);
    }

    [(SGMessageEventDissector *)self logFailedEventExtractionForMessage:messageCopy failureCode:101];
    goto LABEL_12;
  }

  v10 = 1;
LABEL_13:

  return v10;
}

- (BOOL)isDissectorProcessingWithinRateLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SGMessageEventDissector_isDissectorProcessingWithinRateLimit__block_invoke;
  v5[3] = &unk_27894EFE0;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__SGMessageEventDissector_isDissectorProcessingWithinRateLimit__block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  if ([objc_opt_class() mobileAssetsEnabled])
  {
    v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
    v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"EventExtractionRateLimitInterval"];
  }

  else
  {
    v5 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v3 = [v5 messageProcessingLimit];

    v6 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
    v4 = [v6 rateLimitInterval];
  }

  v7 = v20[1];
  v8 = v20[2];
  v9 = objc_opt_new();
  [v9 timeIntervalSinceDate:v7];
  v11 = v10;
  [v4 doubleValue];
  if (v11 >= v12)
  {
    v13 = v9;

    v14 = v3;
    v7 = v13;
    v8 = v14;
  }

  if ([v8 intValue] >= 1)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "intValue") - 1}];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8 = v15;
  }

  v16 = v20[1];
  v20[1] = v7;
  v17 = v7;

  v18 = v20[2];
  v20[2] = v8;
  v19 = v8;
}

- (id)_init
{
  v22[3] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SGMessageEventDissector;
  v2 = [(SGMessageEventDissector *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = v3[1];
    v3[1] = v4;

    if ([objc_opt_class() mobileAssetsEnabled])
    {
      v6 = [objc_opt_class() loadLazyPlistWithBasename:@"SGMessageEventDissectorConfig"];
      dissectorConfig = v2->_dissectorConfig;
      v2->_dissectorConfig = v6;

      v8 = v2->_dissectorConfig;
      if (!v8)
      {
        v21[0] = @"EventExtractionMessageProcessingLimit";
        v21[1] = @"EventExtractionRateLimitInterval";
        v22[0] = &unk_284749A88;
        v22[1] = &unk_284749AA0;
        v21[2] = @"EventClassifierThreshold";
        v22[2] = &unk_28474A3A8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
        v10 = v2->_dissectorConfig;
        v2->_dissectorConfig = v9;

        v8 = v2->_dissectorConfig;
      }

      v11 = [(NSDictionary *)v8 objectForKeyedSubscript:@"EventExtractionMessageProcessingLimit"];
      v12 = v3[2];
      v3[2] = v11;
    }

    else
    {
      v12 = +[SGMessageEventDissectorTrialClientWrapper sharedInstance];
      messageProcessingLimit = [v12 messageProcessingLimit];
      v14 = v3[2];
      v3[2] = messageProcessingLimit;
    }

    loadEventClassifierModel = [(SGMessageEventDissector *)v2 loadEventClassifierModel];
    v16 = v3[3];
    v3[3] = loadEventClassifierModel;

    v17 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v17;
  }

  return v2;
}

+ (id)loadEventClassifierModelFromPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pathCopy];
    v5 = objc_opt_new();
    [v5 setComputeUnits:0];
    v15 = 0;
    v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v4 configuration:v5 error:&v15];
    v7 = v15;
    if (v6)
    {
      v14 = v7;
      v8 = [objc_alloc(MEMORY[0x277CD89D0]) initWithMLModel:v6 error:&v14];
      v9 = v14;

      if (v8)
      {
        v10 = v8;
        v11 = v10;
      }

      else
      {
        v12 = sgEventsLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to convert ML Model to NL Model: %@", buf, 0xCu);
        }

        v10 = 0;
        v11 = 0;
      }
    }

    else
    {
      v10 = sgEventsLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model: %@", buf, 0xCu);
      }

      v11 = 0;
      v9 = v7;
    }
  }

  else
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Unable to load Event Classifier Model. Model Path does not exist", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)logMLMessageEventExtractionInteractions:(id)interactions context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  interactionsCopy = interactions;
  contextCopy = context;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = interactionsCopy;
  enrichments = [interactionsCopy enrichments];
  v8 = [enrichments countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(enrichments);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        duplicateKey = [v12 duplicateKey];
        [duplicateKey entityType];
        if (SGEntityTypeIsEvent())
        {
          isNaturalLanguageEvent = [v12 isNaturalLanguageEvent];

          if (isNaturalLanguageEvent)
          {
            goto LABEL_16;
          }

          backpressureHazard = [contextCopy backpressureHazard];
          if (backpressureHazard == 1)
          {
            v17 = 12;
          }

          else
          {
            v17 = 0;
          }

          if (backpressureHazard)
          {
            v18 = v17;
          }

          else
          {
            v18 = 13;
          }

          duplicateKey = +[SGRTCLogging defaultLogger];
          [duplicateKey logMLMessageEventInteractionForEntity:v12 interface:0 actionType:v18];
        }

LABEL_16:
        objc_autoreleasePoolPop(v13);
      }

      v9 = [enrichments countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

+ (id)getFlightInformationForFlightEventData:(id)data
{
  v129 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = objc_opt_new();
  v5 = [dataCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION"];
  v106 = [dataCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION"];
  v97 = [dataCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
  v6 = [dataCopy objectForKeyedSubscript:@"carrierCode"];
  v98 = [dataCopy objectForKeyedSubscript:@"flightNumber"];
  v94 = [dataCopy objectForKeyedSubscript:@"reservationId"];
  v95 = v6;
  if (!v6 || !v98 || !v97)
  {
    log = sgEventsLogHandle();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, log, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: airlineCode or flightNumber or departureDateTime not found, bailing", buf, 2u);
    }

    v20 = 0;
    goto LABEL_89;
  }

  v93 = dataCopy;
  v7 = objc_opt_new();
  [v7 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v8 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v7 setTimeZone:v8];

  v9 = [self dateFromString:v97];
  log = v7;
  v10 = [v7 stringFromDate:v9];

  v92 = objc_opt_new();
  v107 = v10;
  v11 = [v92 flightInformationWithAirlineCode:v95 flightNumber:v98 flightDate:v10];
  if (!objc_msgSend_count(v11))
  {
    v15 = sgEventsLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: No flight information found, bailing", buf, 2u);
    }

    v20 = 0;
    goto LABEL_88;
  }

  if (objc_msgSend_count(v11) == 1)
  {
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 objectForKeyedSubscript:@"legs"];
    v14 = objc_msgSend_count(v13);

    if (v14 == 1)
    {
      v15 = [v11 objectAtIndexedSubscript:0];
      v16 = [v11 objectAtIndexedSubscript:0];
      v17 = [v16 objectForKeyedSubscript:@"legs"];
      v18 = [v17 objectAtIndexedSubscript:0];

      v19 = 0;
      v108 = 0;
      goto LABEL_51;
    }
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v21 = v11;
  v102 = [v21 countByEnumeratingWithState:&v119 objects:v128 count:16];
  if (!v102)
  {

    v15 = 0;
    v108 = 0;
    v19 = 0;
LABEL_83:
    v18 = 0;
    goto LABEL_84;
  }

  obj = v21;
  v19 = 0;
  v108 = 0;
  v15 = 0;
  v100 = v4;
  v101 = *v120;
  v110 = v5;
  v99 = v11;
  do
  {
    v22 = 0;
    do
    {
      if (*v120 != v101)
      {
        objc_enumerationMutation(obj);
      }

      v109 = v15;
      v103 = v22;
      v23 = *(*(&v119 + 1) + 8 * v22);

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v104 = v23;
      v105 = [v23 objectForKeyedSubscript:@"legs"];
      v24 = [v105 countByEnumeratingWithState:&v115 objects:v127 count:16];
      if (!v24)
      {
        v19 = 0;
        goto LABEL_39;
      }

      v25 = v24;
      v19 = 0;
      v113 = *v116;
      do
      {
        v26 = 0;
        do
        {
          v27 = v19;
          if (*v116 != v113)
          {
            objc_enumerationMutation(v105);
          }

          v28 = *(*(&v115 + 1) + 8 * v26);
          v29 = [v28 objectForKeyedSubscript:@"departureAirport"];
          v30 = [v28 objectForKeyedSubscript:@"arrivalAirport"];
          v31 = [v28 objectForKeyedSubscript:@"departureActualTime"];
          v32 = [self dateFromString:v31];
          v33 = [log stringFromDate:v32];

          v34 = [v29 objectForKeyedSubscript:@"code"];
          if ([v5 isEqualToString:v34])
          {
            v35 = [v33 isEqualToString:v107];

            if (v35)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v36 = [v29 objectForKeyedSubscript:@"city"];
            if ([v5 isEqualToString:v36])
            {
              v37 = [v33 isEqualToString:v107];

              if (v37)
              {
LABEL_26:
                v38 = v108;
                v39 = v109;
                v108 = v28;
                v109 = v104;
                v40 = v27;
LABEL_30:

                v19 = v38;
LABEL_31:
                v41 = v28;

                v19 = v40;
                goto LABEL_32;
              }
            }

            else
            {
            }
          }

          v39 = [v30 objectForKeyedSubscript:@"code"];
          if ([v106 isEqualToString:v39])
          {
            v38 = v27;
            v40 = v28;
            goto LABEL_30;
          }

          v42 = [v30 objectForKeyedSubscript:@"city"];
          v43 = [v106 isEqualToString:v42];

          v40 = v28;
          v19 = v27;
          if (v43)
          {
            goto LABEL_31;
          }

LABEL_32:

          ++v26;
          v5 = v110;
        }

        while (v25 != v26);
        v44 = [v105 countByEnumeratingWithState:&v115 objects:v127 count:16];
        v25 = v44;
      }

      while (v44);
LABEL_39:

      v15 = v109;
      if (v109 && v108)
      {

        v11 = v99;
        v4 = v100;
        goto LABEL_49;
      }

      v22 = v103 + 1;
      v11 = v99;
      v4 = v100;
    }

    while (v103 + 1 != v102);
    v102 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
  }

  while (v102);

  if (!v108)
  {
    v108 = 0;
    goto LABEL_83;
  }

LABEL_49:
  v18 = [v108 mutableCopy];
  if (v19)
  {
    v45 = [v19 objectForKeyedSubscript:@"arrivalAirport"];
    [v18 setObject:v45 forKeyedSubscript:@"arrivalAirport"];

    v46 = [v19 objectForKeyedSubscript:@"arrivalActualTime"];
    [v18 setObject:v46 forKeyedSubscript:@"arrivalActualTime"];

    v47 = [v19 objectForKeyedSubscript:@"arrivalGate"];
    [v18 setObject:v47 forKeyedSubscript:@"arrivalGate"];

    v48 = [v19 objectForKeyedSubscript:@"arrivalTerminal"];
    [v18 setObject:v48 forKeyedSubscript:@"arrivalTerminal"];
  }

LABEL_51:
  if (v15 && v18)
  {
    v49 = [v15 objectForKeyedSubscript:@"carrierCode"];
    null = [MEMORY[0x277CBEB68] null];

    if (v49 != null)
    {
      v51 = [v15 objectForKeyedSubscript:@"carrierCode"];
      [v4 setObject:v51 forKeyedSubscript:@"carrierCode"];
    }

    v52 = [v15 objectForKeyedSubscript:@"carrierName"];
    null2 = [MEMORY[0x277CBEB68] null];

    if (v52 != null2)
    {
      v54 = [v15 objectForKeyedSubscript:@"carrierName"];
      [v4 setObject:v54 forKeyedSubscript:@"carrierName"];
    }

    v55 = [v15 objectForKeyedSubscript:@"flightNumber"];
    null3 = [MEMORY[0x277CBEB68] null];

    if (v55 != null3)
    {
      v57 = [v15 objectForKeyedSubscript:@"flightNumber"];
      [v4 setObject:v57 forKeyedSubscript:@"flightNumber"];
    }

    if (v94)
    {
      [v4 setObject:v94 forKeyedSubscript:@"reservationId"];
    }

    v58 = [v18 objectForKeyedSubscript:@"departureActualTime"];
    null4 = [MEMORY[0x277CBEB68] null];

    if (v58 != null4)
    {
      v60 = [v18 objectForKeyedSubscript:@"departureActualTime"];
      [v4 setObject:v60 forKeyedSubscript:@"departureActualTime"];
    }

    v61 = [v18 objectForKeyedSubscript:@"arrivalActualTime"];
    null5 = [MEMORY[0x277CBEB68] null];

    if (v61 != null5)
    {
      v63 = [v18 objectForKeyedSubscript:@"arrivalActualTime"];
      [v4 setObject:v63 forKeyedSubscript:@"arrivalActualTime"];
    }

    v64 = [v18 objectForKeyedSubscript:@"departureGate"];
    null6 = [MEMORY[0x277CBEB68] null];

    if (v64 != null6)
    {
      v66 = [v18 objectForKeyedSubscript:@"departureGate"];
      [v4 setObject:v66 forKeyedSubscript:@"departureGate"];
    }

    v67 = [v18 objectForKeyedSubscript:@"arrivalGate"];
    null7 = [MEMORY[0x277CBEB68] null];

    if (v67 != null7)
    {
      v69 = [v18 objectForKeyedSubscript:@"arrivalGate"];
      [v4 setObject:v69 forKeyedSubscript:@"arrivalGate"];
    }

    v114 = v19;
    v70 = [v18 objectForKeyedSubscript:@"departureTerminal"];
    null8 = [MEMORY[0x277CBEB68] null];

    if (v70 != null8)
    {
      v72 = [v18 objectForKeyedSubscript:@"departureTerminal"];
      [v4 setObject:v72 forKeyedSubscript:@"departureTerminal"];
    }

    v73 = v15;
    v74 = [v18 objectForKeyedSubscript:@"arrivalTerminal"];
    null9 = [MEMORY[0x277CBEB68] null];

    if (v74 != null9)
    {
      v76 = [v18 objectForKeyedSubscript:@"arrivalTerminal"];
      [v4 setObject:v76 forKeyedSubscript:@"arrivalTerminal"];
    }

    v77 = [v18 objectForKeyedSubscript:@"departureAirport"];
    v78 = [v18 objectForKeyedSubscript:@"arrivalAirport"];
    v79 = [v77 objectForKeyedSubscript:@"name"];
    null10 = [MEMORY[0x277CBEB68] null];

    if (v79 != null10)
    {
      v81 = [v77 objectForKeyedSubscript:@"name"];
      [v4 setObject:v81 forKeyedSubscript:@"departureAirportName"];
    }

    v82 = [v78 objectForKeyedSubscript:@"name"];
    null11 = [MEMORY[0x277CBEB68] null];

    if (v82 != null11)
    {
      v84 = [v78 objectForKeyedSubscript:@"name"];
      [v4 setObject:v84 forKeyedSubscript:@"arrivalAirportName"];
    }

    v85 = [v77 objectForKeyedSubscript:@"code"];
    null12 = [MEMORY[0x277CBEB68] null];

    if (v85 != null12)
    {
      v87 = [v77 objectForKeyedSubscript:@"code"];
      [v4 setObject:v87 forKeyedSubscript:@"departureAirportCode"];
    }

    v88 = [v78 objectForKeyedSubscript:@"code"];
    null13 = [MEMORY[0x277CBEB68] null];

    if (v88 != null13)
    {
      v90 = [v78 objectForKeyedSubscript:@"code"];
      [v4 setObject:v90 forKeyedSubscript:@"arrivalAirportCode"];
    }

    v20 = v4;

    v15 = v73;
    v19 = v114;
    goto LABEL_87;
  }

LABEL_84:
  v77 = sgEventsLogHandle();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478083;
    v124 = v107;
    v125 = 2113;
    v126 = v5;
    _os_log_error_impl(&dword_231E60000, v77, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: No flight information for departure date:%{private}@ & departureLocation:%{private}@ found, bailing", buf, 0x16u);
  }

  v20 = 0;
LABEL_87:

LABEL_88:
  dataCopy = v93;

LABEL_89:

  return v20;
}

+ (id)describeCategory:(unsigned __int8)category
{
  if (category > 6u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27894F0C8[category];
  }
}

+ (unsigned)messageEventCategoryForCategoryString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Flight"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Bus"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Train"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Hotel"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"Movie"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"GenericEvent"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)nilEntities:(id)entities
{
  v21 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = entitiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        first = [v10 first];

        if (!first)
        {
          second = [v10 second];

          if (second)
          {
            second2 = [v10 second];
            [v4 addObject:second2];
          }

          else
          {
            second2 = sgEventsLogHandle();
            if (os_log_type_enabled(second2, OS_LOG_TYPE_ERROR))
            {
              *v15 = 0;
              _os_log_error_impl(&dword_231E60000, second2, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: No name for missing entity", v15, 2u);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)tupleWithEntity:(id)entity label:(id)label
{
  v5 = MEMORY[0x277D42648];
  labelCopy = label;
  entityCopy = entity;
  v8 = [[v5 alloc] initWithFirst:entityCopy second:labelCopy];

  return v8;
}

+ (id)dateFromString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v5 = [v4 dateFromString:stringCopy];

  return v5;
}

+ (id)enrichmentsFromSchema:(id)schema forMessage:(id)message forEntity:(id)entity category:(id)category
{
  v39[1] = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  messageCopy = message;
  entityCopy = entity;
  categoryCopy = category;
  v13 = [objc_opt_class() messageEventCategoryForCategoryString:categoryCopy];

  if ((v13 - 1) < 5)
  {
    v14 = objc_opt_new();
    v39[0] = schemaCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v16 = [v14 enrichmentsFromSchemas:v15 inTextMessage:messageCopy parentEntity:entityCopy];

LABEL_3:
    v16 = v16;
    v17 = v16;
    goto LABEL_4;
  }

  if (v13 != 6)
  {
    v16 = 0;
    goto LABEL_3;
  }

  v19 = [schemaCopy objectForKeyedSubscript:@"reservationFor"];
  v20 = [v19 objectForKeyedSubscript:@"name"];
  v21 = objc_opt_class();
  v22 = [v19 objectForKeyedSubscript:@"startDate"];
  v23 = [v21 dateFromString:v22];

  v24 = objc_opt_class();
  v25 = [v19 objectForKeyedSubscript:@"endDate"];
  v26 = [v24 dateFromString:v25];

  v16 = 0;
  v27 = 0;
  if (v23 && v26)
  {
    if ([v23 compare:v26] == 1)
    {
      v27 = 0;
      v16 = 0;
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v29 = [v19 objectForKeyedSubscript:@"startDate"];
      v30 = [v19 objectForKeyedSubscript:@"endDate"];
      v36 = [v28 initWithFormat:@"GenericEvent|%@|%@|%@", v20, v29, v30];
      v37 = v20;

      duplicateKey = [entityCopy duplicateKey];
      v35 = [SGDuplicateKey duplicateKeyForPseudoEventWithGroupId:v36 parentKey:duplicateKey];

      v32 = [[SGPipelineEnrichment alloc] initWithDuplicateKey:v35 title:v20 parent:entityCopy];
      v27 = 1;
      [(SGEntity *)v32 setState:1];
      v33 = [MEMORY[0x277D020E8] floatingRangeWithLocalStartDate:v23 endDate:v26];
      [(SGEntity *)v32 setTimeRange:v33];
      [(SGEntity *)v32 setTitle:v37];
      [entityCopy creationTimestamp];
      [(SGPipelineEnrichment *)v32 setCreationTimestamp:?];
      [entityCopy lastModifiedTimestamp];
      [(SGPipelineEnrichment *)v32 setLastModifiedTimestamp:?];
      extractedEvent = [MEMORY[0x277D01FA0] extractedEvent];
      [(SGEntity *)v32 addTag:extractedEvent];

      v38 = v32;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];

      v20 = v37;
    }
  }

  if (v27)
  {
    goto LABEL_3;
  }

  v17 = 0;
LABEL_4:

  return v17;
}

+ (id)fallbackSchemaForGenericEventWithTitle:(id)title startDate:(id)date endDate:(id)endDate
{
  v17[4] = *MEMORY[0x277D85DE8];
  v16[0] = @"@context";
  v16[1] = @"@type";
  v17[0] = @"http://schema.org";
  v17[1] = @"http://schema.org/EventReservation";
  v17[2] = @"http://schema.org/ReservationConfirmed";
  v16[2] = @"reservationStatus";
  v16[3] = @"reservationFor";
  v14[0] = @"@type";
  v14[1] = @"name";
  v15[0] = @"http://schema.org/Event";
  v15[1] = title;
  v14[2] = @"startDate";
  v14[3] = @"endDate";
  v15[2] = date;
  v15[3] = endDate;
  v7 = MEMORY[0x277CBEAC0];
  endDateCopy = endDate;
  dateCopy = date;
  titleCopy = title;
  v11 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:4];
  v17[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v12;
}

+ (id)schemaOrgAndMissingEntitiesForExtractedEvent:(id)event
{
  v177[5] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
  v8 = [v6 messageEventCategoryForCategoryString:v7];

  v9 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__CATEGORY"];
  [v5 setObject:v9 forKeyedSubscript:@"category"];

  v10 = 0;
  if (v8 > 2)
  {
    if (v8 <= 4)
    {
      if (v8 != 3)
      {
        v11 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__NAME"];
        v133 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
        v12 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
        v13 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT"];
        bOOLValue = [v13 BOOLValue];

        v15 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
        v16 = v15;
        if (v11 && v133 && v12 && bOOLValue)
        {
          v164[0] = @"http://schema.org";
          v164[1] = @"http://schema.org/LodgingReservation";
          v163[0] = @"@context";
          v163[1] = @"@type";
          v163[2] = @"checkinTime";
          v163[3] = @"checkoutTime";
          v164[2] = v133;
          v164[3] = v12;
          v164[4] = @"http://schema.org/ReservationConfirmed";
          v163[4] = @"reservationStatus";
          v163[5] = @"reservationFor";
          v161[0] = @"@type";
          v161[1] = @"name";
          v162[0] = @"http://schema.org/LodgingBusiness";
          v162[1] = v11;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
          v164[5] = v17;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:6];
        }

        else
        {
          if (!v15 || !v133 || !v12)
          {
            v94 = objc_opt_class();
            v95 = [objc_opt_class() tupleWithEntity:v11 label:@"name"];
            v160[0] = v95;
            v96 = [objc_opt_class() tupleWithEntity:v133 label:@"startDate"];
            v160[1] = v96;
            v97 = [objc_opt_class() tupleWithEntity:v12 label:@"endDate"];
            v160[2] = v97;
            v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:3];
            v30 = [v94 nilEntities:v98];

            v17 = sgEventsLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v108 = [v30 _pas_componentsJoinedByString:{@", "}];
              *buf = 138412290;
              v166 = v108;
              _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);
            }

            v10 = 0;
            goto LABEL_120;
          }

          v72 = sgEventsLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            v109 = [objc_opt_class() describeCategory:4];
            *buf = 138412290;
            v166 = v109;
            _os_log_debug_impl(&dword_231E60000, v72, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);
          }

          v10 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v16 startDate:v133 endDate:v12];
          v17 = [objc_opt_class() describeCategory:6];
          [v5 setObject:v17 forKeyedSubscript:@"category"];
        }

        v30 = 0;
LABEL_120:

        goto LABEL_124;
      }

      v11 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION"];
      v133 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION"];
      v12 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
      v18 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
      v34 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT"];
      bOOLValue2 = [v34 BOOLValue];

      v36 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
      v22 = v36;
      if (v11 && v133 && v12 && v18 && bOOLValue2)
      {
        v149[0] = @"@context";
        v149[1] = @"@type";
        v150[0] = @"http://schema.org";
        v150[1] = @"http://schema.org/TrainReservation";
        v150[2] = @"http://schema.org/ReservationConfirmed";
        v149[2] = @"reservationStatus";
        v149[3] = @"reservationFor";
        v148[0] = @"http://schema.org/TrainTrip";
        v147[0] = @"@type";
        v147[1] = @"departureStation";
        v130 = v5;
        v37 = v36;
        v38 = v12;
        v39 = v18;
        v145[0] = @"@type";
        v145[1] = @"name";
        v146[0] = @"http://schema.org/TrainStation";
        v146[1] = v11;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];
        v148[1] = v25;
        v148[2] = v38;
        v147[2] = @"departureTime";
        v147[3] = @"arrivalStation";
        v143[0] = @"@type";
        v143[1] = @"name";
        v144[0] = @"http://schema.org/TrainStation";
        v144[1] = v133;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:2];
        v147[4] = @"arrivalTime";
        v148[3] = v26;
        v148[4] = v18;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:5];
        v150[3] = v40;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:4];

        v18 = v39;
        v12 = v38;
        v22 = v37;
        v5 = v130;
        goto LABEL_31;
      }

      if (v36 && v12 && v18)
      {
        v69 = sgEventsLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v70 = [objc_opt_class() describeCategory:3];
          *buf = 138412290;
          v166 = v70;
LABEL_135:
          _os_log_debug_impl(&dword_231E60000, v69, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);

          goto LABEL_96;
        }

        goto LABEL_96;
      }

      v85 = objc_opt_class();
      v127 = [objc_opt_class() tupleWithEntity:v11 label:@"departureStation"];
      v142[0] = v127;
      v124 = [objc_opt_class() tupleWithEntity:v133 label:@"arrivalStation"];
      v142[1] = v124;
      v86 = [objc_opt_class() tupleWithEntity:v12 label:@"startDate"];
      v142[2] = v86;
      v132 = v18;
      v87 = [objc_opt_class() tupleWithEntity:v18 label:@"endDate"];
      v142[3] = v87;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:4];
      v30 = [v85 nilEntities:v88];

      v25 = sgEventsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v89 = [v30 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v166 = v89;
LABEL_133:
        _os_log_error_impl(&dword_231E60000, v25, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);

        goto LABEL_122;
      }

      goto LABEL_122;
    }

    if (v8 != 5)
    {
      if (v8 != 6)
      {
        goto LABEL_129;
      }

      v11 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
      v133 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
      v12 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
      v28 = objc_opt_class();
      v29 = v28;
      if (v11 && v133 && v12)
      {
        v10 = [v28 fallbackSchemaForGenericEventWithTitle:v11 startDate:v133 endDate:v12];
        v30 = 0;
      }

      else
      {
        v73 = [objc_opt_class() tupleWithEntity:v11 label:@"name"];
        v136[0] = v73;
        v74 = [objc_opt_class() tupleWithEntity:v133 label:@"startDate"];
        v136[1] = v74;
        v75 = [objc_opt_class() tupleWithEntity:v12 label:@"endDate"];
        v136[2] = v75;
        v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:3];
        v30 = [v29 nilEntities:v76];

        v77 = sgEventsLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v104 = [v30 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v166 = v104;
          _os_log_error_impl(&dword_231E60000, v77, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);
        }

        v10 = 0;
      }

      goto LABEL_124;
    }

    v11 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__NAME"];
    v133 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
    v12 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
    v41 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
    v42 = v41;
    if (v11 && v133)
    {
      v140[0] = @"@context";
      v140[1] = @"@type";
      v141[0] = @"http://schema.org";
      v141[1] = @"http://schema.org/EventReservation";
      v141[2] = @"http://schema.org/ReservationConfirmed";
      v140[2] = @"reservationStatus";
      v140[3] = @"reservationFor";
      v138[0] = @"@type";
      v138[1] = @"name";
      v139[0] = @"http://schema.org/ScreeningEvent";
      v139[1] = v11;
      v138[2] = @"startDate";
      v139[2] = v133;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:3];
      v141[3] = v43;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:4];
    }

    else
    {
      if (!v41 || !v133 || !v12)
      {
        v90 = objc_opt_class();
        v91 = [objc_opt_class() tupleWithEntity:v11 label:@"name"];
        v137[0] = v91;
        v92 = [objc_opt_class() tupleWithEntity:v133 label:@"startDate"];
        v137[1] = v92;
        v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:2];
        v30 = [v90 nilEntities:v93];

        v43 = sgEventsLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v106 = [v30 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v166 = v106;
          _os_log_error_impl(&dword_231E60000, v43, OS_LOG_TYPE_ERROR, "SGMessageEventDissector: Missing entities for message event extraction: %@", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_115;
      }

      v71 = sgEventsLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v107 = [objc_opt_class() describeCategory:5];
        *buf = 138412290;
        v166 = v107;
        _os_log_debug_impl(&dword_231E60000, v71, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);
      }

      v10 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v42 startDate:v133 endDate:v12];
      v43 = [objc_opt_class() describeCategory:6];
      [v5 setObject:v43 forKeyedSubscript:@"category"];
    }

    v30 = 0;
LABEL_115:

    goto LABEL_116;
  }

  if (v8)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_129;
      }

      v11 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__DEPARTURE_LOCATION"];
      v133 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__ARRIVAL_LOCATION"];
      v12 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
      v18 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
      v19 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME_IS_SIGNIFICANT"];
      bOOLValue3 = [v19 BOOLValue];

      v21 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
      v22 = v21;
      if (v11 && v133 && v12 && v18 && bOOLValue3)
      {
        v158[0] = @"@context";
        v158[1] = @"@type";
        v159[0] = @"http://schema.org";
        v159[1] = @"http://schema.org/BusReservation";
        v159[2] = @"http://schema.org/ReservationConfirmed";
        v158[2] = @"reservationStatus";
        v158[3] = @"reservationFor";
        v157[0] = @"http://schema.org/BusTrip";
        v156[0] = @"@type";
        v156[1] = @"departureBusStop";
        v129 = v21;
        v23 = v11;
        v24 = v18;
        v154[0] = @"@type";
        v154[1] = @"name";
        v155[0] = @"http://schema.org/BusStop";
        v155[1] = v23;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:2];
        v157[1] = v25;
        v157[2] = v12;
        v156[2] = @"departureTime";
        v156[3] = @"arrivalBusStop";
        v152[0] = @"@type";
        v152[1] = @"name";
        v153[0] = @"http://schema.org/BusStop";
        v153[1] = v133;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:2];
        v156[4] = @"arrivalTime";
        v157[3] = v26;
        v157[4] = v18;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:5];
        v159[3] = v27;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:4];

        v18 = v24;
        v11 = v23;
        v22 = v129;
LABEL_31:

LABEL_97:
        v30 = 0;
LABEL_123:

        goto LABEL_124;
      }

      if (v21 && v12 && v18)
      {
        v69 = sgEventsLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v70 = [objc_opt_class() describeCategory:2];
          *buf = 138412290;
          v166 = v70;
          goto LABEL_135;
        }

LABEL_96:

        v10 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v22 startDate:v12 endDate:v18];
        v25 = [objc_opt_class() describeCategory:6];
        [v5 setObject:v25 forKeyedSubscript:@"category"];
        goto LABEL_97;
      }

      v99 = objc_opt_class();
      v128 = [objc_opt_class() tupleWithEntity:v11 label:@"departureBusStop"];
      v151[0] = v128;
      v125 = [objc_opt_class() tupleWithEntity:v133 label:@"arrivalBusStop"];
      v151[1] = v125;
      v100 = [objc_opt_class() tupleWithEntity:v12 label:@"startDate"];
      v151[2] = v100;
      v132 = v18;
      v101 = [objc_opt_class() tupleWithEntity:v18 label:@"endDate"];
      v151[3] = v101;
      v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
      v30 = [v99 nilEntities:v102];

      v25 = sgEventsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v89 = [v30 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v166 = v89;
        goto LABEL_133;
      }

LABEL_122:
      v10 = 0;
      v18 = v132;
      goto LABEL_123;
    }

    v44 = objc_autoreleasePoolPush();
    v11 = [self getFlightInformationForFlightEventData:eventCopy];
    objc_autoreleasePoolPop(v44);
    if (v11)
    {
      v45 = [v11 objectForKeyedSubscript:@"carrierCode"];
      v115 = [v11 objectForKeyedSubscript:@"carrierName"];
      v46 = [v11 objectForKeyedSubscript:@"flightNumber"];
      v113 = [v11 objectForKeyedSubscript:@"reservationId"];
      v47 = [v11 objectForKeyedSubscript:@"departureActualTime"];
      v48 = [v11 objectForKeyedSubscript:@"arrivalActualTime"];
      v121 = [v11 objectForKeyedSubscript:@"departureAirportName"];
      v120 = [v11 objectForKeyedSubscript:@"arrivalAirportName"];
      v49 = [v11 objectForKeyedSubscript:@"departureAirportCode"];
      v50 = [v11 objectForKeyedSubscript:@"arrivalAirportCode"];
      v119 = [v11 objectForKeyedSubscript:@"departureGate"];
      v118 = [v11 objectForKeyedSubscript:@"arrivalGate"];
      v117 = [v11 objectForKeyedSubscript:@"departureTerminal"];
      v116 = [v11 objectForKeyedSubscript:@"arrivalTerminal"];
      v131 = v47;
      v134 = v46;
      if (v45)
      {
        v51 = v46 == 0;
      }

      else
      {
        v51 = 1;
      }

      v52 = v51 || v47 == 0;
      v123 = v49;
      v126 = v48;
      v54 = v52 || v48 == 0 || v49 == 0;
      v122 = v50;
      v55 = v54 || v50 == 0;
      v56 = !v55;
      v112 = v56;
      v114 = v45;
      if (v55)
      {
        v78 = objc_opt_class();
        v111 = [objc_opt_class() tupleWithEntity:v45 label:@"carrierCode"];
        v167[0] = v111;
        v110 = [objc_opt_class() tupleWithEntity:v134 label:@"flightNumber"];
        v167[1] = v110;
        v62 = [objc_opt_class() tupleWithEntity:v47 label:@"departureTime"];
        v167[2] = v62;
        v66 = [objc_opt_class() tupleWithEntity:v48 label:@"arrivalTime"];
        v167[3] = v66;
        v79 = [objc_opt_class() tupleWithEntity:v49 label:@"departureAirportCode"];
        v167[4] = v79;
        v80 = [objc_opt_class() tupleWithEntity:v50 label:@"arrivalAirportCode"];
        v167[5] = v80;
        v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:6];
        v30 = [v78 nilEntities:v81];

        v10 = 0;
        v67 = v113;
      }

      else
      {
        v176[0] = @"@context";
        v176[1] = @"@type";
        v177[0] = @"http://schema.org";
        v177[1] = @"http://schema.org/FlightReservation";
        v176[2] = @"reservationFor";
        v175[0] = @"http://schema.org/Flight";
        v174[0] = @"@type";
        v174[1] = @"airline";
        v172[0] = @"@type";
        v172[1] = @"iataCode";
        v173[0] = @"http://schema.org/Airline";
        v173[1] = v45;
        v172[2] = @"name";
        v57 = v115;
        if (!v115)
        {
          v57 = &stru_284703F00;
        }

        v173[2] = v57;
        v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:3];
        v175[1] = v111;
        v174[2] = @"arrivalAirport";
        v170[0] = @"@type";
        v170[1] = @"iataCode";
        v171[0] = @"http://schema.org/Airport";
        v171[1] = v50;
        v170[2] = @"name";
        v58 = v120;
        if (!v120)
        {
          v58 = &stru_284703F00;
        }

        v171[2] = v58;
        v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:3];
        v175[2] = v110;
        v175[3] = v48;
        v174[3] = @"arrivalTime";
        v174[4] = @"arrivalGate";
        v59 = v118;
        if (!v118)
        {
          v59 = &stru_284703F00;
        }

        v60 = v116;
        if (!v116)
        {
          v60 = &stru_284703F00;
        }

        v175[4] = v59;
        v175[5] = v60;
        v174[5] = @"arrivalTerminal";
        v174[6] = @"departureAirport";
        v168[0] = @"@type";
        v168[1] = @"iataCode";
        v169[0] = @"http://schema.org/Airport";
        v169[1] = v49;
        v168[2] = @"name";
        v61 = v121;
        if (!v121)
        {
          v61 = &stru_284703F00;
        }

        v169[2] = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:3];
        v175[6] = v62;
        v175[7] = v47;
        v174[7] = @"departureTime";
        v174[8] = @"departureGate";
        v63 = v119;
        if (!v119)
        {
          v63 = &stru_284703F00;
        }

        v64 = v117;
        if (!v117)
        {
          v64 = &stru_284703F00;
        }

        v175[8] = v63;
        v175[9] = v64;
        v174[9] = @"departureTerminal";
        v174[10] = @"flightNumber";
        v175[10] = v46;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:11];
        v66 = v65;
        v67 = v113;
        if (v113)
        {
          v68 = v113;
        }

        else
        {
          v68 = &stru_284703F00;
        }

        v177[2] = v65;
        v177[3] = v68;
        v176[3] = @"reservationId";
        v176[4] = @"reservationStatus";
        v177[4] = @"http://schema.org/ReservationConfirmed";
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:5];
        v30 = 0;
      }

      if (v112)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v10 = 0;
      v30 = 0;
    }

    v133 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__START_DATETIME"];
    v12 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__END_DATETIME"];
    v42 = [eventCopy objectForKeyedSubscript:@"EventMetaDataExtractor_ML_EVENT__TITLE"];
    if (v42 && v133 && v12)
    {
      v82 = sgEventsLogHandle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        v105 = [objc_opt_class() describeCategory:1];
        *buf = 138412290;
        v166 = v105;
        _os_log_debug_impl(&dword_231E60000, v82, OS_LOG_TYPE_DEBUG, "SGMessageEventDissector: Using fallback schema for generic event for category: %@", buf, 0xCu);
      }

      v83 = [objc_opt_class() fallbackSchemaForGenericEventWithTitle:v42 startDate:v133 endDate:v12];

      v84 = [objc_opt_class() describeCategory:6];
      [v5 setObject:v84 forKeyedSubscript:@"category"];

      v10 = v83;
    }

LABEL_116:

LABEL_124:
LABEL_125:

    if (v10)
    {
      [v5 setObject:v10 forKeyedSubscript:@"schema"];
    }

    goto LABEL_127;
  }

  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v32 = [objc_opt_class() describeCategory:0];
  v33 = [v31 initWithFormat:@"Unsupported category: %@", v32];
  v135 = v33;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];

  v10 = 0;
LABEL_127:
  if (v30)
  {
    [v5 setObject:v30 forKeyedSubscript:@"missingEntities"];
  }

LABEL_129:

  return v5;
}

+ (id)loadLazyPlistWithBasename:(id)basename
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [basename stringByAppendingPathExtension:@"plplist"];
  if (!v3)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v4 = +[SGAsset regionAsset];
  v5 = [v4 filesystemPathForAssetDataRelativePath:v3];

  if (_os_feature_enabled_impl())
  {
    v6 = +[SGAsset localeAsset];
    v7 = [v6 filesystemPathForAssetDataRelativePath:v3];

    v5 = v7;
  }

  if (!v5)
  {
    v9 = sgEventsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v3;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Unable to resolve path: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v13 = 0;
  v8 = [MEMORY[0x277D425D8] dictionaryWithPath:v5 error:&v13];
  v9 = v13;
  if (!v8)
  {
    v10 = sgEventsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
    }

LABEL_12:
    v8 = 0;
  }

  v11 = v8;
LABEL_14:

  return v11;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken3_21944 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3_21944, &__block_literal_global_21945);
  }

  v3 = sharedInstance__pasExprOnceResult_21946;

  return v3;
}

void __41__SGMessageEventDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGMessageEventDissector alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_21946;
  sharedInstance__pasExprOnceResult_21946 = v1;

  objc_autoreleasePoolPop(v0);
}

@end