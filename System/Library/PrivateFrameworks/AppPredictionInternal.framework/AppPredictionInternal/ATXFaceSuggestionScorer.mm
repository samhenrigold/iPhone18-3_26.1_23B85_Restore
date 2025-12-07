@interface ATXFaceSuggestionScorer
- (ATXFaceSuggestionScorer)initWithParameters:(id)parameters descriptors:(id)descriptors;
- (NSSet)signals;
- (double)featuredScoreForDescriptor:(id)descriptor;
- (id)_mockScoreForDescriptor:(id)descriptor;
- (void)_loadAppLaunchData;
- (void)_loadSignals;
@end

@implementation ATXFaceSuggestionScorer

- (ATXFaceSuggestionScorer)initWithParameters:(id)parameters descriptors:(id)descriptors
{
  parametersCopy = parameters;
  descriptorsCopy = descriptors;
  v12.receiver = self;
  v12.super_class = ATXFaceSuggestionScorer;
  v9 = [(ATXFaceSuggestionScorer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameters, parameters);
    objc_storeStrong(&v10->_descriptors, descriptors);
    [(ATXFaceSuggestionScorer *)v10 _loadSignals];
  }

  return v10;
}

- (NSSet)signals
{
  v2 = [(NSSet *)self->_signals copy];

  return v2;
}

- (double)featuredScoreForDescriptor:(id)descriptor
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = COERCE_DOUBLE(descriptor);
  v5 = __atxlog_handle_lock_screen(*&v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v6 = [(ATXFaceSuggestionScorer *)self _mockScoreForDescriptor:*&v4];
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_lock_screen(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [v7 doubleValue];
      *buf = 136315650;
      v35 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
      v36 = 2048;
      v37 = v9;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: using mocked score of %f for descriptor %@", buf, 0x20u);
    }

    [v7 doubleValue];
    v11 = v10;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = self->_signals;
    v13 = [(NSSet *)v12 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          [v17 weight];
          v19 = v18;
          v20 = [v17 valueForDescriptor:*&v4];
          v22 = v21;
          v23 = v19 * v21;
          v24 = __atxlog_handle_lock_screen(v20);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = objc_opt_class();
            NSStringFromClass(v25);
            v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 136316162;
            v35 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
            v36 = 2112;
            v37 = v26;
            v38 = 2048;
            v39 = v19;
            v40 = 2048;
            v41 = v22;
            v42 = 2048;
            v43 = v23;
            _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%s: [%@] weight: %f, value: %f = product: %f", buf, 0x34u);
          }

          v11 = v11 + v23;
        }

        v14 = [(NSSet *)v12 countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v14);
    }

    else
    {
      v11 = 0.0;
    }

    v28 = __atxlog_handle_lock_screen(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[ATXFaceSuggestionScorer featuredScoreForDescriptor:]";
      v36 = 2048;
      v37 = v11;
      _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "%s: score: %f", buf, 0x16u);
    }

    v7 = 0;
  }

  return v11;
}

- (void)_loadSignals
{
  v16[9] = *MEMORY[0x277D85DE8];
  [(ATXFaceSuggestionScorer *)self _loadAppLaunchData];
  v14 = objc_alloc(MEMORY[0x277CBEB98]);
  v15 = [[ATXFaceSuggestionAppLaunchSignal alloc] initWithAppLaunchDictionary:self->_appLaunchDictionary];
  v16[0] = v15;
  v3 = [[ATXFaceSuggestionAppLaunchUniqueDaysSignal alloc] initWithAppLaunchDictionary:self->_appLaunchDictionary];
  v16[1] = v3;
  v4 = objc_opt_new();
  v16[2] = v4;
  v5 = objc_opt_new();
  v16[3] = v5;
  v6 = [[ATXFaceSuggestionUprankedDateIntervalSignal alloc] initWithParameters:self->_parameters];
  v16[4] = v6;
  v7 = [[ATXFaceSuggestionGlobalPopularitySignal alloc] initWithParameters:self->_parameters];
  v16[5] = v7;
  v8 = objc_opt_new();
  v16[6] = v8;
  v9 = objc_opt_new();
  v16[7] = v9;
  v10 = objc_opt_new();
  v16[8] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:9];
  v12 = [v14 initWithArray:v11];
  signals = self->_signals;
  self->_signals = v12;
}

- (void)_loadAppLaunchData
{
  v6 = [(NSSet *)self->_descriptors _pas_mappedSetWithTransform:&__block_literal_global_212];
  v3 = objc_opt_new();
  v4 = [v3 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v6];
  appLaunchDictionary = self->_appLaunchDictionary;
  self->_appLaunchDictionary = v4;
}

- (id)_mockScoreForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v6 = [v5 dictionaryForKey:*MEMORY[0x277CEBDC0]];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
    identifier = [descriptorCopy identifier];
    v10 = [v7 initWithFormat:@"%@-%@", extensionBundleIdentifier, identifier];

    v11 = [v6 objectForKeyedSubscript:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end