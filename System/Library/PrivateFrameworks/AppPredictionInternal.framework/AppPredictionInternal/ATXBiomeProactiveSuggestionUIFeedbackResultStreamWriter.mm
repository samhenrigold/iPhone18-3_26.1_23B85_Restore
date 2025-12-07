@interface ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter
- (void)writeEventsToStreamWithXPCActivity:(id)activity;
- (void)writeForConsumerSubType:(unsigned __int8)type;
@end

@implementation ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter

- (void)writeEventsToStreamWithXPCActivity:(id)activity
{
  v22 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  didDefer = [activityCopy didDefer];
  if (didDefer)
  {
    v6 = __atxlog_handle_blending_ecosystem(didDefer);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - Deferring due to xpcActivity.", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [&unk_283A58B38 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(&unk_283A58B38);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          -[ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter writeForConsumerSubType:](self, "writeForConsumerSubType:", [v13 unsignedIntValue]);
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [&unk_283A58B38 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)writeForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:?];
  v6 = [@"proactiveSuggestionUIFeedbackResultStreamWriterBookmarkURL" stringByAppendingFormat:@"-%@", v5];

  v7 = objc_alloc(MEMORY[0x277CBEBC0]);
  v8 = [MEMORY[0x277CEBCB0] bookmarksPathFile:v6];
  v9 = [v7 initFileURLWithPath:v8];

  v10 = [[ATXProactiveSuggestioniOSUIFeedbackQuery alloc] initWithClientModelIds:0 consumerSubTypeToConsider:typeCopy startDateForResults:0 bookmarkURLPath:v9];
  v11 = objc_opt_new();
  v12 = __atxlog_handle_blending_ecosystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    *buf = 138412546;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@ - Beginning query for %@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke;
  v18[3] = &unk_2785A0B18;
  v19 = v11;
  selfCopy = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke_37;
  v17[3] = &unk_27859EE08;
  v17[4] = self;
  v16 = v11;
  [(ATXProactiveSuggestionUIFeedbackQuery *)v10 enumerateUIFeedbackResultsWithBlock:v18 completionBlock:v17];
}

void __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D42000]) initWithProactiveSuggestionUIFeedbackResult:v3];
  if (v4)
  {
    v5 = __atxlog_handle_blending_ecosystem([*(a1 + 32) sendEvent:v4]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Wrote UI Feedback Result to Biome:\n%@", &v8, 0x16u);
    }
  }

  else
  {
    v5 = __atxlog_handle_blending_ecosystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke_cold_1(a1, v3, v5);
    }
  }
}

void __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke_37(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_blending_ecosystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@ - Finished enumerating results with error - %@", &v6, 0x16u);
  }
}

void __83__ATXBiomeProactiveSuggestionUIFeedbackResultStreamWriter_writeForConsumerSubType___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - Unable to initialize corresponding biome object for feedback result:\n%@", &v7, 0x16u);
}

@end