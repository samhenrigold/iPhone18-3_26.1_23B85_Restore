@interface MSParsecSearchSessionQueryComponent
+ (OS_os_log)log;
+ (id)_structuredQueryForComponents:(id)components hasCurrentMailboxScope:(BOOL)scope languages:(id)languages;
+ (id)freeTextQueryComponentWithString:(id)string;
+ (id)suggestionAtomQueryComponentWithCategory:(id)category scope:(id)scope queryString:(id)string cannedSuggestion:(BOOL)suggestion;
+ (id)userTypedQueryComponentWithString:(id)string removingFreeTextTokenString:(id)tokenString;
+ (id)userTypedQueryComponentWithString:(id)string removingFreeTextTokens:(id)tokens;
- (MSParsecSearchSessionQueryComponent)initWithCategory:(id)category scope:(id)scope queryString:(id)string cannedSuggestion:(BOOL)suggestion;
- (id)_structuredQueryComponentWithLanguages:(id)languages;
@end

@implementation MSParsecSearchSessionQueryComponent

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSParsecSearchSessionQueryComponent_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __42__MSParsecSearchSessionQueryComponent_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

+ (id)freeTextQueryComponentWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithCategory:@"free_text" scope:0 queryString:stringCopy cannedSuggestion:0];

  return v5;
}

+ (id)userTypedQueryComponentWithString:(id)string removingFreeTextTokens:(id)tokens
{
  stringCopy = string;
  v6 = [tokens componentsJoinedByString:@" "];
  v7 = [MSParsecSearchSessionQueryComponent userTypedQueryComponentWithString:stringCopy removingFreeTextTokenString:v6];

  return v7;
}

+ (id)userTypedQueryComponentWithString:(id)string removingFreeTextTokenString:(id)tokenString
{
  stringCopy = string;
  tokenStringCopy = tokenString;
  v8 = stringCopy;
  v9 = v8;
  if ([tokenStringCopy length])
  {
    v10 = [v8 stringByReplacingOccurrencesOfString:tokenStringCopy withString:&stru_28692F9D8 options:8 range:{0, objc_msgSend(tokenStringCopy, "length")}];

    v9 = v10;
  }

  if ([v9 length])
  {
    v11 = [[self alloc] initWithCategory:@"user_typed" scope:0 queryString:v9 cannedSuggestion:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)suggestionAtomQueryComponentWithCategory:(id)category scope:(id)scope queryString:(id)string cannedSuggestion:(BOOL)suggestion
{
  suggestionCopy = suggestion;
  categoryCopy = category;
  scopeCopy = scope;
  stringCopy = string;
  v13 = [[self alloc] initWithCategory:categoryCopy scope:scopeCopy queryString:stringCopy cannedSuggestion:suggestionCopy];

  return v13;
}

+ (id)_structuredQueryForComponents:(id)components hasCurrentMailboxScope:(BOOL)scope languages:(id)languages
{
  scopeCopy = scope;
  v23[1] = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  languagesCopy = languages;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (componentsCopy)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __102__MSParsecSearchSessionQueryComponent__structuredQueryForComponents_hasCurrentMailboxScope_languages___block_invoke;
    v20 = &unk_27985B948;
    v21 = languagesCopy;
    v10 = [componentsCopy ef_compactMap:&v17];
    [v9 addObjectsFromArray:{v10, v17, v18, v19, v20}];
    v11 = @"all";
    if (scopeCopy)
    {
      v11 = @"curr";
    }

    v12 = v11;
    v22 = @"mf";
    v23[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v9 addObject:v13];
  }

  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:0 error:0];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];

  return v15;
}

id __102__MSParsecSearchSessionQueryComponent__structuredQueryForComponents_hasCurrentMailboxScope_languages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = +[MSParsecSearchSessionQueryComponent log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __102__MSParsecSearchSessionQueryComponent__structuredQueryForComponents_hasCurrentMailboxScope_languages___block_invoke_cold_1(v6);
    }

    v7 = 0;
  }

  else
  {
    v7 = [v3 _structuredQueryComponentWithLanguages:*(a1 + 32)];
  }

  return v7;
}

- (MSParsecSearchSessionQueryComponent)initWithCategory:(id)category scope:(id)scope queryString:(id)string cannedSuggestion:(BOOL)suggestion
{
  categoryCopy = category;
  scopeCopy = scope;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = MSParsecSearchSessionQueryComponent;
  v14 = [(MSParsecSearchSessionQueryComponent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_category, category);
    objc_storeStrong(&v15->_scope, scope);
    objc_storeStrong(&v15->_queryString, string);
    v15->_cannedSuggestion = suggestion;
  }

  return v15;
}

- (id)_structuredQueryComponentWithLanguages:(id)languages
{
  v29 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(MSParsecSearchSessionQueryComponent *)self cannedSuggestion])
  {
    category = [(MSParsecSearchSessionQueryComponent *)self category];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:category];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    category2 = [(MSParsecSearchSessionQueryComponent *)self category];
    if (category2)
    {
      scope = [(MSParsecSearchSessionQueryComponent *)self scope];

      if (scope)
      {
        scope2 = [(MSParsecSearchSessionQueryComponent *)self scope];
        [v6 setObject:scope2 forKeyedSubscript:@"s"];
      }
    }

    queryString = [(MSParsecSearchSessionQueryComponent *)self queryString];
    v11 = [MEMORY[0x277CBEAF8] ef_localesFromLanguages:languagesCopy];
    firstObject = [v11 firstObject];
    v13 = [queryString ef_wordComponentsForLocale:firstObject];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v13;
    v16 = 0;
    v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v16 += [*(*(&v24 + 1) + 8 * i) length];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
    [v6 setObject:v20 forKeyedSubscript:@"nc"];

    [v6 setObject:v14 forKeyedSubscript:@"nw"];
    category3 = [(MSParsecSearchSessionQueryComponent *)self category];
    [v4 setObject:v6 forKeyedSubscript:category3];
  }

  return v4;
}

@end