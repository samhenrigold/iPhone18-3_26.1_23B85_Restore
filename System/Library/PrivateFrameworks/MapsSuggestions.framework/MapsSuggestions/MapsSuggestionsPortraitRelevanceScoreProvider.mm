@interface MapsSuggestionsPortraitRelevanceScoreProvider
- (MapsSuggestionsPortraitRelevanceScoreProvider)initWithPortrait:(id)portrait;
- (NSString)uniqueName;
- (char)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion;
- (id).cxx_construct;
- (uint64_t)_searchForName:(uint64_t)name;
- (void)_fetchStringsFromPortrait;
- (void)preLoad;
@end

@implementation MapsSuggestionsPortraitRelevanceScoreProvider

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsPortraitRelevanceScoreProvider)initWithPortrait:(id)portrait
{
  portraitCopy = portrait;
  v26.receiver = self;
  v26.super_class = MapsSuggestionsPortraitRelevanceScoreProvider;
  v6 = [(MapsSuggestionsPortraitRelevanceScoreProvider *)&v26 init];
  if (v6)
  {
    GEOConfigGetDouble();
    v8 = MapsSuggestionsNowWithOffset(-v7);
    fetchEntriesFromDate = v6->_fetchEntriesFromDate;
    v6->_fetchEntriesFromDate = v8;

    portraitData = v6->_portraitData;
    v6->_portraitData = MEMORY[0x1E695E0F0];

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v24, @"MapsSuggestionsPortraitRelevanceScoreProviderQueue", v11);
    v12 = v24;
    v24 = 0;
    innerQueue = v6->_queue._innerQueue;
    v6->_queue._innerQueue = v12;

    v14 = v25;
    v25 = 0;
    name = v6->_queue._name;
    v6->_queue._name = v14;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    currentLocale = v6->_currentLocale;
    v6->_currentLocale = currentLocale;

    v18 = [(NSLocale *)v6->_currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
    languageCode = v6->_languageCode;
    v6->_languageCode = v18;

    mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    countryCode = [mEMORY[0x1E69A1CD8] countryCode];
    currentCountryCode = v6->_currentCountryCode;
    v6->_currentCountryCode = countryCode;

    objc_storeStrong(&v6->_portrait, portrait);
  }

  return v6;
}

- (char)relevanceScoreForNames:(id)names addresses:(id)addresses mapItems:(id)items completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  addressesCopy = addresses;
  completionCopy = completion;
  if (MapsSuggestionsLoggingIsVerbose(completionCopy, v12))
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v30 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (!completionCopy)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
      v31 = 1024;
      v32 = 81;
      v33 = 2082;
      v34 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
      v35 = 2082;
      v36 = "nil == (completion)";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. nil completion", buf, 0x26u);
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
        v31 = 1024;
        v32 = 83;
        v33 = 2082;
        v34 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
        v35 = 2082;
        v36 = "[addresses isKindOfClass:[NSMutableArray class]]";
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for addresses results in undefined behaviour", buf, 0x26u);
      }

      goto LABEL_25;
    }

    if (!+[MapsSuggestionsSiri isEnabled])
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using Siri Portrait", buf, 2u);
      }

      goto LABEL_25;
    }

    v15 = [namesCopy copy];

    v16 = [addressesCopy copy];
    if (v16)
    {
      v17 = [v15 count];
      if (v17 != [v16 count])
      {
        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
          v31 = 1024;
          v32 = 96;
          v33 = 2082;
          v34 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
          v35 = 2082;
          v36 = "[names count] != [addresses count]";
          _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Inconsistent array counts for name and address", buf, 0x26u);
        }

        goto LABEL_33;
      }
    }

    else if (!v15)
    {
      namesCopy = GEOFindOrCreateLog();
      if (os_log_type_enabled(namesCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
        v31 = 1024;
        v32 = 98;
        v33 = 2082;
        v34 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
        v35 = 2082;
        v36 = "(nil == names) && (nil == addresses)";
        _os_log_impl(&dword_1C5126000, namesCopy, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. names and addresses can't both be nil", buf, 0x26u);
      }

      goto LABEL_26;
    }

    v21 = [v15 count];
    if (v21)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __102__MapsSuggestionsPortraitRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke;
      v23[3] = &unk_1E8203C10;
      v28 = v21;
      v24 = v15;
      selfCopy = self;
      v26 = v16;
      v27 = completionCopy;
      v22 = v16;
      namesCopy = v15;
      MSg::Queue::async<MapsSuggestionsPortraitRelevanceScoreProvider>(&self->_queue, self, v23);

      v19 = 1;
      goto LABEL_27;
    }

    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "0 names passed", buf, 2u);
    }

LABEL_33:

    v19 = 0;
    namesCopy = v15;
    goto LABEL_27;
  }

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
    v31 = 1024;
    v32 = 82;
    v33 = 2082;
    v34 = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]";
    v35 = 2082;
    v36 = "[names isKindOfClass:[NSMutableArray class]]";
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Passing a mutable array for names results in undefined behaviour", buf, 0x26u);
  }

LABEL_25:

LABEL_26:
  v19 = 0;
LABEL_27:

  return v19;
}

void __102__MapsSuggestionsPortraitRelevanceScoreProvider_relevanceScoreForNames_addresses_mapItems_completion___block_invoke(void *a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v46 = a2;
  v42 = objc_alloc_init(MapsSuggestionsRelevanceScore);
  v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a1[8]];
  v2 = -1;
  while (++v2 < a1[8])
  {
    [v45 addObject:v42];
  }

  v3 = [v46[2] count];
  if (!v3)
  {
    goto LABEL_48;
  }

  if (MapsSuggestionsLoggingIsVerbose(v3, v4))
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "User Portrait Data:", buf, 2u);
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = v46[2];
  IsVerbose = [v6 countByEnumeratingWithState:&v55 objects:v67 count:16];
  v9 = IsVerbose;
  if (IsVerbose)
  {
    v10 = *v56;
    do
    {
      v11 = 0;
      do
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        IsVerbose = MapsSuggestionsLoggingIsVerbose(IsVerbose, v8);
        if (IsVerbose)
        {
          v13 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v12 name];
            v15 = [v12 lastInteractionTime];
            *buf = 138412546;
            v60 = v14;
            v61 = 2112;
            *v62 = v15;
            _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "%@, %@\n", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      IsVerbose = [v6 countByEnumeratingWithState:&v55 objects:v67 count:16];
      v9 = IsVerbose;
    }

    while (IsVerbose);
  }

  v16 = a1[4];
  if (v16)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (v18)
    {
      v19 = 0;
      v20 = *v52;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [(MapsSuggestionsPortraitRelevanceScoreProvider *)v46 _searchForName:?];
          if (v22 <= 0x7FFFFFFFFFFFFFFELL)
          {
            v23 = [[MapsSuggestionsRelevanceScore alloc] initWithConfidence:MapsSuggestionsConfidenceDefinitelyTrue()];
            v24 = [*(a1[5] + 16) objectAtIndexedSubscript:v22];
            v25 = [v24 lastInteractionTime];
            [(MapsSuggestionsRelevanceScore *)v23 setLastInteractionTime:v25];

            [v45 setObject:v23 atIndexedSubscript:v19];
          }

          ++v19;
        }

        v18 = [v17 countByEnumeratingWithState:&v51 objects:v66 count:16];
      }

      while (v18);
    }
  }

  v26 = a1[6];
  if (v26)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v26;
    v27 = [obj countByEnumeratingWithState:&v47 objects:v65 count:16];
    if (v27)
    {
      v28 = 0;
      v29 = *v48;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v48 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = [objc_alloc(MEMORY[0x1E69A1B40]) initWithCNPostalAddress:*(*(&v47 + 1) + 8 * j) language:v46[6] country:v46[7] phoneticLocale:v46[6]];
          v32 = [v31 shortAddress];
          if (MapsSuggestionsLoggingIsVerbose(v32, v33))
          {
            v34 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v60 = v32;
              _os_log_impl(&dword_1C5126000, v34, OS_LOG_TYPE_DEBUG, "Converted Address is %@", buf, 0xCu);
            }
          }

          v35 = [v45 objectAtIndexedSubscript:v28];
          [v35 confidence];
          if (v36 < MapsSuggestionsConfidenceDefinitelyTrue())
          {
            v37 = [(MapsSuggestionsPortraitRelevanceScoreProvider *)a1[5] _searchForName:v32];
            if (v37 <= 0x7FFFFFFFFFFFFFFELL)
            {
              v38 = [[MapsSuggestionsRelevanceScore alloc] initWithConfidence:MapsSuggestionsConfidenceDefinitelyTrue()];
              v39 = [*(a1[5] + 16) objectAtIndexedSubscript:v37];
              v40 = [v39 lastInteractionTime];
              [(MapsSuggestionsRelevanceScore *)v38 setLastInteractionTime:v40];

              [v45 setObject:v38 atIndexedSubscript:v28];
            }
          }

          ++v28;
        }

        v27 = [obj countByEnumeratingWithState:&v47 objects:v65 count:16];
      }

      while (v27);
    }
  }

  if ([v45 count] != a1[8])
  {
    v41 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitRelevanceScoreProvider.mm";
      v61 = 1024;
      *v62 = 166;
      *&v62[4] = 2082;
      *&v62[6] = "[MapsSuggestionsPortraitRelevanceScoreProvider relevanceScoreForNames:addresses:mapItems:completion:]_block_invoke";
      v63 = 2082;
      v64 = "[confidences count] != count";
      _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Return count must be same as input count!", buf, 0x26u);
    }
  }

  else
  {
LABEL_48:
    (*(a1[7] + 16))();
  }
}

- (uint64_t)_searchForName:(uint64_t)name
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!name)
  {
    v10 = 0;
    goto LABEL_24;
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (null == v3)
  {
    v5 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v15 = "Search String null";
LABEL_20:
    v16 = v5;
    v17 = 2;
    goto LABEL_21;
  }

  if (![*(name + 16) count])
  {
    v5 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v15 = "No portrait data";
    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(name + 16);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v21;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        name = [*(*(&v20 + 1) + 8 * v9) name];
        v12 = [name caseInsensitiveCompare:v3] == 0;

        if (v12)
        {
          v18 = GEOFindOrCreateLog();
          [(MapsSuggestionsPortraitRelevanceScoreProvider *)v18 _searchForName:v3];
          goto LABEL_23;
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (!MapsSuggestionsLoggingIsVerbose(v13, v14))
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_24;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v3;
    v15 = "String %@ was not found in Portrait";
    v16 = v5;
    v17 = 12;
LABEL_21:
    _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
  }

LABEL_22:
  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:

LABEL_24:
  return v10;
}

- (void)preLoad
{
  v6 = *MEMORY[0x1E69E9840];
  if (MapsSuggestionsLoggingIsVerbose(self, a2))
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315138;
      v5 = "[MapsSuggestionsPortraitRelevanceScoreProvider preLoad]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v4, 0xCu);
    }
  }

  [(MapsSuggestionsPortraitRelevanceScoreProvider *)self _fetchStringsFromPortrait];
}

void __74__MapsSuggestionsPortraitRelevanceScoreProvider__fetchStringsFromPortrait__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4[8] fetchNamedEntitiesFromDate:v4[1]];
  v3 = v4[2];
  v4[2] = v2;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)_fetchStringsFromPortrait
{
  if (self)
  {
    if (+[MapsSuggestionsSiri isEnabled])
    {

      MSg::Queue::async<MapsSuggestionsPortraitRelevanceScoreProvider>(self + 3, self, &__block_literal_global_42);
    }

    else
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using Siri Portrait", v3, 2u);
      }
    }
  }
}

- (void)_searchForName:(NSObject *)a1 .cold.1(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "String %@ was found in Portrait. Setting High Confidence", &v4, 0xCu);
  }
}

@end