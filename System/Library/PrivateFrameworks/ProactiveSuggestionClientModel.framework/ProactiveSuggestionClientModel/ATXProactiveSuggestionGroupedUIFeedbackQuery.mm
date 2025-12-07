@interface ATXProactiveSuggestionGroupedUIFeedbackQuery
- (ATXProactiveSuggestionGroupedUIFeedbackQuery)initWithClientModelIds:(id)ids consumerSubTypeToConsider:(unsigned __int8)consider startDateForResults:(id)results bookmarkURLPath:(id)path hyperParameters:(id)parameters;
- (id)uiFeedbackPublisherChainForShortcutsEditor;
- (id)uiPublisherForConsumerSubType:(unsigned __int8)type startTime:(double)time;
- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock;
- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock uiFeedbackPublisherChain:(id)chain;
@end

@implementation ATXProactiveSuggestionGroupedUIFeedbackQuery

- (ATXProactiveSuggestionGroupedUIFeedbackQuery)initWithClientModelIds:(id)ids consumerSubTypeToConsider:(unsigned __int8)consider startDateForResults:(id)results bookmarkURLPath:(id)path hyperParameters:(id)parameters
{
  considerCopy = consider;
  idsCopy = ids;
  resultsCopy = results;
  pathCopy = path;
  parametersCopy = parameters;
  [resultsCopy timeIntervalSinceReferenceDate];
  v17 = v16;
  v18 = [(ATXProactiveSuggestionGroupedUIFeedbackQuery *)self uiPublisherForConsumerSubType:considerCopy startTime:?];
  v19 = objc_opt_new();
  v20 = [v19 publisherFromStartTime:considerCopy consumerSubType:v17];

  if (v18)
  {
    self = [(ATXProactiveSuggestionUIFeedbackQuery *)self initWithClientModelIds:idsCopy consumerSubTypeToConsider:considerCopy startDateForResults:resultsCopy bookmarkURLPath:pathCopy uiPublisher:v18 blendingModelPublisher:v20 contextPublisher:0 hyperParameters:parametersCopy];
    selfCopy = self;
  }

  else
  {
    v23 = __atxlog_handle_blending_ecosystem(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestionGroupedUIFeedbackQuery initWithClientModelIds:considerCopy consumerSubTypeToConsider:v23 startDateForResults:? bookmarkURLPath:? hyperParameters:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)uiPublisherForConsumerSubType:(unsigned __int8)type startTime:(double)time
{
  if (type == 43)
  {
    v5 = objc_opt_new();
    v6 = [v5 genericEventPublisherFromStartTime:43 consumerSubType:time];
  }

  else
  {
    v8 = __atxlog_handle_blending_ecosystem(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestionGroupedUIFeedbackQuery uiPublisherForConsumerSubType:type startTime:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)uiFeedbackPublisherChainForShortcutsEditor
{
  v3 = [ATXShortcutsEditorGroupedUIFeedbackPublisher alloc];
  uiFeedbackPublisherChain = [(ATXProactiveSuggestionUIFeedbackQuery *)self uiFeedbackPublisherChain];
  v5 = [(ATXShortcutsEditorGroupedUIFeedbackPublisher *)v3 initWithUIFeedbackPublisher:uiFeedbackPublisherChain];
  shortcutsEditorUIFeedbackPublisher = [(ATXShortcutsEditorGroupedUIFeedbackPublisher *)v5 shortcutsEditorUIFeedbackPublisher];

  return shortcutsEditorUIFeedbackPublisher;
}

- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock
{
  v30[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  consumerSubTypeToConsider = [(ATXProactiveSuggestionUIFeedbackQuery *)self consumerSubTypeToConsider];
  if (consumerSubTypeToConsider != 43)
  {
    v11 = __atxlog_handle_blending(consumerSubTypeToConsider);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestionGroupedUIFeedbackQuery enumerateGroupedUIFeedbackResultsWithBlock:v11 completionBlock:?];
    }

    v29 = *MEMORY[0x1E696A578];
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXProactiveSuggestionUIFeedbackQuery consumerSubTypeToConsider](self, "consumerSubTypeToConsider")}];
    v14 = [v12 initWithFormat:@"Unknown consumerSubType specified: %@", v13];
    v30[0] = v14;
    v15 = MEMORY[0x1E695DF20];
    v16 = v30;
    v17 = &v29;
    goto LABEL_10;
  }

  uiFeedbackPublisherChainForShortcutsEditor = [(ATXProactiveSuggestionGroupedUIFeedbackQuery *)self uiFeedbackPublisherChainForShortcutsEditor];
  if (!uiFeedbackPublisherChainForShortcutsEditor)
  {
    v18 = __atxlog_handle_blending_ecosystem(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionUIFeedbackQuery enumerateUIFeedbackResultsWithBlock:v18 completionBlock:?];
    }

    v27 = *MEMORY[0x1E696A578];
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    v20 = objc_opt_class();
    v13 = NSStringFromClass(v20);
    v14 = [v19 initWithFormat:@"%@ - could not create uiFeedbackPublisherChain, returning early", v13, v27];
    v28 = v14;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v28;
    v17 = &v27;
LABEL_10:
    v10 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];

    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 initWithFormat:@"%@", v24];
    v26 = [v21 initWithDomain:v25 code:-1 userInfo:v10];

    completionBlockCopy[2](completionBlockCopy, v26);
    goto LABEL_11;
  }

  v10 = uiFeedbackPublisherChainForShortcutsEditor;
  [(ATXProactiveSuggestionGroupedUIFeedbackQuery *)self enumerateGroupedUIFeedbackResultsWithBlock:blockCopy completionBlock:completionBlockCopy uiFeedbackPublisherChain:uiFeedbackPublisherChainForShortcutsEditor];
LABEL_11:
}

- (void)enumerateGroupedUIFeedbackResultsWithBlock:(id)block completionBlock:(id)completionBlock uiFeedbackPublisherChain:(id)chain
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  chainCopy = chain;
  v11 = MEMORY[0x1E698AFE0];
  bookmarkURLPath = [(ATXProactiveSuggestionUIFeedbackQuery *)self bookmarkURLPath];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:4];
  v14 = [v11 bookmarkFromURLPath:bookmarkURLPath maxFileSize:3000000 versionNumber:v13];

  bookmark = [v14 bookmark];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke;
  v21[3] = &unk_1E86A3CE8;
  v21[4] = self;
  v22 = completionBlockCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke_28;
  v19[3] = &unk_1E86A44D8;
  v19[4] = self;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = completionBlockCopy;
  v18 = [chainCopy sinkWithBookmark:bookmark completion:v21 receiveInput:v19];
}

void __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [v6 error];
  v8 = [v6 state];

  v10 = v8 == 0;
  if (!v8 && !v7)
  {
    v7 = [*(a1 + 32) bookmarkURLPath];

    if (v7)
    {
      v11 = objc_alloc(MEMORY[0x1E698AFE0]);
      v12 = [*(a1 + 32) bookmarkURLPath];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:4];
      v14 = [v11 initWithURLPath:v12 versionNumber:v13 bookmark:v5 metadata:0];

      v21 = 0;
      v10 = [v14 saveBookmarkWithError:&v21];
      v7 = v21;
      v15 = __atxlog_handle_blending_ecosystem(v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138412802;
        v23 = v17;
        v24 = 1024;
        v25 = v10;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_1DEFC4000, v15, OS_LOG_TYPE_DEFAULT, "%@ - saved new bookmark with success: %u, error: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v10 = 1;
    }
  }

  v18 = __atxlog_handle_blending_ecosystem(v9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138412802;
    v23 = v20;
    v24 = 1024;
    v25 = v10;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_1DEFC4000, v18, OS_LOG_TYPE_DEFAULT, "%@ - invoking completion handler with success: %u, error: %@", buf, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

void __132__ATXProactiveSuggestionGroupedUIFeedbackQuery_enumerateGroupedUIFeedbackResultsWithBlock_completionBlock_uiFeedbackPublisherChain___block_invoke_28(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v10 startDateOfFirstSession];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [*(a1 + 32) startDateForResults];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  if (v6 >= v9)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)initWithClientModelIds:(NSObject *)a3 consumerSubTypeToConsider:startDateForResults:bookmarkURLPath:hyperParameters:.cold.1(uint64_t a1, unsigned __int8 a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a2];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_fault_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_FAULT, "%@ - could not find iOS ui publisher for consumerSubType: %@", &v8, 0x16u);
}

- (void)uiPublisherForConsumerSubType:(unsigned __int8)a1 startTime:(NSObject *)a2 .cold.1(unsigned __int8 a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Tried to access BiomeUIStream for grouped UI feedback results for an incompatible consumerSubType: %@", &v4, 0xCu);
}

@end