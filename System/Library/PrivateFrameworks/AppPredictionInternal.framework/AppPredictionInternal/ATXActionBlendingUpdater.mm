@interface ATXActionBlendingUpdater
+ (double)generateScoreForFallbackActionKey:(id)key fallbackAction:(id)action penalizedFallbackActions:(id)actions;
+ (id)clientModelIdForConsumerSubType:(unsigned __int8)type;
+ (void)updateBlendingLayerWithBehavioralPredictions:(id)predictions feedbackMetadata:(id)metadata consumerSubType:(unsigned __int8)type;
+ (void)updateBlendingLayerWithFallbackActions;
+ (void)updateBlendingLayerWithHeuristicPredictions:(id)predictions;
+ (void)updateBlendingLayerWithLockscreenActions:(id)actions feedbackMetadata:(id)metadata;
+ (void)updateBlendingLayerWithRecentShortcuts:(id)shortcuts;
@end

@implementation ATXActionBlendingUpdater

+ (id)clientModelIdForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v6 = 0;
  if (type > 37)
  {
    switch(type)
    {
      case '1':
        v7 = 49;
        break;
      case '.':
        v7 = 48;
        break;
      case '&':
        v7 = 7;
        break;
      default:
        goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
    if ((typeCopy - 18) >= 4 && typeCopy != 16)
    {
LABEL_4:

      return v6;
    }
  }

  v6 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:{v7, v3}];

  return v6;
}

+ (void)updateBlendingLayerWithRecentShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:11];
  v4 = objc_alloc(MEMORY[0x277D42070]);
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v5 blendingLayerServer];
  v7 = [v4 initWithClientModelId:v3 blendingLayerServer:blendingLayerServer];

  [v7 updateSuggestions:shortcutsCopy];
}

+ (void)updateBlendingLayerWithBehavioralPredictions:(id)predictions feedbackMetadata:(id)metadata consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  predictionsCopy = predictions;
  metadataCopy = metadata;
  v9 = +[_ATXGlobals sharedInstance];
  v10 = [ATXActionBlendingUpdater clientModelIdForConsumerSubType:typeCopy];
  if (v10)
  {
    actionPredictionBlendingModelVersion = [v9 actionPredictionBlendingModelVersion];
    v12 = objc_alloc(MEMORY[0x277D42070]);
    v13 = +[ATXClientModelSuggestionReceiver sharedInstance];
    blendingLayerServer = [v13 blendingLayerServer];
    v15 = [v12 initWithClientModelId:v10 blendingLayerServer:blendingLayerServer];

    v16 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v10 clientModelVersion:actionPredictionBlendingModelVersion engagementResetPolicy:0];
    v17 = [ATXProactiveSuggestionBuilder proactiveSuggestionsFromActionResults:predictionsCopy clientModelSpec:v16];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __106__ATXActionBlendingUpdater_updateBlendingLayerWithBehavioralPredictions_feedbackMetadata_consumerSubType___block_invoke;
    v18[3] = &__block_descriptor_33_e20_v20__0B8__NSError_12l;
    v19 = typeCopy;
    [v15 updateSuggestions:v17 feedbackMetadata:metadataCopy completionHandler:v18];
  }
}

void __106__ATXActionBlendingUpdater_updateBlendingLayerWithBehavioralPredictions_feedbackMetadata_consumerSubType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 32)];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Successfully updated blending for %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 32)];
      __106__ATXActionBlendingUpdater_updateBlendingLayerWithBehavioralPredictions_feedbackMetadata_consumerSubType___block_invoke_cold_1(v9, v6, &v10, v7);
    }
  }
}

+ (void)updateBlendingLayerWithHeuristicPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v3 = +[_ATXGlobals sharedInstance];
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:3];
  heuristicPredictionBlendingModelVersion = [v3 heuristicPredictionBlendingModelVersion];
  v6 = objc_alloc(MEMORY[0x277D42070]);
  v7 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v7 blendingLayerServer];
  v9 = [v6 initWithClientModelId:v4 blendingLayerServer:blendingLayerServer];

  v10 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v4 clientModelVersion:heuristicPredictionBlendingModelVersion engagementResetPolicy:1];
  v11 = [ATXProactiveSuggestionBuilder proactiveSuggestionsFromHeuristicActionResults:predictionsCopy clientModelSpec:v10];
  [v9 updateSuggestions:v11];
}

+ (void)updateBlendingLayerWithFallbackActions
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = +[_ATXGlobals sharedInstance];
  v25 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:10];
  v2 = objc_alloc(MEMORY[0x277D42070]);
  v3 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v3 blendingLayerServer];
  v22 = [v2 initWithClientModelId:v25 blendingLayerServer:blendingLayerServer];

  actionFallbacksBlendingModelVersion = [v26 actionFallbacksBlendingModelVersion];
  v24 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v25 clientModelVersion:actionFallbacksBlendingModelVersion engagementResetPolicy:0];
  v5 = [objc_alloc(MEMORY[0x277CEB540]) initWithClientModelSpec:v24];
  v6 = MEMORY[0x277CBEB98];
  penalizedFallbackActions = [v26 penalizedFallbackActions];
  v28 = [v6 setWithArray:penalizedFallbackActions];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = objc_opt_new();
  enabledFallbackActions = [v26 enabledFallbackActions];
  v9 = [enabledFallbackActions countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(enabledFallbackActions);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v5 suggestionforSpecifiedFallbackActionType:{objc_msgSend(MEMORY[0x277CEB540], "fallbackActionTypeForString:", v12, v22)}];
        v14 = v13;
        if (v13)
        {
          executableSpecification = [v13 executableSpecification];
          executableObject = [executableSpecification executableObject];

          actionKey = [executableObject actionKey];
          [self generateScoreForFallbackActionKey:actionKey fallbackAction:v12 penalizedFallbackActions:v28];
          v19 = v18;
          scoreSpecification = [v14 scoreSpecification];
          [scoreSpecification setRawScore:v19];

          [v29 addObject:v14];
        }
      }

      v9 = [enabledFallbackActions countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  [v29 sortUsingComparator:&__block_literal_global_257];
  v21 = [v29 copy];
  [v22 updateSuggestions:v21];
}

uint64_t __66__ATXActionBlendingUpdater_updateBlendingLayerWithFallbackActions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = MEMORY[0x277CCABB0];
  v6 = [a3 scoreSpecification];
  [v6 rawScore];
  v7 = [v5 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 scoreSpecification];
  [v9 rawScore];
  v10 = [v8 numberWithDouble:?];
  v11 = [v7 compare:v10];

  return v11;
}

+ (double)generateScoreForFallbackActionKey:(id)key fallbackAction:(id)action penalizedFallbackActions:(id)actions
{
  v27[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  actionCopy = action;
  actionsCopy = actions;
  v10 = +[_ATXGlobals sharedInstance];
  v11 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v12 = [v11 histogramForLaunchType:90];
  v13 = [v11 histogramForLaunchType:91];
  v27[0] = keyCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v12 totalLaunchesForBundleIds:v14];
  v16 = v15;

  v26 = keyCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  [v13 totalLaunchesForBundleIds:v17];
  v19 = v18;

  [v12 totalLaunches];
  v21 = v20;
  [v13 totalLaunches];
  +[_ATXActionUtils computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:](_ATXActionUtils, "computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:", [v10 fallbackActionsEngagementPriorAlpha], objc_msgSend(v10, "fallbackActionsEngagementPriorBeta"), v16, v19, v21, v22);
  v24 = v23;
  if ([actionsCopy containsObject:actionCopy])
  {
    v24 = v24 + -10000.0;
  }

  return v24;
}

+ (void)updateBlendingLayerWithLockscreenActions:(id)actions feedbackMetadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  metadataCopy = metadata;
  v7 = +[_ATXGlobals sharedInstance];
  v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:9];
  v9 = objc_alloc(MEMORY[0x277D42070]);
  v10 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v10 blendingLayerServer];
  v12 = [v9 initWithClientModelId:v8 blendingLayerServer:blendingLayerServer];

  actionPredictionBlendingModelVersion = [v7 actionPredictionBlendingModelVersion];
  v14 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v8 clientModelVersion:actionPredictionBlendingModelVersion engagementResetPolicy:0];
  v15 = __atxlog_handle_blending(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = actionsCopy;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "lockscreen: converting actions to proactive suggestions: %@", &v18, 0xCu);
  }

  v16 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForLockscreenActions:actionsCopy clientModelSpec:v14];
  v17 = __atxlog_handle_blending(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "lockscreen: Sending suggestions to blending: %@", &v18, 0xCu);
  }

  [v12 updateSuggestions:v16 feedbackMetadata:metadataCopy completionHandler:&__block_literal_global_35_7];
}

void __86__ATXActionBlendingUpdater_updateBlendingLayerWithLockscreenActions_feedbackMetadata___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = __atxlog_handle_blending(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "lockscreen: successfully updated blending for lockscreen action predictions", v7, 2u);
    }
  }

  else
  {
    v6 = __atxlog_handle_blending(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__ATXActionBlendingUpdater_updateBlendingLayerWithLockscreenActions_feedbackMetadata___block_invoke_cold_1(v5, v6);
    }
  }
}

void __106__ATXActionBlendingUpdater_updateBlendingLayerWithBehavioralPredictions_feedbackMetadata_consumerSubType___block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Error updating blending for %@ with error: %@", buf, 0x16u);
}

void __86__ATXActionBlendingUpdater_updateBlendingLayerWithLockscreenActions_feedbackMetadata___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "lockscreen: error updating blending with error: %@", &v2, 0xCu);
}

@end