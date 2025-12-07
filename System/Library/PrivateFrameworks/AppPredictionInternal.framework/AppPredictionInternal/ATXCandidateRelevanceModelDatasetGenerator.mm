@interface ATXCandidateRelevanceModelDatasetGenerator
+ (BOOL)isContextMismatchForPreviousContext:(id)context currentContext:(id)currentContext;
+ (id)candidateDataPointsForSession:(id)session candidate:(id)candidate;
+ (id)candidateDataPointsForSessions:(id)sessions candidate:(id)candidate;
+ (id)dataPointPublisher:(id)publisher;
+ (id)eventAndRecentContextPublisher:(id)publisher;
- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)config;
- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)config contextPublisher:(id)publisher modePublisher:(id)modePublisher poiCategoryPublisher:(id)categoryPublisher bluetoothPublisher:(id)bluetoothPublisher userFocusComputedModePublisher:(id)computedModePublisher microlocationVisitPublisher:(id)visitPublisher;
- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)config inferredModeStream:(id)stream computedModeStream:(id)modeStream pointOfInterestStream:(id)interestStream;
- (id)candidateDatasetStream;
- (void)candidateDatasetStream;
- (void)receiveCandidateDataPoint:(id)point completion:(id)completion candidate:(id)candidate;
- (void)receiveDataPoint:(id)point completion:(id)completion;
- (void)receiveDatasetSession:(id)session completion:(id)completion;
@end

@implementation ATXCandidateRelevanceModelDatasetGenerator

- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)config
{
  configCopy = config;
  v16 = BiomeLibrary();
  userFocus = [v16 UserFocus];
  inferredMode = [userFocus InferredMode];
  v6 = BiomeLibrary();
  userFocus2 = [v6 UserFocus];
  computedMode = [userFocus2 ComputedMode];
  v9 = BiomeLibrary();
  location = [v9 Location];
  pointOfInterest = [location PointOfInterest];
  category = [pointOfInterest Category];
  v13 = [(ATXCandidateRelevanceModelDatasetGenerator *)self initWithConfig:configCopy inferredModeStream:inferredMode computedModeStream:computedMode pointOfInterestStream:category];

  return v13;
}

- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)config inferredModeStream:(id)stream computedModeStream:(id)modeStream pointOfInterestStream:(id)interestStream
{
  v9 = MEMORY[0x277CBEAA8];
  interestStreamCopy = interestStream;
  modeStreamCopy = modeStream;
  streamCopy = stream;
  configCopy = config;
  v13 = [[v9 alloc] initWithTimeIntervalSinceNow:-2592000.0];
  v14 = objc_opt_new();
  [v13 timeIntervalSinceReferenceDate];
  v34 = [v14 publisherFromStartTime:?];

  v15 = [streamCopy atx_publisherFromStartDate:v13];

  v33 = [v15 filterWithIsIncluded:&__block_literal_global_117_0];

  v16 = [interestStreamCopy atx_publisherFromStartDate:v13];

  v17 = [v16 filterWithIsIncluded:&__block_literal_global_119];

  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = [MEMORY[0x277CBEAA8] now];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_4;
  v37[3] = &unk_2785991A0;
  v38 = v18;
  v21 = v18;
  [v19 enumerateConnectedEventsFromStartDate:v13 endDate:v20 filterBlock:&__block_literal_global_123 limit:1000000 ascending:1 block:v37];

  bpsPublisher = [v21 bpsPublisher];
  v23 = [bpsPublisher mapWithTransform:&__block_literal_global_127];

  v24 = [modeStreamCopy atx_publisherFromStartDate:v13];

  v25 = [v24 filterWithIsIncluded:&__block_literal_global_130];

  v26 = objc_opt_new();
  v27 = [MEMORY[0x277CBEAA8] now];
  v28 = [v26 fetchEventsBetweenStartDate:v13 andEndDate:v27 withPredicates:0];
  bpsPublisher2 = [v28 bpsPublisher];
  v30 = [bpsPublisher2 mapWithTransform:&__block_literal_global_134];

  v31 = [(ATXCandidateRelevanceModelDatasetGenerator *)self initWithConfig:configCopy contextPublisher:v34 modePublisher:v33 poiCategoryPublisher:v17 bluetoothPublisher:v23 userFocusComputedModePublisher:v25 microlocationVisitPublisher:v30];
  return v31;
}

uint64_t __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 isStart];

  return v3;
}

BOOL __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 rank] == 0;

  return v3;
}

BOOL __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 endTime];
  v4 = [v2 startTime];

  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6 >= 60.0;
}

id __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXBluetoothDuetEvent alloc] initWithATXEvent:v2];

  v4 = objc_alloc(MEMORY[0x277CEBC00]);
  v5 = [(ATXDuetEvent *)v3 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 initWithEventBody:v3 timestamp:?];

  return v6;
}

uint64_t __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

id __121__ATXCandidateRelevanceModelDatasetGenerator_initWithConfig_inferredModeStream_computedModeStream_pointOfInterestStream___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEBC00];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 initWithEventBody:v3 timestamp:?];

  return v6;
}

- (ATXCandidateRelevanceModelDatasetGenerator)initWithConfig:(id)config contextPublisher:(id)publisher modePublisher:(id)modePublisher poiCategoryPublisher:(id)categoryPublisher bluetoothPublisher:(id)bluetoothPublisher userFocusComputedModePublisher:(id)computedModePublisher microlocationVisitPublisher:(id)visitPublisher
{
  configCopy = config;
  publisherCopy = publisher;
  modePublisherCopy = modePublisher;
  categoryPublisherCopy = categoryPublisher;
  bluetoothPublisherCopy = bluetoothPublisher;
  computedModePublisherCopy = computedModePublisher;
  visitPublisherCopy = visitPublisher;
  v26.receiver = self;
  v26.super_class = ATXCandidateRelevanceModelDatasetGenerator;
  v18 = [(ATXCandidateRelevanceModelDatasetGenerator *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_config, config);
    objc_storeStrong(&v19->_contextPublisher, publisher);
    objc_storeStrong(&v19->_modePublisher, modePublisher);
    objc_storeStrong(&v19->_poiCategoryPublisher, categoryPublisher);
    objc_storeStrong(&v19->_bluetoothPublisher, bluetoothPublisher);
    objc_storeStrong(&v19->_userFocusComputedModePublisher, computedModePublisher);
    objc_storeStrong(&v19->_microlocationVisitPublisher, visitPublisher);
  }

  return v19;
}

- (void)receiveDataPoint:(id)point completion:(id)completion
{
  pointCopy = point;
  completionCopy = completion;
  candidateDatasetStream = [(ATXCandidateRelevanceModelDatasetGenerator *)self candidateDatasetStream];
  if (candidateDatasetStream)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke;
    v12[3] = &unk_27859D720;
    v12[4] = &v13;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke_2;
    v10[3] = &unk_27859E198;
    v11 = pointCopy;
    v9 = [candidateDatasetStream sinkWithBookmark:0 completion:v12 receiveInput:v10];
    completionCopy[2](completionCopy, *(v14 + 24));

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

void *__74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 state];
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

void __74__ATXCandidateRelevanceModelDatasetGenerator_receiveDataPoint_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 candidate];

  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)receiveDatasetSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__61;
  v23[4] = __Block_byref_object_dispose__61;
  v24 = objc_opt_new();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__61;
  v17[4] = __Block_byref_object_dispose__61;
  v18 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke;
  v13[3] = &unk_27859E1C0;
  v15 = v17;
  v14 = sessionCopy;
  v16 = v23;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke_2;
  v9[3] = &unk_27859E1E8;
  v8 = v14;
  v10 = v8;
  v11 = v23;
  v12 = &v19;
  [(ATXCandidateRelevanceModelDatasetGenerator *)self receiveDataPoint:v13 completion:v9];
  completionCopy[2](completionCopy, *(v20 + 24));

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);
}

void __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  v3 = [v10 contextDefinedSessionId];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    if ([v5 isEqual:v3])
    {
      goto LABEL_6;
    }

    (*(a1[4] + 16))();
    objc_storeStrong((*(a1[5] + 8) + 40), v3);
    v6 = objc_opt_new();
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = v3;
    v8 = *(v4 + 40);
    *(v4 + 40) = v9;
  }

LABEL_6:
  [*(*(a1[6] + 8) + 40) addObject:v10];
}

uint64_t __79__ATXCandidateRelevanceModelDatasetGenerator_receiveDatasetSession_completion___block_invoke_2(uint64_t result, int a2)
{
  v2 = a2;
  v3 = result;
  if (a2)
  {
    result = (*(*(result + 32) + 16))();
  }

  *(*(*(v3 + 48) + 8) + 24) = v2;
  return result;
}

- (void)receiveCandidateDataPoint:(id)point completion:(id)completion candidate:(id)candidate
{
  pointCopy = point;
  completionCopy = completion;
  candidateCopy = candidate;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__ATXCandidateRelevanceModelDatasetGenerator_receiveCandidateDataPoint_completion_candidate___block_invoke;
  v14[3] = &unk_27859E210;
  v14[4] = self;
  v11 = candidateCopy;
  v15 = v11;
  v12 = pointCopy;
  v16 = v12;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__ATXCandidateRelevanceModelDatasetGenerator_receiveCandidateDataPoint_completion_candidate___block_invoke_2;
  v13[3] = &unk_27859E238;
  v13[4] = &v17;
  [(ATXCandidateRelevanceModelDatasetGenerator *)self receiveDatasetSession:v14 completion:v13];
  completionCopy[2](completionCopy, *(v18 + 24));

  _Block_object_dispose(&v17, 8);
}

void __93__ATXCandidateRelevanceModelDatasetGenerator_receiveCandidateDataPoint_completion_candidate___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() candidateDataPointsForSession:v3 candidate:a1[5]];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(a1[6] + 16))();
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (id)candidateDataPointsForSessions:(id)sessions candidate:(id)candidate
{
  v29 = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  candidateCopy = candidate;
  v7 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = sessionsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [objc_opt_class() candidateDataPointsForSession:*(*(&v23 + 1) + 8 * i) candidate:candidateCopy];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [v7 addObject:*(*(&v19 + 1) + 8 * j)];
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v14);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (id)candidateDataPointsForSession:(id)session candidate:(id)candidate
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  candidateCopy = candidate;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = sessionCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v9)
  {

LABEL_13:
    if ([v8 count])
    {
      v17 = [v8 objectAtIndexedSubscript:0];
      [v17 setCandidate:candidateCopy];
      [v17 setEngaged:0];
      [v7 addObject:v17];
    }

    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v20;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      candidate = [v14 candidate];
      v16 = [candidate isEqual:candidateCopy];

      if (v16)
      {
        [v7 addObject:v14];
        v11 = 1;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v7;
}

- (id)candidateDatasetStream
{
  v15[6] = *MEMORY[0x277D85DE8];
  candidatePublisher = [objc_opt_class() candidatePublisher];
  v4 = candidatePublisher;
  if (candidatePublisher && self->_contextPublisher && (modePublisher = self->_modePublisher) != 0 && (poiCategoryPublisher = self->_poiCategoryPublisher) != 0 && (bluetoothPublisher = self->_bluetoothPublisher) != 0 && (userFocusComputedModePublisher = self->_userFocusComputedModePublisher) != 0 && (microlocationVisitPublisher = self->_microlocationVisitPublisher) != 0)
  {
    v15[0] = self->_contextPublisher;
    v15[1] = modePublisher;
    v15[2] = poiCategoryPublisher;
    v15[3] = bluetoothPublisher;
    v15[4] = userFocusComputedModePublisher;
    v15[5] = microlocationVisitPublisher;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];
    v11 = [v4 orderedMergeWithOthers:v10 comparator:&__block_literal_global_142];

    v12 = [objc_opt_class() eventAndRecentContextPublisher:v11];
    v13 = [objc_opt_class() dataPointPublisher:v12];
  }

  else
  {
    v11 = __atxlog_handle_relevance_model(candidatePublisher);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXCandidateRelevanceModelDatasetGenerator *)self candidateDatasetStream];
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __68__ATXCandidateRelevanceModelDatasetGenerator_candidateDatasetStream__block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)eventAndRecentContextPublisher:(id)publisher
{
  v4 = MEMORY[0x277D42648];
  publisherCopy = publisher;
  v6 = [v4 tupleWithFirst:0 second:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke;
  v9[3] = &__block_descriptor_40_e70____PASTuple2_24__0___PASTuple2_8__NSObject_ATXBMStoreEventProtocol__16l;
  v9[4] = self;
  v7 = [publisherCopy scanWithInitial:v6 nextPartialResult:v9];

  return v7;
}

id __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 eventBody];
  if (v8)
  {
    v9 = [v5 second];
    v10 = [v9 inferredModeEvent];
    v11 = [v9 userFocusComputedModeEvent];
    v12 = [v9 poiCategory];
    v13 = [v9 bluetoothEvent];
    v14 = [v9 microlocationVisitEvent];
    objc_opt_class();
    v21 = v7;
    if (objc_opt_isKindOfClass())
    {
      v15 = v10;
      v16 = v8;

      [v16 setInferredModeEvent:v15];
      [v16 setPoiCategory:v12];
      [v16 setBluetoothEvent:v13];
      [v16 setUserFocusComputedModeEvent:v11];
      [v16 setMicrolocationVisitEvent:v14];
      v9 = v16;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 setInferredModeEvent:v8];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setUserFocusComputedModeEvent:v8];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 poiCategory];
            v20 = v15 = v10;
            [v9 setPoiCategory:v20];

            goto LABEL_12;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = v10;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 setMicrolocationVisitEvent:v8];
            }

            goto LABEL_12;
          }

          [v9 setBluetoothEvent:v8];
        }
      }

      v15 = v10;
    }

LABEL_12:
    v18 = [MEMORY[0x277D42648] tupleWithFirst:v6 second:v9];

    v7 = v21;
    goto LABEL_13;
  }

  v17 = __atxlog_handle_relevance_model(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke_cold_1(a1, v17);
  }

  v18 = v5;
LABEL_13:

  objc_autoreleasePoolPop(v7);

  return v18;
}

+ (id)dataPointPublisher:(id)publisher
{
  publisherCopy = publisher;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__61;
  v17[4] = __Block_byref_object_dispose__61;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__61;
  v15[4] = __Block_byref_object_dispose__61;
  v16 = 0;
  v5 = objc_opt_new();
  v6 = [publisherCopy filterWithIsIncluded:&__block_literal_global_154];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ATXCandidateRelevanceModelDatasetGenerator_dataPointPublisher___block_invoke_2;
  v10[3] = &unk_27859E260;
  selfCopy = self;
  v7 = v5;
  v11 = v7;
  v12 = v17;
  v13 = v15;
  v8 = [v6 mapWithTransform:v10];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);

  return v8;
}

uint64_t __65__ATXCandidateRelevanceModelDatasetGenerator_dataPointPublisher___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v2 second];

  return isKindOfClass & (v6 != 0);
}

ATXCandidateRelevanceModelDataPoint *__65__ATXCandidateRelevanceModelDatasetGenerator_dataPointPublisher___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 second];
  v5 = [v4 copy];

  v6 = MEMORY[0x277CBEAA8];
  v7 = [v3 first];
  [v7 timestamp];
  v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

  v10 = __atxlog_handle_relevance_model(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v8 timeIntervalSinceReferenceDate];
    v25 = v24;
    v26 = [v5 timeContext];
    v27 = [v26 date];
    [v27 timeIntervalSinceReferenceDate];
    v29 = 138412546;
    v30 = v23;
    v31 = 2048;
    v32 = v25 - v28;
    _os_log_debug_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEBUG, "%@ - New time context for candidate is %f seconds newer", &v29, 0x16u);
  }

  v11 = [[ATXPredictionTimeContext alloc] initWithDate:v8];
  [v5 setTimeContext:v11];
  v12 = [*(a1 + 32) copy];
  [v5 setCandidateIdentifiersLaunchAge:v12];

  if ([objc_opt_class() isContextMismatchForPreviousContext:*(*(*(a1 + 40) + 8) + 40) currentContext:v5])
  {
    v13 = objc_opt_new();
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  v16 = [v3 first];
  v17 = [v16 eventBody];

  v18 = [[ATXCandidateRelevanceModelDataPoint alloc] initWithContext:v5 candidate:v17 engaged:1 contextDefinedSessionId:*(*(*(a1 + 48) + 8) + 40)];
  v19 = *(a1 + 32);
  v20 = [v17 identifier];
  [v19 setObject:v8 forKeyedSubscript:v20];

  return v18;
}

+ (BOOL)isContextMismatchForPreviousContext:(id)context currentContext:(id)currentContext
{
  contextCopy = context;
  currentContextCopy = currentContext;
  v7 = currentContextCopy;
  v8 = 1;
  if (contextCopy && currentContextCopy)
  {
    timeContext = [currentContextCopy timeContext];
    date = [timeContext date];
    timeContext2 = [contextCopy timeContext];
    date2 = [timeContext2 date];
    [date timeIntervalSinceDate:date2];
    v14 = v13;

    if (v14 > 1800.0)
    {
      v16 = __atxlog_handle_relevance_model(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

LABEL_54:

      v8 = 1;
      goto LABEL_55;
    }

    timeContext3 = [v7 timeContext];
    dayOfWeek = [timeContext3 dayOfWeek];
    timeContext4 = [contextCopy timeContext];
    dayOfWeek2 = [timeContext4 dayOfWeek];

    if (dayOfWeek != dayOfWeek2)
    {
      v16 = __atxlog_handle_relevance_model(v21);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    deviceStateContext = [v7 deviceStateContext];
    wifiSSID = [deviceStateContext wifiSSID];
    deviceStateContext2 = [contextCopy deviceStateContext];
    wifiSSID2 = [deviceStateContext2 wifiSSID];
    v26 = wifiSSID;
    v27 = wifiSSID2;
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      if (!v26 || !v27)
      {

        goto LABEL_19;
      }

      v29 = [v26 isEqualToString:v27];

      if ((v29 & 1) == 0)
      {
LABEL_19:
        v16 = __atxlog_handle_relevance_model(v30);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }
    }

    deviceStateContext3 = [v7 deviceStateContext];
    inAirplaneMode = [deviceStateContext3 inAirplaneMode];
    deviceStateContext4 = [contextCopy deviceStateContext];
    inAirplaneMode2 = [deviceStateContext4 inAirplaneMode];

    if (inAirplaneMode != inAirplaneMode2)
    {
      v16 = __atxlog_handle_relevance_model(v35);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    locationMotionContext = [v7 locationMotionContext];
    currentLOI = [locationMotionContext currentLOI];
    locationMotionContext2 = [contextCopy locationMotionContext];
    currentLOI2 = [locationMotionContext2 currentLOI];
    v40 = currentLOI;
    v41 = currentLOI2;
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      if (!v40 || !v41)
      {

        goto LABEL_31;
      }

      v43 = [v40 isEqual:v41];

      if ((v43 & 1) == 0)
      {
LABEL_31:
        v16 = __atxlog_handle_relevance_model(v44);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }
    }

    locationMotionContext3 = [v7 locationMotionContext];
    locationEnabled = [locationMotionContext3 locationEnabled];
    locationMotionContext4 = [contextCopy locationMotionContext];
    locationEnabled2 = [locationMotionContext4 locationEnabled];

    if (locationEnabled != locationEnabled2)
    {
      v16 = __atxlog_handle_relevance_model(v49);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    locationMotionContext5 = [v7 locationMotionContext];
    geohash = [locationMotionContext5 geohash];
    locationMotionContext6 = [contextCopy locationMotionContext];
    geohash2 = [locationMotionContext6 geohash];

    if (geohash != geohash2)
    {
      v16 = __atxlog_handle_relevance_model(v54);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    locationMotionContext7 = [v7 locationMotionContext];
    motionType = [locationMotionContext7 motionType];
    locationMotionContext8 = [contextCopy locationMotionContext];
    motionType2 = [locationMotionContext8 motionType];

    if (motionType != motionType2)
    {
      v16 = __atxlog_handle_relevance_model(v59);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    ambientLightContext = [v7 ambientLightContext];
    ambientLightType = [ambientLightContext ambientLightType];
    ambientLightContext2 = [contextCopy ambientLightContext];
    ambientLightType2 = [ambientLightContext2 ambientLightType];

    if (ambientLightType != ambientLightType2)
    {
      v16 = __atxlog_handle_relevance_model(v64);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    bluetoothEvent = [v7 bluetoothEvent];
    bluetoothEvent2 = [contextCopy bluetoothEvent];
    v67 = bluetoothEvent2;
    if (bluetoothEvent == bluetoothEvent2)
    {
    }

    else
    {
      bluetoothEvent3 = [v7 bluetoothEvent];
      bluetoothEvent4 = [contextCopy bluetoothEvent];
      v70 = [bluetoothEvent3 isEqual:bluetoothEvent4];

      if ((v70 & 1) == 0)
      {
        v16 = __atxlog_handle_relevance_model(v71);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }
    }

    inferredModeEvent = [v7 inferredModeEvent];
    modeType = [inferredModeEvent modeType];
    inferredModeEvent2 = [contextCopy inferredModeEvent];
    modeType2 = [inferredModeEvent2 modeType];

    if (modeType != modeType2)
    {
      v16 = __atxlog_handle_relevance_model(v76);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }

      goto LABEL_54;
    }

    userFocusComputedModeEvent = [v7 userFocusComputedModeEvent];
    semanticType = [userFocusComputedModeEvent semanticType];
    userFocusComputedModeEvent2 = [contextCopy userFocusComputedModeEvent];
    semanticType2 = [userFocusComputedModeEvent2 semanticType];

    if (semanticType == semanticType2)
    {
      poiCategory = [v7 poiCategory];
      poiCategory2 = [contextCopy poiCategory];

      if (poiCategory != poiCategory2)
      {
        v16 = __atxlog_handle_relevance_model(v84);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
        }

        goto LABEL_54;
      }

      microlocationVisitEvent = [v7 microlocationVisitEvent];
      microlocationVisitEvent2 = [contextCopy microlocationVisitEvent];
      v88 = microlocationVisitEvent2;
      if (microlocationVisitEvent != microlocationVisitEvent2)
      {
        microlocationVisitEvent3 = [v7 microlocationVisitEvent];
        microlocationVisitEvent4 = [contextCopy microlocationVisitEvent];
        v91 = [microlocationVisitEvent3 isEqual:microlocationVisitEvent4];

        if ((v91 & 1) == 0)
        {
          v16 = __atxlog_handle_relevance_model(v92);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
          }

          goto LABEL_54;
        }

LABEL_59:
        v8 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      microlocationVisitEvent = __atxlog_handle_relevance_model(v81);
      if (os_log_type_enabled(microlocationVisitEvent, OS_LOG_TYPE_DEBUG))
      {
        +[ATXCandidateRelevanceModelDatasetGenerator isContextMismatchForPreviousContext:currentContext:];
      }
    }

    goto LABEL_59;
  }

LABEL_55:

  return v8;
}

- (void)candidateDatasetStream
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@ - Could not create candidateDatasetStream because one of the biome publishers needed is nil.", &v5, 0xCu);
}

void __77__ATXCandidateRelevanceModelDatasetGenerator_eventAndRecentContextPublisher___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - Event can't be deserialized in eventAndRecentContextPublisher", &v5, 0xCu);
}

@end