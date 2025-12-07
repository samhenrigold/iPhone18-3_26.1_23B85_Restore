@interface ATXBlendingLayerSessionLogger
- (ATXBlendingLayerSessionLogger)init;
- (ATXBlendingLayerSessionLogger)initWithTracker:(id)tracker hyperParameters:(id)parameters;
- (BOOL)logCurrentSessionIfPossible;
- (BOOL)shouldLogSession;
- (NSDate)now;
- (id)clientModelCacheUpdatesFromBlendingCacheUpdate:(id)update;
- (id)clientModelPublisher;
- (id)generateSessionLog;
- (id)orderedMergeERMBlendingContextUIPublisher;
- (id)sessionBlendingUpdateFromBlendingUICacheUpdate:(id)update deviceContext:(id)context;
- (id)sessionClientModelUpdatesForUICacheUpdate:(id)update;
- (id)sessionDeviceContextFromPredictionContext:(id)context;
- (id)sessionERMEventFromERMEvent:(id)event;
- (id)sessionSuggestionFromProactiveSuggestion:(id)suggestion;
- (id)sessionUICacheForUICacheUpdate:(id)update;
- (int)locationTypeFromLocationOfInterest:(id)interest;
@end

@implementation ATXBlendingLayerSessionLogger

- (BOOL)logCurrentSessionIfPossible
{
  v19 = *MEMORY[0x277D85DE8];
  shouldLogSession = [(ATXBlendingLayerSessionLogger *)self shouldLogSession];
  v5 = shouldLogSession;
  v6 = __atxlog_handle_blending(shouldLogSession);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Logging session because logger said we can.", &v17, 2u);
    }

    sel_getName(a2);
    v6 = os_transaction_create();
    generateSessionLog = [(ATXBlendingLayerSessionLogger *)self generateSessionLog];
    v9 = __atxlog_handle_blending(generateSessionLog);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = generateSessionLog;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "SessionLog: %@", &v17, 0xCu);
    }

    blendingUpdates = [generateSessionLog blendingUpdates];
    if ([blendingUpdates count])
    {
    }

    else
    {
      ermEvents = [generateSessionLog ermEvents];
      v13 = [ermEvents count];

      if (!v13)
      {
        v16 = __atxlog_handle_blending(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Not forwarding session log proto to PET because it was empty", &v17, 2u);
        }

        v11 = 0;
        goto LABEL_13;
      }
    }

    [(ATXBlendingLayerSessionLogger *)self logSessionLogToPET:generateSessionLog];
    v11 = 1;
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Not logging session because session logger said not to.", &v17, 2u);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)shouldLogSession
{
  [(ATXBlendingLayerHyperParameters *)self->_hyperParameters sessionLogSamplingRate];

  return [_ATXAggregateLogger yesWithProbability:?];
}

- (ATXBlendingLayerSessionLogger)init
{
  v3 = objc_opt_new();
  mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
  v5 = [(ATXBlendingLayerSessionLogger *)self initWithTracker:v3 hyperParameters:mEMORY[0x277D41B98]];

  return v5;
}

- (ATXBlendingLayerSessionLogger)initWithTracker:(id)tracker hyperParameters:(id)parameters
{
  trackerCopy = tracker;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = ATXBlendingLayerSessionLogger;
  v9 = [(ATXBlendingLayerSessionLogger *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tracker, tracker);
    objc_storeStrong(&v10->_hyperParameters, parameters);
    v11 = objc_opt_new();
    mostRecentBlendingCacheUpdateByConsumerSubType = v10->_mostRecentBlendingCacheUpdateByConsumerSubType;
    v10->_mostRecentBlendingCacheUpdateByConsumerSubType = v11;
  }

  return v10;
}

- (id)generateSessionLog
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  orderedMergeERMBlendingContextUIPublisher = [(ATXBlendingLayerSessionLogger *)self orderedMergeERMBlendingContextUIPublisher];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __51__ATXBlendingLayerSessionLogger_generateSessionLog__block_invoke_2;
  v16 = &unk_27859BEC8;
  selfCopy = self;
  v18 = v4;
  v19 = v6;
  v20 = v5;
  v8 = v5;
  v9 = v6;
  v10 = v4;
  v11 = [orderedMergeERMBlendingContextUIPublisher sinkWithCompletion:&__block_literal_global_98 receiveInput:&v13];
  [v3 setErmEvents:{v10, v13, v14, v15, v16, selfCopy}];
  [v3 setBlendingUpdates:v8];

  return v3;
}

void __51__ATXBlendingLayerSessionLogger_generateSessionLog__block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = MEMORY[0x277CCABB0];
    v6 = v3;
    v7 = [v5 numberWithUnsignedChar:{objc_msgSend(v6, "consumerSubType")}];
    [v4 setObject:v6 forKey:v7];

LABEL_3:
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(a1 + 32) + 16), v3);
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v3 homeScreenEvent];
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = v8;

    goto LABEL_23;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ([*(a1 + 40) count] > 0x13)
    {
      goto LABEL_23;
    }

    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) sessionERMEventFromERMEvent:v3];
    [v12 addObject:v13];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [*(*(a1 + 32) + 8) allValues];
    v14 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v7);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = *(a1 + 48);
          v20 = [v18 uuid];
          LOBYTE(v19) = [v19 containsObject:v20];

          if ((v19 & 1) == 0)
          {
            v21 = [*(a1 + 32) sessionBlendingUpdateFromBlendingUICacheUpdate:v18 deviceContext:*(*(a1 + 32) + 16)];
            [*(a1 + 56) addObject:v21];
            v22 = *(a1 + 48);
            v23 = [v18 uuid];
            [v22 addObject:v23];
          }
        }

        v15 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    goto LABEL_3;
  }

  v24 = __atxlog_handle_blending(isKindOfClass);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    __51__ATXBlendingLayerSessionLogger_generateSessionLog__block_invoke_2_cold_1(v24);
  }

LABEL_23:
}

- (id)orderedMergeERMBlendingContextUIPublisher
{
  v27[3] = *MEMORY[0x277D85DE8];
  if (self->_ermEvents)
  {
    v3 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:self->_ermEvents];
  }

  else
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1200.0];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v3 = [v4 publisherFromStartTime:v7];
  }

  if (self->_blendingEvents)
  {
    v8 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:self->_blendingEvents];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2400.0];
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;

    v8 = [v9 publisherFromStartTime:v12];
  }

  if (self->_predictionContextEvents)
  {
    v13 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:self->_predictionContextEvents];
  }

  else
  {
    v14 = objc_opt_new();
    v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2400.0];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;

    v13 = [v14 publisherFromStartTime:v17];
  }

  if (self->_uiEvents)
  {
    v18 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:self->_uiEvents];
  }

  else
  {
    v19 = objc_opt_new();
    v20 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2400.0];
    [v20 timeIntervalSinceReferenceDate];
    v22 = v21;

    v18 = [v19 genericEventPublisherFromStartTime:v22];
  }

  v23 = [v18 filterWithIsIncluded:&__block_literal_global_36_1];
  v27[0] = v8;
  v27[1] = v13;
  v27[2] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v25 = [v3 orderedMergeWithOthers:v24 comparator:&__block_literal_global_40_0];

  return v25;
}

uint64_t __74__ATXBlendingLayerSessionLogger_orderedMergeERMBlendingContextUIPublisher__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 homeScreenEvent];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 eventTypeString];
      v6 = [v5 isEqualToString:@"DeviceLocked"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __74__ATXBlendingLayerSessionLogger_orderedMergeERMBlendingContextUIPublisher__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)sessionERMEventFromERMEvent:(id)event
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_opt_new();
  entry = [eventCopy entry];
  engagementRecordType = [entry engagementRecordType];

  if (engagementRecordType <= 119)
  {
    if (engagementRecordType > 7)
    {
      if (engagementRecordType <= 31)
      {
        if (engagementRecordType == 8)
        {
          v9 = MEMORY[0x277CEBCF0];
          v10 = 36;
        }

        else
        {
          if (engagementRecordType != 16)
          {
            goto LABEL_32;
          }

          v9 = MEMORY[0x277CEBCF0];
          v10 = 37;
        }

        goto LABEL_24;
      }

      if (engagementRecordType != 32)
      {
        if (engagementRecordType != 64)
        {
          goto LABEL_32;
        }

        v9 = MEMORY[0x277CEBCF0];
        v10 = 35;
        goto LABEL_24;
      }

LABEL_23:
      v9 = MEMORY[0x277CEBCF0];
      v10 = 21;
LABEL_24:
      v13 = [v9 stringForConsumerSubtype:v10];
      [v5 setConsumerSubType:v13];

      goto LABEL_25;
    }

    if (engagementRecordType == 1)
    {
      v11 = v5;
      v12 = 0;
      goto LABEL_26;
    }

    if (engagementRecordType != 2)
    {
      if (engagementRecordType != 4)
      {
        goto LABEL_32;
      }

      v11 = v5;
      v12 = 3;
      goto LABEL_26;
    }

LABEL_25:
    v11 = v5;
    v12 = 1;
LABEL_26:
    [v11 setEngagementType:v12];
    goto LABEL_32;
  }

  if (engagementRecordType > 255)
  {
    if (engagementRecordType <= 895)
    {
      if (engagementRecordType == 256 || engagementRecordType == 512)
      {
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    if (engagementRecordType != 896 && engagementRecordType != 1021)
    {
      goto LABEL_32;
    }

LABEL_29:
    v14 = __atxlog_handle_blending(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXBlendingLayerSessionLogger *)eventCopy sessionERMEventFromERMEvent:v14];
    }

    goto LABEL_32;
  }

  switch(engagementRecordType)
  {
    case 120:
      goto LABEL_25;
    case 121:
      goto LABEL_29;
    case 128:
      goto LABEL_23;
  }

LABEL_32:
  v15 = MEMORY[0x277D42068];
  entry2 = [eventCopy entry];
  executable = [entry2 executable];
  object = [executable object];
  v19 = [v15 genericStringForExecutableObject:object];
  [v5 setExecutableId:v19];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [(NSMutableDictionary *)self->_mostRecentBlendingCacheUpdateByConsumerSubType allValues];
  v21 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(allValues);
        }

        uuid = [*(*(&v28 + 1) + 8 * i) uuid];
        uUIDString = [uuid UUIDString];
        [v5 addBlendingUpdateUUID:uUIDString];
      }

      v22 = [allValues countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  return v5;
}

- (id)sessionBlendingUpdateFromBlendingUICacheUpdate:(id)update deviceContext:(id)context
{
  updateCopy = update;
  contextCopy = context;
  v8 = objc_opt_new();
  uuid = [updateCopy uuid];
  uUIDString = [uuid UUIDString];
  [v8 setBlendingUpdateUUID:uUIDString];

  abGroup = [(ATXBlendingLayerHyperParameters *)self->_hyperParameters abGroup];
  [v8 setBlendingABGroup:abGroup];

  v12 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(updateCopy, "consumerSubType")}];
  [v8 setConsumerSubType:v12];

  v13 = [(ATXBlendingLayerSessionLogger *)self sessionClientModelUpdatesForUICacheUpdate:updateCopy];
  [v8 setClientModelUpdates:v13];

  v14 = [(ATXBlendingLayerSessionLogger *)self sessionUICacheForUICacheUpdate:updateCopy];
  [v8 setUiCache:v14];

  v15 = [(ATXBlendingLayerSessionLogger *)self sessionDeviceContextFromPredictionContext:contextCopy];
  [v8 setDeviceContext:v15];

  if (contextCopy)
  {
    cacheCreationDate = [updateCopy cacheCreationDate];
    timeContext = [contextCopy timeContext];
    date = [timeContext date];
    [cacheCreationDate timeIntervalSinceDate:date];
    v20 = v19;
    deviceContext = [v8 deviceContext];
    [deviceContext setSecondsBeforeBlendingUpdate:v20];
  }

  else
  {
    cacheCreationDate = [v8 deviceContext];
    [cacheCreationDate setSecondsBeforeBlendingUpdate:0.0];
  }

  return v8;
}

- (int)locationTypeFromLocationOfInterest:(id)interest
{
  interestCopy = interest;
  v4 = interestCopy;
  if (interestCopy && (v5 = [interestCopy type], v5 <= 3))
  {
    v6 = dword_226871FD0[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sessionDeviceContextFromPredictionContext:(id)context
{
  contextCopy = context;
  date = [(ATXHomeScreenEvent *)self->_mostRecentScreenLockEvent date];
  if (date)
  {
    v6 = [(ATXBlendingLayerSessionLogger *)self now];
    [v6 timeIntervalSinceDate:date];
    v8 = v7 > 3600.0;

    v9 = [(ATXBlendingLayerSessionLogger *)self now];
    [v9 timeIntervalSinceDate:date];
    v11 = v10 > 1800.0;
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  v12 = objc_opt_new();
  [v12 setLastUnlockMoreThan1HourAgo:v8];
  [v12 setLastUnlockMoreThan30MinutesAgo:v11];
  locationMotionContext = [contextCopy locationMotionContext];
  currentLOI = [locationMotionContext currentLOI];
  [v12 setCurrentLOIType:{-[ATXBlendingLayerSessionLogger locationTypeFromLocationOfInterest:](self, "locationTypeFromLocationOfInterest:", currentLOI)}];

  if (contextCopy)
  {
    timeContext = [contextCopy timeContext];
    [v12 setDayOfWeek:{objc_msgSend(timeContext, "dayOfWeek")}];

    timeContext2 = [contextCopy timeContext];
    [v12 setTimeOfDay:{objc_msgSend(timeContext2, "timeOfDay")}];

    timeContext3 = [contextCopy timeContext];
    [v12 setDateInWeekend:{objc_msgSend(timeContext3, "dateInWeekend")}];
  }

  else
  {
    timeContext3 = [(ATXBlendingLayerSessionLogger *)self now];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v19 = [currentCalendar components:544 fromDate:timeContext3];
    [v12 setDayOfWeek:{objc_msgSend(v19, "weekday") - 1}];
    [v12 setTimeOfDay:{objc_msgSend(v19, "hour")}];
    [v12 setDateInWeekend:{objc_msgSend(currentCalendar, "isDateInWeekend:", timeContext3)}];
  }

  return v12;
}

- (id)sessionClientModelUpdatesForUICacheUpdate:(id)update
{
  v43 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v29 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = updateCopy;
  obj = [(ATXBlendingLayerSessionLogger *)self clientModelCacheUpdatesFromBlendingCacheUpdate:updateCopy];
  v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v30)
  {
    v28 = *v38;
    do
    {
      v5 = 0;
      do
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v37 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = objc_opt_new();
        clientModelId = [v6 clientModelId];
        [v7 setClientModelId:clientModelId];

        suggestions = [v6 suggestions];
        firstObject = [suggestions firstObject];
        clientModelSpecification = [firstObject clientModelSpecification];
        clientModelVersion = [clientModelSpecification clientModelVersion];
        v13 = clientModelVersion;
        if (clientModelVersion)
        {
          v14 = clientModelVersion;
        }

        else
        {
          v14 = @"EmptyPredictions";
        }

        [v7 setClientModelVersion:v14];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        suggestions2 = [v6 suggestions];
        v16 = [suggestions2 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(suggestions2);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              v21 = objc_autoreleasePoolPush();
              suggestions3 = [v7 suggestions];
              v23 = [suggestions3 count];

              if (v23 <= 0x13)
              {
                v24 = [(ATXBlendingLayerSessionLogger *)self sessionSuggestionFromProactiveSuggestion:v20];
                [v7 addSuggestion:v24];
              }

              objc_autoreleasePoolPop(v21);
            }

            v17 = [suggestions2 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v17);
        }

        [v29 addObject:v7];
        objc_autoreleasePoolPop(context);
        v5 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }

  return v29;
}

- (id)clientModelCacheUpdatesFromBlendingCacheUpdate:(id)update
{
  v4 = MEMORY[0x277CBEB98];
  updateCopy = update;
  v6 = [v4 alloc];
  clientModelCacheUpdateUUIDs = [updateCopy clientModelCacheUpdateUUIDs];

  allValues = [clientModelCacheUpdateUUIDs allValues];
  v9 = [v6 initWithArray:allValues];

  v10 = objc_opt_new();
  clientModelPublisher = [(ATXBlendingLayerSessionLogger *)self clientModelPublisher];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__ATXBlendingLayerSessionLogger_clientModelCacheUpdatesFromBlendingCacheUpdate___block_invoke;
  v23[3] = &unk_27859A798;
  v24 = v9;
  v12 = v9;
  v13 = [clientModelPublisher filterWithIsIncluded:v23];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __80__ATXBlendingLayerSessionLogger_clientModelCacheUpdatesFromBlendingCacheUpdate___block_invoke_3;
  v21 = &unk_278596F60;
  v22 = v10;
  v14 = v10;
  v15 = [v13 sinkWithCompletion:&__block_literal_global_54_2 receiveInput:&v18];
  v16 = [v14 copy];

  return v16;
}

BOOL __80__ATXBlendingLayerSessionLogger_clientModelCacheUpdatesFromBlendingCacheUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 uuid];
    LOBYTE(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = 1;
    }
  }

  return v6;
}

void __80__ATXBlendingLayerSessionLogger_clientModelCacheUpdatesFromBlendingCacheUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)clientModelPublisher
{
  if (self->_clientModelEvents)
  {
    v2 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:self->_clientModelEvents];
  }

  else
  {
    v3 = objc_opt_new();
    v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2400.0];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;

    v2 = [v3 publisherFromStartTime:v6];
  }

  return v2;
}

- (id)sessionUICacheForUICacheUpdate:(id)update
{
  v33 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(updateCopy, "consumerSubType")}];
  [v5 setConsumerSubType:v6];

  uiCache = [updateCopy uiCache];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  uiCache2 = [updateCopy uiCache];
  uiCache3 = uiCache2;
  v27 = updateCopy;
  if (isKindOfClass)
  {
    minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks = [uiCache2 minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks];
LABEL_5:
    v14 = minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks;

    goto LABEL_9;
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    uiCache3 = [updateCopy uiCache];
    minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks = [uiCache3 minSuggestionListInLayout];
    goto LABEL_5;
  }

  v15 = __atxlog_handle_blending(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [(ATXBlendingLayerSessionLogger *)updateCopy sessionUICacheForUICacheUpdate:v15];
  }

  v14 = 0;
LABEL_9:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        suggestions = [v5 suggestions];
        v24 = [suggestions count];

        if (v24 <= 0x3B)
        {
          v25 = [(ATXBlendingLayerSessionLogger *)self sessionSuggestionFromProactiveSuggestion:v21];
          [v5 addSuggestion:v25];
        }

        objc_autoreleasePoolPop(v22);
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  return v5;
}

- (id)sessionSuggestionFromProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = objc_opt_new();
  genericStringForSuggestionExecutableObject = [suggestionCopy genericStringForSuggestionExecutableObject];
  [v4 setExecutableId:genericStringForSuggestionExecutableObject];

  scoreSpecification = [suggestionCopy scoreSpecification];
  [scoreSpecification rawScore];
  [v4 setRawScore:?];

  scoreSpecification2 = [suggestionCopy scoreSpecification];

  suggestedConfidenceCategory = [scoreSpecification2 suggestedConfidenceCategory];
  if (suggestedConfidenceCategory <= 4)
  {
    [v4 setSuggestedConfidenceCategory:suggestedConfidenceCategory];
  }

  return v4;
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)sessionERMEventFromERMEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 entry];
  v4 = 134217984;
  v5 = [v3 engagementRecordType];
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Encountered an unknown engagement record type that should only be used for querying: %lu", &v4, 0xCu);
}

- (void)sessionUICacheForUICacheUpdate:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 uiCache];
  if (v5)
  {
    v2 = [a1 uiCache];
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  else
  {
    v6 = @"nil";
  }

  v8 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(a1, "consumerSubType")}];
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v8;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Encountered an unknown ui cache class of %@, consumerSubType = %@", &v9, 0x16u);
  if (v5)
  {
  }
}

@end