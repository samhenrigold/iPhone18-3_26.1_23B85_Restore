@interface ATXModeAnchorModelSuggestionClient
+ (ATXModeAnchorModelSuggestionClient)sharedInstance;
- (id)_init;
- (void)_pingServer;
- (void)anchorModelDidProvideModeSuggestions:(id)suggestions;
- (void)fetchCombinedSuggestionScoreAndFlagsForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1;
- (void)fetchCombinedSuggestionScoreForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1;
@end

@implementation ATXModeAnchorModelSuggestionClient

+ (ATXModeAnchorModelSuggestionClient)sharedInstance
{
  if (sharedInstance__pasOnceToken7_19 != -1)
  {
    +[ATXModeAnchorModelSuggestionClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_24;

  return v3;
}

void __52__ATXModeAnchorModelSuggestionClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXModeAnchorModelSuggestionClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_24;
  sharedInstance__pasExprOnceResult_24 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v14.receiver = self;
  v14.super_class = ATXModeAnchorModelSuggestionClient;
  v2 = [(ATXModeAnchorModelSuggestionClient *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc(MEMORY[0x277D42650]);
    v4 = ATXModeAnchorModelSuggestionServerXPCInterface();
    v5 = ATXModeAnchorModelSuggestionClientXPCInterface();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__ATXModeAnchorModelSuggestionClient__init__block_invoke;
    v11[3] = &unk_2785977B0;
    objc_copyWeak(&v12, &location);
    v7 = __atxlog_handle_modes(v6);
    v8 = [v3 initWithServiceName:*MEMORY[0x277D41CC0] allowlistedServerInterface:v4 allowlistedClientInterface:v5 serverInitiatedRequestHandler:v2 interruptionHandler:v11 invalidationHandler:&__block_literal_global_14_1 logHandle:v7];
    xpcClientHelper = v2->_xpcClientHelper;
    v2->_xpcClientHelper = v8;

    [(ATXModeAnchorModelSuggestionClient *)v2 _pingServer];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__ATXModeAnchorModelSuggestionClient__init__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionClient: xpc connection interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pingServer];
}

void __43__ATXModeAnchorModelSuggestionClient__init__block_invoke_12(uint64_t a1)
{
  v1 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionClient: xpc connection invalidated.", v2, 2u);
  }
}

- (void)_pingServer
{
  v2 = [(_PASXPCClientHelper *)self->_xpcClientHelper remoteObjectProxyWithErrorHandler:&__block_literal_global_17];
  [v2 pingWithCompletion:&__block_literal_global_21_1];
}

void __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_modes(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke_cold_1(v2, v3);
  }
}

void __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke_18(uint64_t a1)
{
  v1 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEFAULT, "ATXModeAnchorModelSuggestionClient: successfully pinged server", v2, 2u);
  }
}

- (void)anchorModelDidProvideModeSuggestions:(id)suggestions
{
  xpcClientHelper = self->_xpcClientHelper;
  suggestionsCopy = suggestions;
  v5 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:&__block_literal_global_23_4];
  [v5 anchorModelDidProvideModeSuggestions:suggestionsCopy];
}

void __75__ATXModeAnchorModelSuggestionClient_anchorModelDidProvideModeSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_modes(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__ATXModeAnchorModelSuggestionClient_anchorModelDidProvideModeSuggestions___block_invoke_cold_1(v2, v3);
  }
}

- (void)fetchCombinedSuggestionScoreForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1
{
  v16 = *&origin;
  v17 = *&type;
  handlerCopy = handler;
  triggersCopy = triggers;
  anchorTypeCopy = anchorType;
  idCopy = id;
  dCopy = d;
  v26 = [[ATXModeSuggestionScorer alloc] initWithModeUUID:dCopy modeType:v17 origin:v16 originBundleId:idCopy originAnchorType:anchorTypeCopy confidenceScore:triggersCopy secondsSinceSuggested:score serializedTriggers:suggested];

  v24 = MEMORY[0x277CCABB0];
  [(ATXModeSuggestionScorer *)v26 score];
  v25 = [v24 numberWithDouble:?];
  handlerCopy[2](handlerCopy, v25);
}

- (void)fetchCombinedSuggestionScoreAndFlagsForModeWithUUID:(id)d modeType:(int)type origin:(int)origin originBundleId:(id)id originAnchorType:(id)anchorType confidenceScore:(double)score secondsSinceSuggested:(double)suggested serializedTriggers:(id)self0 completionHandler:(id)self1
{
  v16 = *&origin;
  v17 = *&type;
  handlerCopy = handler;
  triggersCopy = triggers;
  anchorTypeCopy = anchorType;
  idCopy = id;
  dCopy = d;
  v26 = [[ATXModeSuggestionScorer alloc] initWithModeUUID:dCopy modeType:v17 origin:v16 originBundleId:idCopy originAnchorType:anchorTypeCopy confidenceScore:triggersCopy secondsSinceSuggested:score serializedTriggers:suggested];

  v24 = MEMORY[0x277CCABB0];
  [(ATXModeSuggestionScorer *)v26 score];
  v25 = [v24 numberWithDouble:?];
  handlerCopy[2](handlerCopy, v25, [(ATXModeSuggestionScorer *)v26 shouldSuggestOnLockScreen], [(ATXModeSuggestionScorer *)v26 shouldSuggestTriggers], [(ATXModeSuggestionScorer *)v26 shouldAllowSmartEntry]);
}

void __49__ATXModeAnchorModelSuggestionClient__pingServer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeAnchorModelSuggestionClient: Error pinging remote object proxy - %@", &v2, 0xCu);
}

void __75__ATXModeAnchorModelSuggestionClient_anchorModelDidProvideModeSuggestions___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeAnchorModelSuggestionClient: Error getting remote object proxy to provide new suggestion - %@", &v2, 0xCu);
}

@end