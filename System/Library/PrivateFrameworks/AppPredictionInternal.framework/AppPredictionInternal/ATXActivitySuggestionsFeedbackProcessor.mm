@interface ATXActivitySuggestionsFeedbackProcessor
+ (id)queue;
- (ATXActivitySuggestionsFeedbackProcessor)init;
- (ATXActivitySuggestionsFeedbackProcessor)initWithFeedbackStream:(id)stream feedbackHistogramHelper:(id)helper;
- (id)_activitySuggestionsFeedbackBookmark;
- (void)processFeedbackWithXPCActivity:(id)activity;
@end

@implementation ATXActivitySuggestionsFeedbackProcessor

- (ATXActivitySuggestionsFeedbackProcessor)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXActivitySuggestionsFeedbackProcessor *)self initWithFeedbackStream:v3 feedbackHistogramHelper:v4];

  return v5;
}

- (ATXActivitySuggestionsFeedbackProcessor)initWithFeedbackStream:(id)stream feedbackHistogramHelper:(id)helper
{
  streamCopy = stream;
  helperCopy = helper;
  v12.receiver = self;
  v12.super_class = ATXActivitySuggestionsFeedbackProcessor;
  v9 = [(ATXActivitySuggestionsFeedbackProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedbackStream, stream);
    objc_storeStrong(&v10->_feedbackHistogramHelper, helper);
  }

  return v10;
}

+ (id)queue
{
  if (queue__pasOnceToken7 != -1)
  {
    +[ATXActivitySuggestionsFeedbackProcessor queue];
  }

  v3 = queue__pasExprOnceResult;

  return v3;
}

void __48__ATXActivitySuggestionsFeedbackProcessor_queue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("ATXActivitySuggestionsFeedbackProcessorQueue", v1);
  v3 = queue__pasExprOnceResult;
  queue__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

- (void)processFeedbackWithXPCActivity:(id)activity
{
  activityCopy = activity;
  queue = [objc_opt_class() queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_sync(queue, v7);
}

void __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activitySuggestionsFeedbackBookmark];
  v3 = [*(*(a1 + 32) + 8) publisherFromStartTime:0.0];
  v4 = [v2 bookmark];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke_2;
  v14[3] = &unk_278596E58;
  v5 = v2;
  v15 = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke_3;
  v12[3] = &unk_27859B4F0;
  v6 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v6;
  v7 = [v3 drivableSinkWithBookmark:v4 completion:v14 shouldContinue:v12];

  v11 = 0;
  [v5 saveBookmarkWithError:&v11];
  v8 = v11;
  v9 = v8;
  if (v8)
  {
    v10 = __atxlog_handle_modes(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke_cold_1(v9, v10);
    }
  }
}

uint64_t __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = v3;
  if (v3)
  {
    v5 = __atxlog_handle_modes(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke_3_cold_1(v4, v5);
    }

    v6 = [v4 activity];
    if ([v6 activityType] == 4 && !objc_msgSend(v4, "eventType"))
    {
      v9 = [v4 suggestionType];

      if (v9)
      {
        goto LABEL_7;
      }

      v10 = objc_alloc(MEMORY[0x277CBEBD0]);
      v6 = [v10 initWithSuiteName:*MEMORY[0x277CEBD00]];
      v11 = [v4 eventDate];
      [v6 setObject:v11 forKey:@"dateDrivingSetupSuggestionLastShown"];
    }

LABEL_7:
    [*(*(a1 + 32) + 16) updateFeedbackHistogramWithEvent:v4];
  }

  v7 = [*(a1 + 40) didDefer];

  return v7 ^ 1u;
}

- (id)_activitySuggestionsFeedbackBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"activitySuggestionsFeedbackPublisherBookmarkFile"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:&unk_283A55F58];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CEBBF8]) initWithURLPath:v4 versionNumber:&unk_283A55F58 bookmark:0 metadata:0];
  }

  return v5;
}

void __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXActivitySuggestionsFeedbackProcessor: Unable to save activity suggestion bookmark, error: %@", &v2, 0xCu);
}

void __74__ATXActivitySuggestionsFeedbackProcessor_processFeedbackWithXPCActivity___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[ATXActivitySuggestionsFeedbackProcessor processFeedbackWithXPCActivity:]_block_invoke_3";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Processing feedback eventBody: %@", &v2, 0x16u);
}

@end