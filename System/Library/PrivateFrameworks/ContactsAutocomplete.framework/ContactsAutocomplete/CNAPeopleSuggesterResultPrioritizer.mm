@interface CNAPeopleSuggesterResultPrioritizer
@end

@implementation CNAPeopleSuggesterResultPrioritizer

uint64_t __46___CNAPeopleSuggesterResultPrioritizer_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contacts.autocomplete", "ranking");

  return MEMORY[0x2821F96F8]();
}

id __115___CNAPeopleSuggesterResultPrioritizer_applyPriorityOrderToResults_fetchRequest_andCompletePriorityResultsPromise___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 address];

  return v3;
}

id __115___CNAPeopleSuggesterResultPrioritizer_applyPriorityOrderToResults_fetchRequest_andCompletePriorityResultsPromise___block_invoke_20(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(get_PSSuggesterClass_1());
  v3 = objc_alloc_init(get_PSPredictionContextClass());
  [v3 setBundleID:*(a1 + 32)];
  [v3 setAccountIdentifier:*(a1 + 40)];
  [v3 setSearchPrefix:*(a1 + 48)];
  v4 = [*(a1 + 56) array];
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138477827;
    v11 = v4;
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_INFO, "Suggestion ranking input: %{private}@", &v10, 0xCu);
  }

  v6 = [*(a1 + 56) array];
  v7 = [v2 rankedAutocompleteSuggestionsFromContext:v3 candidates:v6];

  v8 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138477827;
    v11 = v7;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_INFO, "Suggestion ranking output: %{private}@", &v10, 0xCu);
  }

  return v7;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) resultIdentifierIsValidMessagesChatGuid:v3])
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_6();
    }

    v5 = 1;
  }

  else
  {
    v6 = [v3 value];
    v7 = [v6 address];

    if (v7)
    {
      v8 = *(a1 + 40);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_26;
      v26[3] = &unk_2781C3FD8;
      v9 = v3;
      v27 = v9;
      if ([v8 _cn_any:v26])
      {
        v10 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_4();
        }

        v5 = 1;
      }

      else
      {
        v11 = *(a1 + 40);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_28;
        v24[3] = &unk_2781C3FD8;
        v12 = v9;
        v25 = v12;
        if ([v11 _cn_any:v24])
        {
          v13 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_3();
          }

          v5 = 1;
        }

        else
        {
          v18 = MEMORY[0x277D85DD0];
          v19 = 3221225472;
          v20 = __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_29;
          v21 = &unk_2781C4D08;
          v14 = *(a1 + 40);
          v22 = *(a1 + 32);
          v23 = v12;
          v5 = [v14 _cn_any:&v18];
          v15 = [objc_opt_class() os_log];
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          if (v5)
          {
            if (v16)
            {
              __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_2();
            }
          }

          else if (v16)
          {
            __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_1();
          }
        }

        v10 = v25;
      }

      v4 = v27;
    }

    else
    {
      v4 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_cold_5();
      }

      v5 = 0;
    }
  }

  return v5;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayName];
  v5 = [v4 _cn_hasPrefix:v3];

  return v5;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 value];
  v5 = [v4 address];
  v6 = [v5 _cn_hasPrefix:v3];

  return v6;
}

uint64_t __84___CNAPeopleSuggesterResultPrioritizer_partitionCandidatesForRanking_givenPrefixes___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 nameComponents];
  v6 = [v2 resultMatchesPrefix:v4 inNameComponentsOfResult:v5];

  return v6;
}

uint64_t __63___CNAPeopleSuggesterResultPrioritizer_partitionStewieResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __72___CNAPeopleSuggesterResultPrioritizer_bundleIdentifierOfCurrentProcess__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) makeBundleIdentifierOfCurrentProcess];
  v1 = [v3 copy];
  v2 = bundleIdentifierOfCurrentProcess_cn_once_object_20;
  bundleIdentifierOfCurrentProcess_cn_once_object_20 = v1;
}

@end