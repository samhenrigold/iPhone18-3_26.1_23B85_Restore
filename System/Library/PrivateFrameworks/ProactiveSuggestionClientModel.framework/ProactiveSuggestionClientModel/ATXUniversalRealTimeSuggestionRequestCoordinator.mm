@interface ATXUniversalRealTimeSuggestionRequestCoordinator
- (ATXUniversalRealTimeSuggestionRequestCoordinator)initWithBlendingLayer:(id)layer hyperParameters:(id)parameters pendingRefreshTracker:(id)tracker server:(id)server;
- (id)cacheUpdateDictionaryFromCacheUpdatesArray:(id)array;
- (id)clientModelUpdatesForSuggestionRequest:(id)request;
- (id)generatedRankedSuggestionsForSuggestionRequest:(id)request limit:(id)limit;
- (id)selectedLayoutForSuggestionRequest:(id)request;
- (void)delegateUpdatedSuggestionsForClientModelId:(id)id suggestionRequest:(id)request response:(id)response clientModelsPendingUpdate:(id)update;
- (void)realTimeProviderDelegateForClientModelId:(id)id completion:(id)completion;
- (void)registerRealTimeSuggestionProviderDelegate:(id)delegate clientModelId:(id)id;
- (void)remoteAsyncDelegateForClientModel:(id)model completion:(id)completion;
- (void)respondToRequestWithPreviouslyCachedPredictionsForClientModelId:(id)id suggestionRequest:(id)request;
- (void)updateSuggestionsFromDelegate:(id)delegate connection:(id)connection clientModelId:(id)id clientModelsPendingUpdate:(id)update dispatchGroup:(id)group suggestionRequest:(id)request;
@end

@implementation ATXUniversalRealTimeSuggestionRequestCoordinator

- (ATXUniversalRealTimeSuggestionRequestCoordinator)initWithBlendingLayer:(id)layer hyperParameters:(id)parameters pendingRefreshTracker:(id)tracker server:(id)server
{
  layerCopy = layer;
  parametersCopy = parameters;
  trackerCopy = tracker;
  serverCopy = server;
  v20.receiver = self;
  v20.super_class = ATXUniversalRealTimeSuggestionRequestCoordinator;
  v15 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_blendingLayer, layer);
    objc_storeStrong(&v16->_hyperParameters, parameters);
    objc_storeStrong(&v16->_pendingRefreshTrackerLock, tracker);
    objc_storeWeak(&v16->_server, serverCopy);
    feedbackWriter = [layerCopy feedbackWriter];
    feedbackWriter = v16->_feedbackWriter;
    v16->_feedbackWriter = feedbackWriter;
  }

  return v16;
}

- (void)registerRealTimeSuggestionProviderDelegate:(id)delegate clientModelId:(id)id
{
  v17 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  idCopy = id;
  v8 = __atxlog_handle_blending(idCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = idCopy;
    _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "RealTimeRequestCoordinator registering a delegate for clientModelId: %{public}@...", buf, 0xCu);
  }

  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__ATXUniversalRealTimeSuggestionRequestCoordinator_registerRealTimeSuggestionProviderDelegate_clientModelId___block_invoke;
  v12[3] = &unk_1E86A4B00;
  v13 = delegateCopy;
  v14 = idCopy;
  v10 = idCopy;
  v11 = delegateCopy;
  [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v12];
}

void __109__ATXUniversalRealTimeSuggestionRequestCoordinator_registerRealTimeSuggestionProviderDelegate_clientModelId___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a2 registeredDelegatesForClientModels];
  [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];

  v5 = __atxlog_handle_blending(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "RealTimeRequestCoordinator done registering a delegate for clientModelId: %{public}@.", &v7, 0xCu);
  }
}

- (id)clientModelUpdatesForSuggestionRequest:(id)request
{
  v64 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  sel_getName(a2);
  v35 = os_transaction_create();
  v4 = __atxlog_handle_blending(v35);
  spid = os_signpost_id_generate(v4);

  v6 = __atxlog_handle_blending(v5);
  v7 = v6;
  v36 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    originatorId = [requestCopy originatorId];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = originatorId;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "RealTimeSuggestionRequest", "originatorId=%{signpost.telemetry:string1, public}@ enableTelemetry=YES ", &buf, 0xCu);
  }

  v10 = __atxlog_handle_blending(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = requestCopy;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Blending: Received suggestion request: %{public}@", &buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke;
    v56[3] = &unk_1E86A4178;
    v40 = requestCopy;
    v57 = v40;
    [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v56];
    v13 = [(ATXUniversalBlendingLayerHyperParametersProtocol *)self->_hyperParameters clientModelsToConsiderForConsumerSubType:[v40 consumerSubType]];
    v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v13];
    v15 = __atxlog_handle_blending(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_1DEFC4000, v15, OS_LOG_TYPE_DEFAULT, "Blending: Communicating with client models for request: %{public}@", &buf, 0xCu);
    }

    v16 = dispatch_group_create();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v13;
    v17 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v17)
    {
      v18 = *v53;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v52 + 1) + 8 * i);
          dispatch_group_enter(v16);
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_15;
          v48[3] = &unk_1E86A4B28;
          v48[4] = self;
          v48[5] = v20;
          v49 = v14;
          v50 = v16;
          v51 = v40;
          [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self realTimeProviderDelegateForClientModelId:v20 completion:v48];
        }

        v17 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      }

      while (v17);
    }

    v21 = MEMORY[0x1E69C5D10];
    [v40 timeout];
    v23 = v22;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19;
    v45[3] = &unk_1E86A4B50;
    v24 = v40;
    v46 = v24;
    v25 = v14;
    v47 = v25;
    v26 = __atxlog_handle_blending([v21 waitForGroup:v16 timeoutSeconds:&__block_literal_global_15 onGroupComplete:v45 onTimeout:v23]);
    v27 = v26;
    if (v36 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v26))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v27, OS_SIGNPOST_INTERVAL_END, spid, "RealTimeSuggestionRequest", "", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__7;
    v61 = __Block_byref_object_dispose__7;
    v62 = 0;
    v28 = self->_pendingRefreshTrackerLock;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_20;
    v42[3] = &unk_1E86A4B78;
    p_buf = &buf;
    v43 = v24;
    [(_PASLock *)v28 runWithLockAcquired:v42];
    v29 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self cacheUpdateDictionaryFromCacheUpdatesArray:*(*(&buf + 1) + 40)];

    _Block_object_dispose(&buf, 8);
    v30 = v57;
  }

  else
  {
    v32 = __atxlog_handle_blending(isKindOfClass);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [ATXUniversalRealTimeSuggestionRequestCoordinator clientModelUpdatesForSuggestionRequest:requestCopy];
    }

    v34 = __atxlog_handle_blending(v33);
    v30 = v34;
    if (v36 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v30, OS_SIGNPOST_INTERVAL_END, spid, "RealTimeSuggestionRequest", "", &buf, 2u);
    }

    v29 = 0;
  }

  return v29;
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_opt_new();
  v4 = [v3 requestUUIDToClientModelCaches];

  v5 = [*(a1 + 32) requestUUID];
  v6 = [v5 UUIDString];
  [v4 setObject:v7 forKeyedSubscript:v6];
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_2(uint64_t a1)
{
  v1 = __atxlog_handle_blending(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_2_cold_1(v1);
  }
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19(uint64_t a1)
{
  v2 = __atxlog_handle_blending(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19_cold_1(a1);
  }
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 requestUUIDToClientModelCaches];
  v5 = [*(a1 + 32) requestUUID];
  v6 = [v5 UUIDString];
  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v12 = [v3 requestUUIDToClientModelCaches];

  v10 = [*(a1 + 32) requestUUID];
  v11 = [v10 UUIDString];
  [v12 removeObjectForKey:v11];
}

- (id)generatedRankedSuggestionsForSuggestionRequest:(id)request limit:(id)limit
{
  limitCopy = limit;
  v7 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self clientModelUpdatesForSuggestionRequest:request];
  v8 = [(ATXUniversalBlendingLayer *)self->_blendingLayer rerankedValidSuggestionsFromClientModelSuggestions:v7];
  v9 = v8;
  if (limitCopy)
  {
    unsignedIntegerValue = [limitCopy unsignedIntegerValue];
    v11 = [v9 count];
    if (unsignedIntegerValue >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = unsignedIntegerValue;
    }

    v13 = [v9 subarrayWithRange:{0, v12}];
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  return v14;
}

- (id)selectedLayoutForSuggestionRequest:(id)request
{
  requestCopy = request;
  v5 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self clientModelUpdatesForSuggestionRequest:requestCopy];
  v6 = [(ATXUniversalBlendingLayer *)self->_blendingLayer rerankedValidSuggestionsFromClientModelSuggestions:v5];
  v7 = -[ATXUniversalBlendingLayer selectedLayoutForUIConsumer:rankedSuggestions:](self->_blendingLayer, "selectedLayoutForUIConsumer:rankedSuggestions:", [requestCopy consumerSubType], v6);
  v8 = -[ATXBlendingModelUICacheUpdate initWithUICache:consumerSubType:clientModelCacheUpdates:]([ATXBlendingModelUICacheUpdate alloc], "initWithUICache:consumerSubType:clientModelCacheUpdates:", v7, [requestCopy consumerSubType], v5);
  feedbackWriter = self->_feedbackWriter;
  consumerSubType = [requestCopy consumerSubType];

  [(ATXUniversalBlendingFeedbackWriter *)feedbackWriter donateBlendingModelUICacheUpdate:v8 uiConsumer:consumerSubType];

  return v7;
}

- (void)updateSuggestionsFromDelegate:(id)delegate connection:(id)connection clientModelId:(id)id clientModelsPendingUpdate:(id)update dispatchGroup:(id)group suggestionRequest:(id)request
{
  v48 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  connectionCopy = connection;
  idCopy = id;
  updateCopy = update;
  groupCopy = group;
  requestCopy = request;
  v20 = requestCopy;
  if (!delegateCopy)
  {
    dispatch_group_leave(groupCopy);
    goto LABEL_28;
  }

  v21 = __atxlog_handle_blending(requestCopy);
  v22 = os_signpost_id_generate(v21);

  v24 = __atxlog_handle_blending(v23);
  v25 = v24;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 138543362;
    v45 = idCopy;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "RequestSuggestionsFromRealTimeProviderDelegate", "clientModelId=%{signpost.telemetry:string1, public}@ enableTelemetry=YES ", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v36 = __atxlog_handle_blending(isKindOfClass);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          [ATXUniversalRealTimeSuggestionRequestCoordinator updateSuggestionsFromDelegate:v20 connection:? clientModelId:? clientModelsPendingUpdate:? dispatchGroup:? suggestionRequest:?];
        }

        goto LABEL_24;
      }
    }
  }

  v27 = objc_opt_respondsToSelector();
  if ((v27 & 1) == 0)
  {
    v31 = __atxlog_handle_blending(v27);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138543618;
      v45 = idCopy;
      v46 = 2114;
      v47 = v33;
      _os_log_impl(&dword_1DEFC4000, v31, OS_LOG_TYPE_DEFAULT, "Blending: %{public}@ may not have a real-time request delegate that supports %{public}@ requests. Falling back to cache.", buf, 0x16u);
    }

    [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self respondToRequestWithPreviouslyCachedPredictionsForClientModelId:idCopy suggestionRequest:v20];
    v34 = __atxlog_handle_blending([updateCopy removeObject:idCopy]);
    v35 = v34;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v35, OS_SIGNPOST_INTERVAL_END, v22, "RequestSuggestionsFromRealTimeProviderDelegate", "", buf, 2u);
    }

LABEL_24:
    dispatch_group_leave(groupCopy);
    goto LABEL_28;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __165__ATXUniversalRealTimeSuggestionRequestCoordinator_updateSuggestionsFromDelegate_connection_clientModelId_clientModelsPendingUpdate_dispatchGroup_suggestionRequest___block_invoke;
  v37[3] = &unk_1E86A4BA0;
  v37[4] = self;
  v28 = idCopy;
  v38 = v28;
  v29 = v20;
  v39 = v29;
  v40 = updateCopy;
  v43 = v22;
  v41 = connectionCopy;
  v42 = groupCopy;
  v30 = MEMORY[0x1E12CD4B0](v37);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [delegateCopy suggestionsForInteractionSuggestionRequest:v29 clientModelId:v28 reply:v30];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [delegateCopy suggestionsForContextualActionSuggestionRequest:v29 clientModelId:v28 reply:v30];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [delegateCopy suggestionsForIntentSuggestionRequest:v29 clientModelId:v28 reply:v30];
      }
    }
  }

LABEL_28:
}

void __165__ATXUniversalRealTimeSuggestionRequestCoordinator_updateSuggestionsFromDelegate_connection_clientModelId_clientModelsPendingUpdate_dispatchGroup_suggestionRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = __atxlog_handle_blending([*(a1 + 32) delegateUpdatedSuggestionsForClientModelId:*(a1 + 40) suggestionRequest:*(a1 + 48) response:a2 clientModelsPendingUpdate:*(a1 + 56)]);
  v4 = v3;
  v5 = *(a1 + 80);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RequestSuggestionsFromRealTimeProviderDelegate", "", v6, 2u);
  }

  dispatch_group_leave(*(a1 + 72));
}

- (void)delegateUpdatedSuggestionsForClientModelId:(id)id suggestionRequest:(id)request response:(id)response clientModelsPendingUpdate:(id)update
{
  v40 = *MEMORY[0x1E69E9840];
  idCopy = id;
  requestCopy = request;
  responseCopy = response;
  updateCopy = update;
  v14 = __atxlog_handle_blending(updateCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543874;
    v35 = idCopy;
    v36 = 2114;
    v37 = v16;
    v38 = 1024;
    responseCode = [responseCopy responseCode];
    _os_log_impl(&dword_1DEFC4000, v14, OS_LOG_TYPE_DEFAULT, "Blending: %{public}@ real-time delegate provided response to %{public}@. Response code: %d", buf, 0x1Cu);
  }

  if ([responseCopy responseCode] == 1)
  {
    [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self respondToRequestWithPreviouslyCachedPredictionsForClientModelId:idCopy suggestionRequest:requestCopy];
  }

  else
  {
    responseCode2 = [responseCopy responseCode];
    if (responseCode2 == 3 || (responseCode2 = [responseCopy responseCode], !responseCode2) || (responseCode2 = objc_msgSend(responseCopy, "responseCode"), responseCode2 == 5))
    {
      v18 = __atxlog_handle_blending(responseCode2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [ATXUniversalRealTimeSuggestionRequestCoordinator delegateUpdatedSuggestionsForClientModelId:idCopy suggestionRequest:responseCopy response:? clientModelsPendingUpdate:?];
      }
    }

    else if ([responseCopy responseCode] == 2 || objc_msgSend(responseCopy, "responseCode") == 4)
    {
      v19 = [ATXClientModelCacheUpdate alloc];
      suggestions = [responseCopy suggestions];
      feedbackMetadata = [responseCopy feedbackMetadata];
      v22 = [(ATXClientModelCacheUpdate *)v19 initWithClientModelId:idCopy suggestions:suggestions feedbackMetadata:feedbackMetadata responseForRealTimeRequest:responseCopy];

      [(ATXUniversalBlendingFeedbackWriter *)self->_feedbackWriter sendEventToBiomeIfNeededForClientModelCacheUpdate:v22 previousUpdate:0];
      if ([responseCopy responseCode] == 4)
      {
        WeakRetained = objc_loadWeakRetained(&self->_server);
        suggestions2 = [responseCopy suggestions];
        feedbackMetadata2 = [responseCopy feedbackMetadata];
        [WeakRetained clientModelUpdatedSuggestions:suggestions2 feedbackMetadata:feedbackMetadata2 clientModelId:idCopy completion:&__block_literal_global_32_0];
      }

      pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_33;
      v31 = &unk_1E86A4B00;
      v32 = requestCopy;
      v33 = v22;
      v27 = v22;
      [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:&v28];
    }
  }

  [updateCopy removeObject:{idCopy, v28, v29, v30, v31}];
}

void __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_cold_1(v2, v3);
  }
}

void __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = [a2 requestUUIDToClientModelCaches];
  v4 = [*(a1 + 32) requestUUID];
  v5 = [v4 UUIDString];
  v6 = [v3 objectForKeyedSubscript:v5];

  [v6 addObject:*(a1 + 40)];
}

- (void)respondToRequestWithPreviouslyCachedPredictionsForClientModelId:(id)id suggestionRequest:(id)request
{
  requestCopy = request;
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  clientModelCacheManager = [WeakRetained clientModelCacheManager];
  v10 = [clientModelCacheManager cachedSuggestionsForClientModel:idCopy];

  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __134__ATXUniversalRealTimeSuggestionRequestCoordinator_respondToRequestWithPreviouslyCachedPredictionsForClientModelId_suggestionRequest___block_invoke;
  v14[3] = &unk_1E86A4B00;
  v15 = requestCopy;
  v16 = v10;
  v12 = v10;
  v13 = requestCopy;
  [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v14];
}

void __134__ATXUniversalRealTimeSuggestionRequestCoordinator_respondToRequestWithPreviouslyCachedPredictionsForClientModelId_suggestionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestUUIDToClientModelCaches];
  v4 = [*(a1 + 32) requestUUID];
  v5 = [v4 UUIDString];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (*(a1 + 40))
  {
    [v6 addObject:?];
  }
}

- (id)cacheUpdateDictionaryFromCacheUpdatesArray:(id)array
{
  v18 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = arrayCopy;
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

        v10 = *(*(&v13 + 1) + 8 * i);
        clientModelId = [v10 clientModelId];
        [v4 setObject:v10 forKey:clientModelId];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)realTimeProviderDelegateForClientModelId:(id)id completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __104__ATXUniversalRealTimeSuggestionRequestCoordinator_realTimeProviderDelegateForClientModelId_completion___block_invoke;
  v16 = &unk_1E86A4B78;
  v18 = &v19;
  v9 = idCopy;
  v17 = v9;
  v10 = [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:&v13];
  if (v20[5])
  {
    v11 = __atxlog_handle_blending(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "Found a cached delegate for clientModelId: %{public}@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, v20[5], 0);
  }

  else
  {
    v12 = __atxlog_handle_blending(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "Blending: Fetching delegate for client model %{public}@", buf, 0xCu);
    }

    [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self remoteAsyncDelegateForClientModel:v9 completion:completionCopy, v13, v14, v15, v16];
  }

  _Block_object_dispose(&v19, 8);
}

void __104__ATXUniversalRealTimeSuggestionRequestCoordinator_realTimeProviderDelegateForClientModelId_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 registeredDelegatesForClientModels];
  v3 = [v6 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)remoteAsyncDelegateForClientModel:(id)model completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  completionCopy = completion;
  v7 = __atxlog_handle_blending(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = modelCopy;
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Establishing XPC connection to clientModelId: %{public}@", buf, 0xCu);
  }

  modelCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.proactive.SuggestionRequest.%@", modelCopy];
  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:modelCopy options:0];
  v10 = ATXProactiveSuggestionRealTimeProviderXPCInterface();
  [v9 setRemoteObjectInterface:v10];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke;
  v23[3] = &unk_1E86A45B0;
  v11 = modelCopy;
  v24 = v11;
  [v9 setInterruptionHandler:v23];
  interruptionHandler = [v9 interruptionHandler];
  [v9 setInvalidationHandler:interruptionHandler];

  [v9 resume];
  if (v9)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40;
    v20[3] = &unk_1E86A43B0;
    v21 = v11;
    v13 = completionCopy;
    v22 = v13;
    v14 = [v9 remoteObjectProxyWithErrorHandler:v20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_41;
    v16[3] = &unk_1E86A4BC8;
    v19 = v13;
    v17 = v14;
    v18 = v9;
    v15 = v14;
    [v15 pingWithCompletion:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_blending(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_cold_1(a1, v2);
  }
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_blending(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_41(void *a1, int a2)
{
  v3 = a1[6];
  if (a2)
  {
    return (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  else
  {
    return (*(v3 + 16))(v3, 0, 0);
  }
}

- (void)clientModelUpdatesForSuggestionRequest:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19_cold_1(uint64_t a1)
{
  [*(a1 + 32) timeout];
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)updateSuggestionsFromDelegate:(uint64_t)a1 connection:clientModelId:clientModelsPendingUpdate:dispatchGroup:suggestionRequest:.cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)delegateUpdatedSuggestionsForClientModelId:(uint64_t)a1 suggestionRequest:(void *)a2 response:clientModelsPendingUpdate:.cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 error];
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when updating suggestions in Real Time Request Coordinator. Error: %{public}@", &v2, 0xCu);
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Blending: Connection to Client Model %{public}@ interrupted in 2-way communication server.", &v3, 0xCu);
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_ERROR, "Blending: Got xpc error for %@: %@", &v4, 0x16u);
}

@end