@interface ATXAppClipSingleSuggestionLogger
- (ATXAppClipSingleSuggestionLogger)initWithTracker:(id)tracker;
- (id)_appClipEngagementMetricWithBundleId:(id)id urlHash:(id)hash interactionType:(int)type consumerSubType:(id)subType;
- (void)_flushEventBuffer:(id)buffer numEventsToSample:(int64_t)sample isNegative:(BOOL)negative;
- (void)_logAppClipEngagementMetric:(id)metric;
- (void)flushEventBuffers;
- (void)handleSingleSuggestion:(id)suggestion;
@end

@implementation ATXAppClipSingleSuggestionLogger

- (ATXAppClipSingleSuggestionLogger)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v13.receiver = self;
  v13.super_class = ATXAppClipSingleSuggestionLogger;
  v6 = [(ATXAppClipSingleSuggestionLogger *)&v13 init];
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

- (id)_appClipEngagementMetricWithBundleId:(id)id urlHash:(id)hash interactionType:(int)type consumerSubType:(id)subType
{
  v6 = *&type;
  subTypeCopy = subType;
  hashCopy = hash;
  idCopy = id;
  v12 = objc_opt_new();
  [v12 setBundleId:idCopy];

  [v12 setUrlHash:hashCopy];
  [v12 setInteractionType:v6];
  [v12 setConsumerSubType:subTypeCopy];

  return v12;
}

- (void)_logAppClipEngagementMetric:(id)metric
{
  metricCopy = metric;
  v5 = __atxlog_handle_metrics([(ATXPETEventTracker2Protocol *)self->_tracker trackScalarForMessage:metricCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAppClipSingleSuggestionLogger *)self _logAppClipEngagementMetric:metricCopy, v5];
  }
}

- (void)handleSingleSuggestion:(id)suggestion
{
  v60 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCAAC8];
  v7 = objc_opt_class();
  suggestion = [suggestionCopy suggestion];
  executableSpecification = [suggestion executableSpecification];
  executable = [executableSpecification executable];
  v55 = 0;
  v11 = [v6 unarchivedObjectOfClass:v7 fromData:executable error:&v55];
  v12 = v55;

  objc_autoreleasePoolPop(v5);
  if (v12 || !v11)
  {
    v20 = __atxlog_handle_metrics(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138412802;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = suggestionCopy;
      *&buf[22] = 2112;
      v57 = v12;
      _os_log_error_impl(&dword_2263AA000, v20, OS_LOG_TYPE_ERROR, "%@ - not logging because could not retrieve bundleId from completed session: %@. Unarchive error: %@", buf, 0x20u);
    }
  }

  else
  {
    bundleId = [v11 bundleId];
    urlHash = [v11 urlHash];
    [v11 latitudeAtPredictionTime];
    v17 = v16;
    [v11 longitudeAtPredictionTime];
    v19 = v18;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v57 = __Block_byref_object_copy__10;
    v58 = __Block_byref_object_dispose__10;
    v59 = MEMORY[0x277CBEC28];
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__10;
    v53 = __Block_byref_object_dispose__10;
    v54 = MEMORY[0x277CBEC28];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke;
    v35 = &unk_278598668;
    v40 = &v49;
    v41 = buf;
    v20 = bundleId;
    v36 = v20;
    v21 = urlHash;
    v43 = v17;
    v44 = v19;
    v37 = v21;
    selfCopy = self;
    v22 = v11;
    v39 = v22;
    v42 = &v45;
    [suggestionCopy enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock:&v32];
    if ([v50[5] isEqualToNumber:{MEMORY[0x277CBEC38], v32, v33, v34, v35}])
    {
      v23 = [(ATXAppClipSingleSuggestionLogger *)self _appClipEngagementMetricWithBundleId:v20 urlHash:v21 interactionType:*(v46 + 6) consumerSubType:@"SingleSuggestionAnyConsumerSubType"];
      [(ATXAppClipSingleSuggestionLogger *)self _logAppClipEngagementMetric:v23];
    }

    v24 = +[_ATXAppPredictor sharedInstance];
    cdnDownloaderTriggerManager = [v24 cdnDownloaderTriggerManager];
    heroClipManager = [cdnDownloaderTriggerManager heroClipManager];
    feedback = [heroClipManager feedback];

    if ([*(*&buf[8] + 40) isEqualToNumber:MEMORY[0x277CBEC38]])
    {
      LODWORD(v28) = 1.0;
      [feedback addConfirmForAppClipWithHeroAppPrediction:v22 weight:v28];
    }

    else if ([v50[5] isEqualToNumber:MEMORY[0x277CBEC38]])
    {
      LODWORD(v31) = 1.0;
      [feedback addRejectForAppClipWithHeroAppPrediction:v22 weight:v31];
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(buf, 8);
  }
}

void __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 21)
  {
    v6 = 2;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_25:
    v23 = __atxlog_handle_hero(a1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_3(v23);
    }

    goto LABEL_29;
  }

  if (a2 == 36 || a2 == 39)
  {
    v6 = 3;
    if (a3)
    {
LABEL_5:
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      v9 = MEMORY[0x277CBEC38];
      *(v7 + 40) = MEMORY[0x277CBEC38];

      if (a3 == 2)
      {
        v11 = *(*(a1 + 72) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v9;
      }

      if (!*(a1 + 32) || !*(a1 + 40) || *(a1 + 88) == *MEMORY[0x277D131D0] || *(a1 + 96) == *MEMORY[0x277D131D0])
      {
        v13 = __atxlog_handle_hero(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_2(a1, v13);
        }
      }

      else
      {
        v13 = [[ATXAppOrClipLaunch alloc] initAppClipLaunchWithBundleId:*(a1 + 32) urlHash:*(a1 + 40) launchReason:v6 latitude:*(a1 + 88) longitude:*(a1 + 96)];
        v14 = [[ATXHeroAndClipSessionLogSampledEvent alloc] initFromLaunch:v13];
        v15 = __atxlog_handle_hero(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_1(v14, v15);
        }

        v16 = 16;
        if (((a3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v16 = 24;
        }

        [*(*(a1 + 48) + v16) addObject:v14];
      }

      if (a3 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * (a3 == 3);
      }

      v18 = *(*(a1 + 80) + 8);
      if (v17 > *(v18 + 24))
      {
        *(v18 + 24) = v17;
      }

      v20 = *(a1 + 40);
      v19 = *(a1 + 48);
      v21 = *(a1 + 32);
      v22 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a2];
      v23 = [v19 _appClipEngagementMetricWithBundleId:v21 urlHash:v20 interactionType:v17 consumerSubType:v22];

      [*(a1 + 48) _logAppClipEngagementMetric:v23];
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v23 = __atxlog_handle_hero(a1);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_4(a2, v23);
  }

LABEL_29:
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
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "Session logged %lu app clip launch events.", buf, 0xCu);
  }

  [bufferCopy removeAllObjects];
}

- (void)flushEventBuffers
{
  v3 = +[ATXHeroAndClipConstants sharedInstance];
  v4 = __atxlog_handle_hero(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAppClipSingleSuggestionLogger *)v4 flushEventBuffers];
  }

  v5 = __atxlog_handle_hero(-[ATXAppClipSingleSuggestionLogger _flushEventBuffer:numEventsToSample:isNegative:](self, "_flushEventBuffer:numEventsToSample:isNegative:", self->_positiveEventBuffer, [v3 appClipSessionLogPositiveSamplesPerDay], 0));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAppClipSingleSuggestionLogger *)v5 flushEventBuffers];
  }

  v6 = __atxlog_handle_hero(-[ATXAppClipSingleSuggestionLogger _flushEventBuffer:numEventsToSample:isNegative:](self, "_flushEventBuffer:numEventsToSample:isNegative:", self->_negativeEventBuffer, [v3 appClipSessionLogNegativeSamplesPerDay], 1));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Flushed app clip session log event buffers", v7, 2u);
  }
}

- (void)_logAppClipEngagementMetric:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 bundleId];
  v8 = [a2 urlHash];
  v9 = [a2 consumerSubType];
  v10 = [a2 interactionType];
  if (v10 > 2)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_278598688[v10];
  }

  *buf = 138413314;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  v20 = 2112;
  v21 = v11;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAppClipSessionEngagementTracker with bundleId: %@ urlHash: %@ consumerSubType: %@ interactionType: %@", buf, 0x34u);
}

void __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Adding event %@ to the app clip session log buffer", &v2, 0xCu);
}

void __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "BundleId or URL Hash or latitudeAtPredictionTime or longitudeAtPredictionTime missing while trying to log session for App Clip Prediction: %@", &v3, 0xCu);
}

void __59__ATXAppClipSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_4(unsigned __int8 a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unknown consumer subtype for Location Based Dimsum received: %@", &v4, 0xCu);
}

@end