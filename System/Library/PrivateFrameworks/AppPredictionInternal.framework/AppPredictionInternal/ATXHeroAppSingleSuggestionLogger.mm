@interface ATXHeroAppSingleSuggestionLogger
- (ATXHeroAppSingleSuggestionLogger)initWithTracker:(id)tracker;
- (id)_heroAppEngagementMetricWithBundleId:(id)id interactionType:(int)type consumerSubType:(id)subType;
- (void)_flushEventBuffer:(id)buffer numEventsToSample:(int64_t)sample isNegative:(BOOL)negative;
- (void)_logHeroAppEngagementMetric:(id)metric;
- (void)flushEventBuffers;
- (void)handleSingleSuggestion:(id)suggestion;
@end

@implementation ATXHeroAppSingleSuggestionLogger

- (ATXHeroAppSingleSuggestionLogger)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v13.receiver = self;
  v13.super_class = ATXHeroAppSingleSuggestionLogger;
  v6 = [(ATXHeroAppSingleSuggestionLogger *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, tracker);
    v8 = objc_opt_new();
    positiveEventBuffer = v7->_positiveEventBuffer;
    v7->_positiveEventBuffer = v8;

    v10 = objc_opt_new();
    negativeEventBuffer = v7->_negativeEventBuffer;
    v7->_negativeEventBuffer = v10;
  }

  return v7;
}

- (id)_heroAppEngagementMetricWithBundleId:(id)id interactionType:(int)type consumerSubType:(id)subType
{
  v5 = *&type;
  subTypeCopy = subType;
  idCopy = id;
  v9 = objc_opt_new();
  [v9 setBundleId:idCopy];

  [v9 setInteractionType:v5];
  [v9 setConsumerSubType:subTypeCopy];

  return v9;
}

- (void)_logHeroAppEngagementMetric:(id)metric
{
  metricCopy = metric;
  v5 = __atxlog_handle_metrics([(ATXPETEventTracker2Protocol *)self->_tracker trackScalarForMessage:metricCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXHeroAppSingleSuggestionLogger *)self _logHeroAppEngagementMetric:metricCopy, v5];
  }
}

- (void)handleSingleSuggestion:(id)suggestion
{
  v48 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  suggestion = [suggestionCopy suggestion];
  bundleIdExecutableObject = [suggestion bundleIdExecutableObject];

  if (bundleIdExecutableObject && ([suggestionCopy feedbackMetadata], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = MEMORY[0x277CCAAC8];
    v11 = objc_opt_class();
    feedbackMetadata = [suggestionCopy feedbackMetadata];
    v43 = 0;
    v13 = [v10 unarchivedObjectOfClass:v11 fromData:feedbackMetadata error:&v43];
    v14 = v43;

    objc_autoreleasePoolPop(v9);
    if (v14 || !v13)
    {
      v23 = __atxlog_handle_metrics(v15);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138412802;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = suggestionCopy;
        *&buf[22] = 2112;
        v45 = v14;
        _os_log_error_impl(&dword_2263AA000, v23, OS_LOG_TYPE_ERROR, "%@ - not logging because could not retrieve location from completed session: %@. Unarchive error: %@", buf, 0x20u);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = __Block_byref_object_copy__28;
      v46 = __Block_byref_object_dispose__28;
      v47 = MEMORY[0x277CBEC28];
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__28;
      v41 = __Block_byref_object_dispose__28;
      v42 = MEMORY[0x277CBEC28];
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke;
      v27[3] = &unk_278599B08;
      v31 = buf;
      v32 = &v33;
      v30 = &v37;
      v27[4] = self;
      v16 = bundleIdExecutableObject;
      v28 = v16;
      v29 = v13;
      [suggestionCopy enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock:v27];
      if ([v38[5] isEqualToNumber:MEMORY[0x277CBEC38]])
      {
        v17 = [(ATXHeroAppSingleSuggestionLogger *)self _heroAppEngagementMetricWithBundleId:v16 interactionType:*(v34 + 6) consumerSubType:@"SingleSuggestionAnyConsumerSubType"];
        [(ATXHeroAppSingleSuggestionLogger *)self _logHeroAppEngagementMetric:v17];
      }

      v18 = +[_ATXAppPredictor sharedInstance];
      cdnDownloaderTriggerManager = [v18 cdnDownloaderTriggerManager];
      heroAppManager = [cdnDownloaderTriggerManager heroAppManager];
      heroFeedback = [heroAppManager heroFeedback];

      if ([*(*&buf[8] + 40) isEqualToNumber:MEMORY[0x277CBEC38]])
      {
        LODWORD(v22) = 1.0;
        [heroFeedback addConfirmForHeroAppPredictionWithBundleId:v16 weight:v22];
      }

      else if ([v38[5] isEqualToNumber:MEMORY[0x277CBEC38]])
      {
        LODWORD(v24) = 1.0;
        [heroFeedback addRejectForHeroAppPredictionWithBundleId:v16 weight:v24];
      }

      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(&v37, 8);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v14 = __atxlog_handle_metrics(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeroAppSingleSuggestionLogger *)self handleSingleSuggestion:suggestionCopy, v14];
    }
  }
}

void __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a3 == 3);
  }

  if (a3)
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    v9 = MEMORY[0x277CBEC38];
    *(v7 + 40) = MEMORY[0x277CBEC38];

    if (a3 == 2)
    {
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = *(*(a1 + 72) + 8);
    if (v3 > *(v12 + 24))
    {
      *(v12 + 24) = v3;
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a2];
    v16 = [v13 _heroAppEngagementMetricWithBundleId:v14 interactionType:v3 consumerSubType:v15];

    v17 = [*(a1 + 32) _logHeroAppEngagementMetric:v16];
    if (a2 <= 0x28)
    {
      if (((1 << a2) & 0x1B000000000) != 0)
      {
        v18 = 3;
LABEL_12:
        v19 = [ATXAppOrClipLaunch alloc];
        v20 = *(a1 + 40);
        [*(a1 + 48) coordinate];
        v22 = v21;
        [*(a1 + 48) coordinate];
        v23 = [(ATXAppOrClipLaunch *)v19 initAppLaunchWithBundleId:v20 launchReason:v18 latitude:v22 longitude:?];
        v24 = [[ATXHeroAndClipSessionLogSampledEvent alloc] initFromLaunch:v23];
        v25 = __atxlog_handle_hero(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_1(v24, v25);
        }

        v26 = 24;
        if (a3 == 2)
        {
          v26 = 16;
        }

        [*(*(a1 + 32) + v26) addObject:v24];

LABEL_17:
        goto LABEL_20;
      }

      if (a2 == 9)
      {
        v18 = 2;
        goto LABEL_12;
      }
    }

    v23 = __atxlog_handle_hero(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_2(a2, v23);
    }

    goto LABEL_17;
  }

  v16 = __atxlog_handle_hero(a1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_3(v16);
  }

LABEL_20:
}

- (void)_flushEventBuffer:(id)buffer numEventsToSample:(int64_t)sample isNegative:(BOOL)negative
{
  negativeCopy = negative;
  v24 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v8 = +[ATXHeroAndClipEventSamplers defaultSampler];
  v9 = [v8 sampleEvents:bufferCopy numToSample:sample];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        launch = [*(*(&v17 + 1) + 8 * v13) launch];
        [ATXLaunchAndLocationHarvester logAppOrClipLaunch:launch isNegativeSession:negativeCopy];

        ++v13;
      }

      while (v11 != v13);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      v11 = v10;
    }

    while (v10);
  }

  v15 = __atxlog_handle_hero(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v9 count];
    *buf = 134217984;
    v22 = v16;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "Session logged %lu hero app launch events.", buf, 0xCu);
  }

  [bufferCopy removeAllObjects];
}

- (void)flushEventBuffers
{
  v3 = +[ATXHeroAndClipConstants sharedInstance];
  v4 = __atxlog_handle_hero(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXHeroAppSingleSuggestionLogger *)v4 flushEventBuffers];
  }

  v5 = __atxlog_handle_hero(-[ATXHeroAppSingleSuggestionLogger _flushEventBuffer:numEventsToSample:isNegative:](self, "_flushEventBuffer:numEventsToSample:isNegative:", self->_positiveEventBuffer, [v3 heroAppSessionLogPositiveSamplesPerDay], 0));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXHeroAppSingleSuggestionLogger *)v5 flushEventBuffers];
  }

  v6 = __atxlog_handle_hero(-[ATXHeroAppSingleSuggestionLogger _flushEventBuffer:numEventsToSample:isNegative:](self, "_flushEventBuffer:numEventsToSample:isNegative:", self->_negativeEventBuffer, [v3 heroAppSessionLogNegativeSamplesPerDay], 1));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Flushed hero app session log event buffers", v7, 2u);
  }
}

- (void)_logHeroAppEngagementMetric:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 bundleId];
  v8 = [a2 consumerSubType];
  v9 = [a2 interactionType];
  if (v9 > 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = off_278599B28[v9];
  }

  *buf = 138413058;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = v10;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBHeroAppEngagementTracker with bundleId: %@ consumerSubType: %@ interactionType: %@", buf, 0x2Au);
}

- (void)handleSingleSuggestion:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - not logging because invalid bundleId or invalid feedbackMetadata from completed session: %@", &v7, 0x16u);
}

void __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Adding event %@ to the hero app session log buffer", &v2, 0xCu);
}

void __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_2(unsigned __int8 a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unknown consumer subtype for Hero app received: %@", &v4, 0xCu);
}

@end