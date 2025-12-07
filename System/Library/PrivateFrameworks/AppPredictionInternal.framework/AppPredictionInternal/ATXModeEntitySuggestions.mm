@interface ATXModeEntitySuggestions
- (void)suggestedBundleIDsForAllowListWithCompletion:(id)completion;
- (void)suggestedBundleIDsForDenyListWithCompletion:(id)completion;
@end

@implementation ATXModeEntitySuggestions

- (void)suggestedBundleIDsForAllowListWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = allModesForTraining();
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v25 + 1) + 8 * v9) unsignedIntegerValue];
        v11 = objc_opt_new();
        v12 = ATXModeToString();
        [v3 setObject:v11 forKeyedSubscript:v12];

        dispatch_group_enter(v5);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke;
        v21[3] = &unk_278597B60;
        v22 = v5;
        v23 = v3;
        v24 = unsignedIntegerValue;
        [v4 recommendedAndCandidateAllowedAppsForMode:unsignedIntegerValue reply:v21];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v13 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke_2;
  block[3] = &unk_278596F88;
  v19 = v3;
  v20 = completionCopy;
  v14 = v3;
  v15 = completionCopy;
  dispatch_group_notify(v5, v13, block);
}

void __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_usage_insights(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke_cold_1(v7, v8);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v9 = [v5 recommendedApps];
    v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_15];

    v11 = *(a1 + 40);
    objc_sync_enter(v11);
    v12 = *(a1 + 40);
    v13 = ATXModeToString();
    [v12 setObject:v10 forKeyedSubscript:v13];

    objc_sync_exit(v11);
    dispatch_group_leave(*(a1 + 32));
  }
}

- (void)suggestedBundleIDsForDenyListWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = allModesForTraining();
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v25 + 1) + 8 * v9) unsignedIntegerValue];
        v11 = objc_opt_new();
        v12 = ATXModeToString();
        [v3 setObject:v11 forKeyedSubscript:v12];

        dispatch_group_enter(v5);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke;
        v21[3] = &unk_278597B60;
        v22 = v5;
        v23 = v3;
        v24 = unsignedIntegerValue;
        [v4 recommendedAndCandidateDeniedAppsForMode:unsignedIntegerValue reply:v21];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v13 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke_2;
  block[3] = &unk_278596F88;
  v19 = v3;
  v20 = completionCopy;
  v14 = v3;
  v15 = completionCopy;
  dispatch_group_notify(v5, v13, block);
}

void __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke_cold_1(v7, v8);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v9 = [v5 recommendedApps];
    v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_24];

    v11 = *(a1 + 40);
    objc_sync_enter(v11);
    v12 = *(a1 + 40);
    v13 = ATXModeToString();
    [v12 setObject:v10 forKeyedSubscript:v13];

    objc_sync_exit(v11);
    dispatch_group_leave(*(a1 + 32));
  }
}

void __73__ATXModeEntitySuggestions_suggestedBundleIDsForAllowListWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not get recommended and candidate allowed apps: %@", &v2, 0xCu);
}

void __72__ATXModeEntitySuggestions_suggestedBundleIDsForDenyListWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Could not get recommended and candidate denied apps: %@", &v2, 0xCu);
}

@end