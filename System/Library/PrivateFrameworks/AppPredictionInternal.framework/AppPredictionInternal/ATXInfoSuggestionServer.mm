@interface ATXInfoSuggestionServer
+ (id)sharedInstance;
- (ATXInfoSuggestionServer)initWithInfoEngine:(id)engine rsSuggestionProducer:(id)producer infoHeuristics:(id)heuristics criterionRegistry:(id)registry xpcListener:(id)listener;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_processIncomingSuggestion:(id)suggestion sourceIdentifier:(id)identifier error:(id *)error;
- (id)_processIncomingSuggestions:(id)suggestions sourceIdentifier:(id)identifier error:(id *)error;
- (void)_addSuggestions:(id)suggestions forSourceIdentifier:(id)identifier needReset:(BOOL)reset errorHandler:(id)handler;
- (void)clearSuggestionsForInfoSourceIdentifier:(id)identifier errorHandler:(id)handler;
- (void)dealloc;
- (void)getSuggestionsForInfoSourceIdentifier:(id)identifier withReply:(id)reply;
- (void)informationHeuristics:(id)heuristics didUpdateSuggestions:(id)suggestions forHeuristic:(id)heuristic;
- (void)overwriteSuggestionsWithProactiveSuggestions:(id)suggestions forClientModelIdentifier:(id)identifier completionHandler:(id)handler;
- (void)refreshInfoSuggestionsWithCompletionHandler:(id)handler;
- (void)retrieveAvailableCriterionIdentifiersForSourceIdentifier:(id)identifier reply:(id)reply;
- (void)timelineDidReloadForWidget:(id)widget parentApp:(id)app withEntries:(id)entries completion:(id)completion;
@end

@implementation ATXInfoSuggestionServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_36 != -1)
  {
    +[ATXInfoSuggestionServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_44;

  return v3;
}

void __41__ATXInfoSuggestionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [ATXInfoSuggestionServer alloc];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CCAE98]);
  v7 = [v6 initWithMachServiceName:*MEMORY[0x277D42120]];
  v8 = [(ATXInfoSuggestionServer *)v1 initWithInfoEngine:v2 rsSuggestionProducer:v3 infoHeuristics:v4 criterionRegistry:v5 xpcListener:v7];
  v9 = sharedInstance__pasExprOnceResult_44;
  sharedInstance__pasExprOnceResult_44 = v8;

  objc_autoreleasePoolPop(v0);
}

- (ATXInfoSuggestionServer)initWithInfoEngine:(id)engine rsSuggestionProducer:(id)producer infoHeuristics:(id)heuristics criterionRegistry:(id)registry xpcListener:(id)listener
{
  engineCopy = engine;
  producerCopy = producer;
  heuristicsCopy = heuristics;
  registryCopy = registry;
  listenerCopy = listener;
  v21.receiver = self;
  v21.super_class = ATXInfoSuggestionServer;
  v17 = [(ATXInfoSuggestionServer *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_xpcListener, listener);
    objc_storeStrong(&v18->_criterionRegistry, registry);
    objc_storeStrong(&v18->_engine, engine);
    objc_storeStrong(&v18->_relevantShortcutSuggestionProducer, producer);
    objc_storeStrong(&v18->_informationHeuristics, heuristics);
    [(NSXPCListener *)v18->_xpcListener setDelegate:v18];
    [(NSXPCListener *)v18->_xpcListener resume];
    [(ATXInformationHeuristics *)v18->_informationHeuristics setDelegate:v18];
    [(ATXInformationHeuristics *)v18->_informationHeuristics refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:&__block_literal_global_24_2];
  }

  return v18;
}

void __112__ATXInfoSuggestionServer_initWithInfoEngine_rsSuggestionProducer_infoHeuristics_criterionRegistry_xpcListener___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = __atxlog_handle_gi(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __112__ATXInfoSuggestionServer_initWithInfoEngine_rsSuggestionProducer_infoHeuristics_criterionRegistry_xpcListener___block_invoke_cold_1();
    }
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3.receiver = self;
  v3.super_class = ATXInfoSuggestionServer;
  [(ATXInfoSuggestionServer *)&v3 dealloc];
}

- (void)refreshInfoSuggestionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  informationHeuristics = self->_informationHeuristics;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ATXInfoSuggestionServer_refreshInfoSuggestionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_27859A480;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ATXInformationHeuristics *)informationHeuristics refreshResultsForAllHeuristicsWithCompletionHandler:v7];
}

uint64_t __71__ATXInfoSuggestionServer_refreshInfoSuggestionsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = __atxlog_handle_gi(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __71__ATXInfoSuggestionServer_refreshInfoSuggestionsWithCompletionHandler___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)_processIncomingSuggestion:(id)suggestion sourceIdentifier:(id)identifier error:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  if (![(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    if (error)
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = identifierCopy;
      v26 = [[v24 alloc] initWithFormat:@"source ID %@ is invalid", v25];

      v27 = MEMORY[0x277CCA9B8];
      v28 = v26;
      v29 = [v27 alloc];
      v43 = *MEMORY[0x277CCA450];
      v44[0] = v28;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];

      v31 = [v29 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v30];
      v32 = v31;
      v33 = 0;
      *error = v31;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  criterionRegistry = self->_criterionRegistry;
  criterion = [suggestionCopy criterion];
  v12 = [(ATXInfoSuggestionCriterionRegistry *)criterionRegistry confidenceLevelForCriterion:criterion sourceIdentifier:identifierCopy];

  if ((v12 + 1) <= 1)
  {
    if (error)
    {
      criterion2 = [suggestionCopy criterion];
      v14 = MEMORY[0x277CCACA8];
      v15 = identifierCopy;
      v16 = [v14 alloc];
      if (v12)
      {
        v17 = [v16 initWithFormat:@"criterion %@ of %@ is disabled", criterion2, v15];

        v18 = MEMORY[0x277CCA9B8];
        v19 = v17;
        v20 = [v18 alloc];
        v43 = *MEMORY[0x277CCA450];
        v44[0] = v19;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];

        v22 = v20;
        v23 = -5;
      }

      else
      {
        v37 = [v16 initWithFormat:@"criterion %@ of %@ is invalid", criterion2, v15];

        v38 = MEMORY[0x277CCA9B8];
        v19 = v37;
        v39 = [v38 alloc];
        v43 = *MEMORY[0x277CCA450];
        v44[0] = v19;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];

        v22 = v39;
        v23 = -2;
      }

      v40 = [v22 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:v23 userInfo:v21];

      v41 = v40;
      *error = v40;
    }

LABEL_13:
    v33 = 0;
    goto LABEL_14;
  }

  [suggestionCopy setConfidenceLevel:v12];
  [suggestionCopy setSourceIdentifier:identifierCopy];
  suggestionIdentifier = [suggestionCopy suggestionIdentifier];

  if (!suggestionIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [suggestionCopy setSuggestionIdentifier:uUIDString];
  }

  v33 = suggestionCopy;
LABEL_14:

  return v33;
}

- (id)_processIncomingSuggestions:(id)suggestions sourceIdentifier:(id)identifier error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = suggestionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(ATXInfoSuggestionServer *)self _processIncomingSuggestion:*(*(&v20 + 1) + 8 * i) sourceIdentifier:identifierCopy error:error, v20];
        if (!v16)
        {

          v18 = 0;
          goto LABEL_11;
        }

        v17 = v16;
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = v10;
LABEL_11:

  return v18;
}

- (void)_addSuggestions:(id)suggestions forSourceIdentifier:(id)identifier needReset:(BOOL)reset errorHandler:(id)handler
{
  resetCopy = reset;
  identifierCopy = identifier;
  handlerCopy = handler;
  v17 = 0;
  v12 = [(ATXInfoSuggestionServer *)self _processIncomingSuggestions:suggestions sourceIdentifier:identifierCopy error:&v17];
  v13 = v17;
  v14 = v13;
  if (v12)
  {
    engine = self->_engine;
    if (resetCopy)
    {
      [(ATXInformationEngine *)engine resetSuggestionsTo:v12 forInfoSourceIdentifier:identifierCopy completionHandler:handlerCopy];
    }

    else
    {
      [(ATXInformationEngine *)engine insertSuggestions:v12 forInfoSourceIdentifier:identifierCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    v16 = __atxlog_handle_gi(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer _addSuggestions:forSourceIdentifier:needReset:errorHandler:];
    }

    handlerCopy[2](handlerCopy, v14);
  }
}

- (void)getSuggestionsForInfoSourceIdentifier:(id)identifier withReply:(id)reply
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  if ([(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    [(ATXInformationEngine *)self->_engine getSuggestionsForInfoSourceIdentifier:identifierCopy withReply:replyCopy];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = identifierCopy;
    v10 = [[v8 alloc] initWithFormat:@"source ID %@ is invalid", v9];

    v11 = MEMORY[0x277CCA9B8];
    v12 = v10;
    v13 = [v11 alloc];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v15 = [v13 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v14];
    v17 = __atxlog_handle_gi(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer getSuggestionsForInfoSourceIdentifier:withReply:];
    }

    replyCopy[2](replyCopy, 0, v15);
  }
}

- (void)clearSuggestionsForInfoSourceIdentifier:(id)identifier errorHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    [(ATXInformationEngine *)self->_engine clearSuggestionsForInfoSourceIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = identifierCopy;
    v10 = [[v8 alloc] initWithFormat:@"source ID %@ is invalid", v9];

    v11 = MEMORY[0x277CCA9B8];
    v12 = v10;
    v13 = [v11 alloc];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v15 = [v13 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v14];
    v17 = __atxlog_handle_gi(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer clearSuggestionsForInfoSourceIdentifier:errorHandler:];
    }

    handlerCopy[2](handlerCopy, v15);
  }
}

- (void)overwriteSuggestionsWithProactiveSuggestions:(id)suggestions forClientModelIdentifier:(id)identifier completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = __atxlog_handle_gi(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = [suggestionsCopy count];
    v50 = 2114;
    v51 = identifierCopy;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: receive %d suggestion(s) from ATXClientModel %{public}@", buf, 0x12u);
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = suggestionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [objc_alloc(MEMORY[0x277D42040]) initWithProactiveSuggestion:v16];
        if (!v18)
        {
          v26 = MEMORY[0x277CCACA8];
          v27 = v16;
          v28 = [[v26 alloc] initWithFormat:@"Failed to convert ATXProactiveSuggestion to ATXInfoSuggestion: %@", v27];

          v29 = MEMORY[0x277CCA9B8];
          v30 = v28;
          v31 = [v29 alloc];
          v52[0] = *MEMORY[0x277CCA450];
          *buf = v30;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];

          v33 = [v31 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-4 userInfo:v32];
          v35 = __atxlog_handle_gi(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            [ATXInfoSuggestionServer overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:];
          }

          v25 = handlerCopy;
          (*(handlerCopy + 2))(handlerCopy, 0, v33);

          objc_autoreleasePoolPop(v17);
          v23 = v11;
          goto LABEL_20;
        }

        v19 = v18;
        v20 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:18];
        [v19 setClientModelId:v20];

        [v10 addObject:v19];
        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v43 = 0;
  v21 = [(ATXInfoSuggestionServer *)self _processIncomingSuggestions:v10 sourceIdentifier:identifierCopy error:&v43];
  v22 = v43;
  v23 = v22;
  if (v21)
  {
    engine = self->_engine;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke;
    v39[3] = &unk_2785A0280;
    v40 = v21;
    v41 = identifierCopy;
    v25 = handlerCopy;
    v42 = handlerCopy;
    [(ATXInformationEngine *)engine resetSuggestionsTo:v40 forInfoSourceIdentifier:v41 completionHandler:v39];
  }

  else
  {
    v36 = __atxlog_handle_gi(v22);
    v25 = handlerCopy;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v23);
  }

LABEL_20:
}

void __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277D42040] proactiveSuggestionForInfoSuggestion:*(*(&v13 + 1) + 8 * i) withClientModelId:*(a1 + 40) clientModelVersion:@"1.0" rawScore:0 confidenceCategory:{0.0, v13}];
          if (!v10)
          {
            v12 = __atxlog_handle_gi(0);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke_cold_1(v12);
            }

            (*(*(a1 + 48) + 16))();
            goto LABEL_17;
          }

          v11 = v10;
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_17:
  }
}

- (void)retrieveAvailableCriterionIdentifiersForSourceIdentifier:(id)identifier reply:(id)reply
{
  v20[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  criterionRegistry = self->_criterionRegistry;
  replyCopy = reply;
  if ([(ATXInfoSuggestionCriterionRegistry *)criterionRegistry isSourceIdentifierRegistered:identifierCopy])
  {
    v9 = [(ATXInfoSuggestionCriterionRegistry *)self->_criterionRegistry availableCriterionIdentifiersForSourceIdentifier:identifierCopy];
    replyCopy[2](replyCopy, v9, 0);
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = identifierCopy;
    v12 = [[v10 alloc] initWithFormat:@"source ID %@ is invalid", v11];

    v13 = MEMORY[0x277CCA9B8];
    v14 = v12;
    v15 = [v13 alloc];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v9 = [v15 initWithDomain:@"ATXInfoSuggestionServerErrorDomain" code:-1 userInfo:v16];
    v18 = __atxlog_handle_gi(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestionServer retrieveAvailableCriterionIdentifiersForSourceIdentifier:reply:];
    }

    (replyCopy)[2](replyCopy, 0, v9);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = *MEMORY[0x277D42120];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277D42120]];
  v8 = v7;
  if (v7 && (v7 = objc_opt_respondsToSelector(), (v7 & 1) != 0) && (v7 = [v8 BOOLValue], (v7 & 1) != 0))
  {
    v9 = ATXInfoSuggestionXPCInterface();
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_38_1];
    [connectionCopy setInvalidationHandler:&__block_literal_global_41_1];
    v10 = __atxlog_handle_gi([connectionCopy resume]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = connectionCopy;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: accepts XPC connection: %{public}@", &v13, 0xCu);
    }

    v11 = 1;
  }

  else
  {
    v10 = __atxlog_handle_gi(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXInfoSuggestionServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v10];
    }

    v11 = 0;
  }

  return v11;
}

void __62__ATXInfoSuggestionServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = __atxlog_handle_gi(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __62__ATXInfoSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __62__ATXInfoSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_39(uint64_t a1, uint64_t a2)
{
  v2 = __atxlog_handle_gi(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: XPC connection invalidated.", v3, 2u);
  }
}

- (void)timelineDidReloadForWidget:(id)widget parentApp:(id)app withEntries:(id)entries completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  appCopy = app;
  entriesCopy = entries;
  completionCopy = completion;
  v14 = __atxlog_handle_xpc(completionCopy);
  v15 = os_signpost_id_generate(v14);

  v17 = __atxlog_handle_xpc(v16);
  v18 = v17;
  v19 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "_timelineDidUpdateForWidget", " enableTelemetry=YES ", buf, 2u);
  }

  v20 = @"entries";
  if ([entriesCopy count] && objc_msgSend(entriesCopy, "count") <= 1)
  {
    v20 = @"entry";
  }

  spid = v15;
  v21 = v20;
  v22 = __atxlog_handle_timeline(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [entriesCopy count];
    *buf = 138413058;
    v45 = widgetCopy;
    v46 = 2112;
    v47 = appCopy;
    v48 = 2048;
    v49 = v23;
    v50 = 2112;
    v51 = v21;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: timelineDidReloadForWidget:appBundleId:entries:completion called with widget: %@, appBundleId: %@ and %lu %@", buf, 0x2Au);
  }

  v41 = v21;
  v42 = appCopy;

  v24 = [ATXTimelineRelevance alloc];
  criterionRegistry = self->_criterionRegistry;
  abuseControlConfig = [(ATXInformationEngine *)self->_engine abuseControlConfig];
  v43 = widgetCopy;
  v27 = [(ATXTimelineRelevance *)v24 initWithWidget:widgetCopy criterionRegistry:criterionRegistry abuseControlConfig:abuseControlConfig];

  [(ATXTimelineRelevance *)v27 setDelegate:self->_engine];
  sourceId = [(ATXTimelineRelevance *)v27 sourceId];
  v29 = [(ATXInformationEngine *)self->_engine latestInfoSuggestionRelevantNowForSourceId:sourceId];
  engine = self->_engine;
  suggestionIdentifier = [v29 suggestionIdentifier];
  [(ATXInformationEngine *)engine deleteAllSuggestionsForSourceId:sourceId excludingSuggestionId:suggestionIdentifier];

  v32 = [(ATXTimelineRelevance *)v27 infoSuggestionsFromTimelineEntries:entriesCopy latestInfoSuggestionRelevantNow:v29];
  v33 = @"suggestions";
  if ([v32 count] <= 1 && objc_msgSend(v32, "count"))
  {
    v33 = @"suggestion";
  }

  v34 = v33;
  v35 = __atxlog_handle_timeline(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v32 count];
    *buf = 134218242;
    v45 = v36;
    v46 = 2112;
    v47 = v34;
    _os_log_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionServer: Sending %lu %@ to the InformationEngine", buf, 0x16u);
  }

  [(ATXInformationEngine *)self->_engine insertSuggestions:v32 forInfoSourceIdentifier:sourceId completionHandler:completionCopy];
  v38 = __atxlog_handle_xpc(v37);
  v39 = v38;
  if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v39, OS_SIGNPOST_INTERVAL_END, spid, "_timelineDidUpdateForWidget", " enableTelemetry=YES ", buf, 2u);
  }
}

- (void)informationHeuristics:(id)heuristics didUpdateSuggestions:(id)suggestions forHeuristic:(id)heuristic
{
  v21 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v8 = [MEMORY[0x277CE8990] sourceIdentifierForHeuristicWithName:heuristic];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = suggestionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:{18, v16}];
        [v14 setClientModelId:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(ATXInfoSuggestionServer *)self resetSuggestionsTo:v9 forInfoSourceIdentifier:v8 errorHandler:&__block_literal_global_56_1];
}

void __83__ATXInfoSuggestionServer_informationHeuristics_didUpdateSuggestions_forHeuristic___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_gi(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __83__ATXInfoSuggestionServer_informationHeuristics_didUpdateSuggestions_forHeuristic___block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)_addSuggestions:forSourceIdentifier:needReset:errorHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getSuggestionsForInfoSourceIdentifier:withReply:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)clearSuggestionsForInfoSourceIdentifier:errorHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_25();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "ATXInfoSuggestionServer %s: %{public}@", v1, 0x16u);
}

- (void)overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __115__ATXInfoSuggestionServer_overwriteSuggestionsWithProactiveSuggestions_forClientModelIdentifier_completionHandler___block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXInfoSuggestionServer overwriteSuggestionsWithProactiveSuggestions:forClientModelIdentifier:completionHandler:]_block_invoke";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXInfoSuggestionServer %s: error converting ATXProactiveSuggestion to ATXProactiveSuggestion", &v1, 0xCu);
}

- (void)retrieveAvailableCriterionIdentifiersForSourceIdentifier:reply:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXInfoSuggestionServer: Rejecting connection %{public}@ without entitlement %{public}@", &v3, 0x16u);
}

void __83__ATXInfoSuggestionServer_informationHeuristics_didUpdateSuggestions_forHeuristic___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Error donating suggestions through heuristics: %{public}@", &v2, 0xCu);
}

@end