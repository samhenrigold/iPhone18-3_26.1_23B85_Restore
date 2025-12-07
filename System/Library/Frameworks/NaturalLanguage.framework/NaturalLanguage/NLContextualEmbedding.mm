@interface NLContextualEmbedding
+ (NLContextualEmbedding)contextualEmbeddingWithIdentifier:(id)identifier;
+ (NLContextualEmbedding)contextualEmbeddingWithIdentifier:(id)identifier andOptions:(id)options;
+ (NLContextualEmbedding)contextualEmbeddingWithLanguage:(NLLanguage)language;
+ (NLContextualEmbedding)contextualEmbeddingWithModelIdentifier:(NSString *)modelIdentifier;
+ (NLContextualEmbedding)contextualEmbeddingWithScript:(NLScript)script;
+ (NSArray)contextualEmbeddingsForValues:(NSDictionary *)valuesDictionary;
+ (id)contextualEmbeddingCatalog;
+ (id)contextualEmbeddingConfigurationCatalog;
+ (id)contextualEmbeddingForLanguage:(id)language;
+ (id)contextualEmbeddingForScript:(id)script;
+ (unint64_t)systemVersionForLanguage:(id)language;
- (BOOL)compileWithError:(id *)error;
- (BOOL)enumerateTokensForString:(id)string language:(id)language inRange:(_NSRange)range error:(id *)error usingBlock:(id)block;
- (BOOL)hasAvailableAssets;
- (BOOL)loadSentenceEmbeddingWithOptions:(id)options error:(id *)error;
- (BOOL)loadWithOptions:(id)options error:(id *)error;
- (BOOL)requestBackgroundModelLoadingWithTimeout:(double)timeout error:(id *)error;
- (BOOL)requiresCompilation;
- (NLContextualEmbedding)initWithIdentifier:(id)identifier andOptions:(id)options;
- (NLContextualEmbedding)initWithOptions:(id)options;
- (NLContextualEmbeddingResult)embeddingResultForString:(NSString *)string language:(NLLanguage)language error:(NSError *)error;
- (NSArray)languages;
- (NSArray)scripts;
- (NSString)description;
- (NSUInteger)dimension;
- (NSUInteger)maximumSequenceLength;
- (NSUInteger)revision;
- (id)_concatenatedEmbeddingDataForInputEmbeddingData:(id)data tokenizedSentences:(id)sentences batchComponentsCountArray:(id)array batchComponentRangesArray:(id)rangesArray maxTokens:(unint64_t)tokens;
- (id)_getSentenceEmbeddingForString:(id)string error:(id *)error;
- (id)_paddedEmbeddingDataForInputEmbeddingData:(id)data tokenizedSentences:(id)sentences batchComponentsCountArray:(id)array batchComponentRangesArray:(id)rangesArray maxTokens:(unint64_t)tokens;
- (id)_sentenceEmbeddingVectorDataForString:(id)string error:(id *)error;
- (id)_sentenceEmbeddingVectorForString:(id)string error:(id *)error;
- (id)_taggerForString:(id)string language:(id)language;
- (id)_tokenRangesForString:(id)string language:(id)language;
- (id)_tokensForString:(id)string tokenRanges:(id)ranges;
- (id)adapters;
- (id)assetLocale;
- (id)assetLocaleIdentifier;
- (id)bundleName;
- (id)bundlePath;
- (id)requestBackgroundBatchEmbeddingResultsForStrings:(id)strings language:(id)language error:(id *)error;
- (id)requestBackgroundEmbeddingResultForString:(id)string language:(id)language error:(id *)error;
- (id)sentenceEmbeddingVectorDataForString:(id)string language:(id)language error:(id *)error;
- (id)sentenceEmbeddingVectorForString:(id)string language:(id)language error:(id *)error;
- (id)subRangesWithinToken:(id)token componentRange:(_NSRange)range offset:(unint64_t)offset;
- (id)subRangesWithinToken:(id)token offset:(unint64_t)offset;
- (id)tokenDictionariesForString:(id)string tokens:(id)tokens tokenRanges:(id)ranges;
- (id)tokenDictionariesForString:(id)string tokens:(id)tokens tokenRanges:(id)ranges componentRanges:(id)componentRanges componentsCount:(unint64_t)count;
- (id)vectorsForTokenizedSentences:(id)sentences untokenizedSentences:(id)untokenizedSentences maxTokens:(unint64_t)tokens;
- (int64_t)getCompilationState;
- (unint64_t)modelSystemVersion;
- (unint64_t)sentenceVectorDimension;
- (unint64_t)tokenVectorDimension;
- (void)dealloc;
- (void)requestAssetsWithCompletionHandler:(id)handler;
- (void)requestBatchEmbeddingResultsForStrings:(id)strings language:(id)language completionHandler:(id)handler;
- (void)requestEmbeddingAssetsWithCompletionHandler:(void *)completionHandler;
- (void)requestEmbeddingResultForString:(id)string language:(id)language completionHandler:(id)handler;
- (void)requestModelCompilationWithCompletionHandler:(id)handler;
- (void)requestModelLoadingWithCompletionHandler:(id)handler;
- (void)requestSentenceEmbeddingVectorForString:(id)string language:(id)language completionHandler:(id)handler;
- (void)unload;
@end

@implementation NLContextualEmbedding

+ (id)contextualEmbeddingCatalog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__NLContextualEmbedding_contextualEmbeddingCatalog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (contextualEmbeddingCatalog_onceToken != -1)
  {
    dispatch_once(&contextualEmbeddingCatalog_onceToken, block);
  }

  v2 = contextualEmbeddingCatalog_contextualEmbeddingCatalog;

  return v2;
}

- (BOOL)hasAvailableAssets
{
  bundlePath = [(NLContextualEmbedding *)self bundlePath];
  v3 = bundlePath != 0;

  return v3;
}

- (id)bundlePath
{
  assetLocale = [(NLContextualEmbedding *)self assetLocale];
  [(NLContextualEmbedding *)self bundleName];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v6 = v12 = 0;
  LDEnumerateAssetDataItems();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)assetLocale
{
  assetLocaleIdentifier = [(NLContextualEmbedding *)self assetLocaleIdentifier];
  if (assetLocaleIdentifier)
  {
    v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:assetLocaleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)assetLocaleIdentifier
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"AssetLocale"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)bundleName
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"BundleName"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)dealloc
{
  [(NLContextualEmbedding *)self unload];
  v3.receiver = self;
  v3.super_class = NLContextualEmbedding;
  [(NLContextualEmbedding *)&v3 dealloc];
}

- (void)unload
{
  embeddingE5 = self->_embeddingE5;
  self->_embeddingE5 = 0;

  [(NLContextualEmbedding *)self unloadSentenceEmbedding];
}

void __51__NLContextualEmbedding_contextualEmbeddingCatalog__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"ContextualEmbeddingCatalog" withExtension:@"plist"];

  if (v2)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2];
    if (v3)
    {
      v4 = v3;
      v34 = 0;
      v5 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v34];
      v6 = v34;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v6;
          v29 = v4;
          v7 = [MEMORY[0x1E695DF90] dictionary];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v8 = v5;
          v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v31;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v31 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v30 + 1) + 8 * i);
                v14 = [v8 objectForKey:v13];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v7 setObject:v14 forKey:v13];
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v10);
          }

          v15 = [v7 copy];
          v16 = contextualEmbeddingCatalog_contextualEmbeddingCatalog;
          contextualEmbeddingCatalog_contextualEmbeddingCatalog = v15;

          v4 = v29;
          v6 = v28;
          goto LABEL_26;
        }
      }

      v22 = objc_autoreleasePoolPush();
      v23 = NLGetLogCategory(0);
      v24 = [v23 internal];

      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v25)
        {
          v26 = NLGetLogIdentifier(0);
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NLContextualEmbedding failed to read catalog, %@", v6];
          *buf = 138543618;
          v36 = v26;
          v37 = 2114;
          v38 = v27;
LABEL_24:
          _os_log_impl(&dword_19D48F000, v24, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
        }
      }

      else if (v25)
      {
        v26 = NLGetLogIdentifier(0);
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NLContextualEmbedding failed to read catalog"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v27;
        goto LABEL_24;
      }

      objc_autoreleasePoolPop(v22);
LABEL_26:

      goto LABEL_27;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = NLGetLogCategory(0);
  v19 = [v18 internal];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = NLGetLogIdentifier(0);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NLContextualEmbedding failed to read catalog"];
    *buf = 138543618;
    v36 = v20;
    v37 = 2114;
    v38 = v21;
    _os_log_impl(&dword_19D48F000, v19, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_27:
}

+ (id)contextualEmbeddingConfigurationCatalog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__NLContextualEmbedding_contextualEmbeddingConfigurationCatalog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (contextualEmbeddingConfigurationCatalog_onceToken != -1)
  {
    dispatch_once(&contextualEmbeddingConfigurationCatalog_onceToken, block);
  }

  v2 = contextualEmbeddingConfigurationCatalog_contextualEmbeddingConfigurationCatalog;

  return v2;
}

void __64__NLContextualEmbedding_contextualEmbeddingConfigurationCatalog__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"ContextualEmbeddingConfigurationCatalog" withExtension:@"plist"];

  if (v2)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2];
    if (v3)
    {
      v4 = v3;
      v34 = 0;
      v5 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v34];
      v6 = v34;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v6;
          v29 = v4;
          v7 = [MEMORY[0x1E695DF90] dictionary];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v8 = v5;
          v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v31;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v31 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v30 + 1) + 8 * i);
                v14 = [v8 objectForKey:v13];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v7 setObject:v14 forKey:v13];
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v10);
          }

          v15 = [v7 copy];
          v16 = contextualEmbeddingConfigurationCatalog_contextualEmbeddingConfigurationCatalog;
          contextualEmbeddingConfigurationCatalog_contextualEmbeddingConfigurationCatalog = v15;

          v4 = v29;
          v6 = v28;
          goto LABEL_26;
        }
      }

      v22 = objc_autoreleasePoolPush();
      v23 = NLGetLogCategory(0);
      v24 = [v23 internal];

      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v25)
        {
          v26 = NLGetLogIdentifier(0);
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NLContextualEmbedding failed to read configuration catalog, %@", v6];
          *buf = 138543618;
          v36 = v26;
          v37 = 2114;
          v38 = v27;
LABEL_24:
          _os_log_impl(&dword_19D48F000, v24, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
        }
      }

      else if (v25)
      {
        v26 = NLGetLogIdentifier(0);
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NLContextualEmbedding failed to read configuration catalog"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v27;
        goto LABEL_24;
      }

      objc_autoreleasePoolPop(v22);
LABEL_26:

      goto LABEL_27;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = NLGetLogCategory(0);
  v19 = [v18 internal];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = NLGetLogIdentifier(0);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NLContextualEmbedding failed to read configuration catalog"];
    *buf = 138543618;
    v36 = v20;
    v37 = 2114;
    v38 = v21;
    _os_log_impl(&dword_19D48F000, v19, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_27:
}

- (NLContextualEmbedding)initWithOptions:(id)options
{
  v27[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"ModelIdentifier"];
  contextualEmbeddingCatalog = [objc_opt_class() contextualEmbeddingCatalog];
  v7 = [contextualEmbeddingCatalog objectForKey:v5];

  if (v7)
  {
    v26.receiver = self;
    v26.super_class = NLContextualEmbedding;
    v8 = [(NLContextualEmbedding *)&v26 init];
    if (v8)
    {
      v9 = [optionsCopy objectForKeyedSubscript:@"UseANE"];
      if (v9)
      {
        v10 = [optionsCopy objectForKeyedSubscript:@"UseANE"];
        v8->_useANE = [v10 BOOLValue];
      }

      else
      {
        v8->_useANE = 0;
      }

      v12 = [v5 copy];
      identifier = v8->_identifier;
      v8->_identifier = v12;

      v14 = [v5 copy];
      modelIdentifier = v8->_modelIdentifier;
      v8->_modelIdentifier = v14;

      adapterIdentifier = v8->_adapterIdentifier;
      v8->_adapterIdentifier = 0;

      v17 = [NLTagger alloc];
      v27[0] = @"TokenType";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v19 = [(NLTagger *)v17 initWithTagSchemes:v18];
      tagger = v8->_tagger;
      v8->_tagger = v19;

      v21 = [v7 copy];
      catalogEntry = v8->_catalogEntry;
      v8->_catalogEntry = v21;

      embeddingE5 = v8->_embeddingE5;
      v8->_embeddingE5 = 0;

      sentenceEmbeddingHead = v8->_sentenceEmbeddingHead;
      v8->_sentenceEmbeddingHead = 0;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (NLContextualEmbedding)contextualEmbeddingWithModelIdentifier:(NSString *)modelIdentifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = modelIdentifier;
  v4 = [NLContextualEmbedding alloc];
  v8 = @"ModelIdentifier";
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = [(NLContextualEmbedding *)v4 initWithOptions:v5];

  return v6;
}

- (NLContextualEmbedding)initWithIdentifier:(id)identifier andOptions:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  contextualEmbeddingConfigurationCatalog = [objc_opt_class() contextualEmbeddingConfigurationCatalog];
  v9 = [contextualEmbeddingConfigurationCatalog objectForKey:identifierCopy];

  if (v9)
  {
    v10 = [v9 objectForKey:@"ModelIdentifier"];
    v11 = [v9 objectForKey:@"AdapterIdentifier"];
  }

  else
  {
    v10 = identifierCopy;
    v11 = 0;
  }

  v12 = [optionsCopy mutableCopy];
  [v12 setObject:v10 forKeyedSubscript:@"ModelIdentifier"];
  v13 = [(NLContextualEmbedding *)self initWithOptions:v12];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v11 copy];
    adapterIdentifier = v13->_adapterIdentifier;
    v13->_adapterIdentifier = v16;
  }

  return v13;
}

+ (NLContextualEmbedding)contextualEmbeddingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [NLContextualEmbedding alloc];
  v5 = [(NLContextualEmbedding *)v4 initWithIdentifier:identifierCopy andOptions:MEMORY[0x1E695E0F8]];

  return v5;
}

+ (NLContextualEmbedding)contextualEmbeddingWithIdentifier:(id)identifier andOptions:(id)options
{
  optionsCopy = options;
  identifierCopy = identifier;
  v7 = [[NLContextualEmbedding alloc] initWithIdentifier:identifierCopy andOptions:optionsCopy];

  return v7;
}

+ (NSArray)contextualEmbeddingsForValues:(NSDictionary *)valuesDictionary
{
  v58 = *MEMORY[0x1E69E9840];
  v52 = valuesDictionary;
  array = [MEMORY[0x1E695DF70] array];
  contextualEmbeddingCatalog = [objc_opt_class() contextualEmbeddingCatalog];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v4 = [contextualEmbeddingCatalog countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    v47 = *v54;
    v48 = contextualEmbeddingCatalog;
    do
    {
      v7 = 0;
      v49 = v5;
      do
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(contextualEmbeddingCatalog);
        }

        v8 = *(*(&v53 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [contextualEmbeddingCatalog objectForKey:v8];
          v10 = v9;
          if (!v52 || !v9)
          {
            goto LABEL_51;
          }

          v50 = v8;
          v11 = v52;
          v12 = [v10 objectForKey:@"Languages"];
          v13 = [v10 objectForKey:@"Scripts"];
          v14 = [(NSDictionary *)v11 objectForKey:@"Languages"];
          v15 = [(NSDictionary *)v11 objectForKey:@"Scripts"];
          v51 = v10;
          v16 = [v10 objectForKey:@"Revision"];
          v17 = [(NSDictionary *)v11 objectForKey:@"Revision"];

          v18 = v12;
          if (v12)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v18 = 0;
            }
          }

          v19 = v13;
          v20 = v16;
          v21 = v14;
          if (v19)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v19 = 0;
            }
          }

          if (v14)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v21 = 0;
            }
          }

          if (v15)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v15 = 0;
            }
          }

          if (v16)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v20 = 0;
            }
          }

          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v17 = 0;
            }
          }

          if (![v21 count] && !objc_msgSend(v15, "count"))
          {
            goto LABEL_49;
          }

          if (v21 && [v21 count])
          {
            v22 = v17;
            v23 = v20;
            v24 = [MEMORY[0x1E695DFD8] setWithArray:v21];
            v25 = [MEMORY[0x1E695DFD8] setWithArray:v18];
            v26 = [v24 isSubsetOfSet:v25];

            v20 = v23;
            v17 = v22;

            if (!v15)
            {
LABEL_38:
              v32 = 1;
              if (v17)
              {
                goto LABEL_39;
              }

LABEL_36:
              v33 = 1;
              if (!v26)
              {
LABEL_49:
                v42 = v18;

                v6 = v47;
                contextualEmbeddingCatalog = v48;
                v5 = v49;
                v10 = v51;
                goto LABEL_50;
              }

LABEL_44:
              v38 = v17;
              v39 = v20;
              v40 = v32 & v33;

              v37 = v40 == 1;
              v6 = v47;
              contextualEmbeddingCatalog = v48;
              v5 = v49;
              v10 = v51;
              if (v37)
              {
                v41 = [NLContextualEmbedding contextualEmbeddingWithModelIdentifier:v50];
                if (v41)
                {
                  v42 = v41;
                  [array addObject:?];
                }

                else
                {
                  v42 = 0;
                }

LABEL_50:
              }

LABEL_51:

              goto LABEL_52;
            }
          }

          else
          {
            v26 = 1;
            if (!v15)
            {
              goto LABEL_38;
            }
          }

          if (![v15 count])
          {
            goto LABEL_38;
          }

          v46 = v18;
          [MEMORY[0x1E695DFD8] setWithArray:v15];
          v27 = v17;
          v29 = v28 = v20;
          [MEMORY[0x1E695DFD8] setWithArray:v19];
          v31 = v30 = v19;
          v32 = [v29 isSubsetOfSet:v31];

          v19 = v30;
          v18 = v46;

          v20 = v28;
          v17 = v27;
          if (!v27)
          {
            goto LABEL_36;
          }

LABEL_39:
          if (v20)
          {
            v34 = v17;
            v35 = v20;
            unsignedIntegerValue = [v20 unsignedIntegerValue];
            v37 = unsignedIntegerValue == [v34 unsignedIntegerValue];
            v20 = v35;
            v17 = v34;
            v33 = v37;
            if (!v26)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v33 = 0;
            if (!v26)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_44;
        }

LABEL_52:
        ++v7;
      }

      while (v5 != v7);
      v43 = [contextualEmbeddingCatalog countByEnumeratingWithState:&v53 objects:v57 count:16];
      v5 = v43;
    }

    while (v43);
  }

  return array;
}

+ (NLContextualEmbedding)contextualEmbeddingWithLanguage:(NLLanguage)language
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = language;
  v12 = @"Languages";
  v4 = MEMORY[0x1E695DEC8];
  v5 = language;
  v6 = [v4 arrayWithObjects:&v11 count:1];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v11}];

  v8 = [self contextualEmbeddingsWithValues:v7];
  v9 = mostRecentEmbedding(v8);

  return v9;
}

+ (id)contextualEmbeddingForLanguage:(id)language
{
  v13[1] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v12 = @"Languages";
  v4 = MEMORY[0x1E695DEC8];
  languageCopy2 = language;
  v6 = [v4 arrayWithObjects:&languageCopy count:1];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:{1, languageCopy}];

  v8 = [self contextualEmbeddingsWithValues:v7];
  v9 = mostRecentEmbedding(v8);

  return v9;
}

+ (NLContextualEmbedding)contextualEmbeddingWithScript:(NLScript)script
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = script;
  v12 = @"Scripts";
  v4 = MEMORY[0x1E695DEC8];
  v5 = script;
  v6 = [v4 arrayWithObjects:&v11 count:1];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v11}];

  v8 = [self contextualEmbeddingsWithValues:v7];
  v9 = mostRecentEmbedding(v8);

  return v9;
}

+ (id)contextualEmbeddingForScript:(id)script
{
  v13[1] = *MEMORY[0x1E69E9840];
  scriptCopy = script;
  v12 = @"Scripts";
  v4 = MEMORY[0x1E695DEC8];
  scriptCopy2 = script;
  v6 = [v4 arrayWithObjects:&scriptCopy count:1];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:{1, scriptCopy}];

  v8 = [self contextualEmbeddingsWithValues:v7];
  v9 = mostRecentEmbedding(v8);

  return v9;
}

+ (unint64_t)systemVersionForLanguage:(id)language
{
  languageCopy = language;
  if (!languageCopy || ([self contextualEmbeddingWithLanguage:languageCopy], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "modelSystemVersion"), v5, !v6))
  {
    v6 = 4;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NLContextualEmbedding;
  v4 = [(NLContextualEmbedding *)&v8 description];
  identifier = [(NLContextualEmbedding *)self identifier];
  v6 = [v3 stringWithFormat:@"%@<%@>", v4, identifier];

  return v6;
}

void __35__NLContextualEmbedding_bundlePath__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if ([@"Embedding" isEqualToString:{a5, a4}])
  {
    v14 = [a2 path];
    v9 = [v14 lastPathComponent];
    v10 = [v9 isEqual:*(a1 + 32)];

    if (v10)
    {
      v11 = [v14 copy];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    *a6 = 1;
  }
}

- (BOOL)loadWithOptions:(id)options error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ([(NLContextualEmbedding *)self isLoaded])
  {
    v7 = 1;
  }

  else
  {
    errorCopy = error;
    v8 = objc_autoreleasePoolPush();
    v9 = NLGetLogCategory(self);
    internal = [v9 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NLGetLogIdentifier(self);
      v12 = MEMORY[0x1E696AEC0];
      assetLocaleIdentifier = [(NLContextualEmbedding *)self assetLocaleIdentifier];
      modelIdentifier = [(NLContextualEmbedding *)self modelIdentifier];
      v15 = [v12 stringWithFormat:@"Loading embedding model '%@' - '%@'", assetLocaleIdentifier, modelIdentifier];
      *buf = 138543618;
      v79 = v11;
      v80 = 2114;
      v81 = v15;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    bundlePath = [(NLContextualEmbedding *)self bundlePath];
    if (bundlePath)
    {
      v16 = [(NSDictionary *)self->_catalogEntry objectForKey:@"Adapters"];
      v17 = v16;
      if (self->_adapterIdentifier && (v16 = [v16 containsObject:?], (v16 & 1) == 0))
      {
        if (errorCopy)
        {
          v42 = MEMORY[0x1E696ABC0];
          v74 = *MEMORY[0x1E696A578];
          v75 = @"Backbone model doesn't contain requested adapter";
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          *errorCopy = [v42 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v43];
        }

        identifier2 = +[NLTelemetry sharedInstance];
        identifier = [(NLContextualEmbedding *)self identifier];
        assetLocaleIdentifier2 = [(NLContextualEmbedding *)self assetLocaleIdentifier];
        [identifier2 reportEmbeddingLoadedWithIdentifier:identifier localeIdentifier:assetLocaleIdentifier2 useANE:self->_useANE status:2];
        v7 = 0;
      }

      else
      {
        v18 = NLContextualEmbeddingSignpostHandle(v16);
        v19 = os_signpost_id_generate(v18);
        v20 = v18;
        v21 = v20;
        if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19D48F000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "loadE5", &unk_19D4EF749, buf, 2u);
        }

        v22 = objc_opt_class();
        v23 = [bundlePath stringByAppendingPathComponent:@"embeddings.mil"];
        v24 = [v22 embeddingModelWithModelPath:v23 useANE:self->_useANE adapters:v17];

        v25 = v21;
        identifier2 = v25;
        if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19D48F000, identifier2, OS_SIGNPOST_INTERVAL_END, v19, "loadE5", &unk_19D4EF749, buf, 2u);
        }

        embeddingE5 = self->_embeddingE5;
        self->_embeddingE5 = v24;

        v28 = self->_embeddingE5;
        v7 = v28 != 0;
        if (v28)
        {
          identifier = +[NLTelemetry sharedInstance];
          assetLocaleIdentifier2 = [(NLContextualEmbedding *)self identifier];
          assetLocaleIdentifier3 = [(NLContextualEmbedding *)self assetLocaleIdentifier];
          [identifier reportEmbeddingLoadedWithIdentifier:assetLocaleIdentifier2 localeIdentifier:assetLocaleIdentifier3 useANE:self->_useANE status:0];
        }

        else
        {
          if ([(NLContextualEmbedding *)self requiresCompilation])
          {
            v44 = objc_autoreleasePoolPush();
            v45 = NLGetLogCategory(self);
            internal2 = [v45 internal];

            if (os_log_type_enabled(internal2, OS_LOG_TYPE_DEFAULT))
            {
              v63 = NLGetLogIdentifier(self);
              v47 = MEMORY[0x1E696AEC0];
              contexta = [(NLContextualEmbedding *)self assetLocaleIdentifier];
              modelIdentifier2 = [(NLContextualEmbedding *)self modelIdentifier];
              v49 = [v47 stringWithFormat:@"Requested compilation for embedding model '%@' - '%@'", contexta, modelIdentifier2];
              *buf = 138543618;
              v79 = v63;
              v80 = 2114;
              v81 = v49;
              _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v44);
            v69[0] = MEMORY[0x1E69E9820];
            v69[1] = 3221225472;
            v69[2] = __47__NLContextualEmbedding_loadWithOptions_error___block_invoke;
            v69[3] = &unk_1E7629D00;
            v69[4] = self;
            [(NLContextualEmbedding *)self requestModelCompilationWithCompletionHandler:v69];
            v50 = MEMORY[0x1E696ABC0];
            v72 = *MEMORY[0x1E696A578];
            v73 = @"Embedding model requires compilation";
            v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            identifier = [v50 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v51];
          }

          else
          {
            v52 = MEMORY[0x1E696ABC0];
            v70 = *MEMORY[0x1E696A578];
            v71 = @"Failed to load embedding model";
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            identifier = [v52 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v53];
          }

          context = objc_autoreleasePoolPush();
          v54 = NLGetLogCategory(self);
          internal3 = [v54 internal];

          if (os_log_type_enabled(internal3, OS_LOG_TYPE_ERROR))
          {
            v64 = NLGetLogIdentifier(self);
            v56 = MEMORY[0x1E696AEC0];
            assetLocaleIdentifier4 = [(NLContextualEmbedding *)self assetLocaleIdentifier];
            modelIdentifier3 = [(NLContextualEmbedding *)self modelIdentifier];
            v59 = [v56 stringWithFormat:@"Failed to load embedding model '%@' - '%@'", assetLocaleIdentifier4, modelIdentifier3];
            *buf = 138543618;
            v79 = v64;
            v80 = 2114;
            v81 = v59;
            _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          if (errorCopy)
          {
            v60 = identifier;
            *errorCopy = identifier;
          }

          assetLocaleIdentifier2 = +[NLTelemetry sharedInstance];
          assetLocaleIdentifier3 = [(NLContextualEmbedding *)self identifier];
          assetLocaleIdentifier5 = [(NLContextualEmbedding *)self assetLocaleIdentifier];
          [assetLocaleIdentifier2 reportEmbeddingLoadedWithIdentifier:assetLocaleIdentifier3 localeIdentifier:assetLocaleIdentifier5 useANE:self->_useANE status:2];
        }
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = NLGetLogCategory(self);
      internal4 = [v33 internal];

      if (os_log_type_enabled(internal4, OS_LOG_TYPE_ERROR))
      {
        v35 = NLGetLogIdentifier(self);
        v36 = MEMORY[0x1E696AEC0];
        assetLocaleIdentifier6 = [(NLContextualEmbedding *)self assetLocaleIdentifier];
        modelIdentifier4 = [(NLContextualEmbedding *)self modelIdentifier];
        v39 = [v36 stringWithFormat:@"Failed to locate assets for '%@' - '%@' embedding model", assetLocaleIdentifier6, modelIdentifier4];
        *buf = 138543618;
        v79 = v35;
        v80 = 2114;
        v81 = v39;
        _os_log_impl(&dword_19D48F000, internal4, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      if (errorCopy)
      {
        v40 = MEMORY[0x1E696ABC0];
        v76 = *MEMORY[0x1E696A578];
        v77 = @"Failed to locate embedding model";
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        *errorCopy = [v40 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v41];
      }

      v17 = +[NLTelemetry sharedInstance];
      identifier2 = [(NLContextualEmbedding *)self identifier];
      identifier = [(NLContextualEmbedding *)self assetLocaleIdentifier];
      [v17 reportEmbeddingLoadedWithIdentifier:identifier2 localeIdentifier:identifier useANE:self->_useANE status:3];
      v7 = 0;
    }
  }

  return v7;
}

void __47__NLContextualEmbedding_loadWithOptions_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = NLGetLogCategory(*(a1 + 32));
  v8 = [v7 internal];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NLGetLogIdentifier(*(a1 + 32));
    v10 = MEMORY[0x1E696AEC0];
    v11 = [*(a1 + 32) assetLocaleIdentifier];
    v12 = [*(a1 + 32) modelIdentifier];
    v13 = v12;
    v14 = @"failed";
    if (a2)
    {
      v14 = @"succeeded";
    }

    v15 = [v10 stringWithFormat:@"Complation request for embedding model '%@' - '%@' %@ error: %@", v11, v12, v14, v5];
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&dword_19D48F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
}

- (BOOL)loadSentenceEmbeddingWithOptions:(id)options error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  [(NLContextualEmbedding *)self load];
  if ([(NLE5Embedding *)self->_embeddingE5 isAdapterLoaded:0x1F10C6DA0]|| [(NLE5Embedding *)self->_embeddingE5 loadAdapter:0x1F10C6DA0])
  {
    sentenceEmbeddingHead = self->_sentenceEmbeddingHead;
    if (!sentenceEmbeddingHead)
    {
      bundlePath = [(NLContextualEmbedding *)self bundlePath];
      if (!bundlePath)
      {
        if (error)
        {
          v23 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E696A578];
          v27 = @"Failed to locate assets for embedding model";
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v21 = v23;
          v22 = 8;
          goto LABEL_16;
        }

        return 0;
      }

      v8 = bundlePath;
      v9 = [NLSentenceEmbeddingHead alloc];
      v10 = MEMORY[0x1E695DFF8];
      v11 = [v8 stringByAppendingPathComponent:@"sentence-embedding-head.mlmodelc"];
      v12 = [v10 fileURLWithPath:v11];
      v13 = [(NLSentenceEmbeddingHead *)v9 initWithModelURL:v12];
      v14 = self->_sentenceEmbeddingHead;
      self->_sentenceEmbeddingHead = v13;

      sentenceEmbeddingHead = self->_sentenceEmbeddingHead;
    }

    if ([(NLSentenceEmbeddingHead *)sentenceEmbeddingHead isLoaded]|| [(NLSentenceEmbeddingHead *)self->_sentenceEmbeddingHead load])
    {
      return 1;
    }

    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"Failed to load head for sentence embedding";
      v17 = MEMORY[0x1E695DF20];
      v18 = &v25;
      v19 = &v24;
      goto LABEL_13;
    }
  }

  else if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"Failed to load adapter for sentence embedding";
    v17 = MEMORY[0x1E695DF20];
    v18 = v29;
    v19 = &v28;
LABEL_13:
    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v21 = v16;
    v22 = 7;
LABEL_16:
    *error = [v21 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:v22 userInfo:v20];
  }

  return 0;
}

- (id)_taggerForString:(id)string language:(id)language
{
  stringCopy = string;
  languageCopy = language;
  [(NLTagger *)self->_tagger setString:stringCopy];
  if (languageCopy)
  {
    -[NLTagger setLanguage:range:](self->_tagger, "setLanguage:range:", languageCopy, 0, [stringCopy length]);
  }

  tagger = self->_tagger;
  v9 = tagger;

  return tagger;
}

- (id)_tokenRangesForString:(id)string language:(id)language
{
  v6 = MEMORY[0x1E695DF70];
  languageCopy = language;
  stringCopy = string;
  array = [v6 array];
  v10 = [(NLContextualEmbedding *)self _taggerForString:stringCopy language:languageCopy];

  v11 = [stringCopy length];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__NLContextualEmbedding__tokenRangesForString_language___block_invoke;
  v14[3] = &unk_1E7629D28;
  v12 = array;
  v15 = v12;
  [v10 enumerateTagsInRange:0 unit:v11 scheme:0 options:@"TokenType" usingBlock:{36, v14}];

  return v12;
}

void __56__NLContextualEmbedding__tokenRangesForString_language___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  [v1 addObject:v2];
}

- (id)_tokensForString:(id)string tokenRanges:(id)ranges
{
  v22 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  rangesCopy = ranges;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = rangesCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        rangeValue = [*(*(&v17 + 1) + 8 * i) rangeValue];
        v15 = [stringCopy substringWithRange:{rangeValue, v14}];
        [array addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)_concatenatedEmbeddingDataForInputEmbeddingData:(id)data tokenizedSentences:(id)sentences batchComponentsCountArray:(id)array batchComponentRangesArray:(id)rangesArray maxTokens:(unint64_t)tokens
{
  dataCopy = data;
  sentencesCopy = sentences;
  arrayCopy = array;
  rangesArrayCopy = rangesArray;
  dimension = [(NLE5Embedding *)self->_embeddingE5 dimension];
  v17 = [sentencesCopy count];
  v18 = [MEMORY[0x1E695DF88] dataWithLength:12 * dimension * tokens * v17];
  v43 = dataCopy;
  bytes = [dataCopy bytes];
  v42 = v18;
  mutableBytes = [v18 mutableBytes];
  v20 = mutableBytes;
  if (3 * dimension * tokens * v17)
  {
    bzero(mutableBytes, 12 * dimension * v17 * tokens);
  }

  if ([sentencesCopy count])
  {
    v52 = 0;
    v21 = 0;
    v22 = 12 * tokens;
    v44 = 12 * tokens * dimension;
    v45 = rangesArrayCopy;
    v23 = 4 * dimension;
    v46 = arrayCopy;
    v47 = sentencesCopy;
    do
    {
      if (v21 >= [arrayCopy count] || v21 >= objc_msgSend(rangesArrayCopy, "count"))
      {
        break;
      }

      v50 = v20;
      v24 = [arrayCopy objectAtIndex:v21];
      unsignedIntegerValue = [v24 unsignedIntegerValue];

      v53 = [sentencesCopy objectAtIndex:v21];
      v49 = v21;
      v25 = [rangesArrayCopy objectAtIndex:v21];
      if (tokens)
      {
        v26 = 0;
        v27 = v50;
        do
        {
          if (v26 >= [v53 count] || v26 >= objc_msgSend(v25, "count"))
          {
            break;
          }

          tokensCopy = tokens;
          v29 = [v25 objectAtIndex:v26];
          rangeValue = [v29 rangeValue];
          v32 = v31;

          v33 = 3;
          if (v32 < 3)
          {
            v33 = v32;
          }

          if (v32)
          {
            v34 = 0;
            v35 = (bytes + v23 * (v52 + rangeValue));
            v36 = v27;
            do
            {
              v37 = v35;
              v38 = v36;
              for (i = dimension; i; --i)
              {
                v40 = *v37++;
                *v38 = v40;
                v38 = (v38 + v22);
              }

              ++v34;
              ++v36;
              v35 = (v35 + v23);
            }

            while (v34 != v33);
          }

          ++v26;
          v27 += 3;
          tokens = tokensCopy;
        }

        while (v26 != tokensCopy);
      }

      v52 += unsignedIntegerValue;

      v21 = v49 + 1;
      sentencesCopy = v47;
      rangesArrayCopy = v45;
      v20 = v50 + v44;
      arrayCopy = v46;
    }

    while (v49 + 1 < [v47 count]);
  }

  return v42;
}

- (id)subRangesWithinToken:(id)token componentRange:(_NSRange)range offset:(unint64_t)offset
{
  length = range.length;
  v29[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v9 = [(NLE5Embedding *)self->_embeddingE5 tokenIDsForText:tokenCopy];
  if (subRangesWithinToken_componentRange_offset__onceToken != -1)
  {
    [NLContextualEmbedding subRangesWithinToken:componentRange:offset:];
  }

  v10 = 0;
  if ([v9 count])
  {
    for (i = 0; i < [v9 count]; ++i)
    {
      v12 = [v9 objectAtIndex:i];
      v13 = v12;
      if (i || ([v12 isEqual:&unk_1F10D1310] & 1) == 0)
      {
        if ([array count] >= length)
        {

          break;
        }

        embeddingE5 = selfCopy->_embeddingE5;
        v29[0] = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
        v16 = [(NLE5Embedding *)embeddingE5 textForTokenIDs:v15];
        v17 = [v16 stringByTrimmingCharactersInSet:subRangesWithinToken_componentRange_offset__whitespaceAndNewlineCharacterSet];

        v18 = [v17 length];
        v19 = v18 + v10;
        if (v18 + v10 > [tokenCopy length])
        {
          v19 = [tokenCopy length];
          v18 = v19 - v10;
        }

        v20 = [MEMORY[0x1E696B098] valueWithRange:{v10 + offset, v18}];
        [array addObject:v20];

        v10 = v19;
      }
    }
  }

  v21 = [array count];
  v22 = length - v21;
  if (length > v21)
  {
    do
    {
      v23 = v10 + 1;
      if (v10 + 1 <= [tokenCopy length])
      {
        v24 = 1;
      }

      else
      {
        v23 = [tokenCopy length];
        v24 = v23 - v10;
      }

      v25 = [MEMORY[0x1E696B098] valueWithRange:{v10 + offset, v24}];
      [array addObject:v25];

      v10 = v23;
      --v22;
    }

    while (v22);
  }

  return array;
}

uint64_t __68__NLContextualEmbedding_subRangesWithinToken_componentRange_offset___block_invoke()
{
  subRangesWithinToken_componentRange_offset__whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

- (id)tokenDictionariesForString:(id)string tokens:(id)tokens tokenRanges:(id)ranges componentRanges:(id)componentRanges componentsCount:(unint64_t)count
{
  v38[3] = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  rangesCopy = ranges;
  componentRangesCopy = componentRanges;
  array = [MEMORY[0x1E695DF70] array];
  if ([componentRangesCopy count])
  {
    v11 = [(NLContextualEmbedding *)self subRangesWithinToken:&stru_1F10C6540 componentRange:0 offset:1, 0];
    if ([v11 count])
    {
      v37[0] = @"TokenRange";
      firstObject = [v11 firstObject];
      v38[0] = firstObject;
      v37[1] = @"ComponentRange";
      v13 = [MEMORY[0x1E696B098] valueWithRange:{0, 1}];
      v37[2] = @"SubtokenRanges";
      v38[1] = v13;
      v38[2] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
      [array addObject:v14];
    }
  }

  if ([tokensCopy count])
  {
    v15 = 0;
    do
    {
      if (v15 >= [rangesCopy count])
      {
        break;
      }

      if (v15 >= [componentRangesCopy count])
      {
        break;
      }

      v16 = [tokensCopy objectAtIndex:v15];
      v17 = [rangesCopy objectAtIndex:v15];
      rangeValue = [v17 rangeValue];
      v20 = v19;

      v21 = [componentRangesCopy objectAtIndex:v15];
      v22 = rangesCopy;
      rangeValue2 = [v21 rangeValue];
      v25 = v24;

      v26 = [v32 subRangesWithinToken:v16 componentRange:rangeValue2 offset:{v25, rangeValue}];
      v35[0] = @"TokenRange";
      v27 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v20}];
      v36[0] = v27;
      v35[1] = @"ComponentRange";
      v28 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue2, v25}];
      v35[2] = @"SubtokenRanges";
      v36[1] = v28;
      v36[2] = v26;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
      [array addObject:v29];

      rangesCopy = v22;
      ++v15;
    }

    while (v15 < [tokensCopy count]);
  }

  return array;
}

- (NLContextualEmbeddingResult)embeddingResultForString:(NSString *)string language:(NLLanguage)language error:(NSError *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = string;
  v9 = language;
  if ([(NLContextualEmbedding *)self isLoaded])
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v37 = 0;
    [(NLContextualEmbedding *)self loadWithError:&v37];
    v10 = v37;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v9 = @"und";
LABEL_6:
  if ([(NLContextualEmbedding *)self isLoaded])
  {
    v11 = [(NLContextualEmbedding *)self _tokenRangesForString:v8 language:v9];
    v12 = [(NLContextualEmbedding *)self _tokensForString:v8 tokenRanges:v11];
    v44[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (!self->_adapterIdentifier)
    {
      goto LABEL_10;
    }

    if ([(NLE5Embedding *)self->_embeddingE5 isAdapterLoaded:?])
    {
      if (!self->_adapterIdentifier)
      {
LABEL_10:
        if (![(NLE5Embedding *)self->_embeddingE5 isBackboneLoaded])
        {
          [(NLE5Embedding *)self->_embeddingE5 loadBackbone];
        }
      }
    }

    else
    {
      [(NLE5Embedding *)self->_embeddingE5 loadAdapter:self->_adapterIdentifier];
    }

    v34 = v13;
    v35 = error;
    v36 = [(NLE5Embedding *)self->_embeddingE5 embeddingDataForTokenizedBatch:v13 withOutputProperties:dictionary];
    v33 = dictionary;
    if (v36)
    {
      v18 = [dictionary objectForKey:0x1F10C6DC0];
      v19 = [dictionary objectForKey:0x1F10C6DE0];
      firstObject = [v18 firstObject];
      v31 = v19;
      firstObject2 = [(NSError *)v19 firstObject];
      dimension = [(NLE5Embedding *)self->_embeddingE5 dimension];
      v32 = v8;
      if (firstObject && firstObject2)
      {
        v23 = dimension;
        -[NLContextualEmbedding tokenDictionariesForString:tokens:tokenRanges:componentRanges:componentsCount:](self, "tokenDictionariesForString:tokens:tokenRanges:componentRanges:componentsCount:", v8, v12, v11, firstObject2, [firstObject unsignedIntegerValue]);
        v25 = v24 = v8;
        v17 = [[NLContextualEmbeddingResult alloc] initWithString:v24 tokenDictionaries:v25 data:v36 language:v9 tokenVectorDimension:v23];
      }

      else
      {
        v27 = MEMORY[0x1E696ABC0];
        v42 = *MEMORY[0x1E696A578];
        v43 = @"Failed to compute embedding result";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v28 = [v27 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v25];

        v17 = 0;
        v10 = v28;
      }

      v16 = v10;

      v10 = v31;
      v8 = v32;
    }

    else
    {
      v26 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      v41 = @"Failed to compute embedding result";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v16 = [v26 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v18];
      v17 = 0;
    }

    error = v35;
    goto LABEL_22;
  }

  v15 = MEMORY[0x1E696ABC0];
  v38 = *MEMORY[0x1E696A578];
  v39 = @"Failed to load contextual embedding";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v16 = [v15 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v11];
  v17 = 0;
  v12 = v10;
LABEL_22:

  if (error)
  {
    v29 = v16;
    *error = v16;
  }

  return v17;
}

- (id)_paddedEmbeddingDataForInputEmbeddingData:(id)data tokenizedSentences:(id)sentences batchComponentsCountArray:(id)array batchComponentRangesArray:(id)rangesArray maxTokens:(unint64_t)tokens
{
  dataCopy = data;
  sentencesCopy = sentences;
  arrayCopy = array;
  rangesArrayCopy = rangesArray;
  dimension = [(NLE5Embedding *)self->_embeddingE5 dimension];
  v16 = [sentencesCopy count];
  v17 = dimension * tokens * v16;
  v18 = [MEMORY[0x1E695DF88] dataWithLength:4 * v17];
  v36 = dataCopy;
  bytes = [dataCopy bytes];
  v35 = v18;
  mutableBytes = [v18 mutableBytes];
  v20 = mutableBytes;
  if (v17)
  {
    bzero(mutableBytes, 4 * dimension * v16 * tokens);
  }

  if ([sentencesCopy count])
  {
    v21 = 0;
    v22 = 0;
    v23 = 4 * dimension;
    do
    {
      if (v22 >= [arrayCopy count] || v22 >= objc_msgSend(rangesArrayCopy, "count"))
      {
        break;
      }

      v24 = [arrayCopy objectAtIndex:v22];
      unsignedIntegerValue = [v24 unsignedIntegerValue];

      if (tokens >= unsignedIntegerValue)
      {
        tokensCopy = unsignedIntegerValue;
      }

      else
      {
        tokensCopy = tokens;
      }

      if (tokensCopy)
      {
        v27 = 0;
        v28 = (bytes + v23 * v21);
        v29 = v20;
        do
        {
          v30 = v28;
          v31 = v29;
          for (i = dimension; i; --i)
          {
            v33 = *v30++;
            *v31 = v33;
            v31 += tokens;
          }

          ++v27;
          ++v29;
          v28 = (v28 + v23);
        }

        while (v27 != tokensCopy);
      }

      v21 += unsignedIntegerValue;
      ++v22;
      v20 += 4 * dimension * tokens;
    }

    while (v22 < [sentencesCopy count]);
  }

  return v35;
}

- (id)vectorsForTokenizedSentences:(id)sentences untokenizedSentences:(id)untokenizedSentences maxTokens:(unint64_t)tokens
{
  sentencesCopy = sentences;
  if (![(NLContextualEmbedding *)self isLoaded])
  {
    [(NLContextualEmbedding *)self load];
  }

  if (![(NLContextualEmbedding *)self isLoaded])
  {
    v9 = 0;
    goto LABEL_21;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_adapterIdentifier)
  {
    if (![(NLE5Embedding *)self->_embeddingE5 isAdapterLoaded:?])
    {
      [(NLE5Embedding *)self->_embeddingE5 loadAdapter:self->_adapterIdentifier];
      goto LABEL_11;
    }

    if (self->_adapterIdentifier)
    {
      goto LABEL_11;
    }
  }

  if (![(NLE5Embedding *)self->_embeddingE5 isBackboneLoaded])
  {
    [(NLE5Embedding *)self->_embeddingE5 loadBackbone];
  }

LABEL_11:
  v10 = [(NLE5Embedding *)self->_embeddingE5 embeddingDataForTokenizedBatch:sentencesCopy withOutputProperties:dictionary];
  if (v10)
  {
    v11 = [dictionary objectForKey:0x1F10C6DC0];
    v12 = [dictionary objectForKey:0x1F10C6DE0];
    if (!v11)
    {
      goto LABEL_18;
    }

    v13 = [v11 count];
    v9 = 0;
    if (v13 != [sentencesCopy count] || !v12)
    {
      goto LABEL_19;
    }

    v14 = [v12 count];
    if (v14 == [sentencesCopy count])
    {
      v9 = [(NLContextualEmbedding *)self _paddedEmbeddingDataForInputEmbeddingData:v10 tokenizedSentences:sentencesCopy batchComponentsCountArray:v11 batchComponentRangesArray:v12 maxTokens:tokens];
    }

    else
    {
LABEL_18:
      v9 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v9 = 0;
LABEL_20:

LABEL_21:

  return v9;
}

- (void)requestEmbeddingResultForString:(id)string language:(id)language completionHandler:(id)handler
{
  stringCopy = string;
  languageCopy = language;
  handlerCopy = handler;
  if (!languageCopy)
  {
    languageCopy = @"und";
  }

  v11 = +[NLXPCEmbeddingServerClient sharedClient];
  identifier = [(NLContextualEmbedding *)self identifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__NLContextualEmbedding_requestEmbeddingResultForString_language_completionHandler___block_invoke;
  v16[3] = &unk_1E7629D50;
  v17 = stringCopy;
  v18 = languageCopy;
  selfCopy = self;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = languageCopy;
  v15 = stringCopy;
  [v11 dataFromTokenVectorEmbeddingForString:v15 language:v14 identifier:identifier completionHandler:v16];
}

void __84__NLContextualEmbedding_requestEmbeddingResultForString_language_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8)
  {
    v11 = -[NLContextualEmbeddingResult initWithString:tokenDictionaries:data:language:tokenVectorDimension:]([NLContextualEmbeddingResult alloc], "initWithString:tokenDictionaries:data:language:tokenVectorDimension:", *(a1 + 32), v8, v7, *(a1 + 40), [*(a1 + 48) dimension]);
  }

  else
  {
    if (!v9)
    {
      v12 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @"Failed to obtain result from embedding model";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v10 = [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v13];
    }

    v11 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

- (void)requestBatchEmbeddingResultsForStrings:(id)strings language:(id)language completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  languageCopy = language;
  handlerCopy = handler;
  v11 = [stringsCopy count];
  if (v11 <= [(NLContextualEmbedding *)self maximumBatchSize])
  {
    if (!languageCopy)
    {
      languageCopy = @"und";
    }

    v15 = +[NLXPCEmbeddingServerClient sharedClient];
    identifier = [(NLContextualEmbedding *)self identifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91__NLContextualEmbedding_requestBatchEmbeddingResultsForStrings_language_completionHandler___block_invoke;
    v17[3] = &unk_1E7629D78;
    v18 = stringsCopy;
    languageCopy = languageCopy;
    v19 = languageCopy;
    selfCopy = self;
    v21 = handlerCopy;
    [v15 batchDataFromTokenVectorEmbeddingForStrings:v18 language:languageCopy identifier:identifier completionHandler:v17];

    v14 = v18;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"Maximum batch size exceeded";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v13];

    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __91__NLContextualEmbedding_requestBatchEmbeddingResultsForStrings_language_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8 && (v10 = [*(a1 + 32) count], v10 == objc_msgSend(v7, "count")) && (v11 = objc_msgSend(v7, "count"), v11 == objc_msgSend(v8, "count")))
  {
    v12 = [MEMORY[0x1E695DF70] array];
    if ([v7 count])
    {
      v21 = v9;
      v13 = 0;
      do
      {
        v14 = [NLContextualEmbeddingResult alloc];
        v15 = [*(a1 + 32) objectAtIndexedSubscript:v13];
        v16 = [v8 objectAtIndexedSubscript:v13];
        v17 = [v7 objectAtIndexedSubscript:v13];
        v18 = -[NLContextualEmbeddingResult initWithString:tokenDictionaries:data:language:tokenVectorDimension:](v14, "initWithString:tokenDictionaries:data:language:tokenVectorDimension:", v15, v16, v17, *(a1 + 40), [*(a1 + 48) dimension]);

        [v12 addObject:v18];
        ++v13;
      }

      while (v13 < [v7 count]);
      v9 = v21;
    }
  }

  else
  {
    if (!v9)
    {
      v19 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23[0] = @"Failed to obtain result from embedding model";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v9 = [v19 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v20];
    }

    v12 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

- (id)requestBackgroundEmbeddingResultForString:(id)string language:(id)language error:(id *)error
{
  stringCopy = string;
  languageCopy = language;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  if (!languageCopy)
  {
    languageCopy = @"und";
  }

  v10 = +[NLXPCEmbeddingServerClient sharedClient];
  identifier = [(NLContextualEmbedding *)self identifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__NLContextualEmbedding_requestBackgroundEmbeddingResultForString_language_error___block_invoke;
  v17[3] = &unk_1E7629DA0;
  v21 = &v29;
  v12 = stringCopy;
  v18 = v12;
  v13 = languageCopy;
  v19 = v13;
  selfCopy = self;
  v22 = &v23;
  [v10 synchronousDataFromTokenVectorEmbeddingForString:v12 language:v13 identifier:identifier completionHandler:v17];

  v14 = v30[5];
  if (error && !v14)
  {
    *error = v24[5];
    v14 = v30[5];
  }

  v15 = v14;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

void __82__NLContextualEmbedding_requestBackgroundEmbeddingResultForString_language_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8)
  {
    v11 = -[NLContextualEmbeddingResult initWithString:tokenDictionaries:data:language:tokenVectorDimension:]([NLContextualEmbeddingResult alloc], "initWithString:tokenDictionaries:data:language:tokenVectorDimension:", *(a1 + 32), v8, v7, *(a1 + 40), [*(a1 + 48) dimension]);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else if (v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"Failed to obtain result from embedding model";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v14 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v15];
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

- (id)requestBackgroundBatchEmbeddingResultsForStrings:(id)strings language:(id)language error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  languageCopy = language;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v10 = [stringsCopy count];
  if (v10 <= [(NLContextualEmbedding *)self maximumBatchSize])
  {
    if (!languageCopy)
    {
      languageCopy = @"und";
    }

    v14 = +[NLXPCEmbeddingServerClient sharedClient];
    identifier = [(NLContextualEmbedding *)self identifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__NLContextualEmbedding_requestBackgroundBatchEmbeddingResultsForStrings_language_error___block_invoke;
    v18[3] = &unk_1E7629DC8;
    v19 = stringsCopy;
    v22 = &v30;
    languageCopy = languageCopy;
    v20 = languageCopy;
    selfCopy = self;
    v23 = &v24;
    [v14 synchronousBatchDataFromTokenVectorEmbeddingForStrings:v19 language:languageCopy identifier:identifier completionHandler:v18];

    v16 = v31[5];
    if (error && !v16)
    {
      *error = v25[5];
      v16 = v31[5];
    }

    v13 = v16;

    v12 = v19;
    goto LABEL_10;
  }

  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37[0] = @"Maximum batch size exceeded";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:4 userInfo:v12];
    *error = v13 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v13;
}

void __89__NLContextualEmbedding_requestBackgroundBatchEmbeddingResultsForStrings_language_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8 && (v10 = [*(a1 + 32) count], v10 == objc_msgSend(v7, "count")) && (v11 = objc_msgSend(v7, "count"), v11 == objc_msgSend(v8, "count")))
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if ([v7 count])
    {
      v15 = 0;
      do
      {
        v16 = [NLContextualEmbeddingResult alloc];
        v17 = [*(a1 + 32) objectAtIndexedSubscript:v15];
        v18 = [v8 objectAtIndexedSubscript:v15];
        v19 = [v7 objectAtIndexedSubscript:v15];
        v20 = -[NLContextualEmbeddingResult initWithString:tokenDictionaries:data:language:tokenVectorDimension:](v16, "initWithString:tokenDictionaries:data:language:tokenVectorDimension:", v17, v18, v19, *(a1 + 40), [*(a1 + 48) dimension]);

        [*(*(*(a1 + 56) + 8) + 40) addObject:v20];
        ++v15;
      }

      while (v15 < [v7 count]);
    }
  }

  else if (v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Failed to obtain result from embedding model";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v23 = [v21 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v22];
    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }
}

- (BOOL)requestBackgroundModelLoadingWithTimeout:(double)timeout error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v7 = +[NLXPCEmbeddingServerClient sharedClient];
  identifier = [(NLContextualEmbedding *)self identifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__NLContextualEmbedding_requestBackgroundModelLoadingWithTimeout_error___block_invoke;
  v16[3] = &unk_1E7629DF0;
  v16[4] = &v23;
  v16[5] = &v17;
  [v7 synchronousLoadModelWithIdentifier:identifier timeout:v16 completionHandler:timeout];

  v9 = *(v24 + 24);
  if (error && (v24[3] & 1) == 0)
  {
    v10 = v18[5];
    if (!v10)
    {
      v11 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Failed to load embedding model";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v13 = [v11 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v12];
      v14 = v18[5];
      v18[5] = v13;

      v10 = v18[5];
    }

    *error = v10;
    v9 = *(v24 + 24);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v9 & 1;
}

- (void)requestModelLoadingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NLXPCEmbeddingServerClient sharedClient];
  identifier = [(NLContextualEmbedding *)self identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__NLContextualEmbedding_requestModelLoadingWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7629090;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v5 loadModelWithIdentifier:identifier completionHandler:v8];
}

void __66__NLContextualEmbedding_requestModelLoadingWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A578];
    v9[0] = @"Failed to load embedding model";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = [v6 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_getSentenceEmbeddingForString:(id)string error:(id *)error
{
  v32[3] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v6 = [(NLE5Embedding *)self->_embeddingE5 embeddingDataForString:string sequenceSize:&v30 error:error];
  if (v6)
  {
    dimension = [(NLE5Embedding *)self->_embeddingE5 dimension];
    v8 = objc_alloc(MEMORY[0x1E695FED0]);
    v32[0] = &unk_1F10D1310;
    v32[1] = &unk_1F10D1310;
    v9 = 0x1E696A000uLL;
    v29 = dimension;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dimension];
    v32[2] = v10;
    v11 = 0x1E695D000uLL;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    v13 = [v8 initWithShape:v12 dataType:65568 error:error];

    if (v13)
    {
      selfCopy = self;
      errorCopy = error;
      v28 = v6;
      bytes = [v6 bytes];
      if (dimension)
      {
        v16 = bytes;
        v17 = 0;
        v18 = 4 * dimension;
        do
        {
          LODWORD(v15) = *(v16 + v18 * (v30 - 1) + 4 * v17);
          v19 = [*(v9 + 3480) numberWithFloat:{v15, selfCopy, errorCopy}];
          v31[0] = &unk_1F10D1328;
          v31[1] = &unk_1F10D1328;
          v20 = [*(v9 + 3480) numberWithUnsignedInteger:v17];
          v31[2] = v20;
          [*(v11 + 3784) arrayWithObjects:v31 count:3];
          v21 = v9;
          v23 = v22 = v11;
          [v13 setObject:v19 forKeyedSubscript:v23];

          v11 = v22;
          v9 = v21;

          ++v17;
        }

        while (v29 != v17);
      }

      errorCopy = [(NLSentenceEmbeddingHead *)selfCopy->_sentenceEmbeddingHead getSentenceEmbeddingFromPooledTokenEmbeddings:v13 error:errorCopy, selfCopy, errorCopy];
      v6 = v28;
    }

    else
    {
      errorCopy = 0;
    }
  }

  else
  {
    errorCopy = 0;
  }

  return errorCopy;
}

- (id)_sentenceEmbeddingVectorForString:(id)string error:(id *)error
{
  v12[3] = *MEMORY[0x1E69E9840];
  v5 = [(NLContextualEmbedding *)self _getSentenceEmbeddingForString:string error:error];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NLSentenceEmbeddingHead outputDimension](self->_sentenceEmbeddingHead, "outputDimension")}];
  if ([(NLSentenceEmbeddingHead *)self->_sentenceEmbeddingHead outputDimension])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v7, &unk_1F10D1328, &unk_1F10D1328}];
      v12[2] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
      v10 = [v5 objectForKeyedSubscript:v9];
      [v6 addObject:v10];

      ++v7;
    }

    while (v7 < [(NLSentenceEmbeddingHead *)self->_sentenceEmbeddingHead outputDimension]);
  }

  return v6;
}

- (id)sentenceEmbeddingVectorForString:(id)string language:(id)language error:(id *)error
{
  stringCopy = string;
  languageCopy = language;
  v10 = [(NLContextualEmbedding *)self loadSentenceEmbeddingWithError:error];
  if (v10)
  {
    v11 = NLContextualEmbeddingSignpostHandle(v10);
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D48F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "sentenceEmbedding", &unk_19D4EF749, buf, 2u);
    }

    v15 = [(NLContextualEmbedding *)self _sentenceEmbeddingVectorForString:stringCopy error:error];
    v16 = v14;
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_19D48F000, v17, OS_SIGNPOST_INTERVAL_END, v12, "sentenceEmbedding", &unk_19D4EF749, v19, 2u);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_sentenceEmbeddingVectorDataForString:(id)string error:(id *)error
{
  v17[3] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  data = [MEMORY[0x1E695DF88] data];
  v8 = [(NLContextualEmbedding *)self _getSentenceEmbeddingForString:stringCopy error:error];
  if ([(NLSentenceEmbeddingHead *)self->_sentenceEmbeddingHead outputDimension])
  {
    v9 = 0;
    do
    {
      v17[0] = &unk_1F10D1328;
      v17[1] = &unk_1F10D1328;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      v17[2] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
      v12 = [v8 objectForKeyedSubscript:v11];
      [v12 floatValue];
      v14 = v13;

      v16 = v14;
      [data appendBytes:&v16 length:4];
      ++v9;
    }

    while (v9 < [(NLSentenceEmbeddingHead *)self->_sentenceEmbeddingHead outputDimension]);
  }

  return data;
}

- (id)sentenceEmbeddingVectorDataForString:(id)string language:(id)language error:(id *)error
{
  stringCopy = string;
  languageCopy = language;
  v10 = [(NLContextualEmbedding *)self loadSentenceEmbeddingWithError:error];
  if (v10)
  {
    v11 = NLContextualEmbeddingSignpostHandle(v10);
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D48F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "sentenceEmbedding", &unk_19D4EF749, buf, 2u);
    }

    v15 = [(NLContextualEmbedding *)self _sentenceEmbeddingVectorDataForString:stringCopy error:error];
    v16 = v14;
    v17 = v16;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_19D48F000, v17, OS_SIGNPOST_INTERVAL_END, v12, "sentenceEmbedding", &unk_19D4EF749, v19, 2u);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)requestSentenceEmbeddingVectorForString:(id)string language:(id)language completionHandler:(id)handler
{
  handlerCopy = handler;
  languageCopy = language;
  stringCopy = string;
  v11 = +[NLXPCEmbeddingServerClient sharedClient];
  identifier = [(NLContextualEmbedding *)self identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__NLContextualEmbedding_requestSentenceEmbeddingVectorForString_language_completionHandler___block_invoke;
  v14[3] = &unk_1E7629068;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [v11 dataFromSentenceVectorEmbeddingForString:stringCopy language:languageCopy identifier:identifier completionHandler:v14];
}

void __92__NLContextualEmbedding_requestSentenceEmbeddingVectorForString_language_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [v5 length];
    v10 = [v5 bytes];
    if (v9 >= 4)
    {
      v12 = v10;
      v13 = v9 >> 2;
      do
      {
        v14 = *v12++;
        LODWORD(v11) = v14;
        v15 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
        [v8 addObject:v15];

        --v13;
      }

      while (v13);
    }
  }

  else
  {
    if (!v6)
    {
      v16 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"Failed to obtain result from embedding model";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v7 = [v16 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v17];
    }

    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)subRangesWithinToken:(id)token offset:(unint64_t)offset
{
  v21[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  array = [MEMORY[0x1E695DF70] array];
  v7 = [(NLE5Embedding *)self->_embeddingE5 tokenIDsForText:tokenCopy];
  if (subRangesWithinToken_offset__onceToken != -1)
  {
    [NLContextualEmbedding subRangesWithinToken:offset:];
  }

  if ([v7 count])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [v7 objectAtIndex:v9];
      v11 = v10;
      if (v9 || ([v10 isEqual:&unk_1F10D1310] & 1) == 0)
      {
        embeddingE5 = self->_embeddingE5;
        v21[0] = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
        v14 = [(NLE5Embedding *)embeddingE5 textForTokenIDs:v13];
        v15 = [v14 stringByTrimmingCharactersInSet:subRangesWithinToken_offset__whitespaceAndNewlineCharacterSet];

        v16 = [v15 length];
        v17 = v16 + v8;
        if (v16 + v8 > [tokenCopy length])
        {
          v17 = [tokenCopy length];
          v16 = v17 - v8;
        }

        v18 = [MEMORY[0x1E696B098] valueWithRange:{v8 + offset, v16}];
        [array addObject:v18];

        v8 = v17;
      }

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  return array;
}

uint64_t __53__NLContextualEmbedding_subRangesWithinToken_offset___block_invoke()
{
  subRangesWithinToken_offset__whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

- (id)tokenDictionariesForString:(id)string tokens:(id)tokens tokenRanges:(id)ranges
{
  v28[1] = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  rangesCopy = ranges;
  array = [MEMORY[0x1E695DF70] array];
  if ([tokensCopy count])
  {
    v10 = [MEMORY[0x1E696B098] valueWithRange:{0, 0}];
    v28[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

    if ([v11 count])
    {
      v26[0] = @"TokenRange";
      firstObject = [v11 firstObject];
      v26[1] = @"SubtokenRanges";
      v27[0] = firstObject;
      v27[1] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      [array addObject:v13];
    }
  }

  if ([tokensCopy count])
  {
    v14 = 0;
    do
    {
      if (v14 >= [rangesCopy count])
      {
        break;
      }

      v15 = [tokensCopy objectAtIndex:v14];
      v16 = [rangesCopy objectAtIndex:v14];
      rangeValue = [v16 rangeValue];
      v19 = v18;

      v20 = [(NLContextualEmbedding *)self subRangesWithinToken:v15 offset:rangeValue];
      v21 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v19, @"TokenRange"}];
      v24[1] = @"SubtokenRanges";
      v25[0] = v21;
      v25[1] = v20;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      [array addObject:v22];

      ++v14;
    }

    while (v14 < [tokensCopy count]);
  }

  return array;
}

- (BOOL)enumerateTokensForString:(id)string language:(id)language inRange:(_NSRange)range error:(id *)error usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  v53 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  languageCopy = language;
  blockCopy = block;
  if (self->_embeddingE5 || [(NLContextualEmbedding *)self loadWithError:error])
  {
    v13 = languageCopy;
    if (!languageCopy)
    {
      v13 = @"und";
    }

    languageCopy = v13;
    v14 = [(NLContextualEmbedding *)self _tokenRangesForString:stringCopy language:v13];
    v33 = [(NLContextualEmbedding *)self _tokensForString:stringCopy tokenRanges:v14];
    v34 = v14;
    [NLContextualEmbedding tokenDictionariesForString:"tokenDictionariesForString:tokens:tokenRanges:" tokens:stringCopy tokenRanges:?];
    v50 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v39 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v39)
    {
      v38 = *v47;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v47 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v15;
        v16 = *(*(&v46 + 1) + 8 * v15);
        v17 = [v16 objectForKey:@"TokenRange"];
        rangeValue = [v17 rangeValue];
        v20 = v19;

        v21 = [v16 objectForKey:@"SubtokenRanges"];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v43;
LABEL_12:
          v26 = 0;
          while (1)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v22);
            }

            rangeValue2 = [*(*(&v42 + 1) + 8 * v26) rangeValue];
            v29 = v28;
            if (rangesMatch(location, length, rangeValue, v20) && rangesMatch(location, length, rangeValue2, v29))
            {
              blockCopy[2](blockCopy, rangeValue2, v29, &v50);
            }

            if (v50)
            {
              break;
            }

            if (v24 == ++v26)
            {
              v24 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
              if (v24)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        v30 = v50;
        if (v30)
        {
          break;
        }

        v15 = v40 + 1;
        if (v40 + 1 == v39)
        {
          v39 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v39)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (NSUInteger)dimension
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"Dimension"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (NSUInteger)maximumSequenceLength
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"MaximumSequenceLength"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)sentenceVectorDimension
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"SentenceEmbeddingDimension"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)tokenVectorDimension
{
  if (![(NLContextualEmbedding *)self isLoaded])
  {
    [(NLContextualEmbedding *)self load];
  }

  if (![(NLContextualEmbedding *)self isLoaded])
  {
    return 0;
  }

  embeddingE5 = self->_embeddingE5;

  return [(NLE5Embedding *)embeddingE5 dimension];
}

- (NSArray)languages
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"Languages"];
  v3 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }
  }

  v4 = v3;

  return v3;
}

- (NSArray)scripts
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"Scripts"];
  v3 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }
  }

  v4 = v3;

  return v3;
}

- (id)adapters
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"Adapters"];
  v3 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }
  }

  v4 = v3;

  return v3;
}

- (NSUInteger)revision
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"Revision"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)modelSystemVersion
{
  v2 = [(NSDictionary *)self->_catalogEntry objectForKey:@"NLModelSystemVersion"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (BOOL)compileWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!self->_embeddingE5)
  {
    bundlePath = [(NLContextualEmbedding *)self bundlePath];
    if (bundlePath)
    {
      v7 = [(NSDictionary *)self->_catalogEntry objectForKey:@"Adapters"];
      v8 = objc_opt_class();
      v9 = [bundlePath stringByAppendingPathComponent:@"embeddings.mil"];
      v3 = [v8 compileEmbeddingModelWithModelPath:v9 useANE:self->_useANE adapters:v7];

      if (error && (v3 & 1) == 0)
      {
        v10 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A578];
        v15 = @"E5 model compilation failed";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        *error = [v10 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v11];
      }
    }

    else
    {
      if (!error)
      {
        v3 = 0;
        goto LABEL_10;
      }

      v12 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v17[0] = @"Failed to locate embedding model";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [v12 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:8 userInfo:v7];
      *error = v3 = 0;
    }

LABEL_10:
    return v3;
  }

  return 1;
}

- (int64_t)getCompilationState
{
  if (self->_embeddingE5)
  {
    return 1;
  }

  bundlePath = [(NLContextualEmbedding *)self bundlePath];
  if (bundlePath && (-[NSDictionary objectForKey:](self->_catalogEntry, "objectForKey:", @"Adapters"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_class(), [bundlePath stringByAppendingPathComponent:@"embeddings.mil"], v7 = objc_claimAutoreleasedReturnValue(), useANE = self->_useANE, v11 = 0, v9 = objc_msgSend(v6, "isCompiledEmbeddingModelWithModelPath:useANE:adapters:error:", v7, useANE, v5, &v11), v10 = v11, v7, v5, !v10))
  {

    return v9 != 0;
  }

  else
  {

    return 2;
  }
}

- (BOOL)requiresCompilation
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.naturallanguaged"];

  return (v5 & 1) == 0 && [(NLContextualEmbedding *)self getCompilationState]!= 1;
}

- (void)requestModelCompilationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NLXPCEmbeddingServerClient sharedClient];
  identifier = [(NLContextualEmbedding *)self identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__NLContextualEmbedding_requestModelCompilationWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7629090;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v5 compileModelWithIdentifier:identifier completionHandler:v8];
}

void __70__NLContextualEmbedding_requestModelCompilationWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v6 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A578];
    v9[0] = @"Failed to compile embedding model";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = [v6 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v7];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestAssetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  assetLocaleIdentifier = [(NLContextualEmbedding *)self assetLocaleIdentifier];
  modelIdentifier = [(NLContextualEmbedding *)self modelIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__NLContextualEmbedding_requestAssetsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7629E18;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [NLTagger requestAssetsForLanguage:assetLocaleIdentifier assetIdentifier:modelIdentifier tagScheme:@"ContextualEmbedding" completionHandler:v8];
}

- (void)requestEmbeddingAssetsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  assetLocaleIdentifier = [(NLContextualEmbedding *)self assetLocaleIdentifier];
  modelIdentifier = [(NLContextualEmbedding *)self modelIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__NLContextualEmbedding_requestEmbeddingAssetsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7629E18;
  v9 = v4;
  v7 = v4;
  [NLTagger requestAssetsForLanguage:assetLocaleIdentifier assetIdentifier:modelIdentifier tagScheme:@"ContextualEmbedding" completionHandler:v8];
}

@end