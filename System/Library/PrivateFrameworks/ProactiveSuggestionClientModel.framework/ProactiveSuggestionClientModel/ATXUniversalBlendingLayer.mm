@interface ATXUniversalBlendingLayer
+ (void)logLongDescriptionForBlendingLayerString:(id)string prefix:(id)prefix shouldUseDefaultLogLevel:(BOOL)level limit:(unint64_t)limit;
- (ATXUniversalBlendingLayer)initWithSuggestionPreprocessor:(id)preprocessor delegate:(id)delegate layoutSelectorsForConsumerSubTypes:(id)types blendingSessionLogger:(id)logger hyperParameters:(id)parameters;
- (BOOL)updateCachedLayout:(id)layout uiConsumer:(unsigned __int8)consumer clientModelSuggestions:(id)suggestions;
- (BOOL)updateSuggestionsForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions clientModelSuggestions:(id)modelSuggestions;
- (id)rerankedSuggestions:(id)suggestions;
- (id)rerankedValidSuggestionsFromClientModelSuggestions:(id)suggestions;
- (id)selectedLayoutForUIConsumer:(unsigned __int8)consumer rankedSuggestions:(id)suggestions;
- (void)promoteSuggestionsFromClientModelWithIdentifier:(id)identifier;
- (void)updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:(id)suggestions;
- (void)updateSuggestionsForConsumerSubTypes:(id)types clientModelSuggestions:(id)suggestions;
@end

@implementation ATXUniversalBlendingLayer

- (ATXUniversalBlendingLayer)initWithSuggestionPreprocessor:(id)preprocessor delegate:(id)delegate layoutSelectorsForConsumerSubTypes:(id)types blendingSessionLogger:(id)logger hyperParameters:(id)parameters
{
  preprocessorCopy = preprocessor;
  delegateCopy = delegate;
  typesCopy = types;
  loggerCopy = logger;
  parametersCopy = parameters;
  v29.receiver = self;
  v29.super_class = ATXUniversalBlendingLayer;
  v18 = [(ATXUniversalBlendingLayer *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestionPreprocessor, preprocessor);
    v20 = objc_alloc(MEMORY[0x1E695E000]);
    v21 = [v20 initWithSuiteName:*MEMORY[0x1E698B030]];
    v22 = [v21 stringForKey:@"BlendingLayerPromotedClientModel"];
    promotedClientModelId = v19->_promotedClientModelId;
    v19->_promotedClientModelId = v22;

    objc_storeStrong(&v19->_delegate, delegate);
    v24 = [typesCopy copy];
    layoutSelectorsForConsumerSubTypes = v19->_layoutSelectorsForConsumerSubTypes;
    v19->_layoutSelectorsForConsumerSubTypes = v24;

    objc_storeStrong(&v19->_blendingSessionLogger, logger);
    objc_storeStrong(&v19->_hyperParameters, parameters);
    v26 = objc_opt_new();
    feedbackWriter = v19->_feedbackWriter;
    v19->_feedbackWriter = v26;
  }

  return v19;
}

- (void)updateSuggestionsForAllConsumerSubTypesWithClientModelSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer asked to update suggestions for all consumer subtypes. [BLENDING REFRESH START]", buf, 2u);
  }

  validConsumerSubTypesForLayoutGeneration = [objc_opt_class() validConsumerSubTypesForLayoutGeneration];
  [(ATXUniversalBlendingLayer *)self updateSuggestionsForConsumerSubTypes:validConsumerSubTypesForLayoutGeneration clientModelSuggestions:suggestionsCopy];

  v8 = __atxlog_handle_blending(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer finished updating suggestions for all consumer subtypes. [BLENDING REFRESH END]", v9, 2u);
  }
}

- (void)updateSuggestionsForConsumerSubTypes:(id)types clientModelSuggestions:(id)suggestions
{
  v31 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  suggestionsCopy = suggestions;
  sel_getName(a2);
  v23 = os_transaction_create();
  v9 = __atxlog_handle_blending(v23);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v9, OS_LOG_TYPE_DEFAULT, "Blending: Considering executing Blending Layer session logging before executing Blending Layer refresh.", buf, 2u);
  }

  v10 = __atxlog_handle_blending([(ATXBlendingLayerSessionLoggerProtocol *)self->_blendingSessionLogger logCurrentSessionIfPossible]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Blending: Done executing Blending Layer session logging before executing Blending Layer refresh.", buf, 2u);
  }

  v11 = [(ATXUniversalBlendingLayer *)self rerankedValidSuggestionsFromClientModelSuggestions:suggestionsCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = typesCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        integerValue = [v17 integerValue];
        validConsumerSubTypesForLayoutGeneration = [objc_opt_class() validConsumerSubTypesForLayoutGeneration];
        LOBYTE(v17) = [validConsumerSubTypesForLayoutGeneration containsObject:v17];

        if (v17)
        {
          [(ATXUniversalBlendingLayer *)self updateSuggestionsForConsumerSubType:integerValue rankedSuggestions:v11 clientModelSuggestions:suggestionsCopy];
        }

        else
        {
          v21 = __atxlog_handle_blending(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [MEMORY[0x1E698B028] stringForConsumerSubtype:integerValue];
            *buf = 138412290;
            v29 = v22;
            _os_log_impl(&dword_1DEFC4000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring UI Consumer because it's not allowed. UI Consumer: %@", buf, 0xCu);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }
}

- (BOOL)updateSuggestionsForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions clientModelSuggestions:(id)modelSuggestions
{
  typeCopy = type;
  v19 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  modelSuggestionsCopy = modelSuggestions;
  v10 = __atxlog_handle_blending(modelSuggestionsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E698B028] safeStringForConsumerSubtype:typeCopy];
    v17 = 138412290;
    v18 = v11;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, ">>> Blending: Blending Layer asked to update suggestions for consumer subtype %@", &v17, 0xCu);
  }

  if (![suggestionsCopy count])
  {
    v12 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXUniversalBlendingLayer updateSuggestionsForConsumerSubType:v12 rankedSuggestions:? clientModelSuggestions:?];
    }
  }

  [(ATXBlendingLayerDelegateProtocol *)self->_delegate blendingLayerRerankedSuggestions:suggestionsCopy consumerSubType:typeCopy];
  v13 = [(ATXUniversalBlendingLayer *)self selectedLayoutForUIConsumer:typeCopy rankedSuggestions:suggestionsCopy];
  v14 = [(ATXUniversalBlendingLayer *)self updateCachedLayout:v13 uiConsumer:typeCopy clientModelSuggestions:modelSuggestionsCopy];

  delegate = self->_delegate;
  if (delegate)
  {
    [(ATXBlendingLayerDelegateProtocol *)delegate blendingLayerUpdatedUICache:v13 consumerSubType:typeCopy];
  }

  return v14;
}

- (id)rerankedValidSuggestionsFromClientModelSuggestions:(id)suggestions
{
  v4 = [(ATXUniversalBlendingLayer *)self rerankedSuggestions:suggestions];
  v5 = [(ATXSuggestionPreprocessorProtocol *)self->_suggestionPreprocessor suggestionsWithInvalidSuggestionsRemoved:v4];

  return v5;
}

- (id)rerankedSuggestions:(id)suggestions
{
  v25 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is reranking suggestions.", &v23, 2u);
  }

  v6 = [[ATXSuggestionReranker alloc] initWithClientModelSuggestions:suggestionsCopy promoteSuggestionsFromClientModel:self->_promotedClientModelId hyperParameters:self->_hyperParameters];
  rerankedSuggestions = [(ATXSuggestionReranker *)v6 rerankedSuggestions];
  v8 = objc_autoreleasePoolPush();
  v9 = __atxlog_handle_blending(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1DEFC4000, v9, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer finished reranking suggestions.", &v23, 2u);
  }

  v11 = __atxlog_handle_blending(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [rerankedSuggestions count];
    if (v12)
    {
      v13 = [rerankedSuggestions objectAtIndexedSubscript:0];
    }

    else
    {
      v13 = @"None";
    }

    v23 = 138412290;
    v24 = v13;
    _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "Blending: 1st highest ranked suggestion: %@", &v23, 0xCu);
    if (v12)
    {
    }
  }

  v15 = __atxlog_handle_blending(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [rerankedSuggestions count];
    if (v16 < 2)
    {
      v17 = @"None";
    }

    else
    {
      v17 = [rerankedSuggestions objectAtIndexedSubscript:1];
    }

    v23 = 138412290;
    v24 = v17;
    _os_log_impl(&dword_1DEFC4000, v15, OS_LOG_TYPE_DEFAULT, "Blending: 2nd highest ranked suggestion: %@", &v23, 0xCu);
    if (v16 >= 2)
    {
    }
  }

  v19 = __atxlog_handle_blending(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [rerankedSuggestions count];
    if (v20 < 3)
    {
      v21 = @"None";
    }

    else
    {
      v21 = [rerankedSuggestions objectAtIndexedSubscript:2];
    }

    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&dword_1DEFC4000, v19, OS_LOG_TYPE_DEFAULT, "Blending: 3rd highest ranked suggestion: %@", &v23, 0xCu);
    if (v20 >= 3)
    {
    }
  }

  objc_autoreleasePoolPop(v8);

  return rerankedSuggestions;
}

- (id)selectedLayoutForUIConsumer:(unsigned __int8)consumer rankedSuggestions:(id)suggestions
{
  consumerCopy = consumer;
  v23 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v7 = [suggestionsCopy count];
  v8 = __atxlog_handle_blending(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is selecting a layout for the suggestions.", &v19, 2u);
    }

    v8 = [(ATXSuggestionPreprocessorProtocol *)self->_suggestionPreprocessor suggestionsByPreprocessingRankedSuggestions:suggestionsCopy forConsumerSubType:consumerCopy];
    layoutSelectorsForConsumerSubTypes = self->_layoutSelectorsForConsumerSubTypes;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:consumerCopy];
    v12 = [(NSDictionary *)layoutSelectorsForConsumerSubTypes objectForKeyedSubscript:v11];

    if (v12)
    {
      v14 = [v12 selectedLayoutForConsumerSubType:consumerCopy rankedSuggestions:v8];
      v15 = __atxlog_handle_blending(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        compactDescription = [v14 compactDescription];
        v17 = [MEMORY[0x1E698B028] safeStringForConsumerSubtype:consumerCopy];
        v19 = 138412546;
        v20 = compactDescription;
        v21 = 2112;
        v22 = v17;
        _os_log_impl(&dword_1DEFC4000, v15, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer selected the following layout: %@ for consumerSubType: %@", &v19, 0x16u);
      }
    }

    else
    {
      v15 = __atxlog_handle_blending(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXUniversalBlendingLayer selectedLayoutForUIConsumer:consumerCopy rankedSuggestions:?];
      }

      v14 = 0;
    }
  }

  else
  {
    if (v9)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer asked to select a layout when there were no suggestions available.", &v19, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)updateCachedLayout:(id)layout uiConsumer:(unsigned __int8)consumer clientModelSuggestions:(id)suggestions
{
  consumerCopy = consumer;
  v34 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  suggestionsCopy = suggestions;
  v10 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E698B028] stringForConsumerSubtype:consumerCopy];
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Blending: Blending Layer is persisting the cached suggestion layout for consumer: %@", buf, 0xCu);
  }

  if (_PASIsInternalDevice())
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_opt_class();
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [MEMORY[0x1E698B028] stringForConsumerSubtype:consumerCopy];
    layoutCopy = [v14 initWithFormat:@"Consumer subtype %@ cache: %@", v15, layoutCopy];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p> ", self];
    [v13 logLongDescriptionForBlendingLayerString:layoutCopy prefix:v17 shouldUseDefaultLogLevel:1 limit:60];

    objc_autoreleasePoolPop(v12);
  }

  v18 = [[ATXBlendingModelUICacheUpdate alloc] initWithUICache:layoutCopy consumerSubType:consumerCopy clientModelCacheUpdates:suggestionsCopy];
  [(ATXUniversalBlendingFeedbackWriter *)self->_feedbackWriter donateBlendingModelUICacheUpdate:v18 uiConsumer:consumerCopy];
  v19 = objc_opt_new();
  v20 = [v19 updateCachedLayout:layoutCopy consumerSubType:consumerCopy];
  v21 = v20;
  if (v20)
  {
    v22 = __atxlog_handle_blending(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [MEMORY[0x1E698B028] stringForConsumerSubtype:consumerCopy];
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&dword_1DEFC4000, v22, OS_LOG_TYPE_DEFAULT, "Blending: Successfully updated the cache for %@", buf, 0xCu);
    }

    v25 = __atxlog_handle_feedback(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x1E698B028] stringForConsumerSubtype:consumerCopy];
      uuid = [(ATXBlendingModelUICacheUpdate *)v18 uuid];
      *buf = 138412546;
      v31 = v26;
      v32 = 2112;
      v33 = uuid;
      _os_log_impl(&dword_1DEFC4000, v25, OS_LOG_TYPE_DEFAULT, "Blending: Sucesssfully updated the cache for consumer %@ with blending cache UUID: %@", buf, 0x16u);

LABEL_15:
    }
  }

  else
  {
    v28 = __atxlog_handle_blending(v20);
    v25 = v28;
    if (layoutCopy)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ATXUniversalBlendingLayer updateCachedLayout:consumerCopy uiConsumer:? clientModelSuggestions:?];
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x1E698B028] stringForConsumerSubtype:consumerCopy];
      *buf = 138412290;
      v31 = v26;
      _os_log_impl(&dword_1DEFC4000, v25, OS_LOG_TYPE_DEFAULT, "Blending: Couldn't generate a valid layout. Not writing a cache for %@.", buf, 0xCu);
      goto LABEL_15;
    }
  }

  return v21;
}

- (void)promoteSuggestionsFromClientModelWithIdentifier:(id)identifier
{
  v4 = [identifier copy];
  promotedClientModelId = self->_promotedClientModelId;
  self->_promotedClientModelId = v4;

  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E698B030]];
  [v7 setObject:self->_promotedClientModelId forKey:@"BlendingLayerPromotedClientModel"];
}

+ (void)logLongDescriptionForBlendingLayerString:(id)string prefix:(id)prefix shouldUseDefaultLogLevel:(BOOL)level limit:(unint64_t)limit
{
  levelCopy = level;
  v32 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  prefixCopy = prefix;
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v23 = stringCopy;
  v12 = [stringCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v13 = [v12 count];
  if (v13 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v13;
  }

  if (limitCopy)
  {
    for (i = 0; i < limitCopy2; ++i)
    {
      v16 = __atxlog_handle_blending_internal_cache(v13);
      v17 = v16;
      if (levelCopy)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v12 count];
          v19 = [v12 objectAtIndexedSubscript:i];
          *buf = 134218754;
          v25 = i + 1;
          v26 = 2048;
          v27 = v18;
          v28 = 2112;
          v29 = prefixCopy;
          v30 = 2112;
          v31 = v19;
          _os_log_impl(&dword_1DEFC4000, v17, OS_LOG_TYPE_DEFAULT, "[%lu of %lu] %@ %@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v21 = [v12 count];
        v22 = [v12 objectAtIndexedSubscript:i];
        *buf = 134218754;
        v25 = i + 1;
        v26 = 2048;
        v27 = v21;
        v28 = 2112;
        v29 = prefixCopy;
        v30 = 2112;
        v31 = v22;
        _os_log_debug_impl(&dword_1DEFC4000, v17, OS_LOG_TYPE_DEBUG, "[%lu of %lu] %@ %@", buf, 0x2Au);
      }

      v13 = [v12 count];
      if (v13 >= limit)
      {
        limitCopy2 = limit;
      }

      else
      {
        limitCopy2 = v13;
      }
    }
  }
}

- (void)selectedLayoutForUIConsumer:(unsigned __int8)a1 rankedSuggestions:.cold.1(unsigned __int8 a1)
{
  v1 = [MEMORY[0x1E698B028] safeStringForConsumerSubtype:a1];
  LODWORD(v8) = 138412290;
  HIDWORD(v8) = v1;
  OUTLINED_FUNCTION_0_4(&dword_1DEFC4000, v2, v3, "Unable to generate layout for consumerSubType %@ because no layout selector was provided.", v4, v5, v6, v7, v8, HIDWORD(v1));
}

- (void)updateCachedLayout:(unsigned __int8)a1 uiConsumer:clientModelSuggestions:.cold.1(unsigned __int8 a1)
{
  v1 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a1];
  LODWORD(v8) = 138412290;
  HIDWORD(v8) = v1;
  OUTLINED_FUNCTION_0_4(&dword_1DEFC4000, v2, v3, "Blending: Failed to update the cache for %@", v4, v5, v6, v7, v8, HIDWORD(v1));
}

@end