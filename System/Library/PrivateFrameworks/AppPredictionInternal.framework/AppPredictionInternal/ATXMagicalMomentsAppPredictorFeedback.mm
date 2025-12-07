@interface ATXMagicalMomentsAppPredictorFeedback
- (ATXMagicalMomentsAppPredictorFeedback)init;
- (ATXMagicalMomentsAppPredictorFeedback)initWithTracker:(id)tracker;
- (id)clientModelIds;
- (id)getCurrentABGroup;
- (int64_t)_anchorTypeFromBundleIdToAnchorTypeMap:(id)map bundleId:(id)id;
- (void)_handleEngagedProactiveSuggestion:(id)suggestion consumerSubType:(unsigned __int8)type bundleIdToAnchorType:(id)anchorType;
- (void)_handleShownProactiveSuggestion:(id)suggestion consumerSubType:(unsigned __int8)type bundleIdToAnchorType:(id)anchorType;
- (void)logEngagedMMMetricsEntryForBundle:(id)bundle consumerSubType:(unsigned __int8)type anchorType:(int64_t)anchorType abGroup:(id)group score:(double)score;
- (void)logShownMMMetricsEntryForBundle:(id)bundle consumerSubType:(unsigned __int8)type anchorType:(int64_t)anchorType abGroup:(id)group score:(double)score;
- (void)receiveUIFeedbackResult:(id)result;
@end

@implementation ATXMagicalMomentsAppPredictorFeedback

- (ATXMagicalMomentsAppPredictorFeedback)init
{
  v3 = objc_opt_new();
  v4 = [(ATXMagicalMomentsAppPredictorFeedback *)self initWithTracker:v3];

  return v4;
}

- (ATXMagicalMomentsAppPredictorFeedback)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = ATXMagicalMomentsAppPredictorFeedback;
  v6 = [(ATXMagicalMomentsAppPredictorFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, tracker);
  }

  return v7;
}

- (id)clientModelIds
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:24];
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, 0}];

  return v3;
}

- (void)receiveUIFeedbackResult:(id)result
{
  v43 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = __atxlog_handle_feedback(resultCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsAppPredictorFeedback receiveUIFeedbackResult:];
  }

  shownSuggestions = [resultCopy shownSuggestions];
  v7 = [shownSuggestions count];

  if (v7)
  {
    consumerSubType = [resultCopy consumerSubType];
    if (consumerSubType)
    {
      v9 = consumerSubType;
      v10 = objc_autoreleasePoolPush();
      v11 = objc_alloc(MEMORY[0x277CBEB98]);
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v10);
      v15 = objc_autoreleasePoolPush();
      v16 = MEMORY[0x277CCAAC8];
      clientCacheUpdate = [resultCopy clientCacheUpdate];
      feedbackMetadata = [clientCacheUpdate feedbackMetadata];
      v40 = 0;
      v19 = [v16 unarchivedObjectOfClasses:v14 fromData:feedbackMetadata error:&v40];
      v20 = v40;

      objc_autoreleasePoolPop(v15);
      if (!v19 || v20)
      {
        engagedSuggestions = __atxlog_handle_feedback(v21);
        if (os_log_type_enabled(engagedSuggestions, OS_LOG_TYPE_ERROR))
        {
          [ATXMagicalMomentsAppPredictorFeedback receiveUIFeedbackResult:];
        }
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        shownSuggestions2 = [resultCopy shownSuggestions];
        v23 = [shownSuggestions2 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v37;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v37 != v25)
              {
                objc_enumerationMutation(shownSuggestions2);
              }

              [(ATXMagicalMomentsAppPredictorFeedback *)self _handleShownProactiveSuggestion:*(*(&v36 + 1) + 8 * i) consumerSubType:v9 bundleIdToAnchorType:v19];
            }

            v24 = [shownSuggestions2 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v24);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        engagedSuggestions = [resultCopy engagedSuggestions];
        v28 = [engagedSuggestions countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v33;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v33 != v30)
              {
                objc_enumerationMutation(engagedSuggestions);
              }

              [(ATXMagicalMomentsAppPredictorFeedback *)self _handleEngagedProactiveSuggestion:*(*(&v32 + 1) + 8 * j) consumerSubType:v9 bundleIdToAnchorType:v19];
            }

            v29 = [engagedSuggestions countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v29);
        }
      }
    }

    else
    {
      v20 = __atxlog_handle_feedback(consumerSubType);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ATXMagicalMomentsAppPredictorFeedback receiveUIFeedbackResult:?];
      }
    }
  }
}

- (void)_handleShownProactiveSuggestion:(id)suggestion consumerSubType:(unsigned __int8)type bundleIdToAnchorType:(id)anchorType
{
  typeCopy = type;
  v24 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  anchorTypeCopy = anchorType;
  bundleIdExecutableObject = [suggestionCopy bundleIdExecutableObject];
  if (bundleIdExecutableObject)
  {
    v11 = [(ATXMagicalMomentsAppPredictorFeedback *)self _anchorTypeFromBundleIdToAnchorTypeMap:anchorTypeCopy bundleId:bundleIdExecutableObject];
    if ((v11 - 23) > 0xFFFFFFFFFFFFFFE9)
    {
      v15 = v11;
      getCurrentABGroup = [(ATXMagicalMomentsAppPredictorFeedback *)self getCurrentABGroup];
      scoreSpecification = [suggestionCopy scoreSpecification];
      [scoreSpecification rawScore];
      [(ATXMagicalMomentsAppPredictorFeedback *)self logShownMMMetricsEntryForBundle:bundleIdExecutableObject consumerSubType:typeCopy anchorType:v15 abGroup:getCurrentABGroup score:?];

      goto LABEL_9;
    }

    v12 = __atxlog_handle_feedback(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = bundleIdExecutableObject;
      v22 = 2112;
      v23 = anchorTypeCopy;
      _os_log_error_impl(&dword_2263AA000, v12, OS_LOG_TYPE_ERROR, "%@ - could not find anchor type for bundleId: %@ in map: %@", &v18, 0x20u);
    }
  }

  else
  {
    v12 = __atxlog_handle_feedback(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXMagicalMomentsAppPredictorFeedback _handleShownProactiveSuggestion:consumerSubType:bundleIdToAnchorType:];
    }
  }

LABEL_9:
}

- (void)_handleEngagedProactiveSuggestion:(id)suggestion consumerSubType:(unsigned __int8)type bundleIdToAnchorType:(id)anchorType
{
  typeCopy = type;
  v24 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  anchorTypeCopy = anchorType;
  bundleIdExecutableObject = [suggestionCopy bundleIdExecutableObject];
  if (!bundleIdExecutableObject)
  {
    v15 = __atxlog_handle_feedback(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXMagicalMomentsAppPredictorFeedback _handleShownProactiveSuggestion:consumerSubType:bundleIdToAnchorType:];
    }

    goto LABEL_8;
  }

  v11 = [(ATXMagicalMomentsAppPredictorFeedback *)self _anchorTypeFromBundleIdToAnchorTypeMap:anchorTypeCopy bundleId:bundleIdExecutableObject];
  if (!v11)
  {
    v15 = __atxlog_handle_feedback(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = 138412802;
      v19 = v17;
      v20 = 2112;
      v21 = bundleIdExecutableObject;
      v22 = 2112;
      v23 = anchorTypeCopy;
      _os_log_error_impl(&dword_2263AA000, v15, OS_LOG_TYPE_ERROR, "%@ - could not find anchor type for bundleId: %@ in map: %@", &v18, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

  v12 = v11;
  getCurrentABGroup = [(ATXMagicalMomentsAppPredictorFeedback *)self getCurrentABGroup];
  scoreSpecification = [suggestionCopy scoreSpecification];
  [scoreSpecification rawScore];
  [(ATXMagicalMomentsAppPredictorFeedback *)self logEngagedMMMetricsEntryForBundle:bundleIdExecutableObject consumerSubType:typeCopy anchorType:v12 abGroup:getCurrentABGroup score:?];

LABEL_9:
}

- (void)logShownMMMetricsEntryForBundle:(id)bundle consumerSubType:(unsigned __int8)type anchorType:(int64_t)anchorType abGroup:(id)group score:(double)score
{
  typeCopy = type;
  groupCopy = group;
  bundleCopy = bundle;
  v14 = objc_opt_new();
  [v14 setBundleId:bundleCopy];

  [v14 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", anchorType)}];
  [v14 setAbGroup:groupCopy];

  v15 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
  [v14 setConsumerSubType:v15];

  v16 = __atxlog_handle_metrics([(ATXPETEventTracker2Protocol *)self->_tracker trackDistributionForMessage:v14 value:score]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsAppPredictorFeedback logShownMMMetricsEntryForBundle:consumerSubType:anchorType:abGroup:score:];
  }
}

- (void)logEngagedMMMetricsEntryForBundle:(id)bundle consumerSubType:(unsigned __int8)type anchorType:(int64_t)anchorType abGroup:(id)group score:(double)score
{
  typeCopy = type;
  groupCopy = group;
  bundleCopy = bundle;
  v14 = objc_opt_new();
  [v14 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", anchorType)}];
  [v14 setBundleId:bundleCopy];

  [v14 setAbGroup:groupCopy];
  v15 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
  [v14 setConsumerSubType:v15];

  v16 = __atxlog_handle_metrics([(ATXPETEventTracker2Protocol *)self->_tracker trackDistributionForMessage:v14 value:score]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsAppPredictorFeedback logEngagedMMMetricsEntryForBundle:consumerSubType:anchorType:abGroup:score:];
  }
}

- (id)getCurrentABGroup
{
  v2 = +[_ATXAppPredictor sharedInstance];
  abGroupIdentifiers = [v2 abGroupIdentifiers];
  v4 = [abGroupIdentifiers objectAtIndexedSubscript:16];

  return v4;
}

- (int64_t)_anchorTypeFromBundleIdToAnchorTypeMap:(id)map bundleId:(id)id
{
  v4 = [map objectForKey:id];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if (integerValue <= 0x16)
    {
      v7 = integerValue;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)receiveUIFeedbackResult:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)receiveUIFeedbackResult:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)receiveUIFeedbackResult:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_handleShownProactiveSuggestion:consumerSubType:bundleIdToAnchorType:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)logShownMMMetricsEntryForBundle:consumerSubType:anchorType:abGroup:score:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 bundleId];
  [v0 anchor];
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

- (void)logEngagedMMMetricsEntryForBundle:consumerSubType:anchorType:abGroup:score:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 bundleId];
  [v0 anchor];
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

@end