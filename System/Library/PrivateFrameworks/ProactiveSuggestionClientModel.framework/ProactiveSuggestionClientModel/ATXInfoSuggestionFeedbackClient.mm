@interface ATXInfoSuggestionFeedbackClient
+ (id)sharedInstance;
- (id)_init;
- (void)stackDidRotateProactivelyForInfoSuggestion:(id)suggestion isStalenessRotation:(BOOL)rotation;
- (void)suggestionDismissed:(id)dismissed isDismissalLongTerm:(BOOL)term completion:(id)completion;
@end

@implementation ATXInfoSuggestionFeedbackClient

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    +[ATXInfoSuggestionFeedbackClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __49__ATXInfoSuggestionFeedbackClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXInfoSuggestionFeedbackClient alloc] _init];
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = ATXInfoSuggestionFeedbackClient;
  v2 = [(ATXInfoSuggestionFeedbackClient *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5DA0]);
    v4 = ATXInfoSuggestionXPCInterface();
    v5 = __atxlog_handle_gi(v4);
    v6 = [v3 initWithServiceName:@"com.apple.proactive.infoSuggestion.xpc" allowlistedServerInterface:v4 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 interruptionHandler:&__block_literal_global_7 invalidationHandler:&__block_literal_global_10 logHandle:v5];
    xpcClientHelper = v2->_xpcClientHelper;
    v2->_xpcClientHelper = v6;
  }

  return v2;
}

void __40__ATXInfoSuggestionFeedbackClient__init__block_invoke(uint64_t a1)
{
  v1 = __atxlog_handle_gi(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DEFC4000, v1, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionFeedbackClient: xpc connection interrupted.", v2, 2u);
  }
}

void __40__ATXInfoSuggestionFeedbackClient__init__block_invoke_8(uint64_t a1)
{
  v1 = __atxlog_handle_gi(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DEFC4000, v1, OS_LOG_TYPE_DEFAULT, "ATXInfoSuggestionFeedbackClient: xpc connection invalidated.", v2, 2u);
  }
}

- (void)suggestionDismissed:(id)dismissed isDismissalLongTerm:(BOOL)term completion:(id)completion
{
  termCopy = term;
  completionCopy = completion;
  xpcClientHelper = self->_xpcClientHelper;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__ATXInfoSuggestionFeedbackClient_suggestionDismissed_isDismissalLongTerm_completion___block_invoke;
  v13[3] = &unk_1E86A3E18;
  v14 = completionCopy;
  v10 = completionCopy;
  dismissedCopy = dismissed;
  v12 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:v13];
  [v12 userDidDismissSuggestion:dismissedCopy isDismissalLongTerm:termCopy completion:v10];
}

void __86__ATXInfoSuggestionFeedbackClient_suggestionDismissed_isDismissalLongTerm_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_gi(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__ATXInfoSuggestionFeedbackClient_suggestionDismissed_isDismissalLongTerm_completion___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stackDidRotateProactivelyForInfoSuggestion:(id)suggestion isStalenessRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  xpcClientHelper = self->_xpcClientHelper;
  suggestionCopy = suggestion;
  v7 = [(_PASXPCClientHelper *)xpcClientHelper remoteObjectProxyWithErrorHandler:&__block_literal_global_13];
  [v7 stackDidRotateProactivelyForInfoSuggestion:suggestionCopy isStalenessRotation:rotationCopy];
}

void __98__ATXInfoSuggestionFeedbackClient_stackDidRotateProactivelyForInfoSuggestion_isStalenessRotation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __98__ATXInfoSuggestionFeedbackClient_stackDidRotateProactivelyForInfoSuggestion_isStalenessRotation___block_invoke_cold_1(v2, v3);
  }
}

void __86__ATXInfoSuggestionFeedbackClient_suggestionDismissed_isDismissalLongTerm_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "ATXInfoSuggestionFeedbackClient: Error recording suggestion dismissed - %@", &v2, 0xCu);
}

void __98__ATXInfoSuggestionFeedbackClient_stackDidRotateProactivelyForInfoSuggestion_isStalenessRotation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "ATXInfoSuggestionFeedbackClient: Error getting remote object proxy to record stack rotation - %@", &v2, 0xCu);
}

@end