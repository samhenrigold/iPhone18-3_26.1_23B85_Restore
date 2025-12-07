@interface ATXLayoutSelector
- (ATXLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions;
- (id)validLayoutsForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions;
@end

@implementation ATXLayoutSelector

- (ATXLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = ATXLayoutSelector;
  v9 = [(ATXLayoutSelector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deduplicator, deduplicator);
    objc_storeStrong(&v10->_hyperParameters, parameters);
  }

  return v10;
}

- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions
{
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v7 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
    v18 = 138543618;
    v19 = v8;
    v20 = 2048;
    v21 = [suggestionsCopy count];
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Layout Selector asked to provide the highest ranking, selected layout for %{public}@ and %lu rankedSuggestions", &v18, 0x16u);
  }

  v9 = [(ATXLayoutSelector *)self validLayoutsForConsumerSubType:typeCopy rankedSuggestions:suggestionsCopy];
  v10 = [v9 count];
  v11 = __atxlog_handle_blending(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      firstObject = [v9 firstObject];
      v14 = +[ATXSuggestionLayout stringFromUILayoutType:](ATXSuggestionLayout, "stringFromUILayoutType:", [firstObject layoutType]);
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "Blending: Layout Selector's selected layout type: %@", &v18, 0xCu);
    }

    firstObject2 = [v9 firstObject];
  }

  else
  {
    if (v12)
    {
      v16 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "Blending: There is no selected layout for consumerSubType: %@", &v18, 0xCu);
    }

    firstObject2 = 0;
  }

  return firstObject2;
}

- (id)validLayoutsForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions
{
  typeCopy = type;
  v27 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v7 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Layout Selector asked to provide validLayouts.", buf, 2u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__ATXLayoutSelector_validLayoutsForConsumerSubType_rankedSuggestions___block_invoke;
  v21[3] = &unk_1E86A4CB8;
  v21[4] = self;
  v22 = typeCopy;
  v8 = [suggestionsCopy _pas_filteredArrayWithTest:v21];

  v9 = [ATXLayoutGenerator alloc];
  v10 = [(ATXUniversalBlendingLayerHyperParametersProtocol *)self->_hyperParameters layoutsToConsiderForConsumerSubType:typeCopy];
  v11 = [(ATXLayoutGenerator *)v9 initWithRankedSuggestions:v8 layoutsToConsider:v10 hyperParameters:self->_hyperParameters suggestionDeduplicator:self->_deduplicator];

  v13 = __atxlog_handle_blending(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
    v15 = [v8 count];
    *buf = 138543618;
    v24 = v14;
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEFAULT, "Generating layouts for non-homescreen consumerSubType %{public}@ with %lu ranked and filtered suggestions", buf, 0x16u);
  }

  generateValidLayouts = [(ATXLayoutGenerator *)v11 generateValidLayouts];
  if ([generateValidLayouts count])
  {
    v17 = generateValidLayouts;
  }

  else
  {
    v18 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1DEFC4000, v18, OS_LOG_TYPE_DEFAULT, "Blending: Unable to generate any valid layouts for consumerSubType: %@.", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

@end