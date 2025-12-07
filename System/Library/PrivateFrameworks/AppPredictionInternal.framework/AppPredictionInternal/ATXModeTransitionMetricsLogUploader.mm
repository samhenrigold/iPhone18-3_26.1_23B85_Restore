@interface ATXModeTransitionMetricsLogUploader
- (ATXModeTransitionMetricsLogUploader)init;
- (ATXModeTransitionMetricsLogUploader)initWithComputedModeStream:(id)stream inferredModeStream:(id)modeStream;
- (BOOL)_previousModeEndEvent:(id)event isContiguousWithModeStartEvent:(id)startEvent;
- (id)_modeTransitionBookmark;
- (id)_timeBasedMergedPublisher;
- (id)matchingInferredModeEvent:(id)event inferredModeEvents:(id)events;
- (id)processInferredModeEvents:(id)events beforeTimestamp:(double)timestamp;
- (void)_logModeTransitionMetricWithPreviousModeStart:(id)start previousModeEnd:(id)end currentModeStart:(id)modeStart matchingPreviousInferredModeEvent:(id)event matchingCurrentInferredModeEvent:(id)modeEvent;
- (void)_logWithPreviousInferredModeEvent:(id)event currentInferredModeEvent:(id)modeEvent withDuration:(id)duration;
- (void)_populateInferredModeFieldsOnTheModeTransitionMetric:(id)metric withPreviousInferredModeEvent:(id)event currentInferredModeEvent:(id)modeEvent duration:(id)duration;
- (void)uploadLogsToCoreAnalyticsWithXPCActivity:(id)activity;
@end

@implementation ATXModeTransitionMetricsLogUploader

- (ATXModeTransitionMetricsLogUploader)init
{
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  computedMode = [userFocus ComputedMode];
  v6 = BiomeLibrary();
  userFocus2 = [v6 UserFocus];
  inferredMode = [userFocus2 InferredMode];
  v9 = [(ATXModeTransitionMetricsLogUploader *)self initWithComputedModeStream:computedMode inferredModeStream:inferredMode];

  return v9;
}

- (ATXModeTransitionMetricsLogUploader)initWithComputedModeStream:(id)stream inferredModeStream:(id)modeStream
{
  streamCopy = stream;
  modeStreamCopy = modeStream;
  v16.receiver = self;
  v16.super_class = ATXModeTransitionMetricsLogUploader;
  v9 = [(ATXModeTransitionMetricsLogUploader *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_computedModeStream, stream);
    objc_storeStrong(&v10->_inferredModeStream, modeStream);
    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    client = v10->_client;
    v10->_client = mEMORY[0x277CEB440];

    getAllModeConfigurationsWithoutCache = [(ATXDNDModeConfigurationClient *)v10->_client getAllModeConfigurationsWithoutCache];
    modeConfigurations = v10->_modeConfigurations;
    v10->_modeConfigurations = getAllModeConfigurationsWithoutCache;
  }

  return v10;
}

- (void)uploadLogsToCoreAnalyticsWithXPCActivity:(id)activity
{
  activityCopy = activity;
  _timeBasedMergedPublisher = [(ATXModeTransitionMetricsLogUploader *)self _timeBasedMergedPublisher];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = objc_opt_new();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__2;
  v27[4] = __Block_byref_object_dispose__2;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__2;
  v25[4] = __Block_byref_object_dispose__2;
  v26 = 0;
  _modeTransitionBookmark = [(ATXModeTransitionMetricsLogUploader *)self _modeTransitionBookmark];
  bookmark = [_modeTransitionBookmark bookmark];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__ATXModeTransitionMetricsLogUploader_uploadLogsToCoreAnalyticsWithXPCActivity___block_invoke;
  v23[3] = &unk_278596E58;
  v8 = _modeTransitionBookmark;
  v24 = v8;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__ATXModeTransitionMetricsLogUploader_uploadLogsToCoreAnalyticsWithXPCActivity___block_invoke_2;
  v18[3] = &unk_278596E80;
  v20 = v27;
  v21 = v25;
  v18[4] = self;
  v22 = &v29;
  v9 = activityCopy;
  v19 = v9;
  v10 = [_timeBasedMergedPublisher drivableSinkWithBookmark:bookmark completion:v23 shouldContinue:v18];

  v11 = v30[5];
  v12 = [MEMORY[0x277CBEAA8] now];
  [v12 timeIntervalSinceReferenceDate];
  v13 = [(ATXModeTransitionMetricsLogUploader *)self processInferredModeEvents:v11 beforeTimestamp:?];

  v17 = 0;
  [v8 saveBookmarkWithError:&v17];
  v14 = v17;
  v15 = v14;
  if (v14)
  {
    v16 = __atxlog_handle_modes(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeTransitionMetricsLogUploader *)v15 uploadLogsToCoreAnalyticsWithXPCActivity:v16];
    }
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);

  _Block_object_dispose(&v29, 8);
}

uint64_t __80__ATXModeTransitionMetricsLogUploader_uploadLogsToCoreAnalyticsWithXPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 eventBody];
  v8 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      [*(*(*(a1 + 64) + 8) + 40) addObject:v4];
    }

    goto LABEL_18;
  }

  if (!v7)
  {
LABEL_21:

    v27 = 1;
    goto LABEL_22;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_25;
  }

  v10 = [v7 starting];
  v11 = (*(*(a1 + 48) + 8) + 40);
  if (v10)
  {
LABEL_20:
    objc_storeStrong(v11, a2);
    goto LABEL_21;
  }

  if (*v11)
  {
LABEL_25:
    if (*(*(*(a1 + 56) + 8) + 40) || [v8 starting])
    {
      goto LABEL_11;
    }

    v11 = (*(*(a1 + 56) + 8) + 40);
    goto LABEL_20;
  }

LABEL_11:
  v12 = [*(a1 + 32) matchingInferredModeEvent:? inferredModeEvents:?];
  if (v12)
  {
    [*(*(*(a1 + 64) + 8) + 40) removeObject:v12];
  }

  v13 = MEMORY[0x277CBEB18];
  v14 = *(a1 + 32);
  v15 = *(*(*(a1 + 64) + 8) + 40);
  [*(*(*(a1 + 48) + 8) + 40) timestamp];
  v16 = [v14 processInferredModeEvents:v15 beforeTimestamp:?];
  v17 = [v13 arrayWithArray:v16];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 40) && [v8 starting])
  {
    v29 = [*(a1 + 32) matchingInferredModeEvent:v4 inferredModeEvents:*(*(*(a1 + 64) + 8) + 40)];
    v20 = *(a1 + 32);
    v21 = *(*(*(a1 + 48) + 8) + 40);
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v23 = [v12 eventBody];
    v24 = [v29 eventBody];
    [v20 _logModeTransitionMetricWithPreviousModeStart:v21 previousModeEnd:v22 currentModeStart:v4 matchingPreviousInferredModeEvent:v23 matchingCurrentInferredModeEvent:v24];

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v25 = *(*(a1 + 56) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = 0;
  }

LABEL_18:
  v27 = [*(a1 + 40) didDefer] ^ 1;
LABEL_22:

  return v27;
}

- (id)matchingInferredModeEvent:(id)event inferredModeEvents:(id)events
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  eventsCopy = events;
  eventBody = [eventCopy eventBody];
  [eventBody semanticType];
  v8 = BMUserFocusInferredModeTypeFromBMUserFocusModeComputedSemanticType();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        eventBody2 = [v14 eventBody];
        if ([eventBody2 isStart])
        {
          if ([eventBody2 modeType] == v8)
          {
            [eventCopy timestamp];
            v17 = v16;
            [v14 timestamp];
            if (v17 - v18 <= 1.0 && [eventBody updateReason] == 3)
            {
              v19 = v14;

              goto LABEL_14;
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_14:

  return v19;
}

- (id)processInferredModeEvents:(id)events beforeTimestamp:(double)timestamp
{
  eventsCopy = events;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__2;
  v12[4] = __Block_byref_object_dispose__2;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__2;
  v10[4] = __Block_byref_object_dispose__2;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ATXModeTransitionMetricsLogUploader_processInferredModeEvents_beforeTimestamp___block_invoke;
  v9[3] = &unk_278596EA8;
  *&v9[7] = timestamp;
  v9[5] = v12;
  v9[6] = v10;
  v9[4] = self;
  v7 = [eventsCopy _pas_filteredArrayWithTest:v9];
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(v12, 8);

  return v7;
}

BOOL __81__ATXModeTransitionMetricsLogUploader_processInferredModeEvents_beforeTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 eventBody];
  [v4 timestamp];
  v7 = v6;
  v8 = *(a1 + 56);
  if (v6 < v8)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v20 = [v5 isStart];
      v21 = *(*(a1 + 40) + 8);
      if (v20)
      {
        v22 = v4;
        v17 = *(v21 + 40);
        *(v21 + 40) = v22;
        goto LABEL_16;
      }

      if (!*(v21 + 40))
      {
        goto LABEL_17;
      }
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      if (([v5 isStart] & 1) == 0)
      {
        v23 = *(*(a1 + 48) + 8);
        v24 = v4;
        v17 = *(v23 + 40);
        *(v23 + 40) = v24;
        goto LABEL_16;
      }

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_17;
      }
    }

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if ([v5 isStart])
      {
        v9 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
        v10 = [v9 modeType];
        v11 = [*(*(*(a1 + 48) + 8) + 40) eventBody];
        v12 = [v11 modeType];

        if (v10 == v12)
        {
          v13 = MEMORY[0x277CCABB0];
          [*(*(*(a1 + 48) + 8) + 40) timestamp];
          v15 = v14;
          [*(*(*(a1 + 40) + 8) + 40) timestamp];
          v17 = [v13 numberWithDouble:v15 - v16];
          [*(a1 + 32) _logWithPreviousInferredModeEvent:*(*(*(a1 + 40) + 8) + 40) currentInferredModeEvent:v4 withDuration:v17];
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
          v18 = *(*(a1 + 48) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = 0;

LABEL_16:
        }
      }
    }
  }

LABEL_17:

  return v7 >= v8;
}

- (void)_logWithPreviousInferredModeEvent:(id)event currentInferredModeEvent:(id)modeEvent withDuration:(id)duration
{
  v19 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  modeEventCopy = modeEvent;
  eventCopy = event;
  v11 = objc_opt_new();
  eventBody = [eventCopy eventBody];

  eventBody2 = [modeEventCopy eventBody];

  [(ATXModeTransitionMetricsLogUploader *)self _populateInferredModeFieldsOnTheModeTransitionMetric:v11 withPreviousInferredModeEvent:eventBody currentInferredModeEvent:eventBody2 duration:durationCopy];
  v15 = __atxlog_handle_modes(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    coreAnalyticsDictionary = [v11 coreAnalyticsDictionary];
    v17 = 138412290;
    v18 = coreAnalyticsDictionary;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXModeTransitionMetricsLogUploader: Uploading inferred mode metric to CA: %@", &v17, 0xCu);
  }

  [v11 logToCoreAnalytics];
}

- (void)_populateInferredModeFieldsOnTheModeTransitionMetric:(id)metric withPreviousInferredModeEvent:(id)event currentInferredModeEvent:(id)modeEvent duration:(id)duration
{
  v9 = MEMORY[0x277CCABB0];
  durationCopy = duration;
  modeEventCopy = modeEvent;
  eventCopy = event;
  metricCopy = metric;
  [eventCopy confidenceScore];
  v14 = [v9 numberWithDouble:?];
  [metricCopy setInferredModeConfidenceScore:v14];

  [metricCopy setInferredModeDuration:durationCopy];
  originAnchorType = [eventCopy originAnchorType];
  [metricCopy setInferredModeOriginAnchorType:originAnchorType];

  [eventCopy modeType];
  v16 = BMUserFocusInferredModeTypeAsString();
  [metricCopy setInferredModeType:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(eventCopy, "uiLocation")}];
  [metricCopy setInferredModeUILocation:v17];

  [eventCopy origin];
  v18 = BMUserFocusInferredModeOriginAsString();
  [metricCopy setPreviousModeOrigin:v18];

  [modeEventCopy origin];
  v19 = BMUserFocusInferredModeOriginAsString();
  [metricCopy setCurrentModeOrigin:v19];
}

- (id)_timeBasedMergedPublisher
{
  v3 = [(BMStream *)self->_inferredModeStream atx_publisherFromStartTime:0];
  v4 = [(BMStream *)self->_computedModeStream atx_publisherFromStartTime:0];
  v5 = [v4 orderedMergeWithOther:v3 comparator:&__block_literal_global_7];

  return v5;
}

uint64_t __64__ATXModeTransitionMetricsLogUploader__timeBasedMergedPublisher__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_logModeTransitionMetricWithPreviousModeStart:(id)start previousModeEnd:(id)end currentModeStart:(id)modeStart matchingPreviousInferredModeEvent:(id)event matchingCurrentInferredModeEvent:(id)modeEvent
{
  v76 = *MEMORY[0x277D85DE8];
  startCopy = start;
  endCopy = end;
  modeStartCopy = modeStart;
  eventCopy = event;
  modeEventCopy = modeEvent;
  eventBody = [endCopy eventBody];
  eventBody2 = [modeStartCopy eventBody];
  modeSemanticTypeAsString = [eventBody modeSemanticTypeAsString];
  [endCopy timestamp];
  v18 = v17;
  [startCopy timestamp];
  v20 = v18 - v19;
  updateReason = [eventBody updateReason];
  modeUpdateReasonAsString = [eventBody modeUpdateReasonAsString];
  modeUpdateSourceAsString = [eventBody modeUpdateSourceAsString];
  modeSemanticTypeAsString2 = [eventBody2 modeSemanticTypeAsString];
  modeUpdateReasonAsString2 = [eventBody2 modeUpdateReasonAsString];
  selfCopy = self;
  v60 = startCopy;
  v67 = modeStartCopy;
  v68 = endCopy;
  v55 = [(ATXModeTransitionMetricsLogUploader *)self _previousModeEndEvent:endCopy isContiguousWithModeStartEvent:modeStartCopy];
  if (!v55)
  {

    modeSemanticTypeAsString2 = @"No Mode";
    modeUpdateReasonAsString2 = @"Fallback";
  }

  v56 = modeUpdateReasonAsString2;
  v57 = modeSemanticTypeAsString2;
  v58 = modeUpdateSourceAsString;
  v25 = [[ATXModeTransitionMetric alloc] initWithPreviousModeSemanticType:modeSemanticTypeAsString previousModeDuration:updateReason == 2 previousModeHadScheduledExit:modeUpdateReasonAsString exitReason:modeUpdateReasonAsString2 enterReason:0 transitionDeviceType:modeUpdateSourceAsString transitionSource:v20 nextModeSemanticType:modeSemanticTypeAsString2];
  modeConfigurations = self->_modeConfigurations;
  v62 = eventBody2;
  semanticModeIdentifier = [eventBody2 semanticModeIdentifier];
  v28 = [(NSDictionary *)modeConfigurations objectForKeyedSubscript:semanticModeIdentifier];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = v28;
  triggers = [v28 triggers];
  v30 = [triggers countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v70;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v70 != v32)
        {
          objc_enumerationMutation(triggers);
        }

        v34 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
        {
          [(ATXModeTransitionMetric *)v25 setLocationBasedSchedulingEnabled:1];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
          {
            [(ATXModeTransitionMetric *)v25 setTimeBasedSchedulingEnabled:1];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
            {
              [(ATXModeTransitionMetric *)v25 setAppBasedSchedulingEnabled:1];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 isEnabled])
              {
                [(ATXModeTransitionMetric *)v25 setSmartActivationEnabled:1];
              }
            }
          }
        }
      }

      v31 = [triggers countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v31);
  }

  v35 = modeEventCopy;
  v36 = eventCopy;
  v37 = __atxlog_handle_modes([(ATXModeTransitionMetricsLogUploader *)selfCopy _populateInferredModeFieldsOnTheModeTransitionMetric:v25 withPreviousInferredModeEvent:eventCopy currentInferredModeEvent:modeEventCopy duration:0]);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    coreAnalyticsDictionary = [(ATXModeTransitionMetric *)v25 coreAnalyticsDictionary];
    *buf = 138412290;
    v74 = coreAnalyticsDictionary;
    _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "ATXModeTransitionMetricsLogUploader: Uploading mode transition metric to CA: %@", buf, 0xCu);
  }

  [(_ATXCoreAnalyticsMetric *)v25 logToCoreAnalytics];
  v39 = modeSemanticTypeAsString;
  if (v55)
  {
    v40 = v25;
    v41 = v60;
    modeUpdateSourceAsString2 = v58;
    v42 = v59;
    modeUpdateReasonAsString4 = v56;
    v45 = v57;
    modeUpdateReasonAsString3 = modeUpdateReasonAsString;
  }

  else
  {

    [v67 timestamp];
    v48 = v47;
    [v68 timestamp];
    v50 = v48 - v49;
    modeUpdateReasonAsString3 = [v62 modeUpdateReasonAsString];

    modeUpdateReasonAsString4 = [v62 modeUpdateReasonAsString];

    modeUpdateSourceAsString2 = [v62 modeUpdateSourceAsString];

    modeSemanticTypeAsString3 = [v62 modeSemanticTypeAsString];

    v40 = [[ATXModeTransitionMetric alloc] initWithPreviousModeSemanticType:@"No Mode" previousModeDuration:0 previousModeHadScheduledExit:modeUpdateReasonAsString3 exitReason:modeUpdateReasonAsString4 enterReason:0 transitionDeviceType:modeUpdateSourceAsString2 transitionSource:v50 nextModeSemanticType:modeSemanticTypeAsString3];
    v53 = __atxlog_handle_modes(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      coreAnalyticsDictionary2 = [(ATXModeTransitionMetric *)v40 coreAnalyticsDictionary];
      *buf = 138412290;
      v74 = coreAnalyticsDictionary2;
      _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_DEFAULT, "ATXModeTransitionMetricsLogUploader: Uploading mode transition metric to CA: %@", buf, 0xCu);

      v36 = eventCopy;
    }

    [(_ATXCoreAnalyticsMetric *)v40 logToCoreAnalytics];
    v45 = modeSemanticTypeAsString3;
    v39 = @"No Mode";
    v41 = v60;
    v35 = modeEventCopy;
    v42 = v59;
  }
}

- (BOOL)_previousModeEndEvent:(id)event isContiguousWithModeStartEvent:(id)startEvent
{
  eventCopy = event;
  [startEvent timestamp];
  v7 = v6;
  [eventCopy timestamp];
  v9 = v8;

  return v7 - v9 < 10.0;
}

- (id)_modeTransitionBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"kModeTransitionMetricsBookmarkFile"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:&unk_283A551C0];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CEBBF8]) initWithURLPath:v4 versionNumber:&unk_283A551C0 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)uploadLogsToCoreAnalyticsWithXPCActivity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeTransitionMetricsLogUploader: Unable to save activity suggestion bookmark, error: %@", &v2, 0xCu);
}

@end