@interface ATXModeAnchorModelSuggestionServer
- (ATXModeAnchorModelSuggestionServer)initWithConfiguredModeService:(id)service;
- (ATXModeAnchorModelSuggestionServer)initWithXPCListener:(id)listener configuredModeService:(id)service;
- (ATXModeClassifierClientModelDelegate)delegate;
- (BOOL)_shouldUpdateHighestConfidenceSuggestion:(id)suggestion newSuggestion:(id)newSuggestion;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)anchorModelDidProvideModeSuggestions:(id)suggestions;
- (void)dealloc;
- (void)fetchCombinedSuggestionScoreAndFlagsForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1;
- (void)fetchCombinedSuggestionScoreForModeEvent:(id)event completionHandler:(id)handler;
- (void)fetchCombinedSuggestionScoreForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1;
@end

@implementation ATXModeAnchorModelSuggestionServer

- (ATXModeAnchorModelSuggestionServer)initWithConfiguredModeService:(id)service
{
  v4 = MEMORY[0x277CCAE98];
  serviceCopy = service;
  v6 = [[v4 alloc] initWithMachServiceName:@"com.apple.proactive.ModeAnchorModelSuggestion.xpc"];
  v7 = [(ATXModeAnchorModelSuggestionServer *)self initWithXPCListener:v6 configuredModeService:serviceCopy];

  return v7;
}

- (ATXModeAnchorModelSuggestionServer)initWithXPCListener:(id)listener configuredModeService:(id)service
{
  listenerCopy = listener;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = ATXModeAnchorModelSuggestionServer;
  v9 = [(ATXModeAnchorModelSuggestionServer *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    lock = v9->_lock;
    v9->_lock = v12;

    objc_storeStrong(&v9->_modeService, service);
    objc_storeStrong(&v9->_xpcListener, listener);
    [(NSXPCListener *)v9->_xpcListener setDelegate:v9];
    [(NSXPCListener *)v9->_xpcListener resume];
  }

  return v9;
}

- (void)dealloc
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global];
  v3.receiver = self;
  v3.super_class = ATXModeAnchorModelSuggestionServer;
  [(ATXModeAnchorModelSuggestionServer *)&v3 dealloc];
}

void __45__ATXModeAnchorModelSuggestionServer_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2;
  [v3 invalidate];
  v5 = a2[1];
  a2[1] = 0;
}

- (void)fetchCombinedSuggestionScoreForModeEvent:(id)event completionHandler:(id)handler
{
  handlerCopy = handler;
  eventCopy = event;
  modeIdentifier = [eventCopy modeIdentifier];
  modeType = [eventCopy modeType];
  origin = [eventCopy origin];
  originBundleID = [eventCopy originBundleID];
  originAnchorType = [eventCopy originAnchorType];
  [eventCopy confidenceScore];
  v13 = v12;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v15 = v14;
  absoluteTimestamp = [eventCopy absoluteTimestamp];
  [absoluteTimestamp timeIntervalSinceReferenceDate];
  v18 = v15 - v17;
  serializedTriggers = [eventCopy serializedTriggers];

  [(ATXModeAnchorModelSuggestionServer *)self fetchCombinedSuggestionScoreForModeWithUUID:modeIdentifier modeType:modeType origin:origin originBundleId:originBundleID originAnchorType:originAnchorType confidenceScore:serializedTriggers secondsSinceSuggested:v13 serializedTriggers:v18 completionHandler:handlerCopy];
}

- (void)fetchCombinedSuggestionScoreForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1
{
  dCopy = d;
  idCopy = id;
  anchorTypeCopy = anchorType;
  triggersCopy = triggers;
  handlerCopy = handler;
  lock = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __205__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke;
  v30[3] = &unk_279AB7B48;
  v34 = triggersCopy;
  v35 = handlerCopy;
  typeCopy = type;
  originCopy = origin;
  v31 = dCopy;
  v32 = idCopy;
  scoreCopy = score;
  suggestedCopy = suggested;
  v33 = anchorTypeCopy;
  v25 = triggersCopy;
  v26 = anchorTypeCopy;
  v27 = idCopy;
  v28 = dCopy;
  v29 = handlerCopy;
  [(_PASLock *)lock runWithLockAcquired:v30];
}

void __205__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __205__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2;
  v8 = &unk_279AB7B20;
  v9 = *(a1 + 64);
  v4 = [v3 remoteObjectProxyWithErrorHandler:&v5];
  [v4 fetchCombinedSuggestionScoreForModeWithUUID:*(a1 + 32) modeType:*(a1 + 88) origin:*(a1 + 92) originBundleId:*(a1 + 40) originAnchorType:*(a1 + 48) confidenceScore:*(a1 + 56) secondsSinceSuggested:*(a1 + 72) serializedTriggers:*(a1 + 80) completionHandler:{*(a1 + 64), v5, v6, v7, v8}];
}

void __205__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_modes(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __205__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCombinedSuggestionScoreAndFlagsForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1
{
  dCopy = d;
  idCopy = id;
  anchorTypeCopy = anchorType;
  triggersCopy = triggers;
  handlerCopy = handler;
  lock = self->_lock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __213__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreAndFlagsForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke;
  v30[3] = &unk_279AB7B48;
  v34 = triggersCopy;
  v35 = handlerCopy;
  typeCopy = type;
  originCopy = origin;
  v31 = dCopy;
  v32 = idCopy;
  scoreCopy = score;
  suggestedCopy = suggested;
  v33 = anchorTypeCopy;
  v25 = triggersCopy;
  v26 = anchorTypeCopy;
  v27 = idCopy;
  v28 = dCopy;
  v29 = handlerCopy;
  [(_PASLock *)lock runWithLockAcquired:v30];
}

void __213__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreAndFlagsForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __213__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreAndFlagsForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2;
  v8 = &unk_279AB7B20;
  v9 = *(a1 + 64);
  v4 = [v3 remoteObjectProxyWithErrorHandler:&v5];
  [v4 fetchCombinedSuggestionScoreAndFlagsForModeWithUUID:*(a1 + 32) modeType:*(a1 + 88) origin:*(a1 + 92) originBundleId:*(a1 + 40) originAnchorType:*(a1 + 48) confidenceScore:*(a1 + 56) secondsSinceSuggested:*(a1 + 72) serializedTriggers:*(a1 + 80) completionHandler:{*(a1 + 64), v5, v6, v7, v8}];
}

void __213__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreAndFlagsForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_modes(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __213__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreAndFlagsForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)anchorModelDidProvideModeSuggestions:(id)suggestions
{
  v61 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_modes(suggestionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v55 = [suggestionsCopy count];
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionServer: Received %{public}lu suggestions", buf, 0xCu);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = suggestionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (!v7)
  {
    v43 = 0;
    v42 = 0;
    modeUUID5 = v6;
    goto LABEL_25;
  }

  v8 = v7;
  v45 = 0;
  v44 = 0;
  v9 = 0;
  v10 = *v51;
  do
  {
    v11 = 0;
    v46 = v8;
    do
    {
      if (*v51 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v50 + 1) + 8 * v11);
      context = objc_autoreleasePoolPush();
      v13 = __atxlog_handle_modes(context);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        modeUUID = [v12 modeUUID];
        v15 = v10;
        v16 = v9;
        selfCopy = self;
        v18 = v6;
        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isStart")}];
        anchorType = [v12 anchorType];
        *buf = 138543874;
        v55 = modeUUID;
        v56 = 2114;
        v57 = v19;
        v58 = 2114;
        v59 = anchorType;
        _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionServer: Suggestion modeId: %{public}@, isStart: %{public}@, anchorType: %{public}@", buf, 0x20u);

        v6 = v18;
        self = selfCopy;
        v9 = v16;
        v10 = v15;
        v8 = v46;
      }

      v49 = 0;
      modeService = self->_modeService;
      modeUUID2 = [v12 modeUUID];
      v48 = 0;
      LOBYTE(modeService) = [(ATXConfiguredModeService *)modeService isActivityWithUUIDConfigured:modeUUID2 activityType:&v49 allowsSmartEntry:0 userModeName:&v48];
      v23 = v48;

      if (modeService)
      {
        if (![(ATXModeAnchorModelSuggestionServer *)self _shouldUpdateHighestConfidenceSuggestion:v9 newSuggestion:v12])
        {
          goto LABEL_16;
        }

        v25 = v12;

        v44 = v49;
        v26 = v45;
        v45 = v23;
        v9 = v25;
      }

      else
      {
        v26 = __atxlog_handle_modes(v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          modeUUID3 = [v12 modeUUID];
          *buf = 138543362;
          v55 = modeUUID3;
          _os_log_impl(&dword_260C9F000, v26, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionServer: Suggestion modeUUID: %{public}@ is not configured, skipping", buf, 0xCu);
        }
      }

LABEL_16:
      objc_autoreleasePoolPop(context);
      ++v11;
    }

    while (v8 != v11);
    v8 = [v6 countByEnumeratingWithState:&v50 objects:v60 count:16];
  }

  while (v8);

  if (v9)
  {
    v29 = __atxlog_handle_modes(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      modeUUID4 = [v9 modeUUID];
      v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isStart")}];
      anchorType2 = [v9 anchorType];
      *buf = 138543874;
      v55 = modeUUID4;
      v56 = 2114;
      v57 = v31;
      v58 = 2114;
      v59 = anchorType2;
      _os_log_impl(&dword_260C9F000, v29, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionServer: Updated suggestion to modeUUID: %{public}@, isStart: %{public}@, anchorType: %{public}@", buf, 0x20u);
    }

    modeUUID5 = [v9 modeUUID];
    v34 = ATXActivityTypeToBMUserFocusInferredModeType(v44);
    if (([v9 isStart] & 1) == 0)
    {

      modeUUID5 = 0;
      v34 = 2;
    }

    delegate = [(ATXModeAnchorModelSuggestionServer *)self delegate];
    [v9 score];
    v37 = v36;
    anchorType3 = [v9 anchorType];
    [v9 serializedTriggers];
    v40 = v39 = v9;
    selfCopy2 = self;
    v42 = v45;
    [delegate clientModel:selfCopy2 didUpdatePredictionWithUUID:modeUUID5 userModeName:v45 modeType:v34 confidenceScore:11 modeOrigin:0 originBundleId:v37 originAnchorType:anchorType3 serializedTriggers:v40];

    v43 = v39;
LABEL_25:
  }

  else
  {
    v43 = 0;
    v42 = v45;
  }
}

- (BOOL)_shouldUpdateHighestConfidenceSuggestion:(id)suggestion newSuggestion:(id)newSuggestion
{
  suggestionCopy = suggestion;
  newSuggestionCopy = newSuggestion;
  v10 = 1;
  if (suggestionCopy)
  {
    [suggestionCopy score];
    v8 = v7;
    [newSuggestionCopy score];
    if (v8 >= v9 && (vabdd_f64(v8, v9) >= 2.22044605e-16 || ([suggestionCopy isStart] & 1) != 0 || (objc_msgSend(newSuggestionCopy, "isStart") & 1) == 0))
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.proactive.ModeAnchorModelSuggestion.xpc"];
  v9 = v8;
  if (v8 && (v8 = objc_opt_respondsToSelector(), (v8 & 1) != 0) && (v8 = [v9 BOOLValue], (v8 & 1) != 0))
  {
    v10 = ATXModeAnchorModelSuggestionServerXPCInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_21];
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__ATXModeAnchorModelSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_22;
    v20[3] = &unk_279AB7B90;
    objc_copyWeak(&v21, &location);
    [connectionCopy setInvalidationHandler:v20];
    v11 = ATXModeAnchorModelSuggestionClientXPCInterface();
    [connectionCopy setRemoteObjectInterface:v11];

    lock = self->_lock;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__ATXModeAnchorModelSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_2;
    v18[3] = &unk_279AB7BB8;
    v13 = connectionCopy;
    v19 = v13;
    [(_PASLock *)lock runWithLockAcquired:v18];
    v14 = __atxlog_handle_modes([v13 resume]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_260C9F000, v14, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionServer: accepts XPC connection: %{public}@", buf, 0xCu);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    v15 = 1;
  }

  else
  {
    v16 = __atxlog_handle_modes(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeAnchorModelSuggestionServer *)connectionCopy listener:v16 shouldAcceptNewConnection:?];
    }

    v15 = 0;
  }

  return v15;
}

void __73__ATXModeAnchorModelSuggestionServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __73__ATXModeAnchorModelSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v1);
  }
}

void __73__ATXModeAnchorModelSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_22(uint64_t a1)
{
  v2 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 0;
    _os_log_impl(&dword_260C9F000, v2, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionServer: XPC connection invalidated.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] runWithLockAcquired:&__block_literal_global_25];
  }
}

void __73__ATXModeAnchorModelSuggestionServer_listener_shouldAcceptNewConnection___block_invoke_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
}

- (ATXModeClassifierClientModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __205__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_260C9F000, v0, OS_LOG_TYPE_ERROR, "%s: error with xpc connection: %@", v1, 0x16u);
}

void __213__ATXModeAnchorModelSuggestionServer_fetchCombinedSuggestionScoreAndFlagsForModeWithUUID_modeType_origin_originBundleId_originAnchorType_confidenceScore_secondsSinceSuggested_serializedTriggers_completionHandler___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_260C9F000, v0, OS_LOG_TYPE_ERROR, "%s: error with xpc connection: %@", v1, 0x16u);
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_260C9F000, log, OS_LOG_TYPE_ERROR, "ATXModeAnchorModelSuggestionServer: Rejecting connection %{public}@ without entitlement %{public}@", &v3, 0x16u);
}

@end