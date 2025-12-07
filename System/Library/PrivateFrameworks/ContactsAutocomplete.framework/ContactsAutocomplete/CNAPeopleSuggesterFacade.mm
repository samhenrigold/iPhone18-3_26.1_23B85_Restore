@interface CNAPeopleSuggesterFacade
@end

@implementation CNAPeopleSuggesterFacade

void __76___CNAPeopleSuggesterFacade_autocompleteSearchResultsWithPredictionContext___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) autocompleteSearchResultsWithPredictionContext:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(*(a1 + 48) + 8) + 40);

    [CNAutocompletePeopleSuggesterFeedback didReceiveSuggestions:v5];
  }

  else
  {
    v6 = [*(a1 + 40) searchPrefix];
    v7 = [v6 length];

    if (v7)
    {
      v9 = CNALoggingContextTriage(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = 0;
        _os_log_impl(&dword_2155FE000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Framework version mismatch, no results expected until rdar://78585557", &v17, 0xCu);
      }

      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = MEMORY[0x277CBEBF8];
    }

    else
    {
      v12 = [*(a1 + 32) rankedZKWSuggestionsFromContext:*(a1 + 40)];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v16 = CNALoggingContextTriage(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = 0;
        _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Framework version mismatch, regressing behavior until rdar://78585557", &v17, 0xCu);
      }
    }
  }
}

@end