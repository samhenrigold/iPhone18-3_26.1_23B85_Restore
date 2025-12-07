@interface ATXHomeScreenFocusSuggestionLogger
- (ATXHomeScreenFocusSuggestionLogger)init;
- (id)generateSuggestedHomePageStreamBookmark;
- (id)generateSuggestedHomePageStreamBookmarkURLPath;
- (void)logHomeScreenFocusSuggestionMetrics;
- (void)writeBookmarkToFile:(id)file;
@end

@implementation ATXHomeScreenFocusSuggestionLogger

- (ATXHomeScreenFocusSuggestionLogger)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenFocusSuggestionLogger;
  v2 = [(ATXHomeScreenFocusSuggestionLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    stream = v2->_stream;
    v2->_stream = v3;
  }

  return v2;
}

- (id)generateSuggestedHomePageStreamBookmarkURLPath
{
  suggestedHomePageStreamBookmarkURLPath = self->_suggestedHomePageStreamBookmarkURLPath;
  if (suggestedHomePageStreamBookmarkURLPath)
  {
    v3 = suggestedHomePageStreamBookmarkURLPath;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    metricsRootDirectory = [MEMORY[0x277CEBCB0] metricsRootDirectory];
    v7 = objc_alloc(MEMORY[0x277CBEBC0]);
    v8 = [metricsRootDirectory stringByAppendingPathComponent:v5];
    v3 = [v7 initFileURLWithPath:v8];
  }

  return v3;
}

- (id)generateSuggestedHomePageStreamBookmark
{
  v3 = MEMORY[0x277CEBBF8];
  generateSuggestedHomePageStreamBookmarkURLPath = [(ATXHomeScreenFocusSuggestionLogger *)self generateSuggestedHomePageStreamBookmarkURLPath];
  v5 = [v3 bookmarkFromURLPath:generateSuggestedHomePageStreamBookmarkURLPath maxFileSize:3000000 versionNumber:&unk_283A57680];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEBBF8]);
    generateSuggestedHomePageStreamBookmarkURLPath2 = [(ATXHomeScreenFocusSuggestionLogger *)self generateSuggestedHomePageStreamBookmarkURLPath];
    v5 = [v6 initWithURLPath:generateSuggestedHomePageStreamBookmarkURLPath2 versionNumber:&unk_283A57680 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)writeBookmarkToFile:(id)file
{
  v7 = 0;
  [file saveBookmarkWithError:&v7];
  v4 = v7;
  v5 = v4;
  if (v4)
  {
    v6 = __atxlog_handle_modes(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeSetupExperienceMetricsLogger *)self writeBookmarkToFile:v5, v6];
    }
  }
}

- (void)logHomeScreenFocusSuggestionMetrics
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  generateSuggestedHomePageStreamBookmark = [(ATXHomeScreenFocusSuggestionLogger *)self generateSuggestedHomePageStreamBookmark];
  stream = [(ATXHomeScreenFocusSuggestionLogger *)self stream];
  v6 = [stream publisherFromStartTime:0.0];
  bookmark = [generateSuggestedHomePageStreamBookmark bookmark];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke;
  v50[3] = &unk_27859EB48;
  v37 = generateSuggestedHomePageStreamBookmark;
  v51 = v37;
  selfCopy = self;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_16;
  v48[3] = &unk_278596F60;
  v8 = v3;
  v49 = v8;
  v9 = [v6 sinkWithBookmark:bookmark completion:v50 receiveInput:v48];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = v8;
  obj = [v8 allKeys];
  v41 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v41)
  {
    v39 = *v45;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = objc_opt_new();
        v14 = [v40 objectForKeyedSubscript:v11];
        v15 = [v14 count];
        v16 = v15 - 1;
        if (v15 < 1)
        {
          v20 = 0;
        }

        else
        {
          do
          {
            v17 = [v14 objectAtIndexedSubscript:--v15];
            eventBody = [v17 eventBody];
            action = [eventBody action];

            v20 = action != 2;
            if (action != 2)
            {
              v16 = v15;
              goto LABEL_12;
            }
          }

          while (v15 >= 1);
          v16 = -1;
        }

LABEL_12:
        v21 = +[ATXSuggestedPagesUtils semanticTypeForSuggestedPageType:](ATXSuggestedPagesUtils, "semanticTypeForSuggestedPageType:", [v11 integerValue]);
        [v21 integerValue];
        v22 = DNDModeSemanticTypeToString();
        [v13 setModeSemanticType:v22];

        if (v20 && ([v14 objectAtIndexedSubscript:v16], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "eventBody"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "action"), v24, v23, v25 == 1))
        {
          v26 = [v14 objectAtIndexedSubscript:v16];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_2;
          v42[3] = &unk_27859A798;
          v27 = v26;
          v43 = v27;
          v28 = [v14 _pas_filteredArrayWithTest:v42];
          firstObject = [v28 firstObject];

          v33 = 0;
          if (firstObject)
          {
            [firstObject timestamp];
            v31 = v30;
            [v27 timestamp];
            if (v31 - v32 < 86400.0)
            {
              v33 = 1;
            }
          }

          [v13 setOutcome:v33];
        }

        else
        {
          v34 = [v14 _pas_filteredArrayWithTest:&__block_literal_global_233];
          v35 = [v34 count];

          if (v35)
          {
            v36 = 2;
          }

          else
          {
            v36 = 3;
          }

          [v13 setOutcome:v36];
        }

        [v13 logToCoreAnalytics];

        objc_autoreleasePoolPop(v12);
      }

      v41 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v41);
  }
}

void __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 error];
  if (v7)
  {
  }

  else
  {
    v8 = [v5 state];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = __atxlog_handle_modes(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_2_cold_1(v5, v9);
  }

LABEL_7:
  [*(a1 + 32) setBookmark:v6];
  [*(a1 + 40) writeBookmarkToFile:*(a1 + 32)];
}

void __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_16(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 eventBody];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "pageType")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 addObject:v9];
  }

  else
  {
    v6 = objc_opt_new();
    [v6 addObject:v9];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "pageType")}];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

BOOL __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 identifier];
  v6 = [*(a1 + 32) eventBody];
  v7 = [v6 identifier];
  if ([v5 isEqualToString:v7])
  {
    v8 = [v3 eventBody];
    v9 = [v8 action] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 action] == 2;

  return v3;
}

@end