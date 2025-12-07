@interface ATXActionPredictionServer
+ (id)sharedInstance;
- (ATXActionPredictionServer)init;
- (ATXActionPredictionServer)initWithListener:(id)listener checkEntitlements:(BOOL)entitlements;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)behavioralModelSuggestionsForRequest:(id)request;
- (id)filteredCachedIntentSuggestionsForClientModelId:(id)id request:(id)request;
- (id)initAnonymousListener;
- (void)dealloc;
- (void)getActionPredictionsForCandidateBundleIdentifiers:(id)identifiers candidateActionTypes:(id)types consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType limit:(int)limit reply:(id)reply;
- (void)getActionPredictionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes limit:(unint64_t)limit reply:(id)reply;
- (void)registerForRealTimeRequestsWithBlendingLayerServer:(id)server;
- (void)removeActionPredictionNotificationsMatchingSuggestion:(id)suggestion reply:(id)reply;
- (void)shouldDisplayDailyRoutineForContext:(id)context reply:(id)reply;
- (void)suggestionsForIntentSuggestionRequest:(id)request clientModelId:(id)id reply:(id)reply;
@end

@implementation ATXActionPredictionServer

- (ATXActionPredictionServer)initWithListener:(id)listener checkEntitlements:(BOOL)entitlements
{
  listenerCopy = listener;
  if (!listenerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXActionPredictionServer.mm" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"listener"}];
  }

  v13.receiver = self;
  v13.super_class = ATXActionPredictionServer;
  v9 = [(ATXActionPredictionServer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_checkEntitlements = entitlements;
    objc_storeStrong(&v9->_listener, listener);
    [(NSXPCListener *)v10->_listener setDelegate:v10];
    [(NSXPCListener *)v10->_listener resume];
  }

  return v10;
}

- (ATXActionPredictionServer)init
{
  v3 = objc_alloc(MEMORY[0x277CCAE98]);
  v4 = [v3 initWithMachServiceName:*MEMORY[0x277CEB9D8]];
  v5 = [(ATXActionPredictionServer *)self initWithListener:v4 checkEntitlements:1];

  return v5;
}

- (id)initAnonymousListener
{
  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  v4 = [(ATXActionPredictionServer *)self initWithListener:anonymousListener checkEntitlements:0];

  return v4;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXActionPredictionServer;
  [(ATXActionPredictionServer *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (+[ATXActionPredictionServer sharedInstance]::_pasOnceToken2 != -1)
  {
    +[ATXActionPredictionServer sharedInstance];
  }

  v3 = +[ATXActionPredictionServer sharedInstance]::_pasExprOnceResult;

  return v3;
}

void __43__ATXActionPredictionServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = +[ATXActionPredictionServer sharedInstance]::_pasExprOnceResult;
  +[ATXActionPredictionServer sharedInstance]::_pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (!self->_checkEntitlements)
  {
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277CEB9D8];
  bOOLValue = [connectionCopy valueForEntitlement:*MEMORY[0x277CEB9D8]];
  v11 = bOOLValue;
  if (bOOLValue)
  {
    bOOLValue = objc_opt_respondsToSelector();
    if (bOOLValue)
    {
      bOOLValue = [v11 BOOLValue];
      if (bOOLValue)
      {

LABEL_6:
        v12 = ATXActionPredictionInterface();
        [v8 setExportedInterface:v12];

        [v8 setExportedObject:self];
        [v8 setInterruptionHandler:&__block_literal_global_36_3];
        [v8 setInvalidationHandler:&__block_literal_global_39_0];
        [v8 resume];
        v13 = 1;
        goto LABEL_10;
      }
    }
  }

  v14 = __atxlog_handle_default(bOOLValue);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationDigestRankerServer *)v8 listener:v9 shouldAcceptNewConnection:v14];
  }

  v13 = 0;
LABEL_10:

  return v13;
}

void __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v1);
  }
}

void __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke_37(uint64_t a1)
{
  v1 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXActionPredictionServer_listener_shouldAcceptNewConnection___block_invoke_37_cold_1(v1);
  }
}

- (void)getActionPredictionsForCandidateBundleIdentifiers:(id)identifiers candidateActionTypes:(id)types consumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType limit:(int)limit reply:(id)reply
{
  identifiersCopy = identifiers;
  typesCopy = types;
  replyCopy = reply;
  v14 = __atxlog_handle_xpc(replyCopy);
  v15 = os_signpost_id_generate(v14);

  v17 = __atxlog_handle_xpc(v16);
  v18 = v17;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "getActionPredictionsForCandidateBundleIdentifiers", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = MEMORY[0x277D42598];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke;
  v23[3] = &unk_27859F420;
  v20 = identifiersCopy;
  v24 = v20;
  v21 = typesCopy;
  subTypeCopy = subType;
  v25 = v21;
  v27 = v15;
  v22 = replyCopy;
  v26 = v22;
  [v19 runBlockWhenDeviceIsClassCUnlocked:v23];
}

void __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_2;
  block[3] = &unk_27859F420;
  v7 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = v3;
  v10 = v4;
  v9 = v5;
  dispatch_async(v2, block);
}

void __141__ATXActionPredictionServer_getActionPredictionsForCandidateBundleIdentifiers_candidateActionTypes_consumerType_consumerSubType_limit_reply___block_invoke_2(uint64_t a1)
{
  v2 = [ATXActionPredictions predictionsWithCandidateBundleIdentifiers:*(a1 + 32) candidateActiontypes:*(a1 + 40) consumerSubType:*(a1 + 64) firstStageScoreLogger:0 secondStageScoreLogger:0 thirdStageScoreLogger:0 multiStageScoreLogger:0];
  v3 = __atxlog_handle_xpc(v2);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v4, OS_SIGNPOST_INTERVAL_END, v5, "getActionPredictionsForCandidateBundleIdentifiers", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = *(a1 + 48);
  v7 = [v2 first];
  v8 = [v2 second];
  (*(v6 + 16))(v6, v7, v8);
}

- (void)removeActionPredictionNotificationsMatchingSuggestion:(id)suggestion reply:(id)reply
{
  suggestionCopy = suggestion;
  replyCopy = reply;
  v8 = __atxlog_handle_xpc(replyCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = __atxlog_handle_xpc(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "removeActionPredictionNotificationsMatchingSuggestion", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = MEMORY[0x277D42598];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke;
  v16[3] = &unk_27859F448;
  v14 = suggestionCopy;
  v17 = v14;
  selfCopy = self;
  v20 = v9;
  v15 = replyCopy;
  v19 = v15;
  [v13 runBlockWhenDeviceIsClassCUnlocked:v16];
}

void __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke_2;
  v6[3] = &unk_27859F448;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v10 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v2, v6);
}

void __89__ATXActionPredictionServer_removeActionPredictionNotificationsMatchingSuggestion_reply___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) atxActionExecutableObject];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_feedback(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - removeActionPredictionNotificationsMatchingSuggestion attempting to remove any lockscreen action predictions matching: %@", &v15, 0x16u);
    }

    v7 = +[ATXActionNotificationServer sharedInstance];
    [v7 removeActionPredictionNotificationsMatchingAction:v3];
  }

  else
  {
    v7 = __atxlog_handle_feedback(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - removeActionPredictionNotificationsMatchingSuggestion did not find an ATXAction executable object", &v15, 0xCu);
    }
  }

  v11 = __atxlog_handle_xpc(v10);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_END, v13, "removeActionPredictionNotificationsMatchingSuggestion", " enableTelemetry=YES ", &v15, 2u);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }
}

- (void)shouldDisplayDailyRoutineForContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  v7 = __atxlog_handle_xpc(replyCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = __atxlog_handle_xpc(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "shouldDisplayDailyRoutineForContext", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = MEMORY[0x277D42598];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke;
  v15[3] = &unk_27859F470;
  v13 = contextCopy;
  v16 = v13;
  v18 = v8;
  v14 = replyCopy;
  v17 = v14;
  [v12 runBlockWhenDeviceIsClassCUnlocked:v15];
}

void __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke_2;
  block[3] = &unk_27859F470;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v9 = v4;
  v8 = v5;
  dispatch_async(v2, block);
}

void __71__ATXActionPredictionServer_shouldDisplayDailyRoutineForContext_reply___block_invoke_2(void *a1)
{
  v2 = +[ATXDailyRoutinesPersonalizationManager sharedInstance];
  v3 = __atxlog_handle_xpc([v2 shouldDisplayDailyRoutineForContext:a1[4]]);
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v4, OS_SIGNPOST_INTERVAL_END, v5, "shouldDisplayDailyRoutineForContext", " enableTelemetry=YES ", v6, 2u);
  }

  (*(a1[5] + 16))();
}

- (void)getActionPredictionsForContext:(id)context includeBundleIds:(id)ids excludeBundleIds:(id)bundleIds includeActionTypes:(id)types excludeActionTypes:(id)actionTypes limit:(unint64_t)limit reply:(id)reply
{
  contextCopy = context;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  typesCopy = types;
  actionTypesCopy = actionTypes;
  replyCopy = reply;
  v19 = __atxlog_handle_xpc(replyCopy);
  v20 = os_signpost_id_generate(v19);

  v22 = __atxlog_handle_xpc(v21);
  v23 = v22;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "getActionPredictionsForContext", " enableTelemetry=YES ", buf, 2u);
  }

  v24 = MEMORY[0x277D42598];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke;
  v35[3] = &unk_27859F498;
  v33 = contextCopy;
  v25 = contextCopy;
  v36 = v25;
  v32 = idsCopy;
  v26 = idsCopy;
  v37 = v26;
  v27 = bundleIdsCopy;
  v38 = v27;
  v31 = typesCopy;
  v28 = typesCopy;
  v39 = v28;
  v29 = actionTypesCopy;
  v40 = v29;
  limitCopy = limit;
  v43 = v20;
  v30 = replyCopy;
  v41 = v30;
  [v24 runBlockWhenDeviceIsClassCUnlocked:{v35, v31, v32, v33}];
}

void __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get(a1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke_2;
  v9[3] = &unk_27859F498;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  v14 = *(a1 + 80);
  v13 = *(a1 + 72);
  dispatch_async(v2, v9);
}

void __144__ATXActionPredictionServer_getActionPredictionsForContext_includeBundleIds_excludeBundleIds_includeActionTypes_excludeActionTypes_limit_reply___block_invoke_2(void *a1)
{
  v2 = +[ATXDailyRoutinesPersonalizationManager sharedInstance];
  v3 = [v2 getActionPredictionsForContext:a1[4] includeBundleIds:a1[5] excludeBundleIds:a1[6] includeActionTypes:a1[7] excludeActionTypes:a1[8] limit:a1[10]];
  v4 = __atxlog_handle_xpc(v3);
  v5 = v4;
  v6 = a1[11];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v5, OS_SIGNPOST_INTERVAL_END, v6, "getActionPredictionsForContext", " enableTelemetry=YES ", v7, 2u);
  }

  (*(a1[9] + 16))();
}

- (void)suggestionsForIntentSuggestionRequest:(id)request clientModelId:(id)id reply:(id)reply
{
  requestCopy = request;
  idCopy = id;
  replyCopy = reply;
  v11 = __atxlog_handle_xpc(replyCopy);
  v12 = os_signpost_id_generate(v11);

  v14 = __atxlog_handle_xpc(v13);
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "suggestionsForIntentSuggestionRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = MEMORY[0x277D42598];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke;
  v20[3] = &unk_27859F4C0;
  v17 = idCopy;
  v21 = v17;
  selfCopy = self;
  v18 = requestCopy;
  v23 = v18;
  v25 = v12;
  v19 = replyCopy;
  v24 = v19;
  [v16 runBlockWhenDeviceIsClassCUnlocked:v20];
}

void __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke(uint64_t a1)
{
  v2 = __atx_xpc_private_queue_get(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke_2;
  block[3] = &unk_27859F4C0;
  *&v3 = *(a1 + 32);
  *(&v3 + 1) = *(a1 + 40);
  v8 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12 = *(a1 + 64);
  v6 = v5;
  *&v7 = v4;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v2, block);
}

void __87__ATXActionPredictionServer_suggestionsForIntentSuggestionRequest_clientModelId_reply___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D42070] clientModelTypeFromClientModelId:*(a1 + 32)];
  if (v2 == 1 || v2 == 3)
  {
    v4 = [*(a1 + 40) filteredCachedIntentSuggestionsForClientModelId:*(a1 + 32) request:*(a1 + 48)];
  }

  else
  {
    if (v2 != 6)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v18 = *MEMORY[0x277CCA450];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrong delegate for request. Expected %@ but found ATXActionPredictionServer, which only support SpotlightUnknown / AnchorModel / Heuristics.", *(a1 + 32)];
      v19[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v6 = [v8 errorWithDomain:v10 code:5 userInfo:v12];

      v5 = 0;
      v7 = 3;
      goto LABEL_11;
    }

    v4 = [*(a1 + 40) behavioralModelSuggestionsForRequest:*(a1 + 48)];
  }

  v5 = v4;
  v6 = 0;
  v7 = 2;
LABEL_11:
  v13 = [objc_alloc(MEMORY[0x277D420F0]) initWithSuggestions:v5 feedbackMetadata:0 originalRequest:*(a1 + 48) responseCode:v7 error:v6];
  v14 = __atxlog_handle_xpc(v13);
  v15 = v14;
  v16 = *(a1 + 64);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_END, v16, "suggestionsForIntentSuggestionRequest", " enableTelemetry=YES ", buf, 2u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)registerForRealTimeRequestsWithBlendingLayerServer:(id)server
{
  v14 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [&unk_283A58958 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(&unk_283A58958);
        }

        v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:{objc_msgSend(*(*(&v9 + 1) + 8 * v7), "integerValue")}];
        [serverCopy registerRealTimeSuggestionProviderDelegate:self clientModelId:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_283A58958 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)behavioralModelSuggestionsForRequest:(id)request
{
  requestCopy = request;
  bundleIds = [requestCopy bundleIds];
  intentClassNames = [requestCopy intentClassNames];
  limit = [requestCopy limit];
  v7 = [ATXActionPredictions actionResultsForCandidateBundleIdentifiers:bundleIds candidateActiontypes:intentClassNames consumerSubType:21 firstStageScoreLogger:0 secondStageScoreLogger:0 thirdStageScoreLogger:0 multiStageScoreLogger:0 predictionsPerAppActionLimit:limit];

  v8 = [v7 _pas_filteredArrayWithTest:&__block_literal_global_59_0];

  v9 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:6];
  v10 = +[_ATXGlobals sharedInstance];
  actionPredictionBlendingModelVersion = [v10 actionPredictionBlendingModelVersion];

  v12 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v9 clientModelVersion:actionPredictionBlendingModelVersion];
  v13 = [ATXProactiveSuggestionBuilder proactiveSuggestionsFromActionResults:v8 clientModelSpec:v12];

  return v13;
}

- (id)filteredCachedIntentSuggestionsForClientModelId:(id)id request:(id)request
{
  idCopy = id;
  requestCopy = request;
  v7 = objc_opt_new();
  v8 = [v7 cachedSuggestionsForClientModel:idCopy];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  suggestions = [v8 suggestions];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ATXActionPredictionServer_filteredCachedIntentSuggestionsForClientModelId_request___block_invoke;
  v16[3] = &unk_27859F4E8;
  v12 = requestCopy;
  v17 = v12;
  v19 = v20;
  v13 = v10;
  v18 = v13;
  v14 = [suggestions _pas_filteredArrayWithTest:v16];

  _Block_object_dispose(v20, 8);

  return v14;
}

uint64_t __85__ATXActionPredictionServer_filteredCachedIntentSuggestionsForClientModelId_request___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) limit];
  if (!v4 || (v5 = *(*(*(a1 + 48) + 8) + 24), [*(a1 + 32) limit], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedIntegerValue"), v6, v4, v5 < v7))
  {
    v8 = [v3 executableSpecification];
    v9 = [v8 executableType];

    if (v9 == 2)
    {
      v10 = [v3 executableSpecification];
      v11 = [v10 executableClassString];
      v12 = [v11 isEqualToString:*(a1 + 40)];

      if (v12)
      {
        v13 = [v3 executableSpecification];
        v14 = [v13 executableObject];

        if (v14)
        {
          v15 = [*(a1 + 32) bundleIds];
          if ([v15 count])
          {
            v16 = [*(a1 + 32) bundleIds];
            v17 = [v14 bundleId];
            v18 = [v16 containsObject:v17];

            if ((v18 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }

          v21 = [*(a1 + 32) intentClassNames];
          v22 = [v21 count];

          if (!v22 || ([v14 intent], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "_className"), v24 = objc_claimAutoreleasedReturnValue(), v23, v24) && (objc_msgSend(*(a1 + 32), "intentClassNames"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "containsObject:", v24), v25, v24, (v26 & 1) != 0))
          {
            ++*(*(*(a1 + 48) + 8) + 24);
            v19 = 1;
LABEL_17:

            goto LABEL_10;
          }
        }

LABEL_16:
        v19 = 0;
        goto LABEL_17;
      }
    }
  }

  v19 = 0;
LABEL_10:

  return v19;
}

@end