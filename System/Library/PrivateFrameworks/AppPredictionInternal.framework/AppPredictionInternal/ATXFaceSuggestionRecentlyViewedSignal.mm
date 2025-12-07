@interface ATXFaceSuggestionRecentlyViewedSignal
- (ATXFaceSuggestionRecentlyViewedSignal)init;
- (double)valueForDescriptor:(id)descriptor;
@end

@implementation ATXFaceSuggestionRecentlyViewedSignal

- (ATXFaceSuggestionRecentlyViewedSignal)init
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ATXFaceSuggestionRecentlyViewedSignal;
  v2 = [(ATXFaceSuggestionRecentlyViewedSignal *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recentlyViewedFeaturedDescriptorKeys = v2->_recentlyViewedFeaturedDescriptorKeys;
    v2->_recentlyViewedFeaturedDescriptorKeys = v3;

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = objc_opt_new();
    v7 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v6 options:0];

    v8 = objc_opt_new();
    [v7 timeIntervalSinceReferenceDate];
    v9 = [v8 publisherFromStartTime:?];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__ATXFaceSuggestionRecentlyViewedSignal_init__block_invoke_20;
    v13[3] = &unk_278596F60;
    v14 = v2;
    v10 = __atxlog_handle_lock_screen([v9 sinkWithCompletion:&__block_literal_global_241 receiveInput:v13]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v2->_recentlyViewedFeaturedDescriptorKeys;
      *buf = 136315394;
      v17 = "[ATXFaceSuggestionRecentlyViewedSignal init]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%s: recently viewed descriptors: %@", buf, 0x16u);
    }
  }

  return v2;
}

void __45__ATXFaceSuggestionRecentlyViewedSignal_init__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 state];
  if (!v3)
  {
    v4 = __atxlog_handle_lock_screen(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[ATXFaceSuggestionRecentlyViewedSignal init]_block_invoke";
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: successfully sinked face gallery biome stream publisher", &v5, 0xCu);
    }

    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = __atxlog_handle_lock_screen(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__ATXFaceSuggestionRecentlyViewedSignal_init__block_invoke_cold_1(v2, v4);
    }

LABEL_7:
  }
}

void __45__ATXFaceSuggestionRecentlyViewedSignal_init__block_invoke_20(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 eventType];

  if (v5 == 1)
  {
    v6 = [v3 eventBody];
    v7 = [v6 configuration];

    if ([v7 source] == 1)
    {
      v21 = v7;
      v8 = [v7 sections];
      v9 = [v8 bs_firstObjectPassingTest:&__block_literal_global_23_8];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = v9;
      v10 = [v9 items];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = *(*(a1 + 32) + 8);
            v17 = [v15 extensionBundleIdentifier];
            v18 = [v15 descriptorIdentifier];
            v19 = descriptorKey(v17, v18);
            [v16 addObject:v19];
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v7 = v21;
    }
  }
}

- (double)valueForDescriptor:(id)descriptor
{
  v22 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  identifier = [descriptorCopy identifier];
  v7 = descriptorKey(extensionBundleIdentifier, identifier);

  v8 = [(NSCountedSet *)self->_recentlyViewedFeaturedDescriptorKeys countForObject:v7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_recentlyViewedFeaturedDescriptorKeys;
  v10 = [(NSCountedSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v10)
  {

LABEL_11:
    v15 = 0.0;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v18;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v12 += [(NSCountedSet *)self->_recentlyViewedFeaturedDescriptorKeys countForObject:*(*(&v17 + 1) + 8 * i), v17];
    }

    v11 = [(NSCountedSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v11);

  if (!v12)
  {
    goto LABEL_11;
  }

  v15 = v8 / v12;
LABEL_12:

  return v15;
}

void __45__ATXFaceSuggestionRecentlyViewedSignal_init__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 136315394;
  v5 = "[ATXFaceSuggestionRecentlyViewedSignal init]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: error while sinking face gallery biome stream publisher: %@", &v4, 0x16u);
}

@end