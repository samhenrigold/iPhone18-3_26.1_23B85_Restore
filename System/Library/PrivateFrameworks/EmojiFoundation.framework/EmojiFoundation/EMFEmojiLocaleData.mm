@interface EMFEmojiLocaleData
+ (EMFEmojiLocaleData)emojiLocaleDataWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)data;
+ (EMFEmojiLocaleData)emojiLocaleDataWithLocaleIdentifier:(id)identifier;
- (EMFAnchoredSearchManager)anchoredSearchManager;
- (EMFEmojiLocaleData)initWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)data;
- (EMFEmojiLocaleData)initWithLocaleIdentifier:(id)identifier;
- (EMFEmojiSearchEngine)searchEngine;
- (NSArray)emojiTokens;
- (id)description;
- (id)emojiTokensForOptions:(unint64_t)options presentationStyle:(int)style;
- (id)emojiTokensForText:(id)text phoneticReading:(id)reading options:(unint64_t)options searchType:(int)type includePrefixMatches:(BOOL)matches;
- (void)dealloc;
- (void)enumerateAnchoredReplacementCandidatesForContext:(id)context withOptions:(unsigned int)options usingBlock:(id)block;
- (void)enumerateSearchResultsInText:(id)text range:(_NSRange)range options:(unint64_t)options searchType:(int)type usingBlock:(id)block;
- (void)preheatSearchEngine;
- (void)searchEngine;
@end

@implementation EMFEmojiLocaleData

- (void)dealloc
{
  localeDataRef = self->_localeDataRef;
  if (localeDataRef)
  {
    CFRelease(localeDataRef);
  }

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = 0;
  self->_localeDataRef = 0;

  v5.receiver = self;
  v5.super_class = EMFEmojiLocaleData;
  [(EMFEmojiLocaleData *)&v5 dealloc];
}

+ (EMFEmojiLocaleData)emojiLocaleDataWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)data
{
  v3 = [[self alloc] initWithCEMEmojiLocaleData:data];

  return v3;
}

- (EMFEmojiLocaleData)initWithCEMEmojiLocaleData:(__EmojiLocaleDataWrapper *)data
{
  if (data)
  {
    v8.receiver = self;
    v8.super_class = EMFEmojiLocaleData;
    v4 = [(EMFEmojiLocaleData *)&v8 init];
    if (v4)
    {
      v5 = [CEMEmojiLocaleDataGetLocaleIdentifier() copy];
      localeIdentifier = v4->_localeIdentifier;
      v4->_localeIdentifier = v5;

      v4->_localeDataRef = CFRetain(data);
      v4->_didTryLoadingSearchEngine = 0;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

+ (EMFEmojiLocaleData)emojiLocaleDataWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithLocaleIdentifier:identifierCopy];

  return v5;
}

- (EMFEmojiLocaleData)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = EMFEmojiLocaleData;
  v5 = [(EMFEmojiLocaleData *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v5->_localeDataRef = CEMCreateEmojiLocaleData();
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; locale = %@", self->_localeIdentifier];

  return v3;
}

- (NSArray)emojiTokens
{
  v2 = CEMEmojiLocaleDataCopyCommonEmojiTokens();
  v3 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:v2];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (void)enumerateSearchResultsInText:(id)text range:(_NSRange)range options:(unint64_t)options searchType:(int)type usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    textCopy = text;
    [(EMFEmojiLocaleData *)self cfCompareFlagsFromNSOptions:options];
    v12 = blockCopy;
    CEMEmojiLocaleDataEnumerateSearchResultsInStringWithBlock();
  }
}

void __87__EMFEmojiLocaleData_enumerateSearchResultsInText_range_options_searchType_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:a2];
  (*(*(a1 + 32) + 16))();
}

- (id)emojiTokensForText:(id)text phoneticReading:(id)reading options:(unint64_t)options searchType:(int)type includePrefixMatches:(BOOL)matches
{
  v31 = *MEMORY[0x1E69E9840];
  textCopy = text;
  readingCopy = reading;
  searchEngine = [(EMFEmojiLocaleData *)self searchEngine];

  if (searchEngine)
  {
    searchEngine2 = [(EMFEmojiLocaleData *)self searchEngine];
    v14 = [searchEngine2 performStringQuery:textCopy];

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v25 = readingCopy;
      v19 = 0;
      v20 = *v27;
      do
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v19 = [EMFEmojiToken emojiTokenWithString:*(*(&v26 + 1) + 8 * v21) localeData:self];

          [v15 addObject:v19];
          ++v21;
          v22 = v19;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);

      readingCopy = v25;
    }
  }

  else
  {
    [(EMFEmojiLocaleData *)self cfCompareFlagsFromNSOptions:options];
    EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
    v15 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:EmojiTokensForString];
    if (EmojiTokensForString)
    {
      CFRelease(EmojiTokensForString);
    }
  }

  return v15;
}

- (id)emojiTokensForOptions:(unint64_t)options presentationStyle:(int)style
{
  optionsCopy = options;
  v6 = CEMCopyEmojiTokens();
  v7 = [EMFEmojiToken emojiTokensForCEMEmojiTokens:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  if ((optionsCopy & 4) != 0)
  {
    v8 = [v7 mutableCopy];
    v9 = [EMFEmojiCategory categoryWithIdentifier:@"EMFEmojiCategoryFlags"];
    v10 = [v9 emojiTokensForLocaleData:self];
    [v8 removeObjectsInArray:v10];

    v7 = v8;
  }

  return v7;
}

- (EMFEmojiSearchEngine)searchEngine
{
  v28 = *MEMORY[0x1E69E9840];
  searchEngine = self->_searchEngine;
  if (!searchEngine)
  {
    if (self->_didTryLoadingSearchEngine)
    {
      searchEngine = 0;
    }

    else
    {
      v4 = emf_signpost_get_log(0);
      v5 = os_signpost_id_generate(v4);

      v7 = emf_signpost_get_log(v6);
      v8 = v7;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        LOWORD(v26) = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF04E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "LoadSearchEngine", &unk_1AF0BC4C3, &v26, 2u);
      }

      p_localeIdentifier = &self->_localeIdentifier;
      localeIdentifier = self->_localeIdentifier;
      self->_didTryLoadingSearchEngine = 1;
      v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:localeIdentifier];
      v12 = [EMFEmojiSearchEngine isLocaleSupported:v11];
      if (v12)
      {
        v13 = [[EMFEmojiSearchEngine alloc] initWithLocale:v11];
      }

      else
      {
        v14 = emf_logging_get_default_log(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *p_localeIdentifier;
          v26 = 138412290;
          v27 = v15;
          _os_log_impl(&dword_1AF04E000, v14, OS_LOG_TYPE_INFO, "CoreEmoji disabled search engine for locale '%@'; not loading search engine resources", &v26, 0xCu);
        }

        v13 = 0;
      }

      v16 = self->_searchEngine;
      self->_searchEngine = v13;

      v17 = self->_searchEngine;
      v19 = emf_logging_get_default_log(v18);
      v20 = v19;
      if (v17)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [(EMFEmojiLocaleData *)&self->_localeIdentifier searchEngine];
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = *p_localeIdentifier;
        v26 = 138412290;
        v27 = v21;
        _os_log_impl(&dword_1AF04E000, v20, OS_LOG_TYPE_INFO, "Emoji search engine could not be loaded for locale '%@'", &v26, 0xCu);
      }

      v23 = emf_signpost_get_log(v22);
      v24 = v23;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        LOWORD(v26) = 0;
        _os_signpost_emit_with_name_impl(&dword_1AF04E000, v24, OS_SIGNPOST_INTERVAL_END, v5, "LoadSearchEngine", &unk_1AF0BC4C3, &v26, 2u);
      }

      searchEngine = self->_searchEngine;
    }
  }

  return searchEngine;
}

- (void)preheatSearchEngine
{
  searchEngine = [(EMFEmojiLocaleData *)self searchEngine];
  searchEngine2 = [(EMFEmojiLocaleData *)self searchEngine];
  [searchEngine2 preheat];
}

- (EMFAnchoredSearchManager)anchoredSearchManager
{
  anchoredSearchManager = self->_anchoredSearchManager;
  if (!anchoredSearchManager)
  {
    v4 = [[EMFAnchoredSearchManager alloc] initWithLocaleData:self];
    v5 = self->_anchoredSearchManager;
    self->_anchoredSearchManager = v4;

    anchoredSearchManager = self->_anchoredSearchManager;
  }

  return anchoredSearchManager;
}

- (void)enumerateAnchoredReplacementCandidatesForContext:(id)context withOptions:(unsigned int)options usingBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  anchoredSearchManager = [(EMFEmojiLocaleData *)self anchoredSearchManager];
  [anchoredSearchManager enumerateAnchoredReplacementCandidatesForContext:contextCopy withOptions:options usingBlock:blockCopy];
}

- (void)searchEngine
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_DEBUG, "Loaded emoji search engine for locale '%@'", &v3, 0xCu);
}

@end