@interface ATXContextHeuristicsServer
+ (id)sharedInstance;
- (ATXContextHeuristicsServer)initWithHeuristics:(id)heuristics;
- (id)_cachedContextsFromSuggestions:(id)suggestions;
- (id)_contextHeuristicsClientModel;
- (id)_retrieveOldContextHeuristicsSuggestions;
- (void)_updateBlendingLayerWithSuggestionsFromContextHeuristics:(id)heuristics;
- (void)_updateBlendingLayerWithSuggestionsFromSpotlightRecents:(id)recents;
- (void)_updateContextHeuristicsBiomeStreamWithNewSuggestions:(id)suggestions oldSuggestions:(id)oldSuggestions;
- (void)contextHeuristics:(id)heuristics didUpdateSpotlightRecents:(id)recents;
- (void)contextHeuristics:(id)heuristics didUpdateSuggestions:(id)suggestions;
@end

@implementation ATXContextHeuristicsServer

+ (id)sharedInstance
{
  v2 = __atxlog_handle_context_heuristic(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: sharedInstance", v5, 2u);
  }

  if (sharedInstance__pasOnceToken8_0 != -1)
  {
    +[ATXContextHeuristicsServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_51;

  return v3;
}

void __44__ATXContextHeuristicsServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [ATXContextHeuristicsServer alloc];
  v2 = objc_alloc(MEMORY[0x277CE8988]);
  v3 = [MEMORY[0x277D41BF8] sharedInstance];
  v4 = [v2 initWithLocationManager:v3];
  v5 = [(ATXContextHeuristicsServer *)v1 initWithHeuristics:v4];
  v6 = sharedInstance__pasExprOnceResult_51;
  sharedInstance__pasExprOnceResult_51 = v5;

  objc_autoreleasePoolPop(v0);
}

- (ATXContextHeuristicsServer)initWithHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  v19.receiver = self;
  v19.super_class = ATXContextHeuristicsServer;
  v6 = [(ATXContextHeuristicsServer *)&v19 init];
  p_isa = &v6->super.isa;
  if (!v6)
  {
LABEL_13:
    v12 = p_isa;
    goto LABEL_14;
  }

  objc_storeStrong(&v6->_heuristics, heuristics);
  [p_isa[1] setDelegate:p_isa];
  v8 = [[ATXContextHeuristicsScheduler alloc] initWithContextHeuristics:p_isa[1]];
  v9 = p_isa[2];
  p_isa[2] = v8;

  isClassCLocked = [MEMORY[0x277D42598] isClassCLocked];
  if (!isClassCLocked)
  {
    [p_isa[1] refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:&__block_literal_global_17_1];
    isSportsEnabled = [MEMORY[0x277CEBC58] isSportsEnabled];
    v14 = isSportsEnabled;
    v15 = __atxlog_handle_context_heuristic(isSportsEnabled);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *v18 = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: starting sports scheduler.", v18, 2u);
      }

      [p_isa[2] start];
    }

    else
    {
      if (v16)
      {
        *v18 = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: sports feature flag disabled, not starting.", v18, 2u);
      }
    }

    goto LABEL_13;
  }

  v11 = __atxlog_handle_context_heuristic(isClassCLocked);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [ATXContextHeuristicsServer initWithHeuristics:v11];
  }

  v12 = 0;
LABEL_14:

  return v12;
}

void __49__ATXContextHeuristicsServer_initWithHeuristics___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = __atxlog_handle_context_heuristic(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __49__ATXContextHeuristicsServer_initWithHeuristics___block_invoke_cold_1(v2);
    }
  }
}

- (void)_updateBlendingLayerWithSuggestionsFromContextHeuristics:(id)heuristics
{
  v9 = *MEMORY[0x277D85DE8];
  heuristicsCopy = heuristics;
  _contextHeuristicsClientModel = [(ATXContextHeuristicsServer *)self _contextHeuristicsClientModel];
  v6 = __atxlog_handle_context_heuristic(_contextHeuristicsClientModel);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [heuristicsCopy count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer context heuristics total: %lu", &v7, 0xCu);
  }

  [_contextHeuristicsClientModel updateSuggestions:heuristicsCopy completionHandler:&__block_literal_global_21_6];
}

void __87__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromContextHeuristics___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    v6 = __atxlog_handle_context_heuristic(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __87__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromContextHeuristics___block_invoke_cold_1(v5, v6);
    }
  }
}

- (void)_updateBlendingLayerWithSuggestionsFromSpotlightRecents:(id)recents
{
  v13 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:46];
  v5 = objc_alloc(MEMORY[0x277D42070]);
  v6 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v6 blendingLayerServer];
  v8 = [v5 initWithClientModelId:v4 blendingLayerServer:blendingLayerServer];

  v10 = __atxlog_handle_context_heuristic(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [recentsCopy count];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer spotlight recents total: %lu", &v11, 0xCu);
  }

  [v8 updateSuggestions:recentsCopy completionHandler:&__block_literal_global_25_9];
}

void __86__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromSpotlightRecents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    v6 = __atxlog_handle_context_heuristic(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromSpotlightRecents___block_invoke_cold_1(v5, v6);
    }
  }
}

- (void)contextHeuristics:(id)heuristics didUpdateSuggestions:(id)suggestions
{
  v10 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v6 = __atxlog_handle_context_heuristic(suggestionsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = suggestionsCopy;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer Context heuristics %@", &v8, 0xCu);
  }

  _retrieveOldContextHeuristicsSuggestions = [(ATXContextHeuristicsServer *)self _retrieveOldContextHeuristicsSuggestions];
  [(ATXContextHeuristicsServer *)self _updateBlendingLayerWithSuggestionsFromContextHeuristics:suggestionsCopy];
  [(ATXContextHeuristicsServer *)self _updateContextHeuristicsBiomeStreamWithNewSuggestions:suggestionsCopy oldSuggestions:_retrieveOldContextHeuristicsSuggestions];
}

- (void)contextHeuristics:(id)heuristics didUpdateSpotlightRecents:(id)recents
{
  v9 = *MEMORY[0x277D85DE8];
  recentsCopy = recents;
  v6 = __atxlog_handle_context_heuristic(recentsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = recentsCopy;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer Spotlight recents %@", &v7, 0xCu);
  }

  [(ATXContextHeuristicsServer *)self _updateBlendingLayerWithSuggestionsFromSpotlightRecents:recentsCopy];
}

- (id)_retrieveOldContextHeuristicsSuggestions
{
  _contextHeuristicsClientModel = [(ATXContextHeuristicsServer *)self _contextHeuristicsClientModel];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__104;
  v17 = __Block_byref_object_dispose__104;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __70__ATXContextHeuristicsServer__retrieveOldContextHeuristicsSuggestions__block_invoke;
  v10 = &unk_278597EC0;
  v12 = &v13;
  v4 = v3;
  v11 = v4;
  [_contextHeuristicsClientModel retrieveCurrentSuggestionsWithReply:&v7];
  [MEMORY[0x277D425A0] waitForSemaphore:v4 timeoutSeconds:{1.0, v7, v8, v9, v10}];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __70__ATXContextHeuristicsServer__retrieveOldContextHeuristicsSuggestions__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_updateContextHeuristicsBiomeStreamWithNewSuggestions:(id)suggestions oldSuggestions:(id)oldSuggestions
{
  v37 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v7 = [(ATXContextHeuristicsServer *)self _cachedContextsFromSuggestions:oldSuggestions];
  v26 = suggestionsCopy;
  v8 = [(ATXContextHeuristicsServer *)self _cachedContextsFromSuggestions:suggestionsCopy];
  v9 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if (([v8 containsObject:v15] & 1) == 0)
        {
          v16 = [[ATXContextHeuristicsEvent alloc] initWithContextName:&stru_2839A6058 contextType:v15 isStart:0];
          source = [v9 source];
          [source sendEvent:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        if (([v10 containsObject:v23] & 1) == 0)
        {
          v24 = [[ATXContextHeuristicsEvent alloc] initWithContextName:&stru_2839A6058 contextType:v23 isStart:1];
          source2 = [v9 source];
          [source2 sendEvent:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }
}

- (id)_contextHeuristicsClientModel
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v3 = objc_alloc(MEMORY[0x277D42070]);
  v4 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v4 blendingLayerServer];
  v6 = [v3 initWithClientModelId:v2 blendingLayerServer:blendingLayerServer];

  return v6;
}

- (id)_cachedContextsFromSuggestions:(id)suggestions
{
  v26 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = suggestionsCopy;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__104;
        v19 = __Block_byref_object_dispose__104;
        v20 = objc_opt_new();
        uiSpecification = [v8 uiSpecification];
        predictionReasons = [uiSpecification predictionReasons];

        if (predictionReasons)
        {
          uiSpecification2 = [v8 uiSpecification];
          [uiSpecification2 predictionReasons];
          ATXSuggestionPredictionReasonEnumerateReasonCodes();
        }

        [v4 addObject:v16[5]];
        _Block_object_dispose(&v15, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v12 = [v4 copy];

  return v12;
}

void __61__ATXContextHeuristicsServer__cachedContextsFromSuggestions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) appendString:v3];
}

void __87__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromContextHeuristics___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXContextHeuristicsServer: Blending update context heuristics failed due to error %{public}@", &v2, 0xCu);
}

void __86__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromSpotlightRecents___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXContextHeuristicsServer: Blending update spotlight recents failed due to error %{public}@", &v2, 0xCu);
}

@end