@interface ATXSpotlightLayoutSelector
+ (BOOL)_isCommuteMediaSuggestion:(id)suggestion;
+ (BOOL)_isCommuteWildCardSuggestion:(id)suggestion;
+ (id)_commuteWildcardReducer:(id)reducer;
- (ATXSpotlightLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (BOOL)_isValidForReasons:(unint64_t)reasons;
- (double)_adaptedScoreForSuggestion:(id)suggestion;
- (id)_autoShortcutsForBundleId:(id)id provider:(id)provider;
- (id)_clearDuplicateContextsFromSuggestions:(id)suggestions suggestionDict:(id)dict;
- (id)_collectionsWithSuggestions:(id)suggestions;
- (id)_createPOISuggestionWithMUID:(id)d fromHeroSuggestion:(id)suggestion;
- (id)_createTopAppShortcutCollectionsWithSuggestions:(id)suggestions;
- (id)_createTopAppShortcutSuggestions;
- (id)_heroDataReducer:(id)reducer;
- (id)_insertMediaSuggestion:(id)suggestion consumerSubType:(unsigned __int8)type;
- (id)_intervalStringWithCriteria:(id)criteria;
- (id)_poiMUIDFromHero:(id)hero;
- (id)_preferredContextWithContextCode:(id)code contextCriteria:(id)criteria;
- (id)_scoresFlattenForCollections:(id)collections;
- (id)_staticTitleForContextCode:(int64_t)code;
- (id)_suggestionFromAutoShortcutContextualAction:(id)action title:(id)title predictionReasons:(unint64_t)reasons;
- (id)_titleForContextCode:(int64_t)code suggestions:(id)suggestions;
- (id)_titleForParameterizedAutoShortcutContextualAction:(id)action provider:(id)provider;
- (id)_validAutoShortcutContextualActionsForBundleId:(id)id limit:(unint64_t)limit provider:(id)provider;
- (id)nsuaFilteredLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions;
- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions;
- (int64_t)_contextReasonCodeWithPredictionReasons:(unint64_t)reasons;
- (unint64_t)_supportedContextReasons;
- (void)_dedupeSuggestions:(id)suggestions suggestionDict:(id)dict;
- (void)_indexSpotlightActions:(id)actions;
@end

@implementation ATXSpotlightLayoutSelector

- (ATXSpotlightLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = ATXSpotlightLayoutSelector;
  v9 = [(ATXSpotlightLayoutSelector *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deduplicator, deduplicator);
    objc_storeStrong(&v10->_hyperParameters, parameters);
    v11 = objc_opt_new();
    adapter = v10->_adapter;
    v10->_adapter = v11;
  }

  return v10;
}

- (unint64_t)_supportedContextReasons
{
  v14 = *MEMORY[0x277D85DE8];
  _rankedReasonCodes = [(ATXSpotlightLayoutSelector *)self _rankedReasonCodes];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [_rankedReasonCodes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(_rankedReasonCodes);
        }

        v5 |= 1 << [*(*(&v9 + 1) + 8 * i) integerValue];
      }

      v4 = [_rankedReasonCodes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isValidForReasons:(unint64_t)reasons
{
  _supportedContextReasons = [(ATXSpotlightLayoutSelector *)self _supportedContextReasons];
  v5 = _supportedContextReasons & reasons;
  if (v5)
  {
    if ((v5 & (v5 - 1)) == 0)
    {
      return 1;
    }

    v7 = __atxlog_handle_blending(_supportedContextReasons);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightLayoutSelector _isValidForReasons:];
    }
  }

  return 0;
}

- (void)_indexSpotlightActions:(id)actions
{
  v22 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  isIndexingAvailable = [MEMORY[0x277CC34A8] isIndexingAvailable];
  if (isIndexingAvailable)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke;
    v17[3] = &unk_2785A1330;
    v18 = @"com.apple.duetexpertd.spotlightZKW";
    v5 = [actionsCopy _pas_mappedArrayWithTransform:v17];
    v6 = __atxlog_handle_blending(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 count];
      *buf = 134217984;
      v21 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "[Index] %lu items to index", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"com.apple.duetexpertd.spotlightZKW" bundleIdentifier:@"com.apple.shortcuts"];
    v9 = __atxlog_handle_blending(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "indexSpotlightActions: Deleting", buf, 2u);
    }

    v19[0] = @"com.apple.duetexpertd.spotlightZKW";
    v19[1] = @"spotlightZKW";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_125;
    v14[3] = &unk_2785A1358;
    v15 = v5;
    v16 = v8;
    v11 = v8;
    v12 = v5;
    [v11 deleteSearchableItemsWithDomainIdentifiers:v10 completionHandler:v14];

    v13 = v18;
  }

  else
  {
    v13 = __atxlog_handle_blending(isIndexingAvailable);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "[Index] Indexing is not available on this device", buf, 2u);
    }
  }
}

id __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 atxShortcutsActionExecutableObject];
  v5 = [v4 searchableItem];
  v6 = __atxlog_handle_blending([v5 setDomainIdentifier:*(a1 + 32)]);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [v3 uiSpecification];
    v9 = [v8 title];
    v14 = 134218242;
    v15 = [v9 hash];
    v16 = 2112;
    v17 = v5;
    v10 = "[Index] CSSearchableItem from suggestion %lu --> %@";
    v11 = v6;
    v12 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [v3 uiSpecification];
    v9 = [v8 title];
    v14 = 134217984;
    v15 = [v9 hash];
    v10 = "[Index] No search item from suggestion %lu";
    v11 = v6;
    v12 = 12;
  }

  _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);

LABEL_7:

  return v5;
}

void __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_125(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_blending(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_125_cold_1();
    }

LABEL_4:

    goto LABEL_11;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[Index] Deleting finished", &v9, 2u);
  }

  v6 = [*(a1 + 32) count];
  v5 = __atxlog_handle_blending(v6);
  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[Index] No items to index", &v9, 2u);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[Index] Inserting %@", &v9, 0xCu);
  }

  [*(a1 + 40) indexSearchableItems:*(a1 + 32) completionHandler:&__block_literal_global_236];
LABEL_11:
}

void __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_126(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__ATXSpotlightLayoutSelector__indexSpotlightActions___block_invoke_126_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "[Index] Inserting finished", v5, 2u);
  }
}

- (id)nsuaFilteredLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions
{
  typeCopy = type;
  v27[1] = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v7 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector filtered nsua suggestions", buf, 2u);
  }

  v8 = [objc_alloc(MEMORY[0x277D42050]) initWithSuggestionDeduplicator:self->_deduplicator hyperParameters:self->_hyperParameters];
  v9 = [v8 validLayoutsForConsumerSubType:typeCopy rankedSuggestions:suggestionsCopy];
  firstObject = [v9 firstObject];

  if (firstObject)
  {
    allSuggestionsInLayout = [firstObject allSuggestionsInLayout];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __85__ATXSpotlightLayoutSelector_nsuaFilteredLayoutForConsumerSubType_rankedSuggestions___block_invoke;
    v25[3] = &unk_2785996B0;
    v25[4] = self;
    v12 = [allSuggestionsInLayout _pas_filteredArrayWithTest:v25];

    if ([v12 count])
    {
      v13 = [v12 count];
      if (v13 >= 4)
      {
        v14 = 4;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v12 subarrayWithRange:{0, v14}];

      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([v15 count])
      {
        v17 = 0;
        do
        {
          [v16 addObject:&unk_283A57A40];
          ++v17;
        }

        while ([v15 count] > v17);
      }

      nsuaSectionIdentifier = [(ATXSpotlightContextAdapter *)self->_adapter nsuaSectionIdentifier];
      v19 = [objc_alloc(MEMORY[0x277D420B8]) initWithSuggestions:v15 contextTitle:0 sectionIdentifier:nsuaSectionIdentifier];
      v20 = objc_alloc(MEMORY[0x277D420C0]);
      v27[0] = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v23 = [v20 initWithCollections:v21 scores:v16 uuid:uUID];
    }

    else
    {
      v23 = 0;
      v15 = v12;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL __85__ATXSpotlightLayoutSelector_nsuaFilteredLayoutForConsumerSubType_rankedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  if (v5 == 5)
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 uiSpecification];
    LOBYTE(v7) = [v7 _isValidForReasons:{objc_msgSend(v8, "predictionReasons")}];

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v9 = [v3 executableSpecification];
      v6 = [v9 executableType] == 2;
    }
  }

  return v6;
}

- (id)selectedLayoutForConsumerSubType:(unsigned __int8)type rankedSuggestions:(id)suggestions
{
  typeCopy = type;
  v46 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v7 = __atxlog_handle_blending(suggestionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
    *buf = 138543618;
    v43 = v8;
    v44 = 2048;
    v45 = [suggestionsCopy count];
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector asked to provide the selected layout for %{public}@ and %lu rankedSuggestions", buf, 0x16u);
  }

  mEMORY[0x277CEB898] = [MEMORY[0x277CEB898] sharedInstance];
  buf[0] = 0;
  v10 = *MEMORY[0x277CEBD00];
  if (CFPreferencesGetAppBooleanValue(@"zkwShowNSUA", *MEMORY[0x277CEBD00], buf) || (buf[0] = 0, CFPreferencesGetAppBooleanValue(@"zkwShowNSUAApp", v10, buf)) || ([mEMORY[0x277CEB898] nsuaSuggestions] & 1) != 0 || objc_msgSend(mEMORY[0x277CEB898], "showNSUASuggestionsAsAppLaunches"))
  {
    v11 = [(ATXSpotlightLayoutSelector *)self nsuaFilteredLayoutForConsumerSubType:typeCopy rankedSuggestions:suggestionsCopy];
  }

  else
  {
    v13 = [(ATXSpotlightLayoutSelector *)self _insertMediaSuggestion:suggestionsCopy consumerSubType:typeCopy];

    suggestionsCopy = [(ATXSpotlightLayoutSelector *)self _heroDataReducer:v13];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __81__ATXSpotlightLayoutSelector_selectedLayoutForConsumerSubType_rankedSuggestions___block_invoke;
    v40[3] = &unk_278599988;
    v40[4] = self;
    v41 = typeCopy;
    v14 = [suggestionsCopy _pas_filteredArrayWithTest:v40];
    v15 = [objc_opt_class() _commuteWildcardReducer:v14];

    v17 = __atxlog_handle_blending(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v15 count];
      v19 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:typeCopy];
      *buf = 134218242;
      v43 = v18;
      v44 = 2114;
      v45 = v19;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector  %lu rankedSuggestions for %{public}@", buf, 0x16u);
    }

    [(ATXSpotlightLayoutSelector *)self _indexSpotlightActions:v15];
    v20 = [(ATXSpotlightLayoutSelector *)self _collectionsWithSuggestions:v15];
    v21 = objc_autoreleasePoolPush();
    _createTopAppShortcutSuggestions = [(ATXSpotlightLayoutSelector *)self _createTopAppShortcutSuggestions];
    objc_autoreleasePoolPop(v21);
    v23 = [_createTopAppShortcutSuggestions count];
    if (v23 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v23;
    }

    v25 = [_createTopAppShortcutSuggestions subarrayWithRange:{0, v24}];

    v26 = [(ATXSpotlightLayoutSelector *)self _createTopAppShortcutCollectionsWithSuggestions:v25];
    v27 = __atxlog_handle_blending(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v25 count];
      *buf = 134218242;
      v43 = v28;
      v44 = 2112;
      v45 = v25;
      _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] Adding suggestions: %lu, %@", buf, 0x16u);
    }

    v29 = [v26 arrayByAddingObjectsFromArray:v20];
    v30 = [(ATXSpotlightLayoutSelector *)self _scoresFlattenForCollections:v29];
    v31 = objc_alloc(MEMORY[0x277D420C0]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v31 initWithCollections:v29 scores:v30 uuid:uUID];

    v34 = __atxlog_handle_blending(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      [v11 collections];
      v39 = v26;
      v35 = v15;
      v37 = v36 = v20;
      v38 = [v37 count];
      *buf = 134217984;
      v43 = v38;
      _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector %lu collections", buf, 0xCu);

      v20 = v36;
      v15 = v35;
      v26 = v39;
    }
  }

  return v11;
}

uint64_t __81__ATXSpotlightLayoutSelector_selectedLayoutForConsumerSubType_rankedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) uiSupportsSuggestion:v3 consumerSubType:*(a1 + 40)];
  if ((v4 & 1) == 0)
  {
    v9 = __atxlog_handle_blending(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v3;
      v10 = "Filtering out %@ as UI doesn't support suggestion";
LABEL_8:
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, v10, &v12, 0xCu);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 32);
  v6 = [v3 uiSpecification];
  LOBYTE(v5) = [v5 _isValidForReasons:{objc_msgSend(v6, "predictionReasons")}];

  if ((v5 & 1) == 0)
  {
    v9 = __atxlog_handle_blending(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v3;
      v10 = "Filtering out %@ as it isn't valid";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (double)_adaptedScoreForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  uiSpecification = [suggestionCopy uiSpecification];
  predictionReasons = [uiSpecification predictionReasons];

  if ((predictionReasons & 0x800000) != 0)
  {
    *&v9 = 50.0;
LABEL_11:
    v8 = *&v9;
    goto LABEL_12;
  }

  uiSpecification2 = [suggestionCopy uiSpecification];
  v7 = [uiSpecification2 predictionReasons] & 0x1E000000;

  if (v7)
  {
    v8 = 70.0;
    goto LABEL_12;
  }

  uiSpecification3 = [suggestionCopy uiSpecification];
  predictionReasons2 = [uiSpecification3 predictionReasons];

  if ((predictionReasons2 & 0x20000000) != 0 || ([suggestionCopy uiSpecification], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "predictionReasons"), v12, (v13 & 0x40000000) != 0))
  {
    *&v9 = 40.0;
    goto LABEL_11;
  }

  v8 = 30.0;
  if (([objc_opt_class() _isCommuteMediaSuggestion:suggestionCopy] & 1) == 0 && (objc_msgSend(objc_opt_class(), "_isCommuteWildCardSuggestion:", suggestionCopy) & 1) == 0)
  {
    scoreSpecification = [suggestionCopy scoreSpecification];
    [scoreSpecification rawScore];
    v8 = v15;
  }

LABEL_12:

  return v8;
}

- (id)_collectionsWithSuggestions:(id)suggestions
{
  v91 = *MEMORY[0x277D85DE8];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __58__ATXSpotlightLayoutSelector__collectionsWithSuggestions___block_invoke;
  v81[3] = &unk_2785A1380;
  v81[4] = self;
  [suggestions sortedArrayUsingComparator:v81];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v80 = 0u;
  v3 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v78;
    do
    {
      v6 = 0;
      do
      {
        if (*v78 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v77 + 1) + 8 * v6);
        v8 = __atxlog_handle_blending(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          uiSpecification = [v7 uiSpecification];
          title = [uiSpecification title];
          v11 = [title hash];
          scoreSpecification = [v7 scoreSpecification];
          suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];
          [(ATXSpotlightLayoutSelector *)self _adaptedScoreForSuggestion:v7];
          *buf = 134218496;
          v85 = v11;
          v86 = 2048;
          v87 = suggestedConfidenceCategory;
          v88 = 2048;
          v89 = v14;
          _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions rankedAndFilteredSuggestions [%lu] = %ld %f", buf, 0x20u);
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
      v4 = v3;
    }

    while (v3);
  }

  v16 = __atxlog_handle_blending(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [obj count];
    *buf = 134217984;
    v85 = v17;
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions %lu rankedAndFilteredSuggestions", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = __atxlog_handle_blending(dictionary);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [obj count];
    *buf = 134217984;
    v85 = v19;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector  %lu rankedAndFilteredSuggestions", buf, 0xCu);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v62 = obj;
  v20 = [v62 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v74;
    v23 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v62);
        }

        v25 = *(*(&v73 + 1) + 8 * i);
        uiSpecification2 = [v25 uiSpecification];
        v27 = -[ATXSpotlightLayoutSelector _contextReasonCodeWithPredictionReasons:](self, "_contextReasonCodeWithPredictionReasons:", [uiSpecification2 predictionReasons]);

        v29 = __atxlog_handle_blending(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          objb = [v25 uiSpecification];
          title2 = [objb title];
          v31 = v22;
          v32 = v23;
          v33 = [title2 hash];
          uiSpecification3 = [v25 uiSpecification];
          predictionReasons = [uiSpecification3 predictionReasons];
          *buf = 134218496;
          v85 = v33;
          v23 = v32;
          v22 = v31;
          v86 = 2048;
          v87 = v27;
          v88 = 2048;
          v89 = predictionReasons;
          _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector suggestion =[%lu] contextCode found: %ld for reasons %llu", buf, 0x20u);
        }

        v36 = [*(v23 + 2992) numberWithInteger:v27];
        v37 = [dictionary objectForKeyedSubscript:v36];

        if (v37)
        {
          [v37 addObject:v25];
        }

        else
        {
          v37 = [MEMORY[0x277CBEB18] arrayWithObject:v25];
          v38 = [*(v23 + 2992) numberWithInteger:v27];
          [dictionary setObject:v37 forKeyedSubscript:v38];
        }
      }

      v21 = [v62 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v21);
  }

  v39 = [(ATXSpotlightLayoutSelector *)self _clearDuplicateContextsFromSuggestions:v62 suggestionDict:dictionary];

  v61 = v39;
  [(ATXSpotlightLayoutSelector *)self _dedupeSuggestions:v39 suggestionDict:dictionary];
  v63 = objc_opt_new();
  _rankedReasonCodes = [(ATXSpotlightLayoutSelector *)self _rankedReasonCodes];
  v41 = __atxlog_handle_blending(_rankedReasonCodes);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [_rankedReasonCodes componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v85 = v42;
    _os_log_impl(&dword_2263AA000, v41, OS_LOG_TYPE_DEFAULT, "SLS: rankedReasonKeys = %@", buf, 0xCu);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obja = _rankedReasonCodes;
  v43 = [obja countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v70;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v70 != v45)
        {
          objc_enumerationMutation(obja);
        }

        v47 = *(*(&v69 + 1) + 8 * j);
        v48 = [dictionary objectForKeyedSubscript:v47];
        v49 = v48;
        if (v48 && [v48 count])
        {
          v50 = -[ATXSpotlightLayoutSelector _titleForContextCode:suggestions:](self, "_titleForContextCode:suggestions:", [v47 integerValue], v49);
          v51 = __atxlog_handle_blending(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [dictionary objectForKeyedSubscript:v47];
            v53 = [v52 count];
            v54 = [v50 hash];
            *buf = 138412802;
            v85 = v47;
            v86 = 2048;
            v87 = v53;
            v88 = 2048;
            v89 = v54;
            _os_log_impl(&dword_2263AA000, v51, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions reasonCode=%@ count=%lu contextTitle.hash=%lu", buf, 0x20u);
          }

          v55 = -[ATXSpotlightContextAdapter sectionIdentifierForContextCode:](self->_adapter, "sectionIdentifierForContextCode:", [v47 integerValue]);
          v56 = [objc_alloc(MEMORY[0x277D420B8]) initWithSuggestions:v49 contextTitle:v50 sectionIdentifier:v55];
          v57 = __atxlog_handle_blending(v56);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = [v50 hash];
            v59 = [v49 count];
            *buf = 134218498;
            v85 = v58;
            v86 = 2112;
            v87 = v55;
            v88 = 2048;
            v89 = v59;
            _os_log_impl(&dword_2263AA000, v57, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions collection created contextTitle.hash=%lu sectionIdentifier=%@ with %lu suggestions", buf, 0x20u);
          }

          [v63 addObject:v56];
        }
      }

      v44 = [obja countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v44);
  }

  return v63;
}

uint64_t __58__ATXSpotlightLayoutSelector__collectionsWithSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCABB0];
  v8 = [v6 scoreSpecification];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "suggestedConfidenceCategory")}];
  v10 = MEMORY[0x277CCABB0];
  v11 = [v5 scoreSpecification];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "suggestedConfidenceCategory")}];
  v13 = [v9 compare:v12];

  if (!v13)
  {
    v14 = MEMORY[0x277CCABB0];
    [*(a1 + 32) _adaptedScoreForSuggestion:v6];
    v15 = [v14 numberWithDouble:?];
    v16 = MEMORY[0x277CCABB0];
    [*(a1 + 32) _adaptedScoreForSuggestion:v5];
    v17 = [v16 numberWithDouble:?];
    v13 = [v15 compare:v17];
  }

  return v13;
}

- (id)_clearDuplicateContextsFromSuggestions:(id)suggestions suggestionDict:(id)dict
{
  v94 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v58 = [suggestions mutableCopy];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = dictCopy;
  v60 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v60)
  {
    v59 = *v82;
    *&v6 = 134217984;
    v57 = v6;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v82 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v81 + 1) + 8 * i);
        integerValue = [v65 integerValue];
        v9 = 1 << integerValue;
        v10 = __atxlog_handle_blending(integerValue);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v88 = v65;
          *&v88[8] = 1024;
          *v89 = (v9 & 0x700000) != 0;
          *&v89[4] = 1024;
          *&v89[6] = (v9 & 0x380000000) != 0;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "SLS: contextCode = %@ isEventContext= %{BOOL}i, isFlightContext= %{BOOL}i  ", buf, 0x18u);
        }

        if ((v9 & 0x380700000) != 0)
        {
          v61 = i;
          v11 = objc_opt_new();
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v66 = [obj objectForKeyedSubscript:v65];
          v12 = [v66 countByEnumeratingWithState:&v77 objects:v92 count:16];
          v64 = v11;
          v68 = v12;
          if (v12)
          {
            v13 = *v78;
            v63 = *v78;
            do
            {
              v14 = 0;
              do
              {
                if (*v78 != v13)
                {
                  objc_enumerationMutation(v66);
                }

                v15 = *(*(&v77 + 1) + 8 * v14);
                v16 = __atxlog_handle_blending(v12);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  uiSpecification = [v15 uiSpecification];
                  title = [uiSpecification title];
                  v19 = [title hash];
                  *buf = 138412546;
                  *v88 = v65;
                  *&v88[8] = 2048;
                  *v89 = v19;
                  _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions suggestionDict[%@] = [%lu]", buf, 0x16u);
                }

                uiSpecification2 = [v15 uiSpecification];
                v21 = [uiSpecification2 predictionReasons] & 0x700000;

                uiSpecification3 = [v15 uiSpecification];
                v23 = [uiSpecification3 predictionReasons] & 0x380000000;

                atxActionCriteria = [v15 atxActionCriteria];
                uiSpecification4 = [v15 uiSpecification];
                reason = [uiSpecification4 reason];

                v28 = __atxlog_handle_blending(v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = [reason hash];
                  v30 = [(ATXSpotlightLayoutSelector *)self _intervalStringWithCriteria:atxActionCriteria];
                  *buf = 67109890;
                  *v88 = v21 != 0;
                  v11 = v64;
                  *&v88[4] = 1024;
                  *&v88[6] = v23 != 0;
                  *v89 = 2048;
                  *&v89[2] = v29;
                  v90 = 2112;
                  v91 = v30;
                  _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "SLS: isSuggestionEventContext: %{BOOL}i isSuggestionFlightContext: %{BOOL}i  reason.hash=[%lu] criteria[%@]", buf, 0x22u);

                  v13 = v63;
                }

                if ([reason length] && v21 | v23)
                {
                  [v11 setObject:atxActionCriteria forKeyedSubscript:reason];
                }

                ++v14;
              }

              while (v68 != v14);
              v12 = [v66 countByEnumeratingWithState:&v77 objects:v92 count:16];
              v68 = v12;
            }

            while (v12);
          }

          v32 = __atxlog_handle_blending(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v11 count];
            *buf = v57;
            *v88 = v33;
            _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "SLS: _cleanUpCollections %lu contexts", buf, 0xCu);
          }

          if ([v11 count] >= 2)
          {
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v34 = v11;
            v35 = [v34 countByEnumeratingWithState:&v73 objects:v86 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v74;
              do
              {
                v38 = 0;
                do
                {
                  if (*v74 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v73 + 1) + 8 * v38);
                  v40 = __atxlog_handle_blending(v35);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    v41 = [v34 objectForKeyedSubscript:v39];
                    v42 = [(ATXSpotlightLayoutSelector *)self _intervalStringWithCriteria:v41];
                    *buf = 138740227;
                    *v88 = v39;
                    *&v88[8] = 2117;
                    *v89 = v42;
                    _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "SLS: context=[%{sensitive}@] criteria[%{sensitive}@]", buf, 0x16u);
                  }

                  ++v38;
                }

                while (v36 != v38);
                v35 = [v34 countByEnumeratingWithState:&v73 objects:v86 count:16];
                v36 = v35;
              }

              while (v35);
            }

            v43 = [(ATXSpotlightLayoutSelector *)self _preferredContextWithContextCode:v65 contextCriteria:v34];
            v44 = objc_opt_new();
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v45 = [obj objectForKeyedSubscript:v65];
            v46 = [v45 countByEnumeratingWithState:&v69 objects:v85 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v70;
              do
              {
                for (j = 0; j != v47; ++j)
                {
                  if (*v70 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v50 = *(*(&v69 + 1) + 8 * j);
                  uiSpecification5 = [v50 uiSpecification];
                  reason2 = [uiSpecification5 reason];
                  v53 = [v43 isEqualToString:reason2];

                  if ((v53 & 1) == 0)
                  {
                    [v44 addObject:v50];
                  }
                }

                v47 = [v45 countByEnumeratingWithState:&v69 objects:v85 count:16];
              }

              while (v47);
            }

            v54 = [obj objectForKeyedSubscript:v65];
            [v54 removeObjectsInArray:v44];

            [v58 removeObjectsInArray:v44];
            v11 = v64;
          }

          i = v61;
        }
      }

      v60 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v60);
  }

  v55 = [v58 copy];

  return v55;
}

- (id)_preferredContextWithContextCode:(id)code contextCriteria:(id)criteria
{
  v79 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  criteriaCopy = criteria;
  integerValue = [codeCopy integerValue];
  v9 = integerValue;
  if (integerValue > 0x21)
  {
    goto LABEL_41;
  }

  if (((1 << integerValue) & 0x80100000) != 0)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = criteriaCopy;
    v37 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v37)
    {
      selfCopy3 = self;
      v56 = criteriaCopy;
      v57 = codeCopy;
      v59 = 0;
      v12 = 0;
      v38 = *v69;
      v39 = v37;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v69 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v68 + 1) + 8 * i);
          v42 = [obj objectForKeyedSubscript:v41, selfCopy3, v56, v57];
          if (!v12 || ([v59 endDate], (v43 = objc_claimAutoreleasedReturnValue()) != 0) && (v44 = v43, objc_msgSend(v42, "startDate"), v45 = v39, v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "startDate"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v46, "compare:", v47), v47, v46, v39 = v45, v44, v48 == -1))
          {
            v49 = v41;

            v50 = v42;
            v59 = v50;
            v12 = v49;
          }
        }

        v39 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v39);
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  if (((1 << integerValue) & 0x100200000) == 0)
  {
    if (((1 << integerValue) & 0x200400000) != 0)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = criteriaCopy;
      v10 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
      if (v10)
      {
        v11 = v10;
        selfCopy3 = self;
        v56 = criteriaCopy;
        v57 = codeCopy;
        v59 = 0;
        v12 = 0;
        v13 = *v65;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v65 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v64 + 1) + 8 * j);
            v16 = [obj objectForKeyedSubscript:v15, selfCopy3, v56, v57];
            if (!v12 || ([v59 endDate], (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, objc_msgSend(v16, "endDate"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "endDate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "compare:", v20), v20, v19, v18, v21 == 1))
            {
              v22 = v15;

              v23 = v16;
              v59 = v23;
              v12 = v22;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
        }

        while (v11);
LABEL_40:
        criteriaCopy = v56;
        codeCopy = v57;
        self = selfCopy3;
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_41:
    obj = __atxlog_handle_blending(integerValue);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightLayoutSelector _preferredContextWithContextCode:v9 contextCriteria:?];
    }

    goto LABEL_43;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = criteriaCopy;
  v24 = [obj countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v24)
  {
    v25 = v24;
    selfCopy3 = self;
    v56 = criteriaCopy;
    v57 = codeCopy;
    v59 = 0;
    v12 = 0;
    v26 = *v61;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v61 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v60 + 1) + 8 * k);
        v29 = [obj objectForKeyedSubscript:v28, selfCopy3, v56, v57];
        if (!v12 || ([v59 endDate], (v30 = objc_claimAutoreleasedReturnValue()) != 0) && (v31 = v30, objc_msgSend(v29, "endDate"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "endDate"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "compare:", v33), v33, v32, v31, v34 == 1))
        {
          v35 = v28;

          v36 = v29;
          v59 = v36;
          v12 = v35;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v60 objects:v76 count:16];
    }

    while (v25);
    goto LABEL_40;
  }

LABEL_43:
  v59 = 0;
  v12 = 0;
LABEL_44:

  v52 = __atxlog_handle_blending(v51);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [(ATXSpotlightLayoutSelector *)self _intervalStringWithCriteria:v59];
    *buf = 138412546;
    v73 = v12;
    v74 = 2112;
    v75 = v53;
    _os_log_impl(&dword_2263AA000, v52, OS_LOG_TYPE_DEFAULT, "SLS: preferredContext=[%@] preferredCriteria[%@]", buf, 0x16u);
  }

  return v12;
}

- (id)_intervalStringWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v4 = criteriaCopy;
  if (criteriaCopy)
  {
    startDate = [criteriaCopy startDate];
    if (startDate)
    {
      v6 = MEMORY[0x277CCA968];
      startDate2 = [v4 startDate];
      v8 = [v6 localizedStringFromDate:startDate2 dateStyle:0 timeStyle:1];
    }

    else
    {
      v8 = @"no-date";
    }

    endDate = [v4 endDate];
    if (endDate)
    {
      v11 = MEMORY[0x277CCA968];
      endDate2 = [v4 endDate];
      v13 = [v11 localizedStringFromDate:endDate2 dateStyle:0 timeStyle:1];
    }

    else
    {
      v13 = @"no-date";
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v8, v13];
  }

  else
  {
    v9 = @"no-criteria";
  }

  return v9;
}

- (id)_scoresFlattenForCollections:(id)collections
{
  v29 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = collectionsCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        suggestions = [v9 suggestions];
        v11 = [suggestions countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(suggestions);
              }

              [(ATXSpotlightLayoutSelector *)self _adaptedScoreForSuggestion:*(*(&v19 + 1) + 8 * j)];
              v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              [v5 addObject:v15];
            }

            v12 = [suggestions countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)_dedupeSuggestions:(id)suggestions suggestionDict:(id)dict
{
  v87 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  dictCopy = dict;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = suggestionsCopy;
  v7 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v77;
    v61 = *MEMORY[0x277CEB238];
    do
    {
      v10 = 0;
      v62 = v8;
      do
      {
        if (*v77 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v76 + 1) + 8 * v10);
        uiSpecification = [v11 uiSpecification];
        title = [uiSpecification title];

        if ([title length])
        {
          atxActionExecutableObject = [v11 atxActionExecutableObject];
          if ([atxActionExecutableObject actionType] == 6)
          {
            v15 = MEMORY[0x277CCACA8];
            _bundleIdForDisplay = [atxActionExecutableObject _bundleIdForDisplay];
            menuItemPath = [atxActionExecutableObject menuItemPath];
            [menuItemPath componentsJoinedByString:v61];
            v18 = dictionary;
            v20 = v19 = v9;
            v21 = [v15 stringWithFormat:@"%@-%@", _bundleIdForDisplay, v20];

            v9 = v19;
            dictionary = v18;
            v8 = v62;

            title = v21;
          }

          v22 = [dictionary objectForKeyedSubscript:title];
          if (v22)
          {
            v23 = v22;
            [v22 addObject:v11];
          }

          else
          {
            v23 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
            [dictionary setObject:v23 forKeyedSubscript:title];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v8);
  }

  _rankedReasonCodes = [(ATXSpotlightLayoutSelector *)self _rankedReasonCodes];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v24 = dictionary;
  v25 = [v24 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v73;
    v28 = 0x277CCA000uLL;
    v54 = *v73;
    v55 = v24;
    do
    {
      v29 = 0;
      v58 = v26;
      do
      {
        if (*v73 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v72 + 1) + 8 * v29);
        v31 = __atxlog_handle_blending(v25);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v24 objectForKeyedSubscript:v30];
          v33 = [v32 count];
          *buf = 138412546;
          v82 = v30;
          v83 = 2048;
          v84 = v33;
          _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "SLS: _collectionsWithSuggestions dedupSuggestionTable[%@] : %ld", buf, 0x16u);
        }

        v34 = [v24 objectForKeyedSubscript:v30];
        v35 = [v34 count];

        if (v35 >= 2)
        {
          v60 = v29;
          v36 = [v24 objectForKeyedSubscript:v30];
          v37 = [v36 mutableCopy];

          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __64__ATXSpotlightLayoutSelector__dedupeSuggestions_suggestionDict___block_invoke;
          v69[3] = &unk_2785A13A8;
          v69[4] = self;
          v38 = dictCopy;
          v70 = v38;
          v71 = _rankedReasonCodes;
          [v37 sortUsingComparator:v69];
          [v37 removeLastObject];
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = v37;
          v39 = [v63 countByEnumeratingWithState:&v65 objects:v80 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v66;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v66 != v41)
                {
                  objc_enumerationMutation(v63);
                }

                v43 = *(*(&v65 + 1) + 8 * i);
                uiSpecification2 = [v43 uiSpecification];
                v45 = -[ATXSpotlightLayoutSelector _contextReasonCodeWithPredictionReasons:](self, "_contextReasonCodeWithPredictionReasons:", [uiSpecification2 predictionReasons]);

                v47 = __atxlog_handle_blending(v46);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  uiSpecification3 = [v43 uiSpecification];
                  [uiSpecification3 title];
                  v50 = v49 = v28;
                  v51 = [v50 hash];
                  *buf = 134218240;
                  v82 = v51;
                  v83 = 2048;
                  v84 = v45;

                  v28 = v49;
                }

                v52 = [*(v28 + 2992) numberWithInteger:v45];
                v53 = [v38 objectForKeyedSubscript:v52];
                [v53 removeObject:v43];
              }

              v40 = [v63 countByEnumeratingWithState:&v65 objects:v80 count:16];
            }

            while (v40);
          }

          v27 = v54;
          v24 = v55;
          v26 = v58;
          v29 = v60;
        }

        ++v29;
      }

      while (v29 != v26);
      v25 = [v24 countByEnumeratingWithState:&v72 objects:v85 count:16];
      v26 = v25;
    }

    while (v25);
  }
}

uint64_t __64__ATXSpotlightLayoutSelector__dedupeSuggestions_suggestionDict___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [a2 uiSpecification];
  v8 = [v5 _contextReasonCodeWithPredictionReasons:{objc_msgSend(v7, "predictionReasons")}];

  v9 = a1[4];
  v10 = [v6 uiSpecification];

  v11 = [v9 _contextReasonCodeWithPredictionReasons:{objc_msgSend(v10, "predictionReasons")}];
  v12 = a1[5];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [v14 count];

  v16 = a1[5];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v18 = [v16 objectForKeyedSubscript:v17];
  v19 = [v18 count];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  v22 = [v20 compare:v21];

  if (v22)
  {
    return v22;
  }

  v24 = a1[6];
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v26 = [v24 indexOfObject:v25];

  v27 = a1[6];
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v29 = [v27 indexOfObject:v28];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  v32 = [v30 compare:v31];

  return v32;
}

- (id)_createTopAppShortcutSuggestions
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEB400] clientForConsumerType:1];
  v4 = objc_opt_new();
  v5 = [v3 appPredictionsForConsumerSubType:9 blackList:v4 limit:8 runningDiagnostics:0];

  v6 = objc_alloc_init(MEMORY[0x277D23B78]);
  error = [v5 error];

  if (error)
  {
    predictedApps = __atxlog_handle_blending(v8);
    if (os_log_type_enabled(predictedApps, OS_LOG_TYPE_DEFAULT))
    {
      error2 = [v5 error];
      *buf = 138412290;
      v17 = error2;
      _os_log_impl(&dword_2263AA000, predictedApps, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] ATXResponse error: %@", buf, 0xCu);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    predictedApps = [v5 predictedApps];
    v12 = __atxlog_handle_blending(predictedApps);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = predictedApps;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] Query top apps for auto shortcuts: %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__ATXSpotlightLayoutSelector__createTopAppShortcutSuggestions__block_invoke;
    v14[3] = &unk_2785A13D0;
    v14[4] = self;
    v15 = v6;
    v11 = [predictedApps _pas_mappedArrayWithTransform:v14];
  }

  return v11;
}

id __62__ATXSpotlightLayoutSelector__createTopAppShortcutSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) _validAutoShortcutContextualActionsForBundleId:v3 limit:1 provider:*(a1 + 40)];
  objc_autoreleasePoolPop(v4);
  v6 = [v5 firstObject];

  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [*(a1 + 32) _titleForParameterizedAutoShortcutContextualAction:v6 provider:*(a1 + 40)];
    objc_autoreleasePoolPop(v8);
    v10 = [*(a1 + 32) _suggestionFromAutoShortcutContextualAction:v6 title:v9 predictionReasons:0];
    v11 = __atxlog_handle_blending(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 autoShortcut];
      v13 = [v12 localizedAutoShortcutDescription];
      v15 = 138412802;
      v16 = v3;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] Created auto shortcut for bundle: %@ [%@] suggestion: %@", &v15, 0x20u);
    }
  }

  else
  {
    v9 = __atxlog_handle_blending(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "SLS: [AppShortcut] No valid auto shortcuts found for bundle: %@", &v15, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_createTopAppShortcutCollectionsWithSuggestions:(id)suggestions
{
  v9[1] = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  if ([suggestionsCopy count])
  {
    topAutoShortcutSectionIdentifier = [(ATXSpotlightContextAdapter *)self->_adapter topAutoShortcutSectionIdentifier];
    v6 = [objc_alloc(MEMORY[0x277D420B8]) initWithSuggestions:suggestionsCopy contextTitle:0 sectionIdentifier:topAutoShortcutSectionIdentifier];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_titleForContextCode:(int64_t)code suggestions:(id)suggestions
{
  v51 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v7 = stringForATXSuggestionPredictionReasonCode();
  v8 = __atxlog_handle_blending(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v7;
    v47 = 2048;
    codeCopy3 = code;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title requested for %@, code: %lu", buf, 0x16u);
  }

  v9 = [(ATXSpotlightLayoutSelector *)self _hasNilTitleForContextCode:code];
  if (v9)
  {
    v10 = __atxlog_handle_blending(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v46 = v7;
      v47 = 2048;
      codeCopy3 = code;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title is nil for %@, code: %lu", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_35;
  }

  v10 = [(ATXSpotlightLayoutSelector *)self _staticTitleForContextCode:code];
  v12 = __atxlog_handle_blending(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v13)
    {
      *buf = 138412546;
      v46 = v7;
      v47 = 2048;
      codeCopy3 = code;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title dynamic, calculating: %@, code: %lu", buf, 0x16u);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = suggestionsCopy;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      obj = v14;
      v37 = v7;
      v38 = suggestionsCopy;
      v11 = 0;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          v20 = stringForATXSuggestionPredictionReasonCode();
          v21 = __atxlog_handle_blending(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            uiSpecification = [v19 uiSpecification];
            reason = [uiSpecification reason];
            v24 = [reason hash];
            *buf = 138412546;
            v46 = v20;
            v47 = 2048;
            codeCopy3 = v24;
            _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "SLS: reasonKey:%@ suggestion.uiSpecification.reason.hash = %lu", buf, 0x16u);
          }

          if (v11 && ([v19 uiSpecification], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "reason"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v11, "isEqualToString:", v26), v26, v25, (v27 & 1) == 0))
          {
            uiSpecification3 = __atxlog_handle_blending(v28);
            if (os_log_type_enabled(uiSpecification3, OS_LOG_TYPE_FAULT))
            {
              uiSpecification2 = [v19 uiSpecification];
              reason2 = [uiSpecification2 reason];
              *buf = 136446722;
              v46 = "[ATXSpotlightLayoutSelector _titleForContextCode:suggestions:]";
              v47 = 2112;
              codeCopy3 = v11;
              v49 = 2112;
              codeCopy5 = reason2;
              _os_log_fault_impl(&dword_2263AA000, uiSpecification3, OS_LOG_TYPE_FAULT, "SLS: %{public}s %@ and %@ are two different suggestion reason for the same context. The resulting title might be wrong", buf, 0x20u);
            }
          }

          else
          {
            uiSpecification3 = [v19 uiSpecification];
            reason3 = [uiSpecification3 reason];

            v11 = reason3;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v16);

      v7 = v37;
      suggestionsCopy = v38;
      v10 = 0;
      if (v11)
      {
        v34 = __atxlog_handle_blending(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v11 hash];
          *buf = 134218498;
          v46 = v35;
          v47 = 2112;
          codeCopy3 = v37;
          v49 = 2048;
          codeCopy5 = code;
          _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title is dynamic [%lu] for %@, code: %lu", buf, 0x20u);
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
    }

    v34 = __atxlog_handle_blending(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ATXSpotlightLayoutSelector _titleForContextCode:suggestions:];
    }

    v11 = 0;
    goto LABEL_34;
  }

  if (v13)
  {
    *buf = 138412802;
    v46 = v10;
    v47 = 2112;
    codeCopy3 = v7;
    v49 = 2048;
    codeCopy5 = code;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "SLS: ATXSpotlightLayoutSelector Section title is static[%@] for %@, code: %lu", buf, 0x20u);
  }

  v10 = v10;
  v11 = v10;
LABEL_35:

  return v11;
}

- (id)_staticTitleForContextCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = 0;
  switch(code)
  {
    case 19:
      v7 = @"CONTEXT_TITLE_ONGOING_CALL";
      goto LABEL_16;
    case 23:
      v7 = @"CONTEXT_TITLE_NEARBY";
      goto LABEL_16;
    case 25:
      v7 = @"CONTEXT_TITLE_FROM_CLIPBOARD";
      goto LABEL_16;
    case 26:
      v7 = @"CONTEXT_TITLE_TRACKING_NUMBER_FROM_CLIPBOARD";
      goto LABEL_16;
    case 27:
      v7 = @"CONTEXT_TITLE_URL_FROM_CLIPBOARD";
      goto LABEL_16;
    case 28:
      v7 = @"CONTEXT_TITLE_PHONE_NUMBER_FROM_CLIPBOARD";
      goto LABEL_16;
    case 34:
      v7 = @"CONTEXT_TITLE_UPCOMING_MEDIA";
      goto LABEL_16;
    case 36:
      v7 = @"CONTEXT_TITLE_UPCOMING_TO_WORK_COMMUTE";
      goto LABEL_16;
    case 37:
      v7 = @"CONTEXT_TITLE_UPCOMING_FROM_WORK_COMMUTE";
      goto LABEL_16;
    case 38:
      v7 = @"CONTEXT_TITLE_UNUSUAL_EARLY_EVENT";
      goto LABEL_16;
    case 39:
      v6 = @"Debug";
      break;
    case 40:
      v7 = @"CONTEXT_TITLE_GOOD_MORNING";
      goto LABEL_16;
    case 41:
      v7 = @"CONTEXT_TITLE_WIND_DOWN";
      goto LABEL_16;
    case 42:
      v7 = @"CONTEXT_TITLE_SPORTS";
LABEL_16:
      v6 = [v4 localizedStringForKey:v7 value:&stru_2839A6058 table:0];
      break;
    default:
      break;
  }

  return v6;
}

- (int64_t)_contextReasonCodeWithPredictionReasons:(unint64_t)reasons
{
  [(ATXSpotlightLayoutSelector *)self _supportedContextReasons];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (id)_insertMediaSuggestion:(id)suggestion consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v69 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"zkwHideOftenPlayed", *MEMORY[0x277CEBD00], keyExistsAndHasValidFormat);
  if (AppBooleanValue)
  {
    v8 = __atxlog_handle_ui(AppBooleanValue);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Debug: Don't suggest Upcoming media suggestion (Often played at this time)", keyExistsAndHasValidFormat, 2u);
    }

    v60 = suggestionCopy;
  }

  else
  {
    v60 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v55 = suggestionCopy;
    obj = suggestionCopy;
    v59 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v59)
    {
      v61 = 0;
      v9 = 0;
      v58 = *v63;
      do
      {
        v10 = 0;
        do
        {
          if (*v63 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v62 + 1) + 8 * v10);
          v12 = typeCopy;
          v13 = [(ATXUniversalBlendingLayerHyperParametersProtocol *)self->_hyperParameters uiSupportsSuggestion:v11 consumerSubType:typeCopy];
          uiSpecification = [v11 uiSpecification];
          v15 = -[ATXSpotlightLayoutSelector _isValidForReasons:](self, "_isValidForReasons:", [uiSpecification predictionReasons]);

          v16 = MEMORY[0x277D42070];
          clientModelSpecification = [v11 clientModelSpecification];
          clientModelId = [clientModelSpecification clientModelId];
          v19 = [v16 clientModelTypeFromClientModelId:clientModelId];

          v20 = v9 != 0 || (v13 & 1) == 0;
          if (v9 == 0 && (v13 & 1) != 0)
          {
            v9 = 0;
          }

          if (!v20 && !v15)
          {
            atxActionExecutableObject = [v11 atxActionExecutableObject];
            intent = [atxActionExecutableObject intent];
            if (!intent)
            {
              goto LABEL_31;
            }

            if (v19 != 1 && v61 > 2)
            {
              goto LABEL_31;
            }

            v24 = __atxlog_handle_blending(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              uiSpecification2 = [v11 uiSpecification];
              title = [uiSpecification2 title];
              v27 = [title hash];
              intent2 = [atxActionExecutableObject intent];
              v29 = objc_opt_class();
              *keyExistsAndHasValidFormat = 134218242;
              *v67 = v27;
              *&v67[8] = 2112;
              *&v67[10] = v29;
              _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "SLS: Checking suggestion '%lu' for media intent. Intent of class%@", keyExistsAndHasValidFormat, 0x16u);
            }

            intent3 = [atxActionExecutableObject intent];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v33 = __atxlog_handle_blending(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *keyExistsAndHasValidFormat = 67109378;
                *v67 = v61;
                *&v67[4] = 2112;
                *&v67[6] = v11;
                _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "SLS: Found media suggestion [%i]\n%@", keyExistsAndHasValidFormat, 0x12u);
              }

              v34 = [MEMORY[0x277CE89B8] suggestionWithAction:atxActionExecutableObject predictionReasons:0x400000000 localizedReason:0 score:0 dateInterval:20.0];
              executableSpecification = [v11 executableSpecification];
              executableIdentifier = [executableSpecification executableIdentifier];
              v56 = v34;
              executableSpecification2 = [v34 executableSpecification];
              executableIdentifier2 = [executableSpecification2 executableIdentifier];
              v39 = [executableIdentifier isEqualToString:executableIdentifier2];

              if ((v39 & 1) == 0)
              {
                v41 = __atxlog_handle_blending(v40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
                {
                  executableSpecification3 = [v11 executableSpecification];
                  executableIdentifier3 = [executableSpecification3 executableIdentifier];
                  executableSpecification4 = [v56 executableSpecification];
                  executableIdentifier4 = [executableSpecification4 executableIdentifier];
                  *keyExistsAndHasValidFormat = 138412546;
                  *v67 = executableIdentifier3;
                  *&v67[8] = 2112;
                  *&v67[10] = executableIdentifier4;
                  _os_log_fault_impl(&dword_2263AA000, v41, OS_LOG_TYPE_FAULT, "SLS: [Upcoming Media] Replicated suggestion does not have the same exec identifier %@ -> %@", keyExistsAndHasValidFormat, 0x16u);
                }
              }

              routeInfo = [atxActionExecutableObject routeInfo];
              if (routeInfo && (v43 = routeInfo, [atxActionExecutableObject routeInfo], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "isExternalRoute"), v44, v43, v45))
              {
                v47 = __atxlog_handle_blending(v46);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *keyExistsAndHasValidFormat = 0;
                  _os_log_impl(&dword_2263AA000, v47, OS_LOG_TYPE_DEFAULT, "SLS: [Upcoming Media] Media suggestion is external route (Airplay). Skipping suggestion", keyExistsAndHasValidFormat, 2u);
                }

                v9 = 0;
                v48 = v56;
              }

              else
              {
                v9 = atxActionExecutableObject;
                v48 = v56;
                [v60 addObject:v56];
              }
            }

            else
            {
LABEL_31:
              v9 = 0;
            }

            ++v61;
          }

          [v60 addObject:v11];
          ++v10;
          typeCopy = v12;
        }

        while (v59 != v10);
        v53 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
        v59 = v53;
      }

      while (v53);
    }

    else
    {
      v9 = 0;
    }

    suggestionCopy = v55;
  }

  return v60;
}

+ (BOOL)_isCommuteWildCardSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  uiSpecification = [suggestionCopy uiSpecification];
  predictionReasons = [uiSpecification predictionReasons];

  uiSpecification2 = [suggestionCopy uiSpecification];
  predictionReasons2 = [uiSpecification2 predictionReasons];

  v8 = MEMORY[0x277D42070];
  clientModelSpecification = [suggestionCopy clientModelSpecification];

  clientModelId = [clientModelSpecification clientModelId];
  v11 = [v8 clientModelTypeFromClientModelId:clientModelId];

  return v11 == 1 && (predictionReasons & 0x1000000000 | predictionReasons2 & 0x2000000000) != 0;
}

+ (BOOL)_isCommuteMediaSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  uiSpecification = [suggestionCopy uiSpecification];
  predictionReasons = [uiSpecification predictionReasons];

  uiSpecification2 = [suggestionCopy uiSpecification];
  predictionReasons2 = [uiSpecification2 predictionReasons];

  atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];

  intent = [atxActionExecutableObject intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0 && (predictionReasons & 0x1000000000 | predictionReasons2 & 0x2000000000) != 0;
}

+ (id)_commuteWildcardReducer:(id)reducer
{
  v35 = *MEMORY[0x277D85DE8];
  reducerCopy = reducer;
  v28 = objc_opt_new();
  v5 = __atxlog_handle_blending(v28);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "SLS: [Wildcard] considering commute wildcard suggestions", buf, 2u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = reducerCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v26 = 1;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (![self _isCommuteMediaSuggestion:v11])
        {
          v18 = [self _isCommuteWildCardSuggestion:v11];
          if (!v18)
          {
            [v28 addObject:v11];
            continue;
          }

          if (v26 < 1)
          {
            v19 = __atxlog_handle_blending(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v20 = v19;
              v21 = "SLS: [Wildcard] skipping other from anchor";
LABEL_23:
              _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
            }
          }

          else
          {
            v19 = __atxlog_handle_blending([v28 addObject:v11]);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v20 = v19;
              v21 = "SLS: [Wildcard] including wildcard from anchor";
              goto LABEL_23;
            }
          }

          v26 = 0;
          continue;
        }

        atxActionExecutableObject = [v11 atxActionExecutableObject];
        intent = [atxActionExecutableObject intent];
        launchId = [intent launchId];
        v15 = [launchId isEqualToString:@"com.apple.tv"];

        if (!v15)
        {
          if (v9 < 1)
          {
            v22 = __atxlog_handle_blending(v16);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v23 = v22;
              v24 = "SLS: [Wildcard] skipping media for commute";
LABEL_27:
              _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
            }
          }

          else
          {
            v22 = __atxlog_handle_blending([v28 addObject:v11]);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v23 = v22;
              v24 = "SLS: [Wildcard] including media for commute ";
              goto LABEL_27;
            }
          }

          v9 = 0;
          continue;
        }

        v17 = __atxlog_handle_blending(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "SLS: [Wildcard] skipping media video", buf, 2u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  return v28;
}

- (id)_heroDataReducer:(id)reducer
{
  v65 = *MEMORY[0x277D85DE8];
  reducerCopy = reducer;
  v48 = objc_opt_new();
  v49 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277D23B78]);
  v6 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = reducerCopy;
  v51 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v51)
  {
    v9 = 0;
    v10 = *v53;
    *&v8 = 138412290;
    v41 = v8;
    v43 = v7;
    selfCopy = self;
    v46 = v6;
    v47 = v5;
    v45 = *v53;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        uiSpecification = [v12 uiSpecification];
        allowedOnSpotlight = [uiSpecification allowedOnSpotlight];

        if (allowedOnSpotlight)
        {
          v15 = [(ATXSpotlightLayoutSelector *)self _poiMUIDFromHero:v12];
          if (v15)
          {
            v16 = [(ATXSpotlightLayoutSelector *)self _createPOISuggestionWithMUID:v15 fromHeroSuggestion:v12];
            v17 = __atxlog_handle_blending(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              unsignedLongLongValue = [v15 unsignedLongLongValue];
              *buf = 134218498;
              v57 = unsignedLongLongValue;
              v58 = 2112;
              v59 = v16;
              v60 = 2112;
              v61 = v12;
              _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: Created POI [%llu] suggestion: %@, from hero suggestion: %@", buf, 0x20u);
            }

            clientModelSpecification = [v16 clientModelSpecification];
            clientModelId = [clientModelSpecification clientModelId];

            v21 = [v48 objectForKeyedSubscript:clientModelId];

            if (!v21)
            {
              v22 = objc_opt_new();
              [v48 setObject:v22 forKeyedSubscript:clientModelId];
            }

            v23 = [v48 objectForKeyedSubscript:clientModelId];
            [v23 addObject:v16];

            [v6 addObject:v16];
            ++v9;
            [v49 addObject:v12];
          }

          [v6 addObject:v12];
          v50 = v9;
          if (v9 >= 2)
          {
            [v6 removeObjectsInArray:v49];
            v24 = objc_opt_new();

            v49 = v24;
          }

          bundleIdExecutableObject = [v12 bundleIdExecutableObject];
          v26 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:23];
          if (bundleIdExecutableObject)
          {
            clientModelSpecification2 = [v12 clientModelSpecification];
            clientModelId2 = [clientModelSpecification2 clientModelId];
            v29 = [clientModelId2 isEqual:v26];

            if (v29)
            {
              v30 = objc_autoreleasePoolPush();
              v31 = [(ATXSpotlightLayoutSelector *)self _validAutoShortcutContextualActionsForBundleId:bundleIdExecutableObject limit:1 provider:v47];
              objc_autoreleasePoolPop(v30);
              [v31 firstObject];
              v33 = v32 = self;

              if (v33)
              {
                v35 = objc_autoreleasePoolPush();
                v36 = [(ATXSpotlightLayoutSelector *)v32 _titleForParameterizedAutoShortcutContextualAction:v33 provider:v47];
                objc_autoreleasePoolPop(v35);
                v37 = [(ATXSpotlightLayoutSelector *)v32 _suggestionFromAutoShortcutContextualAction:v33 title:v36 predictionReasons:0x800000];
                v38 = __atxlog_handle_blending(v37);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  autoShortcut = [v33 autoShortcut];
                  localizedAutoShortcutDescription = [autoShortcut localizedAutoShortcutDescription];
                  *buf = 138413058;
                  v57 = bundleIdExecutableObject;
                  v58 = 2112;
                  v59 = localizedAutoShortcutDescription;
                  v60 = 2112;
                  v61 = v37;
                  v62 = 2112;
                  v63 = v12;
                  _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: Created auto shortcut for bundle: %@ [%@] suggestion: %@, from hero suggestion: %@", buf, 0x2Au);
                }

                if (v37)
                {
                  [v46 addObject:v37];
                }
              }

              else
              {
                v36 = __atxlog_handle_blending(v34);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v41;
                  v57 = bundleIdExecutableObject;
                  _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: No auto shortcuts found for bundle: %@", buf, 0xCu);
                }
              }

              v7 = v43;

              self = selfCopy;
            }
          }

          v6 = v46;
          v5 = v47;
          v9 = v50;
          v10 = v45;
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v51 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v51);
  }

  return v6;
}

- (id)_poiMUIDFromHero:(id)hero
{
  appClipHeroAppPredictionExecutableObject = [hero appClipHeroAppPredictionExecutableObject];
  v4 = appClipHeroAppPredictionExecutableObject;
  if (!appClipHeroAppPredictionExecutableObject)
  {
    clipMapItemMUID = 0;
    goto LABEL_16;
  }

  poiMuid = [appClipHeroAppPredictionExecutableObject poiMuid];
  clipMapItemMUID = poiMuid;
  if (!poiMuid)
  {
    clipMetadata = [v4 clipMetadata];

    if (clipMetadata)
    {
      clipMetadata2 = [v4 clipMetadata];
      clipMapItemMUID = [clipMetadata2 clipMapItemMUID];

      if (clipMapItemMUID)
      {
        v11 = __atxlog_handle_hero(v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ATXSpotlightLayoutSelector _poiMUIDFromHero:clipMapItemMUID];
        }

LABEL_15:

        goto LABEL_16;
      }

LABEL_12:
      v11 = __atxlog_handle_blending(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightLayoutSelector _poiMUIDFromHero:v11];
      }

      clipMapItemMUID = 0;
      goto LABEL_15;
    }
  }

  v7 = __atxlog_handle_hero(poiMuid);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXSpotlightLayoutSelector _poiMUIDFromHero:clipMapItemMUID];
  }

  if (!clipMapItemMUID)
  {
    goto LABEL_12;
  }

LABEL_16:

  return clipMapItemMUID;
}

- (id)_createPOISuggestionWithMUID:(id)d fromHeroSuggestion:(id)suggestion
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  suggestionCopy = suggestion;
  appClipHeroAppPredictionExecutableObject = [suggestionCopy appClipHeroAppPredictionExecutableObject];
  bundleId = [appClipHeroAppPredictionExecutableObject bundleId];
  v9 = __atxlog_handle_blending(bundleId);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    adamId = [appClipHeroAppPredictionExecutableObject adamId];
    bundleId2 = [appClipHeroAppPredictionExecutableObject bundleId];
    unsignedLongLongValue = [dCopy unsignedLongLongValue];
    clipMetadata = [appClipHeroAppPredictionExecutableObject clipMetadata];
    clipURLHash = [clipMetadata clipURLHash];
    *buf = 134218754;
    v35 = adamId;
    v36 = 2112;
    v37 = bundleId2;
    v38 = 2048;
    v39 = unsignedLongLongValue;
    v40 = 2112;
    v41 = clipURLHash;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "_heroDataReducer: found POI adam: %lu, bundle: %@, muid: %llu, clipURLHash: %@, ", buf, 0x2Au);
  }

  v15 = [objc_alloc(MEMORY[0x277CEB860]) initWithPOIName:bundleId muid:dCopy criteria:0];
  v31 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v32 = dCopy;
  v16 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v31 clientModelVersion:@"1.0" engagementResetPolicy:1];
  v17 = objc_alloc(MEMORY[0x277D42080]);
  actionDescription = [v15 actionDescription];
  actionIdentifier = [v15 actionIdentifier];
  v20 = [v17 initWithExecutableObject:v15 executableDescription:actionDescription executableIdentifier:actionIdentifier suggestionExecutableType:8];

  v21 = [objc_alloc(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout:5];
  v33 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];

  LOWORD(v30) = 1;
  v23 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:0 subtitle:0 predictionReason:0 preferredLayoutConfigs:v22 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v30 shouldClearOnEngagement:0x800000 predictionReasons:?];
  [suggestionCopy scoreSpecification];
  v24 = appClipHeroAppPredictionExecutableObject;
  v26 = v25 = bundleId;

  v27 = [v26 copy];
  v28 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v16 executableSpecification:v20 uiSpecification:v23 scoreSpecification:v27];

  return v28;
}

- (id)_validAutoShortcutContextualActionsForBundleId:(id)id limit:(unint64_t)limit provider:(id)provider
{
  v54 = *MEMORY[0x277D85DE8];
  idCopy = id;
  providerCopy = provider;
  v9 = [MEMORY[0x277CEB868] isAutoShortcutsEnabledForSpotlightForBundleId:idCopy];
  if (v9)
  {
    v37 = providerCopy;
    v10 = [(ATXSpotlightLayoutSelector *)self _autoShortcutsForBundleId:idCopy provider:providerCopy];
    v11 = __atxlog_handle_blending(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412803;
      v49 = idCopy;
      v50 = 2048;
      v51 = [v10 count];
      v52 = 2117;
      v53 = v10;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "SLS: [AutoShortcut] list all for %@ [%lu] %{sensitive}@", buf, 0x20u);
    }

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __92__ATXSpotlightLayoutSelector__validAutoShortcutContextualActionsForBundleId_limit_provider___block_invoke;
    v45[3] = &unk_2785A1420;
    v38 = idCopy;
    v12 = idCopy;
    v46 = v12;
    v36 = v10;
    v13 = [v10 _pas_mappedArrayWithTransform:v45];
    v14 = [v13 _pas_filteredArrayWithTest:&__block_literal_global_237];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
LABEL_6:
      v19 = 0;
      while (1)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v41 + 1) + 8 * v19);
        v21 = MEMORY[0x277CEB868];
        phrase = [v20 phrase];
        signature = [phrase signature];
        v24 = [v21 isAutoShortcutEnabledForSpotlightForBundleId:v12 signature:signature];

        v26 = __atxlog_handle_blending(v25);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
        if (v24)
        {
          if (v27)
          {
            autoShortcut = [v20 autoShortcut];
            *buf = 138739971;
            v49 = autoShortcut;
            _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "SLS: [AutoShortcut] enabled: %{sensitive}@", buf, 0xCu);
          }

          [v15 addObject:v20];
        }

        else
        {
          if (v27)
          {
            autoShortcut2 = [v20 autoShortcut];
            *buf = 138739971;
            v49 = autoShortcut2;
            _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "SLS: [AutoShortcut] disabled: %{sensitive}@", buf, 0xCu);
          }
        }

        if ([v15 count]>= limit)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
          if (v17)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v31 = __atxlog_handle_blending(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v15 count];
      *buf = 138412803;
      v49 = v12;
      v50 = 2048;
      v51 = v32;
      v52 = 2117;
      v53 = v15;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] filtered for %@ [%lu] %{sensitive}@", buf, 0x20u);
    }

    v33 = [v15 copy];
    providerCopy = v37;
    idCopy = v38;
    v34 = v36;
  }

  else
  {
    v34 = __atxlog_handle_blending(v9);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = idCopy;
      _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] Shortcuts setting off for bundle %@", buf, 0xCu);
    }

    v33 = MEMORY[0x277CBEBF8];
  }

  return v33;
}

id __92__ATXSpotlightLayoutSelector__validAutoShortcutContextualActionsForBundleId_limit_provider___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D79DF0];
  v4 = a2;
  v5 = [[v3 alloc] initWithAutoShortcut:v4 bundleIdentifier:*(a1 + 32)];

  return v5;
}

uint64_t __92__ATXSpotlightLayoutSelector__validAutoShortcutContextualActionsForBundleId_limit_provider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D79DD8];
  v3 = [a2 autoShortcut];
  LODWORD(v2) = [v2 isAppShortcutDenyListed:v3 inEnvironment:2];

  return v2 ^ 1;
}

- (id)_autoShortcutsForBundleId:(id)id provider:(id)provider
{
  v33 = *MEMORY[0x277D85DE8];
  idCopy = id;
  providerCopy = provider;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v10 = __atxlog_handle_blending(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = idCopy;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] searching %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__98;
  v31 = __Block_byref_object_dispose__98;
  v32 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v11 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke;
  v20[3] = &unk_2785991D8;
  v12 = idCopy;
  v21 = v12;
  p_buf = &buf;
  v13 = v11;
  v22 = v13;
  [providerCopy autoShortcutsForBundleIdentifier:v12 localeIdentifier:localeIdentifier completion:v20];
  v14 = [MEMORY[0x277D425A0] waitForSemaphore:v13 timeoutSeconds:5.0];
  if (v14 == 1)
  {
    v15 = __atxlog_handle_default(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXSpotlightLayoutSelector _autoShortcutsForBundleId:provider:];
    }
  }

  v16 = __atxlog_handle_blending(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(&buf + 1) + 40);
    *v24 = 138412547;
    v25 = v12;
    v26 = 2117;
    v27 = v17;
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] found for %@, %{sensitive}@", v24, 0x16u);
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v18;
}

void __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke_cold_1(a1, v8, v9);
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_titleForParameterizedAutoShortcutContextualAction:(id)action provider:(id)provider
{
  v37 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  providerCopy = provider;
  phrase = [actionCopy phrase];
  parameterIdentifier = [phrase parameterIdentifier];

  if (parameterIdentifier)
  {
    v32 = parameterIdentifier;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v31 = 0;
    v11 = [providerCopy propertiesForIdentifiers:v10 error:&v31];
    v12 = v31;

    if (v12)
    {
      v14 = __atxlog_handle_blending(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXSpotlightLayoutSelector _titleForParameterizedAutoShortcutContextualAction:actionCopy provider:?];
      }
    }

    else
    {
      if (v11)
      {
        v18 = [v11 objectForKeyedSubscript:parameterIdentifier];
        v14 = v18;
        if (v18)
        {
          value = [v18 value];
          displayRepresentation = [value displayRepresentation];

          title = [displayRepresentation title];

          if (title)
          {
            title2 = [displayRepresentation title];
            atx_efficientLocalizedString = [title2 atx_efficientLocalizedString];
          }

          else
          {
            title2 = __atxlog_handle_blending(v22);
            if (os_log_type_enabled(title2, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier = [actionCopy bundleIdentifier];
              actionIdentifier = [actionCopy actionIdentifier];
              *buf = 138412546;
              v34 = bundleIdentifier;
              v35 = 2112;
              v36 = actionIdentifier;
              _os_log_impl(&dword_2263AA000, title2, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] displayRepresentation or title nil for %@, %@", buf, 0x16u);
            }

            atx_efficientLocalizedString = 0;
          }
        }

        else
        {
          displayRepresentation = __atxlog_handle_blending(0);
          if (os_log_type_enabled(displayRepresentation, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier2 = [actionCopy bundleIdentifier];
            actionIdentifier2 = [actionCopy actionIdentifier];
            *buf = 138412546;
            v34 = bundleIdentifier2;
            v35 = 2112;
            v36 = actionIdentifier2;
            _os_log_impl(&dword_2263AA000, displayRepresentation, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] property nil for %@, %@", buf, 0x16u);
          }

          atx_efficientLocalizedString = 0;
        }

        goto LABEL_23;
      }

      v14 = __atxlog_handle_blending(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier3 = [actionCopy bundleIdentifier];
        actionIdentifier3 = [actionCopy actionIdentifier];
        *buf = 138412546;
        v34 = bundleIdentifier3;
        v35 = 2112;
        v36 = actionIdentifier3;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] all properties nil for %@, %@", buf, 0x16u);
      }
    }

    atx_efficientLocalizedString = 0;
LABEL_23:

    goto LABEL_24;
  }

  v12 = __atxlog_handle_blending(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier4 = [actionCopy bundleIdentifier];
    actionIdentifier4 = [actionCopy actionIdentifier];
    *buf = 138412546;
    v34 = bundleIdentifier4;
    v35 = 2112;
    v36 = actionIdentifier4;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "SLS: [AutoShortcut] not a phrase with parameters, use short title %@, %@", buf, 0x16u);
  }

  atx_efficientLocalizedString = 0;
LABEL_24:

  return atx_efficientLocalizedString;
}

- (id)_suggestionFromAutoShortcutContextualAction:(id)action title:(id)title predictionReasons:(unint64_t)reasons
{
  v27[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  titleCopy = title;
  v9 = [objc_alloc(MEMORY[0x277CEB820]) initWithContextualAction:actionCopy criteria:0];
  if (!titleCopy)
  {
    autoShortcut = [actionCopy autoShortcut];
    localizedShortTitle = [autoShortcut localizedShortTitle];
    v12 = localizedShortTitle;
    if (localizedShortTitle)
    {
      displayString = localizedShortTitle;
    }

    else
    {
      displayString = [actionCopy displayString];
    }

    titleCopy = displayString;
  }

  v14 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v15 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v14 clientModelVersion:@"1.0" engagementResetPolicy:1];
  v16 = objc_alloc(MEMORY[0x277D42080]);
  displayString2 = [actionCopy displayString];
  uniqueIdentifier = [actionCopy uniqueIdentifier];
  v19 = [v16 initWithExecutableObject:v9 executableDescription:displayString2 executableIdentifier:uniqueIdentifier suggestionExecutableType:9];

  v20 = [objc_alloc(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout:5];
  v27[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

  LOWORD(v26) = 1;
  v22 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:titleCopy subtitle:0 predictionReason:0 preferredLayoutConfigs:v21 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v26 shouldClearOnEngagement:reasons predictionReasons:?];
  v23 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:15.0];
  v24 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v15 executableSpecification:v19 uiSpecification:v22 scoreSpecification:v23];

  return v24;
}

- (void)_isValidForReasons:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, v0, OS_LOG_TYPE_FAULT, "SLS: ATXSpotlightLayoutSelector suggestion not valid: More than one Context set for reasons %llu", v1, 0xCu);
}

- (void)_preferredContextWithContextCode:(uint64_t)a1 contextCriteria:.cold.1(uint64_t a1)
{
  v1 = stringForATXSuggestionPredictionReasonCode();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

- (void)_poiMUIDFromHero:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 stringValue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)_poiMUIDFromHero:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 stringValue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void __65__ATXSpotlightLayoutSelector__autoShortcutsForBundleId_provider___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, a2, a3, "SLS: [AutoShortcut] lookup for %@ error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_titleForParameterizedAutoShortcutContextualAction:(void *)a1 provider:.cold.1(void *a1)
{
  v2 = [a1 bundleIdentifier];
  v7 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);
}

@end