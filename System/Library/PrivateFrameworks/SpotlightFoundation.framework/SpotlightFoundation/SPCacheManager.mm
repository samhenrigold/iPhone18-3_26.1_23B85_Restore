@interface SPCacheManager
+ (SPCacheManager)defaultManager;
+ (id)defaultProperties;
+ (id)defaultValueWithKey:(id)key;
+ (id)defaults;
+ (int64_t)version;
+ (void)removeDefaults;
+ (void)removeKey:(id)key;
+ (void)setDefaultWithKey:(id)key value:(id)value;
+ (void)setVersionWithValue:(int64_t)value;
- (SPCacheManager)init;
- (id)_createRecentsFromEngagedResults:(id)results maxCount:(unint64_t)count;
- (id)recentResultsWithOptions:(id)options rankAndDeduplicate:(id)deduplicate;
- (void)cacheContact:(id)contact contactIdentifier:(id)identifier score:(id)score searchString:(id)string;
- (void)cacheLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string;
- (void)cachePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string;
- (void)cacheResult:(id)result title:(id)title searchString:(id)string;
- (void)cacheSuggestion:(id)suggestion type:(int)type score:(id)score searchString:(id)string;
- (void)deleteAllResults;
- (void)deleteContact:(id)contact contactIdentifier:(id)identifier score:(id)score;
- (void)deleteLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class;
- (void)deletePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score;
- (void)deleteResult:(id)result title:(id)title;
- (void)deleteSuggestion:(id)suggestion type:(int)type score:(id)score;
- (void)enumerateRecentCompletionsWithSearchString:(id)string usingBlock:(id)block;
- (void)enumerateRecentResultsUsingBlock:(id)block;
- (void)updateRecentsWithBundleIdentifiers:(id)identifiers;
@end

@implementation SPCacheManager

+ (SPCacheManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[SPCacheManager defaultManager];
  }

  v3 = defaultManager___DefaultManager;

  return v3;
}

uint64_t __32__SPCacheManager_defaultManager__block_invoke()
{
  defaultManager___DefaultManager = objc_alloc_init(SPCacheManager);

  return MEMORY[0x2821F96F8]();
}

- (SPCacheManager)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SPCacheManager;
  v2 = [(SPCacheManager *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D007C8]) initWithId:@"com.apple.spotlight" userAgent:@"spotlight/1.0" factory:0];
    v4 = logForSPLogCategoryDefault(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: initializing session with configuration: %@", buf, 0xCu);
    }

    v5 = [MEMORY[0x277D007C0] sessionWithConfiguration:v3];
    session = v2->_session;
    v2->_session = v5;

    if (+[SPCacheManager version]!= 25)
    {
      [(SPCacheManager *)v2 deleteAllResults];
    }

    notify_post([@"SPSpotlightRecentsCacheDidChange" UTF8String]);
  }

  return v2;
}

+ (int64_t)version
{
  v2 = [SPCacheManager defaultValueWithKey:@"Version"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

+ (id)defaultProperties
{
  defaults = [objc_opt_class() defaults];
  dictionaryRepresentation = [defaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation objectForKey:@"Recents"];

  return v4;
}

+ (id)defaults
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[SPCacheManager identifier];
  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

+ (void)setDefaultWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  defaults = [objc_opt_class() defaults];
  defaultProperties = [objc_opt_class() defaultProperties];
  if (defaultProperties)
  {
    defaultProperties2 = [objc_opt_class() defaultProperties];
    v9 = [defaultProperties2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [v9 setObject:valueCopy forKey:keyCopy];
  [defaults setObject:v9 forKey:@"Recents"];
}

+ (id)defaultValueWithKey:(id)key
{
  keyCopy = key;
  defaultProperties = [objc_opt_class() defaultProperties];
  v5 = [defaultProperties objectForKey:keyCopy];

  return v5;
}

+ (void)removeKey:(id)key
{
  keyCopy = key;
  defaults = [objc_opt_class() defaults];
  defaultProperties = [objc_opt_class() defaultProperties];
  v5 = [defaultProperties mutableCopy];

  [v5 removeObjectForKey:keyCopy];
  [defaults setObject:v5 forKey:@"Recents"];
}

+ (void)removeDefaults
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = +[SPCacheManager identifier];
  [standardUserDefaults removePersistentDomainForName:v3];

  v4 = MEMORY[0x277CBEBD0];

  [v4 resetStandardUserDefaults];
}

+ (void)setVersionWithValue:(int64_t)value
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  [v4 setDefaultWithKey:@"Version" value:v5];
}

- (void)updateRecentsWithBundleIdentifiers:(id)identifiers
{
  v34 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  v5 = [(SPCacheManager *)self recentResultsWithOptions:MEMORY[0x277CBEC10]];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = 0x277D4C000uLL;
    do
    {
      v10 = 0;
      v28 = v7;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        topic = [v11 topic];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          topic2 = [v11 topic];
          identifier = [topic2 identifier];
          v16 = searchResultWithTopicIdentifier(identifier, 1.0);

          if ([v16 type] == 2)
          {
            resultBundleId = [v16 resultBundleId];
            v18 = [resultBundleId componentsSeparatedByString:@":"];

            firstObject = [v18 firstObject];
            lastObject = [v18 lastObject];
            if (([identifiersCopy containsObject:lastObject] & 1) == 0)
            {
              [v16 identifier];
              v21 = v8;
              v22 = v9;
              v23 = v5;
              v25 = v24 = identifiersCopy;
              [(SPCacheManager *)selfCopy deleteLocalResult:v16 identifier:v25 bundleIdentifier:lastObject protectionClass:firstObject];

              identifiersCopy = v24;
              v5 = v23;
              v9 = v22;
              v8 = v21;
            }

            v7 = v28;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)cacheResult:(id)result title:(id)title searchString:(id)string
{
  v23 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  stringCopy = string;
  titleCopy = title;
  v11 = [SPCachedResult alloc];
  normalizedTopic = [resultCopy normalizedTopic];
  v13 = [(SPCachedResult *)v11 initWithResult:resultCopy topic:normalizedTopic title:titleCopy searchString:stringCopy];

  if (!v13)
  {
    v19 = logForSPLogCategoryCaching(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager cacheResult:resultCopy title:? searchString:?];
    }

    goto LABEL_10;
  }

  encodedNormalizedTopic = [(SPCachedResult *)v13 encodedNormalizedTopic];

  if (encodedNormalizedTopic)
  {
    v16 = [stringCopy length];
    if (v16)
    {
      v16 = [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
    }

    v17 = logForSPLogCategoryCaching(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      type = [resultCopy type];
      _os_log_impl(&dword_26B79D000, v17, OS_LOG_TYPE_DEFAULT, "spotlight cache: spotlight cache: caching result with type: %d", buf, 8u);
    }

    session = self->_session;
    v20 = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [(PARSession *)session addEngagedResults:v19 completion:&__block_literal_global_35];
LABEL_10:
  }
}

void __49__SPCacheManager_cacheResult_title_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __49__SPCacheManager_cacheResult_title_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)cacheLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string
{
  v25 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  classCopy = class;
  stringCopy = string;
  if (![bundleIdentifierCopy isEqualToString:@"com.apple.Preferences"] || (objc_msgSend(identifierCopy, "containsString:", @"SAFETY_CHECK") & 1) == 0)
  {
    v17 = [[SPCachedResult alloc] initWithResult:resultCopy identifier:identifierCopy bundleIdentifier:bundleIdentifierCopy protectionClass:classCopy searchString:stringCopy];
    if (v17)
    {
      v18 = [stringCopy length];
      if (v18)
      {
        v18 = [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
      }

      v19 = logForSPLogCategoryCaching(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        type = [resultCopy type];
        _os_log_impl(&dword_26B79D000, v19, OS_LOG_TYPE_DEFAULT, "spotlight cache: caching result with type: %d", buf, 8u);
      }

      session = self->_session;
      v22 = v17;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      [(PARSession *)session addEngagedResults:v21 completion:&__block_literal_global_43];
    }

    else
    {
      v21 = logForSPLogCategoryCaching(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SPCacheManager cacheResult:resultCopy title:? searchString:?];
      }
    }
  }
}

void __92__SPCacheManager_cacheLocalResult_identifier_bundleIdentifier_protectionClass_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __92__SPCacheManager_cacheLocalResult_identifier_bundleIdentifier_protectionClass_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)cachePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  v21[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  scoreCopy = score;
  identifierCopy = identifier;
  personCopy = person;
  v14 = [[SPCachedResult alloc] initWithPersonName:personCopy personQueryIdentifier:identifierCopy score:scoreCopy searchString:stringCopy];

  if (v14)
  {
    v16 = [stringCopy length];
    if (v16)
    {
      v16 = [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
    }

    v17 = logForSPLogCategoryCaching(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_26B79D000, v17, OS_LOG_TYPE_DEFAULT, "spotlight cache: caching person with type", v20, 2u);
    }

    session = self->_session;
    v21[0] = v14;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [(PARSession *)session addEngagedResults:v19 completion:&__block_literal_global_45];
  }

  else
  {
    v19 = logForSPLogCategoryCaching(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager cachePerson:personQueryIdentifier:score:searchString:];
    }
  }
}

void __71__SPCacheManager_cachePerson_personQueryIdentifier_score_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __71__SPCacheManager_cachePerson_personQueryIdentifier_score_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)cacheContact:(id)contact contactIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  v21[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  scoreCopy = score;
  identifierCopy = identifier;
  contactCopy = contact;
  v14 = [[SPCachedResult alloc] initWithContactName:contactCopy contactIdentifier:identifierCopy score:scoreCopy searchString:stringCopy];

  if (v14)
  {
    v16 = [stringCopy length];
    if (v16)
    {
      v16 = [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
    }

    v17 = logForSPLogCategoryCaching(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_26B79D000, v17, OS_LOG_TYPE_DEFAULT, "spotlight cache: caching contact with type", v20, 2u);
    }

    session = self->_session;
    v21[0] = v14;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [(PARSession *)session addEngagedResults:v19 completion:&__block_literal_global_47];
  }

  else
  {
    v19 = logForSPLogCategoryCaching(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager cacheContact:contactIdentifier:score:searchString:];
    }
  }
}

void __68__SPCacheManager_cacheContact_contactIdentifier_score_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __68__SPCacheManager_cacheContact_contactIdentifier_score_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)cacheSuggestion:(id)suggestion type:(int)type score:(id)score searchString:(id)string
{
  v7 = *&type;
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  scoreCopy = score;
  suggestionCopy = suggestion;
  v13 = [[SPCachedResult alloc] initWithTitle:suggestionCopy type:v7 score:scoreCopy searchString:stringCopy];

  if (v13)
  {
    v15 = [stringCopy length];
    if (v15)
    {
      v15 = [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
    }

    v16 = logForSPLogCategoryCaching(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v7;
      _os_log_impl(&dword_26B79D000, v16, OS_LOG_TYPE_DEFAULT, "spotlight cache: caching suggestion with type: %d", buf, 8u);
    }

    session = self->_session;
    v19 = v13;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [(PARSession *)session addEngagedResults:v18 completion:&__block_literal_global_49];
  }

  else
  {
    v18 = logForSPLogCategoryCaching(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager cacheSuggestion:type:score:searchString:];
    }
  }
}

void __58__SPCacheManager_cacheSuggestion_type_score_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __58__SPCacheManager_cacheSuggestion_type_score_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)deleteResult:(id)result title:(id)title
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  titleCopy = title;
  v8 = [SPCachedResult alloc];
  normalizedTopic = [resultCopy normalizedTopic];
  v10 = [(SPCachedResult *)v8 initWithResult:resultCopy topic:normalizedTopic title:titleCopy searchString:0];

  if (v10)
  {
    v12 = logForSPLogCategoryCaching(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      type = [resultCopy type];
      _os_log_impl(&dword_26B79D000, v12, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting result with type: %d", buf, 8u);
    }

    session = self->_session;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__SPCacheManager_deleteResult_title___block_invoke;
    v14[3] = &unk_279D025F8;
    v15 = resultCopy;
    v16 = titleCopy;
    selfCopy = self;
    [(PARSession *)session clearEngagedResult:v10 completion:v14];
  }
}

void __37__SPCacheManager_deleteResult_title___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __37__SPCacheManager_deleteResult_title___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [*(a1 + 32) requestedTopic];

    if (v4)
    {
      v5 = [SPCachedResult alloc];
      v6 = *(a1 + 32);
      v7 = [v6 requestedTopic];
      v8 = [(SPCachedResult *)v5 initWithResult:v6 topic:v7 title:*(a1 + 40) searchString:0];

      if (v8)
      {
        v10 = logForSPLogCategoryCaching(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(a1 + 32) type];
          v13[0] = 67109120;
          v13[1] = v11;
          _os_log_impl(&dword_26B79D000, v10, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting result with type: %d", v13, 8u);
        }

        [*(*(a1 + 48) + 8) clearEngagedResult:v8 completion:&__block_literal_global_52];
      }
    }

    else
    {
      v12 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

      notify_post(v12);
    }
  }
}

void __37__SPCacheManager_deleteResult_title___block_invoke_50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __37__SPCacheManager_deleteResult_title___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)deleteLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class
{
  v19 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  classCopy = class;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v14 = [[SPCachedResult alloc] initWithResult:resultCopy identifier:identifierCopy bundleIdentifier:bundleIdentifierCopy protectionClass:classCopy searchString:0];

  v16 = logForSPLogCategoryCaching(v15);
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109120;
      v18[1] = [resultCopy type];
      _os_log_impl(&dword_26B79D000, v17, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting local result with type: %d", v18, 8u);
    }

    [(PARSession *)self->_session clearEngagedResult:v14 completion:&__block_literal_global_54];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager deleteLocalResult:resultCopy identifier:? bundleIdentifier:? protectionClass:?];
    }
  }
}

void __80__SPCacheManager_deleteLocalResult_identifier_bundleIdentifier_protectionClass___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __37__SPCacheManager_deleteResult_title___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)deletePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score
{
  scoreCopy = score;
  identifierCopy = identifier;
  personCopy = person;
  v11 = [[SPCachedResult alloc] initWithPersonName:personCopy personQueryIdentifier:identifierCopy score:scoreCopy searchString:0];

  v13 = logForSPLogCategoryCaching(v12);
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26B79D000, v14, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting person with type", v19, 2u);
    }

    session = self->_session;
    title = [(SPCachedResult *)v11 title];
    [(PARSession *)session clearEngagementsWithTitle:title type:&unk_287C3DEC8];

    v17 = self->_session;
    title2 = [(SPCachedResult *)v11 title];
    [(PARSession *)v17 clearEngagementsWithTitle:title2 type:&unk_287C3DEE0];

    notify_post([@"SPSpotlightRecentsCacheDidChange" UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager deletePerson:personQueryIdentifier:score:];
    }
  }
}

- (void)deleteContact:(id)contact contactIdentifier:(id)identifier score:(id)score
{
  scoreCopy = score;
  identifierCopy = identifier;
  contactCopy = contact;
  v11 = [[SPCachedResult alloc] initWithContactName:contactCopy contactIdentifier:identifierCopy score:scoreCopy searchString:0];

  v13 = logForSPLogCategoryCaching(v12);
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26B79D000, v14, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting contact with type", v19, 2u);
    }

    session = self->_session;
    title = [(SPCachedResult *)v11 title];
    [(PARSession *)session clearEngagementsWithTitle:title type:&unk_287C3DEF8];

    v17 = self->_session;
    title2 = [(SPCachedResult *)v11 title];
    [(PARSession *)v17 clearEngagementsWithTitle:title2 type:&unk_287C3DF10];

    notify_post([@"SPSpotlightRecentsCacheDidChange" UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager deleteContact:contactIdentifier:score:];
    }
  }
}

- (void)deleteSuggestion:(id)suggestion type:(int)type score:(id)score
{
  v5 = *&type;
  scoreCopy = score;
  suggestionCopy = suggestion;
  v10 = [[SPCachedResult alloc] initWithTitle:suggestionCopy type:v5 score:scoreCopy searchString:0];

  if (v10)
  {
    session = self->_session;
    title = [(SPCachedResult *)v10 title];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [(PARSession *)session clearEngagementsWithTitle:title type:v14];

    notify_post([@"SPSpotlightRecentsCacheDidChange" UTF8String]);
  }

  else
  {
    v15 = logForSPLogCategoryCaching(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager deleteSuggestion:type:score:];
    }
  }
}

- (void)deleteAllResults
{
  session = self->_session;
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v4 = [MEMORY[0x277CBEAA8] now];
  [(PARSession *)session clearEngagementsFromDate:v3 toDate:v4];

  +[SPCacheManager removeDefaults];

  [SPCacheManager setVersionWithValue:25];
}

- (id)recentResultsWithOptions:(id)options rankAndDeduplicate:(id)deduplicate
{
  optionsCopy = options;
  deduplicateCopy = deduplicate;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = self->_session;
  if (session && [(PARSession *)session enabledStatus]== 1)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"SPSpotlightRecentsCacheOptionMaxCountKey"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v9 intValue];
    }

    else
    {
      intValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v14 = logForSPLogCategoryRecents(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager recentResultsWithOptions:rankAndDeduplicate:];
    }

    v15 = objc_opt_respondsToSelector();
    if (deduplicateCopy == 0 || (v15 & 1) == 0)
    {
      v19 = logForSPLogCategoryRecents(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B79D000, v19, OS_LOG_TYPE_DEFAULT, "spotlight cache: getting top engaged results", buf, 2u);
      }

      v20 = self->_session;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke_71;
      v24[3] = &unk_279D02648;
      v26 = &v34;
      v27 = intValue;
      v24[4] = self;
      v25 = v12;
      [(PARSession *)v20 topEngagedResultsForInput:&stru_287C3D120 maxAmount:10 completion:v24];
      v18 = v25;
    }

    else
    {
      v16 = logForSPLogCategoryRecents(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B79D000, v16, OS_LOG_TYPE_DEFAULT, "spotlight cache: ranking, getting all engaged results", buf, 2u);
      }

      v17 = self->_session;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke;
      v28[3] = &unk_279D02620;
      v30 = deduplicateCopy;
      v31 = &v34;
      v28[4] = self;
      v32 = intValue;
      v29 = v12;
      [(PARSession *)v17 allEngagedResultsForInput:&stru_287C3D120 maxAmount:100 completion:v28];

      v18 = v30;
    }

    v21 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v12, v21))
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v22 = v35[5];
    }

    v11 = v22;
  }

  else
  {
    v11 = v35[5];
  }

  _Block_object_dispose(&v34, 8);

  return v11;
}

void __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found all %ld engaged results", &v12, 0xCu);
  }

  v5 = (*(*(a1 + 48) + 16))();

  v7 = logForSPLogCategoryRecents(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 count];
    v12 = 134217984;
    v13 = v8;
    _os_log_impl(&dword_26B79D000, v7, OS_LOG_TYPE_DEFAULT, "spotlight cache: filtered to %ld engaged results", &v12, 0xCu);
  }

  v9 = [*(a1 + 32) _createRecentsFromEngagedResults:v5 maxCount:*(a1 + 64)];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  dispatch_group_leave(*(a1 + 40));
}

void __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke_71(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found top %ld engaged results", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) _createRecentsFromEngagedResults:v3 maxCount:*(a1 + 56)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_group_leave(*(a1 + 40));
}

- (id)_createRecentsFromEngagedResults:(id)results maxCount:(unint64_t)count
{
  v86 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = resultsCopy;
  v8 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v76;
    do
    {
      v11 = 0;
      do
      {
        if (*v76 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v75 + 1) + 8 * v11);
        v13 = [[SPCachedResult alloc] initWithEngagedResult:v12];
        if (!v13)
        {
          title = logForSPLogCategoryRecents(0);
          if (os_log_type_enabled(title, OS_LOG_TYPE_ERROR))
          {
            [(SPCacheManager *)&v73 _createRecentsFromEngagedResults:v74 maxCount:title];
          }

          goto LABEL_13;
        }

        if ([v12 type] == 36 || objc_msgSend(v12, "type") == 32)
        {
          title = [v12 title];
          v15 = v53;
          goto LABEL_10;
        }

        if ([v12 type] == 37 || objc_msgSend(v12, "type") == 38)
        {
          title = [v12 title];
          v15 = v6;
LABEL_10:
          [v15 setObject:v13 forKey:title];
LABEL_13:

          goto LABEL_14;
        }

        if ([v12 type] == 34 || objc_msgSend(v12, "type") == 16 || objc_msgSend(v12, "type") == 17 || objc_msgSend(v12, "type") == 15 || objc_msgSend(v12, "type") == 31)
        {
          title2 = [(SPCachedResult *)v13 title];
          title = [title2 lowercaseString];

          if (([v7 containsObject:title] & 1) == 0)
          {
            [v5 addObject:v13];
          }

          [v7 addObject:title];
          goto LABEL_13;
        }

        if ([v12 type] == 30)
        {
          v17 = v54;
        }

        else
        {
          v17 = v5;
        }

        [v17 addObject:v13];
LABEL_14:

        ++v11;
      }

      while (v9 != v11);
      v18 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v55 = v54;
  v19 = [v55 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v70;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(v55);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        title3 = [v23 title];
        lowercaseString = [title3 lowercaseString];
        v26 = [v7 containsObject:lowercaseString];

        if ((v26 & 1) == 0)
        {
          [v5 addObject:v23];
        }
      }

      v20 = [v55 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v20);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v27 = v53;
  v28 = [v27 countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v66;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v66 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v65 + 1) + 8 * j);
        v33 = [v6 objectForKey:v32];

        if (!v33)
        {
          v34 = [v27 objectForKeyedSubscript:v32];
          [v5 addObject:v34];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v65 objects:v83 count:16];
    }

    while (v29);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v35 = v6;
  v36 = [v35 countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v62;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [v35 objectForKeyedSubscript:*(*(&v61 + 1) + 8 * k)];
        [v5 addObject:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v61 objects:v82 count:16];
    }

    while (v37);
  }

  v42 = logForSPLogCategoryRecents(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v5 count];
    *buf = 134217984;
    v81 = v43;
    _os_log_impl(&dword_26B79D000, v42, OS_LOG_TYPE_DEFAULT, "spotlight cache: returning %ld engaged completions", buf, 0xCu);
  }

  [v5 sortUsingComparator:&__block_literal_global_74];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v44 = v5;
  v45 = [v44 countByEnumeratingWithState:&v57 objects:v79 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v58;
    while (2)
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(v44);
        }

        recentTopic = [*(*(&v57 + 1) + 8 * m) recentTopic];
        if (recentTopic)
        {
          [v51 addObject:recentTopic];
        }

        if (count != 0x7FFFFFFFFFFFFFFFLL && [v51 count] >= count)
        {

          goto LABEL_72;
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v57 objects:v79 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

LABEL_72:

  return v51;
}

uint64_t __60__SPCacheManager__createRecentsFromEngagedResults_maxCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 engagementTime];
  v6 = [v4 engagementTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)enumerateRecentResultsUsingBlock:(id)block
{
  v108 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v102 = 1;
  session = self->_session;
  if (session && [(PARSession *)session enabledStatus]== 1)
  {
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy_;
    v100 = __Block_byref_object_dispose_;
    v101 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy_;
    v94 = __Block_byref_object_dispose_;
    v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy_;
    v88 = __Block_byref_object_dispose_;
    v89 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy_;
    v82 = __Block_byref_object_dispose_;
    v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy_;
    v76 = __Block_byref_object_dispose_;
    v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy_;
    v70 = __Block_byref_object_dispose_;
    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v9 = logForSPLogCategoryRecents(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B79D000, v9, OS_LOG_TYPE_DEFAULT, "spotlight cache: getting top engaged results", buf, 2u);
    }

    v10 = self->_session;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __51__SPCacheManager_enumerateRecentResultsUsingBlock___block_invoke;
    v58[3] = &unk_279D02690;
    v60 = &v72;
    v61 = &v66;
    v62 = &v84;
    v63 = &v78;
    v64 = &v90;
    v65 = &v96;
    group = v7;
    v59 = group;
    [(PARSession *)v10 topEngagedResultsForInput:&stru_287C3D120 maxAmount:10 completion:v58];
    v11 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(group, v11))
    {
      blockCopy[2](blockCopy, 0, v5, &v102);
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v12 = v73[5];
      v13 = [v12 countByEnumeratingWithState:&v54 objects:v107 count:16];
      if (v13)
      {
        v14 = *v55;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v55 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v54 + 1) + 8 * i);
            v17 = [v85[5] objectForKey:v16];

            if (!v17)
            {
              v18 = [v73[5] objectForKeyedSubscript:v16];
              v19 = [v67[5] objectForKeyedSubscript:v16];

              v20 = [v91[5] count];
              [v91[5] addObject:v18];
              v21 = v97[5];
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
              [v21 setObject:v19 forKey:v22];

              v5 = v19;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v54 objects:v107 count:16];
        }

        while (v13);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v23 = v85[5];
      v24 = [v23 countByEnumeratingWithState:&v50 objects:v106 count:16];
      if (v24)
      {
        v25 = *v51;
        do
        {
          v26 = 0;
          v27 = v5;
          do
          {
            if (*v51 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v50 + 1) + 8 * v26);
            v29 = [v85[5] objectForKeyedSubscript:v28];
            v5 = [v79[5] objectForKeyedSubscript:v28];

            v30 = [v91[5] count];
            [v91[5] addObject:v29];
            v31 = v97[5];
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
            [v31 setObject:v5 forKey:v32];

            ++v26;
            v27 = v5;
          }

          while (v24 != v26);
          v24 = [v23 countByEnumeratingWithState:&v50 objects:v106 count:16];
        }

        while (v24);
      }

      v34 = logForSPLogCategoryRecents(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v97[5] count];
        *buf = 134217984;
        v105 = v35;
        _os_log_impl(&dword_26B79D000, v34, OS_LOG_TYPE_DEFAULT, "spotlight cache: returning %ld engaged completions", buf, 0xCu);
      }

      v36 = [v97[5] keysSortedByValueUsingSelector:sel_compare_];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      reverseObjectEnumerator = [v36 reverseObjectEnumerator];
      v38 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v103 count:16];
      if (v38)
      {
        v39 = *v47;
LABEL_28:
        v40 = 0;
        v41 = v5;
        while (1)
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v42 = *(*(&v46 + 1) + 8 * v40);
          v5 = [v97[5] objectForKeyedSubscript:v42];

          v43 = [v91[5] objectAtIndex:{objc_msgSend(v42, "intValue")}];
          (blockCopy)[2](blockCopy, v43, v5, &v102);
          v44 = v102;

          if (v44)
          {
            break;
          }

          ++v40;
          v41 = v5;
          if (v38 == v40)
          {
            v38 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v103 count:16];
            if (v38)
            {
              goto LABEL_28;
            }

            break;
          }
        }
      }
    }

    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v72, 8);

    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v84, 8);

    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v96, 8);
  }

  else
  {
    blockCopy[2](blockCopy, 0, v5, &v102);
  }
}

void __51__SPCacheManager_enumerateRecentResultsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found %ld engaged results", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [[SPCachedResult alloc] initWithEngagedResult:v10];
        v12 = [(SPCachedResult *)v11 searchResult];

        if (v12)
        {
          if ([v10 type] == 36 || objc_msgSend(v10, "type") == 32)
          {
            v14 = *(*(*(a1 + 40) + 8) + 40);
            v15 = [v10 title];
            [v14 setObject:v12 forKey:v15];

            v16 = *(a1 + 48);
            goto LABEL_12;
          }

          if ([v10 type] == 37 || objc_msgSend(v10, "type") == 38)
          {
            v22 = *(*(*(a1 + 56) + 8) + 40);
            v23 = [v10 title];
            [v22 setObject:v12 forKey:v23];

            v16 = *(a1 + 64);
LABEL_12:
            v17 = *(*(v16 + 8) + 40);
            v18 = MEMORY[0x277CCABB0];
            [v10 freshnessScore];
            v19 = [v18 numberWithDouble:?];
            v20 = [v10 title];
            v21 = v17;
          }

          else
          {
            v28 = [*(*(*(a1 + 72) + 8) + 40) count];
            [*(*(*(a1 + 72) + 8) + 40) addObject:v12];
            v24 = v5;
            v25 = *(*(*(a1 + 80) + 8) + 40);
            v26 = MEMORY[0x277CCABB0];
            [v10 freshnessScore];
            v19 = [v26 numberWithDouble:?];
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
            v21 = v25;
            v5 = v24;
          }

          [v21 setObject:v19 forKey:v20];

          goto LABEL_16;
        }

        v19 = logForSPLogCategoryRecents(v13);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(SPCacheManager *)buf _createRecentsFromEngagedResults:v19 maxCount:?];
        }

LABEL_16:

        ++v9;
      }

      while (v7 != v9);
      v27 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v7 = v27;
    }

    while (v27);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)enumerateRecentCompletionsWithSearchString:(id)string usingBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v8 = logForSPLogCategoryRecents(blockCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B79D000, v8, OS_LOG_TYPE_DEFAULT, "spotlight cache: getting top engaged results", buf, 2u);
  }

  session = self->_session;
  if (session && [(PARSession *)session enabledStatus]== 1)
  {
    v10 = self->_session;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__SPCacheManager_enumerateRecentCompletionsWithSearchString_usingBlock___block_invoke;
    v11[3] = &unk_279D026B8;
    v12 = blockCopy;
    [(PARSession *)v10 topEngagedResultsForInput:stringCopy maxAmount:10 completion:v11];
  }
}

void __72__SPCacheManager_enumerateRecentCompletionsWithSearchString_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found %ld engaged results", buf, 0xCu);
  }

  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if (resultIsSuggestionType([v11 type]))
      {
        v12 = *(a1 + 32);
        v13 = [v11 title];
        v14 = MEMORY[0x277CCABB0];
        [v11 score];
        v15 = [v14 numberWithDouble:?];
        (*(v12 + 16))(v12, v13, v15, [v11 type], &v22);

        ++v8;
        if (v22)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = logForSPLogCategoryRecents(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v8;
    _os_log_impl(&dword_26B79D000, v17, OS_LOG_TYPE_DEFAULT, "spotlight cache: returning %ld engaged completions", buf, 0xCu);
  }
}

- (void)cacheResult:(void *)a1 title:searchString:.cold.1(void *a1)
{
  [a1 type];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26B79D000, v1, v2, "spotlight cache: could not create cached result with result: %d", v3, v4, v5, v6);
}

- (void)cacheSuggestion:type:score:searchString:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_26B79D000, v0, OS_LOG_TYPE_ERROR, "spotlight cache: could not create cached result with suggestion: %d", v1, 8u);
}

- (void)deleteLocalResult:(void *)a1 identifier:bundleIdentifier:protectionClass:.cold.1(void *a1)
{
  [a1 type];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26B79D000, v1, v2, "spotlight cache: could not delete cached result with result: %d", v3, v4, v5, v6);
}

- (void)deleteSuggestion:type:score:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_26B79D000, v0, OS_LOG_TYPE_ERROR, "spotlight cache: could not delete cached result with suggestion: %d", v1, 8u);
}

- (void)_createRecentsFromEngagedResults:(os_log_t)log maxCount:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_26B79D000, log, OS_LOG_TYPE_ERROR, "spotlight cache: could not create search result with engaged result", buf, 2u);
}

@end