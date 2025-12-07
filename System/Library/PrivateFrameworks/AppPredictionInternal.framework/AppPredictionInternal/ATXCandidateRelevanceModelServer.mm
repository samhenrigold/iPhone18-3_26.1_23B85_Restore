@interface ATXCandidateRelevanceModelServer
+ (id)currentContextForConfig:(id)config contextOverride:(id)override;
+ (id)mergeHeuristicSuggestions:(id)suggestions withSuggestions:(id)withSuggestions;
+ (id)suggestionExecutableIdsFromSuggestions:(id)suggestions;
- (ATXCandidateRelevanceModelServer)initWithConfig:(id)config;
- (id)sortedProactiveSuggestionsForContext:(id)context;
- (void)sendSuggestionsToBlending;
- (void)sendSuggestionsToBlendingForContext:(id)context;
@end

@implementation ATXCandidateRelevanceModelServer

- (ATXCandidateRelevanceModelServer)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelServer;
  v6 = [(ATXCandidateRelevanceModelServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

- (void)sendSuggestionsToBlending
{
  v29 = *MEMORY[0x277D85DE8];
  isEnabled = [(ATXCandidateRelevanceModelConfig *)self->_config isEnabled];
  if (isEnabled && (+[ATXCandidateRelevanceModelGlobals sharedInstance](ATXCandidateRelevanceModelGlobals, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isPipelineEnabled], v4, (v5 & 1) != 0))
  {
    datastore = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
    clientModel = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
    clientModelId = [clientModel clientModelId];
    clientModel5 = [datastore mostRecentVerifiedTrainDateForClientModelName:clientModelId];

    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = v10;
    if (clientModel5 && (v10 = [v10 timeIntervalSinceDate:clientModel5], v12 <= 604800.0))
    {
      v24 = [objc_opt_class() currentContextForConfig:self->_config contextOverride:MEMORY[0x277CBEC10]];
      [(ATXCandidateRelevanceModelServer *)self sendSuggestionsToBlendingForContext:v24];
    }

    else
    {
      v13 = __atxlog_handle_relevance_model(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        clientModel2 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
        clientModelId2 = [clientModel2 clientModelId];
        v25 = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = clientModelId2;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%@ - There doesn't exist a trained model in the last week to use for config with client model %@. Sending empty suggestions to blending.", &v25, 0x16u);
      }

      clientModel3 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
      [clientModel3 updateSuggestions:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v19 = __atxlog_handle_relevance_model(isEnabled);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      clientModel4 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
      clientModelId3 = [clientModel4 clientModelId];
      v25 = 138412546;
      v26 = v21;
      v27 = 2112;
      v28 = clientModelId3;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "%@ - Config for client model %@ is not enabled or the pipeline is not enabled. Sending empty suggestions to blending.", &v25, 0x16u);
    }

    clientModel5 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
    [clientModel5 updateSuggestions:MEMORY[0x277CBEBF8]];
  }
}

+ (id)currentContextForConfig:(id)config contextOverride:(id)override
{
  overrideCopy = override;
  configCopy = config;
  v7 = +[ATXPredictionContextBuilder sharedInstance];
  v8 = [configCopy candidatePublisherFromStartTime:-259200.0];

  v9 = [v7 predictionContextForCurrentContextAndCandidatePublisher:v8 contextOverride:overrideCopy];

  return v9;
}

- (void)sendSuggestionsToBlendingForContext:(id)context
{
  v4 = [(ATXCandidateRelevanceModelServer *)self sortedProactiveSuggestionsForContext:context];
  clientModel = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke;
  v7[3] = &unk_278596C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [clientModel updateSuggestions:v6 completionHandler:v7];
}

void __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __atxlog_handle_relevance_model(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [*(a1 + 40) count];
      v11 = [*(*(a1 + 32) + 8) clientModel];
      v12 = [v11 clientModelId];
      v13 = 138412802;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - Successfully sent %lu predictions to blending layer for client model: %@", &v13, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke_cold_1();
  }
}

- (id)sortedProactiveSuggestionsForContext:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  clientModel = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
  clientModelId = [clientModel clientModelId];

  v8 = __atxlog_handle_relevance_model(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = clientModelId;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%@ - Beginning model serving for config with client model: %@.", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v58 = __Block_byref_object_copy__1;
  v59 = __Block_byref_object_dispose__1;
  v60 = objc_opt_new();
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = objc_opt_new();
  datastore = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke;
  v43[3] = &unk_278596CB0;
  v43[4] = self;
  v45 = buf;
  v12 = contextCopy;
  v44 = v12;
  v46 = &v47;
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29;
  v38 = &unk_278596CD8;
  selfCopy = self;
  v13 = clientModelId;
  v40 = v13;
  v41 = buf;
  v42 = &v47;
  [datastore receiveMostRecentVerifiedTrainedModelTrainingResults:v43 clientModelName:v13 completion:&v35];

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = 0;
  *&v17 = 138412546;
  v34 = v17;
  while ([*(*&buf[8] + 40) count] > v16)
  {
    v18 = [*(*&buf[8] + 40) objectAtIndexedSubscript:v16];
    v19 = [v48[5] objectAtIndexedSubscript:v16];
    [v19 floatValue];
    v21 = v20;

    LODWORD(v22) = v21;
    v23 = [(ATXCandidateRelevanceModelConfig *)self->_config proactiveSuggestionForCandidate:v18 prediction:v22];
    v24 = v23;
    if (v23)
    {
      executableSpecification = [v23 executableSpecification];
      executableIdentifier = [executableSpecification executableIdentifier];
      [v15 addObject:executableIdentifier];

      [v14 addObject:v24];
    }

    else
    {
      v27 = __atxlog_handle_relevance_model(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *v53 = v34;
        v54 = v29;
        v55 = 2112;
        v56 = v18;
        _os_log_error_impl(&dword_2263AA000, v27, OS_LOG_TYPE_ERROR, "%@ - Could not create suggestion for candidate: %@.", v53, 0x16u);
      }
    }

    ++v16;
  }

  v30 = [(ATXCandidateRelevanceModelConfig *)self->_config heuristicSuggestionsForContext:v12 currentSuggestionExecutableIds:v15];
  v31 = [objc_opt_class() mergeHeuristicSuggestions:v30 withSuggestions:v14];
  v32 = [v31 sortedArrayUsingComparator:&__block_literal_global_5];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(buf, 8);

  return v32;
}

void __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 candidate];
  v5 = [*(a1[4] + 8) candidateIsStillValidToSuggest:v4];
  if (v5)
  {
    [*(*(a1[6] + 8) + 40) addObject:v4];
    v6 = [v3 model];
    v7 = a1[5];
    v8 = [v3 featurizationManager];
    [v6 predictForContext:v7 candidate:v4 featurizationManager:v8];
    v10 = v9;

    v12 = __atxlog_handle_relevance_model(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v3 modelUUID];
      v16 = [v15 UUIDString];
      [v4 identifier];
      v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v33 = 138413058;
      v34 = v14;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v17;
      v39 = 2048;
      v40 = v10;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@ - Model %@ scored candidate with identifier %@ and score %f.", &v33, 0x2Au);
    }

    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v19 = [v3 model];
      v20 = a1[5];
      v21 = [v3 featurizationManager];
      [v19 featureContributionsDuringInferenceDescriptionForContext:v20 candidate:v4 featurizationManager:v21];
      v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v24 = __atxlog_handle_relevance_model(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v4 identifier];
        v33 = 138413058;
        v34 = v26;
        v35 = 2112;
        v36 = v27;
        v37 = 2048;
        v38 = v10;
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%@ - Features contributing to scored candidate with identifier %@ and score %f:\n%@\n", &v33, 0x2Au);
      }
    }

    v28 = *(*(a1[7] + 8) + 40);
    *&v18 = v10;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    [v28 addObject:v29];
  }

  else
  {
    v29 = __atxlog_handle_relevance_model(v5);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = [v4 identifier];
      v33 = 138412546;
      v34 = v31;
      v35 = 2112;
      v36 = v32;
      _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "%@ - Skipping candidate because it should not be predicted: %@", &v33, 0x16u);
    }
  }
}

void __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29(void *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_relevance_model(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Successfully generated predictions for client model: %@", &v14, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29_cold_1(a1, v5);
    }

    v9 = objc_opt_new();
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = objc_opt_new();
    v13 = *(a1[7] + 8);
    v5 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

uint64_t __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [a3 scoreSpecification];
  [v6 rawScore];
  v7 = [v4 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 scoreSpecification];

  [v9 rawScore];
  v10 = [v8 numberWithDouble:?];
  v11 = [v7 compare:v10];

  return v11;
}

+ (id)mergeHeuristicSuggestions:(id)suggestions withSuggestions:(id)withSuggestions
{
  v26 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  withSuggestionsCopy = withSuggestions;
  if ([suggestionsCopy count])
  {
    v7 = [suggestionsCopy mutableCopy];
    v20 = suggestionsCopy;
    v8 = [objc_opt_class() suggestionExecutableIdsFromSuggestions:suggestionsCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = withSuggestionsCopy;
    v9 = withSuggestionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          executableSpecification = [v14 executableSpecification];
          executableIdentifier = [executableSpecification executableIdentifier];
          v17 = [v8 containsObject:executableIdentifier];

          if ((v17 & 1) == 0)
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    withSuggestionsCopy = v19;
    suggestionsCopy = v20;
  }

  else
  {
    v7 = withSuggestionsCopy;
  }

  return v7;
}

+ (id)suggestionExecutableIdsFromSuggestions:(id)suggestions
{
  v18 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        executableSpecification = [*(*(&v13 + 1) + 8 * i) executableSpecification];
        executableIdentifier = [executableSpecification executableIdentifier];
        [v4 addObject:executableIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

void __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v3 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [*(*(v3 + 32) + 8) clientModel];
  v7 = [v6 clientModelId];
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = v1;
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%@ - Failed to send predictions to blending layer for client model: %@. Error: %@", &v8, 0x20u);
}

void __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 40);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - Could not complete generating predictions for client model: %@", &v7, 0x16u);
}

@end