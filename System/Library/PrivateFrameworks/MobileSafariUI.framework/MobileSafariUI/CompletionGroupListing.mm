@interface CompletionGroupListing
- (BOOL)deleteHistoryItemAndCheckIfLastInSection:(id)section atIndex:(unint64_t)index;
- (BOOL)deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:(id)empty inSection:(unint64_t)section atIndex:(unint64_t)index;
- (BOOL)isEmpty;
- (BOOL)isSufficientlyComputedForDisplay;
- (BOOL)updateWithQuery:(id)query;
- (CompletionGroup)_groupWithTitle:(void *)title identifier:(void *)identifier completions:(uint64_t)completions maximumCompletions:;
- (CompletionGroupListing)initWithQuery:(id)query titleProvider:(id)provider options:(unint64_t)options;
- (CompletionGroupTitleProviding)completionGroupTitleProvider;
- (CompletionItem)topHit;
- (NSArray)groups;
- (NSArray)topHits;
- (NSSet)topHitAddresses;
- (id)_bookmarksAndHistoryGroup:(uint64_t)group;
- (id)_bookmarksAndHistoryGroupHeaderTitle;
- (id)_filteredURLCompletions;
- (id)_findOnPageGroup;
- (id)_groupByAddingCompletions:(void *)completions toGroup:;
- (id)_groupWithTitle:(void *)title identifier:(void *)identifier completions:;
- (id)_parsecResultsGroupFromResults:(void *)results withIdentifier:;
- (id)_quickWebsiteSearchGroup;
- (id)_searchSuggestionsGroup;
- (id)_suggestedSitesGroup;
- (id)_titleForTabCompletionMatch:(void *)match;
- (id)_titleForTopHits:(void *)hits;
- (id)_topParsecResultGroup;
- (id)groupAtIndex:(unint64_t)index;
- (uint64_t)_hasTopHitDuplicateInResults:(void *)results;
- (uint64_t)_maximumNumberOfSearchSuggestionsToShow;
- (unint64_t)numberOfGroups;
- (void)_bottomParsecResultGroup;
- (void)_buildListIfNeeded;
- (void)_calculatePreviousSearchesWithSearchSuggestionsDictionary:(void *)dictionary filteredURLCompletions:;
- (void)_calculationResultGroup;
- (void)_mergeGroup:(void *)group toListing:;
- (void)_pencilScribbleGroup;
- (void)_switchToTabCompletionGroup;
- (void)_updateIconsForResultsIfNeeded:(void *)needed;
- (void)deleteTopHit:(id)hit atIndex:(unint64_t)index;
- (void)setBottomParsecResults:(id)results;
- (void)setCalculationResultItem:(id)item;
- (void)setFindOnPageCompletionItem:(id)item;
- (void)setLocalTopHits:(id)hits;
- (void)setParsecTopHits:(id)hits;
- (void)setSearchSuggestions:(id)suggestions fromSource:(int64_t)source;
- (void)setSuggestedSites:(id)sites;
- (void)setTabCompletionMatch:(id)match;
- (void)setTopParsecResults:(id)results;
- (void)setURLCompletionMatches:(id)matches;
@end

@implementation CompletionGroupListing

- (CompletionGroupListing)initWithQuery:(id)query titleProvider:(id)provider options:(unint64_t)options
{
  optionsCopy = options;
  queryCopy = query;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = CompletionGroupListing;
  v11 = [(CompletionGroupListing *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_query, query);
    queryString = [(WBSCompletionQuery *)v12->_query queryString];
    safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v15 = [queryString stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];
    v12->_showingRecentSearches = [v15 length] == 0;

    array = [MEMORY[0x277CBEB18] array];
    displayedParsecResults = v12->_displayedParsecResults;
    v12->_displayedParsecResults = array;

    *&v12->_awaitingParsec = 16843009;
    objc_storeWeak(&v12->_completionGroupTitleProvider, providerCopy);
    v12->_isForPrivateBrowsing = (optionsCopy & 2) != 0;
    v12->_databaseResultsSufficientForDisplay = optionsCopy & 1;
    v12->_indexOfSearchSuggestionsGroup = 0x7FFFFFFFFFFFFFFFLL;
    v12->_indexOfTopHitsGroup = 0x7FFFFFFFFFFFFFFFLL;
    v12->_indexOfBookmarksAndHistoryGroup = 0x7FFFFFFFFFFFFFFFLL;
    v12->_needsRebuild = 1;
    v18 = v12;
  }

  return v12;
}

- (BOOL)updateWithQuery:(id)query
{
  v21 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v6 = WBSIsEqual();
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_query, query);
    queryString = [(WBSCompletionQuery *)self->_query queryString];
    safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v9 = [queryString stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];
    self->_showingRecentSearches = [v9 length] == 0;

    if ([(NSArray *)self->_groupListing count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = self->_groupListing;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v16 + 1) + 8 * v14++) setQuery:{queryCopy, v16}];
          }

          while (v12 != v14);
          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }

  return v6 ^ 1;
}

- (void)setURLCompletionMatches:(id)matches
{
  matchesCopy = matches;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [matchesCopy copy];
    URLCompletionMatches = self->_URLCompletionMatches;
    self->_URLCompletionMatches = v4;

    self->_needsRebuild = 1;
  }
}

- (void)setLocalTopHits:(id)hits
{
  hitsCopy = hits;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [hitsCopy copy];
    localTopHits = self->_localTopHits;
    self->_localTopHits = v4;

    self->_needsRebuild = 1;
  }
}

- (void)setParsecTopHits:(id)hits
{
  v37 = *MEMORY[0x277D85DE8];
  hitsCopy = hits;
  if ((WBSIsEqual() & 1) == 0)
  {
    p_parsecTopHits = &self->_parsecTopHits;
    hitsCopy2 = hits;
    v26 = hitsCopy;
    selfCopy = self;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = hitsCopy;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          isSearchEvaluationLoggingEnabled = [MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled];
          v13 = isSearchEvaluationLoggingEnabled;
          v15 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(isSearchEvaluationLoggingEnabled, v14);
          v16 = v15;
          if (v13)
          {
            v17 = v15;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              originalURLString = [v11 originalURLString];
              safari_urlHashesOfComponents = [originalURLString safari_urlHashesOfComponents];
              if (objc_opt_respondsToSelector())
              {
                [v11 query];
              }

              else
              {
                [v11 completedQuery];
              }
              v22 = ;
              *buf = 138543618;
              v33 = safari_urlHashesOfComponents;
              v34 = 2112;
              v35 = v22;
              _os_log_debug_impl(&dword_215819000, v17, OS_LOG_TYPE_DEBUG, "Parsec TopHit <%{public}@> query:%@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v18 = v16;
            originalURLString2 = [v11 originalURLString];
            *buf = 138739971;
            v33 = originalURLString2;
            _os_log_impl(&dword_215819000, v18, OS_LOG_TYPE_INFO, "Parsec TopHit %{sensitive}@", buf, 0xCu);
          }

          ++v10;
        }

        while (v8 != v10);
        v23 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
        v8 = v23;
      }

      while (v23);
    }

    objc_storeStrong(p_parsecTopHits, hitsCopy2);
    [(CompletionGroupListing *)selfCopy _updateIconsForResultsIfNeeded:v6];
    selfCopy->_needsRebuild = 1;
    hitsCopy = v26;
  }
}

- (void)deleteTopHit:(id)hit atIndex:(unint64_t)index
{
  v6 = [(NSArray *)self->_localTopHits mutableCopy];
  if ([(NSArray *)v6 count]> index)
  {
    [(NSArray *)v6 removeObjectAtIndex:index];
  }

  self->_topHitRemoved = 1;
  v7 = [(NSArray *)self->_groupListing mutableCopy];
  if ([(NSArray *)v6 count])
  {
    firstObject = [(NSArray *)v7 firstObject];
    completions = [firstObject completions];
    v12 = [completions mutableCopy];

    [v12 removeObjectAtIndex:index];
    v13 = [(CompletionGroupListing *)self _titleForTopHits:?];
    v14 = [(CompletionGroupListing *)self _groupWithTitle:v13 identifier:@"TopHit" completions:v12];

    [(NSArray *)v7 replaceObjectAtIndex:0 withObject:v14];
  }

  else
  {
    [(NSArray *)v7 removeObjectAtIndex:0];
  }

  groupListing = self->_groupListing;
  self->_groupListing = v7;
  v15 = v7;

  localTopHits = self->_localTopHits;
  self->_localTopHits = v6;
}

- (BOOL)deleteHistoryItemAndCheckIfLastInSection:(id)section atIndex:(unint64_t)index
{
  indexCopy = index;
  v42 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v6 = [(NSArray *)self->_groupListing mutableCopy];
  v7 = [(NSArray *)self->_URLCompletionMatches mutableCopy];
  selfCopy = self;
  v34 = v6;
  v8 = [(NSArray *)v6 objectAtIndexedSubscript:self->_indexOfBookmarksAndHistoryGroup];
  completions = [v8 completions];
  v35 = [completions mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v7;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        originalURLString = [v16 originalURLString];
        originalURLString2 = [sectionCopy originalURLString];
        v19 = [originalURLString isEqualToString:originalURLString2];

        if (v19)
        {
          [array addObject:v16];
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v13);
  }

  [(NSArray *)v11 removeObjectsInArray:array];
  v20 = v35;
  [v35 removeObjectsInArray:array];
  v21 = [v35 count];
  v22 = selfCopy;
  indexOfBookmarksAndHistoryGroup = selfCopy->_indexOfBookmarksAndHistoryGroup;
  if (v21)
  {
    v28 = [(NSArray *)v34 objectAtIndexedSubscript:indexOfBookmarksAndHistoryGroup];
    completions2 = [v28 completions];
    v30 = [completions2 mutableCopy];

    [v30 removeObjectAtIndex:indexCopy];
    _bookmarksAndHistoryGroupHeaderTitle = [(CompletionGroupListing *)selfCopy _bookmarksAndHistoryGroupHeaderTitle];
    v32 = [(CompletionGroupListing *)selfCopy _groupWithTitle:_bookmarksAndHistoryGroupHeaderTitle identifier:@"BookmarksAndHistory" completions:v30];

    v22 = selfCopy;
    [(NSArray *)v34 replaceObjectAtIndex:selfCopy->_indexOfBookmarksAndHistoryGroup withObject:v32];

    v20 = v35;
  }

  else
  {
    [(NSArray *)v34 removeObjectAtIndex:indexOfBookmarksAndHistoryGroup];
  }

  groupListing = v22->_groupListing;
  v22->_groupListing = v34;
  v25 = v34;

  URLCompletionMatches = v22->_URLCompletionMatches;
  v22->_URLCompletionMatches = v11;

  return v21 == 0;
}

- (BOOL)deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:(id)empty inSection:(unint64_t)section atIndex:(unint64_t)index
{
  emptyCopy = empty;
  v9 = [(CompletionGroupListing *)self groupAtIndex:section];
  completions = [v9 completions];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__CompletionGroupListing_deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty_inSection_atIndex___block_invoke;
  v23[3] = &unk_2781DBA68;
  v11 = emptyCopy;
  v24 = v11;
  v12 = [completions safari_filterObjectsUsingBlock:v23];

  v13 = [(NSArray *)self->_groupListing mutableCopy];
  v14 = [v12 count];
  if (v14)
  {
    v17 = [(NSArray *)v13 objectAtIndexedSubscript:section];
    completions2 = [v17 completions];
    v19 = [completions2 mutableCopy];

    [v19 removeObjectAtIndex:index];
    v20 = [(NSArray *)self->_groupListing objectAtIndexedSubscript:section];
    title = [v20 title];
    v22 = [(CompletionGroupListing *)self _groupWithTitle:title identifier:@"SwitchToTabGroup" completions:v19];

    [(NSArray *)v13 replaceObjectAtIndex:section withObject:v22];
  }

  else
  {
    [(NSArray *)v13 removeObjectAtIndex:section];
  }

  groupListing = self->_groupListing;
  self->_groupListing = v13;

  return v14 == 0;
}

uint64_t __96__CompletionGroupListing_deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty_inSection_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 originalURLString];
  v4 = [*(a1 + 32) originalURLString];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

- (void)setTabCompletionMatch:(id)match
{
  matchCopy = match;
  tabUUID = [(WBSBrowserTabCompletionMatch *)self->_tabCompletionMatch tabUUID];
  tabUUID2 = [matchCopy tabUUID];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_tabCompletionMatch, match);
    self->_needsRebuild = 1;
  }
}

- (void)setTopParsecResults:(id)results
{
  resultsCopy = results;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(CompletionGroupListing *)resultsCopy setTopParsecResults:&self->super.isa];
  }
}

- (void)setBottomParsecResults:(id)results
{
  resultsCopy = results;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(CompletionGroupListing *)resultsCopy setTopParsecResults:&self->super.isa];
  }
}

- (void)setSearchSuggestions:(id)suggestions fromSource:(int64_t)source
{
  v18 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_searchSuggestions, suggestions);
    self->_searchSuggestionsSource = source;
    if (source == 2)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = suggestionsCopy;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * v12++) setQuery:{self->_query, v13}];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }

    self->_needsRebuild = 1;
  }
}

- (void)setSuggestedSites:(id)sites
{
  sitesCopy = sites;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [sitesCopy copy];
    suggestedSites = self->_suggestedSites;
    self->_suggestedSites = v4;

    self->_needsRebuild = 1;
  }
}

- (void)setCalculationResultItem:(id)item
{
  itemCopy = item;
  calculationResult = [(CalculationResultCompletionItem *)self->_calculationResultItem calculationResult];
  calculationResult2 = [itemCopy calculationResult];
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_calculationResultItem, item);
    self->_needsRebuild = 1;
  }
}

- (void)setFindOnPageCompletionItem:(id)item
{
  itemCopy = item;
  if (![(FindOnPageCompletionItem *)self->_findOnPageCompletionItem isEquivalentTo:?])
  {
    objc_storeStrong(&self->_findOnPageCompletionItem, item);
    self->_needsRebuild = 1;
  }
}

id __49__CompletionGroupListing__filteredURLCompletions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277D49A08] isLabelPreviousSearchesInCompletionListEnabled])
  {
    v4 = [v3 string];
    v5 = [v4 safari_stringByTrimmingWhitespace];
    v6 = [v5 lowercaseString];

    [*(a1 + 32) setObject:v3 forKeyedSubscript:v6];
  }

  v7 = [v3 string];
  v8 = [v7 safari_stringByTrimmingWhitespace];
  v9 = [v8 lowercaseString];

  return v9;
}

- (BOOL)isSufficientlyComputedForDisplay
{
  if (self->_showingRecentSearches)
  {
    return 1;
  }

  else if (self->_databaseResultsSufficientForDisplay)
  {
    return !self->_awaitingCompletionDatabase;
  }

  else
  {
    v2 = 0;
    if (!self->_awaitingParsec && !self->_awaitingCompletionDatabase)
    {
      return !self->_awaitingTabCompletion;
    }
  }

  return v2;
}

- (CompletionGroup)_groupWithTitle:(void *)title identifier:(void *)identifier completions:(uint64_t)completions maximumCompletions:
{
  v5 = 0;
  if (self && identifier)
  {
    identifierCopy = identifier;
    titleCopy = title;
    v12 = a2;
    v5 = [[CompletionGroup alloc] initWithTitle:v12 groupIdentifier:titleCopy completions:identifierCopy query:*(self + 48) maximumNumberOfCompletions:completions];
  }

  return v5;
}

id __52__CompletionGroupListing__bookmarksAndHistoryGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D28CC8];
  v4 = a2;
  v5 = [[v3 alloc] initWithManagedBookmark:v4 userInput:*(a1 + 32) forQueryID:*(a1 + 40)];

  return v5;
}

- (void)_mergeGroup:(void *)group toListing:
{
  v11 = a2;
  groupCopy = group;
  if (self && v11)
  {
    if ([groupCopy count])
    {
      lastObject = [groupCopy lastObject];
      completions = [lastObject completions];
      completions2 = [v11 completions];
      completions3 = [completions arrayByAddingObjectsFromArray:completions2];

      v10 = [(CompletionGroupListing *)self _groupWithTitle:@"MergedSources" identifier:completions3 completions:0 maximumCompletions:?];
      [groupCopy replaceObjectAtIndex:objc_msgSend(groupCopy withObject:{"count") - 1, v10}];
    }

    else
    {
      completions3 = [v11 completions];
      v10 = [(CompletionGroupListing *)self _groupWithTitle:@"MergedSources" identifier:completions3 completions:0 maximumCompletions:?];
      [groupCopy addObject:v10];
    }
  }
}

uint64_t __44__CompletionGroupListing__buildListIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasBeenSearchedBefore])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 string];
    v6 = [*(*(a1 + 32) + 48) queryString];
    v4 = [v5 isEqualToString:v6] ^ 1;
  }

  return v4;
}

void __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
  {
    v2 = [MEMORY[0x277CCAB68] string];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = a1;
    obj = *(a1 + 32);
    v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v19 = *v27;
      do
      {
        v3 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = v3;
          v4 = *(*(&v26 + 1) + 8 * v3);
          v5 = [v4 title];
          [v2 appendFormat:@"%@: ", v5];

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v6 = [v4 completions];
          v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v23;
            do
            {
              v10 = 0;
              do
              {
                if (*v23 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v22 + 1) + 8 * v10);
                v12 = objc_opt_class();
                if (objc_opt_respondsToSelector())
                {
                  v13 = [v11 uuidString];
                  [v2 appendFormat:@"%@[%@], ", v12, v13];
                }

                else
                {
                  [v2 appendFormat:@"%@[%@], ", v12, &stru_2827BF158];
                }

                ++v10;
              }

              while (v8 != v10);
              v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v8);
          }

          [v2 appendString:@"\n"];
          v3 = v21 + 1;
        }

        while (v21 + 1 != v20);
        v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }

    v16 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2_cold_1(v17, v16, v2);
    }
  }
}

- (id)groupAtIndex:(unint64_t)index
{
  if ([(CompletionGroupListing *)self numberOfGroups]<= index)
  {
    v6 = 0;
  }

  else
  {
    groups = [(CompletionGroupListing *)self groups];
    v6 = [groups objectAtIndexedSubscript:index];
  }

  return v6;
}

- (NSArray)topHits
{
  v3 = [(NSArray *)self->_parsecTopHits count];
  v4 = 80;
  if (!v3)
  {
    v4 = 88;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (CompletionItem)topHit
{
  topHits = [(CompletionGroupListing *)self topHits];
  firstObject = [topHits firstObject];

  return firstObject;
}

- (BOOL)isEmpty
{
  if ([(NSMutableArray *)self->_displayedParsecResults count]|| [(NSArray *)self->_searchSuggestions count])
  {
    return 0;
  }

  _filteredURLCompletions = [(CompletionGroupListing *)self _filteredURLCompletions];
  v3 = [_filteredURLCompletions count] == 0;

  return v3;
}

- (unint64_t)numberOfGroups
{
  groups = [(CompletionGroupListing *)self groups];
  v3 = [groups count];

  return v3;
}

- (NSSet)topHitAddresses
{
  v2 = MEMORY[0x277CBEB98];
  topHits = [(CompletionGroupListing *)self topHits];
  v4 = [topHits safari_mapObjectsUsingBlock:&__block_literal_global_64];
  v5 = [v2 setWithArray:v4];

  return v5;
}

id __41__CompletionGroupListing_topHitAddresses__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 originalURLString];
  v3 = [v2 safari_urlStringForCompletionDeduplication];

  return v3;
}

- (CompletionGroupTitleProviding)completionGroupTitleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_completionGroupTitleProvider);

  return WeakRetained;
}

- (void)_updateIconsForResultsIfNeeded:(void *)needed
{
  v3 = a2;
  if (needed)
  {
    v9 = v3;
    v4 = [v3 count] > 1;
    v3 = v9;
    if (!v4)
    {
      firstObject = [v9 firstObject];
      topHit = [needed topHit];
      sfSearchResultValue = [topHit sfSearchResultValue];
      if (firstObject == sfSearchResultValue)
      {
        v8 = 7;
      }

      else
      {
        v8 = 5;
      }

      [firstObject safari_setCompletionIconForCompactRow:v8];

      v3 = v9;
    }
  }
}

- (id)_titleForTopHits:(void *)hits
{
  if (hits)
  {
    hits = _WBSLocalizedString();
  }

  return hits;
}

- (id)_groupWithTitle:(void *)title identifier:(void *)identifier completions:
{
  v7 = a2;
  titleCopy = title;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (self)
  {
    if ([identifierCopy count])
    {
      self = [(CompletionGroupListing *)self _groupWithTitle:v7 identifier:titleCopy completions:v10 maximumCompletions:5];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)_bookmarksAndHistoryGroupHeaderTitle
{
  if (self)
  {
    self = _WBSLocalizedString();
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_maximumNumberOfSearchSuggestionsToShow
{
  if (result)
  {
    v1 = result;
    if (*(result + 37) == 1)
    {
      return *MEMORY[0x277D4A280];
    }

    v2 = *(result + 36) != 1 || *(result + 96) == 0;
    if ([*(result + 192) numberOfMatches])
    {
      return 5;
    }

    _filteredURLCompletions = [(CompletionGroupListing *)v1 _filteredURLCompletions];
    if ([_filteredURLCompletions count])
    {

      return 5;
    }

    v4 = [*(v1 + 112) count] == 0;

    if (v4 && v2)
    {
      return 10;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

- (id)_filteredURLCompletions
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_9;
  }

  v2 = MEMORY[0x277D4A030];
  searchParameters = [MEMORY[0x277D4A030] searchParameters];
  if (![v2 includeBookmarksAndHistory:searchParameters] || !*(self + 64))
  {

    goto LABEL_9;
  }

  v4 = *(self + 37);

  if (v4)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = [MEMORY[0x277D4A030] filterOutUnlikelyMatchesFromMatches:*(self + 64) forQuery:*(self + 48) rewrittenQuery:*(self + 56)];
  searchParameters2 = [MEMORY[0x277D4A030] searchParameters];
  enableCompletionListHistoryDeduplicationValue = [searchParameters2 enableCompletionListHistoryDeduplicationValue];

  if (enableCompletionListHistoryDeduplicationValue)
  {
    if (*(self + 96))
    {
      v30[0] = *(self + 96);
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v10 = [MEMORY[0x277D4A030] dedupeSameTitleHistoryResults:*(self + 64) withMobile:1 withTophits:*(self + 88) withTabs:v8];

    if ([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled])
    {
      v11 = [MEMORY[0x277D4A030] dedupeSameURLResults:v10 withUniversalSearchResults:*(self + 24)];

      v10 = v11;
    }

    v5 = v10;
  }

  if ([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled])
  {
    v12 = *(self + 136);
    v13 = [v12 count];
    if (*(self + 37))
    {
      v14 = 10;
    }

    else
    {
      v14 = 5;
    }

    if (v13 < v14)
    {
      v14 = [*(self + 136) count];
    }

    v15 = [v12 subarrayWithRange:{0, v14}];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__CompletionGroupListing__filteredURLCompletions__block_invoke;
    v28[3] = &unk_2781DBA90;
    v17 = dictionary;
    v29 = v17;
    v18 = [v15 safari_setByApplyingBlock:v28];
    queryString = [*(self + 48) queryString];

    if (queryString)
    {
      queryString2 = [*(self + 48) queryString];
      safari_stringByTrimmingWhitespace = [queryString2 safari_stringByTrimmingWhitespace];
      lowercaseString = [safari_stringByTrimmingWhitespace lowercaseString];
      v23 = [v18 setByAddingObject:lowercaseString];
    }

    v24 = MEMORY[0x277D4A030];
    mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
    v26 = [mEMORY[0x277CDB8A8] defaultSearchEngineForPrivateBrowsing:*(self + 35)];
    v27 = [v24 dedupeResults:v5 withSearchSuggestionStrings:v18 searchProvider:v26];

    [(CompletionGroupListing *)self _calculatePreviousSearchesWithSearchSuggestionsDictionary:v17 filteredURLCompletions:v27];
    v5 = v27;
  }

LABEL_10:

  return v5;
}

- (id)_titleForTabCompletionMatch:(void *)match
{
  v3 = a2;
  v4 = v3;
  if (match)
  {
    tabGroupTitle = [v3 tabGroupTitle];

    if (tabGroupTitle)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = _WBSLocalizedString();
      tabGroupTitle2 = [v4 tabGroupTitle];
      match = [v6 stringWithFormat:v7, tabGroupTitle2];
    }

    else
    {
      match = _WBSLocalizedString();
    }
  }

  return match;
}

- (void)_calculatePreviousSearchesWithSearchSuggestionsDictionary:(void *)dictionary filteredURLCompletions:
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = a2;
  dictionaryCopy = dictionary;
  selfCopy = self;
  if (self && [MEMORY[0x277D49A08] isLabelPreviousSearchesInCompletionListEnabled])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = *(self + 64);
    v6 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v45;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v44 + 1) + 8 * i);
          if (([dictionaryCopy containsObject:v10] & 1) == 0)
          {
            v11 = dictionaryCopy;
            mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
            v13 = [mEMORY[0x277CDB8A8] defaultSearchEngineForPrivateBrowsing:*(selfCopy + 35)];
            v14 = MEMORY[0x277CBEBC0];
            originalURLString = [v10 originalURLString];
            v16 = [v14 URLWithString:originalURLString];
            v17 = [v13 userVisibleQueryFromSearchURL:v16 allowQueryThatLooksLikeURL:1];

            v18 = [v39 objectForKeyedSubscript:v17];
            if (![v18 hasBeenSearchedBefore] || (objc_msgSend(v18, "lastVisitTimeInterval"), v20 = v19, objc_msgSend(v10, "lastVisitTimeInterval"), v20 <= v21))
            {
              [v18 setHasBeenSearchedBefore:1];
              [v10 lastVisitTimeInterval];
              [v18 setLastVisitTimeInterval:?];
            }

            dictionaryCopy = v11;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v7);
    }

    v22 = +[RecentWebSearchesController sharedController];
    recentWebSearchEntries = [v22 recentWebSearchEntries];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = recentWebSearchEntries;
    v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v40 + 1) + 8 * j);
          searchString = [v29 searchString];
          lowercaseString = [searchString lowercaseString];
          v32 = [v39 objectForKeyedSubscript:lowercaseString];

          date = [v29 date];
          [date timeIntervalSinceReferenceDate];
          v35 = v34;

          if (![v32 hasBeenSearchedBefore] || (objc_msgSend(v32, "lastVisitTimeInterval"), v36 <= v35))
          {
            [v32 setHasBeenSearchedBefore:1];
            [v32 setLastVisitTimeInterval:v35];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v26);
    }
  }
}

- (id)_groupByAddingCompletions:(void *)completions toGroup:
{
  selfCopy = self;
  if (self)
  {
    completionsCopy = completions;
    v6 = a2;
    title = [completionsCopy title];
    identifier = [completionsCopy identifier];
    completions = [completionsCopy completions];
    v10 = [completions arrayByAddingObjectsFromArray:v6];

    maxInitiallyVisibleResults = [completionsCopy maxInitiallyVisibleResults];
    selfCopy = [(CompletionGroupListing *)selfCopy _groupWithTitle:title identifier:identifier completions:v10 maximumCompletions:maxInitiallyVisibleResults];
  }

  return selfCopy;
}

- (id)_bookmarksAndHistoryGroup:(uint64_t)group
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (group)
  {
    v5 = v3;
    if (*(group + 36) == 1 && *(group + 96))
    {
      v24[0] = *(group + 96);
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v7 = [v6 arrayByAddingObjectsFromArray:v5];

      v8 = 6;
      v5 = v7;
    }

    else
    {
      v8 = 5;
    }

    queryString = [*(group + 48) queryString];
    queryID = [*(group + 48) queryID];
    mEMORY[0x277D28CD8] = [MEMORY[0x277D28CD8] sharedController];
    topLevelManagedBookmarkFolder = [mEMORY[0x277D28CD8] topLevelManagedBookmarkFolder];
    v13 = [topLevelManagedBookmarkFolder bookmarksMatchingQueryString:queryString];

    if ([v13 count])
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __52__CompletionGroupListing__bookmarksAndHistoryGroup___block_invoke;
      v21 = &unk_2781DBAB8;
      v22 = queryString;
      v23 = queryID;
      v14 = [v13 safari_mapAndFilterObjectsUsingBlock:&v18];
      v15 = [v5 arrayByAddingObjectsFromArray:{v14, v18, v19, v20, v21}];

      v5 = v15;
    }

    if ([v5 count])
    {
      _bookmarksAndHistoryGroupHeaderTitle = [(CompletionGroupListing *)group _bookmarksAndHistoryGroupHeaderTitle];
      group = [(CompletionGroupListing *)group _groupWithTitle:_bookmarksAndHistoryGroupHeaderTitle identifier:@"BookmarksAndHistory" completions:v5 maximumCompletions:v8];
    }

    else
    {
      group = 0;
    }
  }

  return group;
}

- (void)_switchToTabCompletionGroup
{
  selfCopy = self;
  if (self)
  {
    v2 = self[12];
    if (v2)
    {
      v4 = [(CompletionGroupListing *)self _titleForTabCompletionMatch:v2];
      v9 = selfCopy[12];
      OUTLINED_FUNCTION_2_6();
      v6 = [v5 arrayWithObjects:v9 count:?];
      v7 = OUTLINED_FUNCTION_1_7();
      selfCopy = [(CompletionGroupListing *)v7 _groupWithTitle:v8 identifier:@"SwitchToTab" completions:v6 maximumCompletions:1];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_suggestedSitesGroup
{
  selfCopy = self;
  if (self)
  {
    if ([self[19] count])
    {
      v3 = _WBSLocalizedString();
      v4 = OUTLINED_FUNCTION_1_7();
      selfCopy = [(CompletionGroupListing *)v4 _groupWithTitle:v5 identifier:v6 completions:v7];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)_calculationResultGroup
{
  selfCopy = self;
  if (self)
  {
    v2 = self[22];
    if (v2)
    {
      calculationResult = [v2 calculationResult];
      sectionTitle = [calculationResult sectionTitle];
      v12 = selfCopy[22];
      OUTLINED_FUNCTION_2_6();
      v6 = [v5 arrayWithObjects:v12 count:?];
      v7 = OUTLINED_FUNCTION_0_8();
      selfCopy = [(CompletionGroupListing *)v7 _groupWithTitle:v8 identifier:v9 completions:v10 maximumCompletions:1];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)_pencilScribbleGroup
{
  selfCopy = self;
  if (self)
  {
    if (self[23])
    {
      v5 = self[23];
      OUTLINED_FUNCTION_2_6();
      v3 = [v2 arrayWithObjects:v5 count:?];
      selfCopy = [(CompletionGroupListing *)selfCopy _groupWithTitle:@"PencilScribble" identifier:v3 completions:1 maximumCompletions:?];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_searchSuggestionsGroup
{
  selfCopy = self;
  if (self)
  {
    if ([self[17] count])
    {
      WeakRetained = objc_loadWeakRetained(selfCopy + 25);
      titleForSearchSuggestionsCompletion = [WeakRetained titleForSearchSuggestionsCompletion];
      [(CompletionGroupListing *)selfCopy _maximumNumberOfSearchSuggestionsToShow];
      v5 = OUTLINED_FUNCTION_0_8();
      selfCopy = [(CompletionGroupListing *)v5 _groupWithTitle:v6 identifier:v7 completions:v8 maximumCompletions:v9];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_quickWebsiteSearchGroup
{
  selfCopy = self;
  v11[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (self[15])
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = _WBSLocalizedString();
      searchProvider = [selfCopy[15] searchProvider];
      displayName = [searchProvider displayName];
      v7 = [v3 stringWithFormat:v4, displayName];

      v11[0] = selfCopy[15];
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      v9 = OUTLINED_FUNCTION_1_7();
      selfCopy = [(CompletionGroupListing *)v9 _groupWithTitle:v10 identifier:@"QuickWebsiteSearch" completions:v8];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_topParsecResultGroup
{
  if (self)
  {
    selfCopy = self;
    self = [self[13] count];
    if (self)
    {
      if (([(CompletionGroupListing *)selfCopy _hasTopHitDuplicateInResults:?]& 1) != 0)
      {
        self = 0;
      }

      else
      {
        self = [(CompletionGroupListing *)selfCopy _parsecResultsGroupFromResults:@"TopPegasusResults" withIdentifier:?];
      }
    }

    v1 = vars8;
  }

  return self;
}

- (uint64_t)_hasTopHitDuplicateInResults:(void *)results
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (results && ([results topHits], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    topHits = [results topHits];
    firstObject = [topHits firstObject];

    originalURLString = [firstObject originalURLString];
    v9 = [originalURLString length];

    if (v9)
    {
      v12 = MEMORY[0x277CCACE0];
      originalURLString2 = [firstObject originalURLString];
      v14 = [v12 componentsWithString:originalURLString2];
      host = [v14 host];

      if ([host length])
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = v3;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
          v35 = v3;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v36 + 1) + 8 * i);
              userVisibleURLString = [firstObject userVisibleURLString];
              userVisibleURLString2 = [v21 userVisibleURLString];
              v24 = [userVisibleURLString isEqualToString:userVisibleURLString2];

              if ((v24 & 1) == 0)
              {
                originalURLString3 = [v21 originalURLString];
                v26 = [originalURLString3 rangeOfString:host];

                if (v26 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }

                if (v26)
                {
                  v27 = MEMORY[0x277CCACE0];
                  originalURLString4 = [v21 originalURLString];
                  v29 = [v27 componentsWithString:originalURLString4];
                  host2 = [v29 host];
                  v31 = [host2 isEqualToString:host];

                  if ((v31 & 1) == 0)
                  {
                    continue;
                  }
                }
              }

              v32 = 1;
              v3 = v35;
              goto LABEL_24;
            }

            v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
            v32 = 0;
            v3 = v35;
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v32 = 0;
        }

LABEL_24:
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v33 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v10, v11);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_215819000, v33, OS_LOG_TYPE_ERROR, "Primary TopHit originalURLString is nil.", buf, 2u);
      }

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)_parsecResultsGroupFromResults:(void *)results withIdentifier:
{
  v5 = a2;
  resultsCopy = results;
  if (self)
  {
    if ([v5 count])
    {
      firstObject = [v5 firstObject];
      sectionHeader = [firstObject sectionHeader];
      self = [(CompletionGroupListing *)self _groupWithTitle:sectionHeader identifier:resultsCopy completions:v5 maximumCompletions:5];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (void)_bottomParsecResultGroup
{
  if (self)
  {
    self = [(CompletionGroupListing *)self _parsecResultsGroupFromResults:@"BottomPegasusResults" withIdentifier:?];
    v1 = vars8;
  }

  return self;
}

- (id)_findOnPageGroup
{
  selfCopy = self;
  if (self)
  {
    if (self[24])
    {
      WeakRetained = objc_loadWeakRetained(self + 25);
      v3 = [WeakRetained titleForFindOnPageCompletion:selfCopy[24]];
      v11 = selfCopy[24];
      OUTLINED_FUNCTION_2_6();
      v5 = [v4 arrayWithObjects:v11 count:?];
      v6 = OUTLINED_FUNCTION_0_8();
      selfCopy = [(CompletionGroupListing *)v6 _groupWithTitle:v7 identifier:v8 completions:v9 maximumCompletions:1];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)_buildListIfNeeded
{
  v113 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    if ((!*(self + 16) || *(self + 8) == 1) && (*(self + 34) & 1) == 0)
    {
      isSearchEvaluationLoggingEnabled = [MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled];
      if (isSearchEvaluationLoggingEnabled)
      {
        v4 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(isSearchEvaluationLoggingEnabled, v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_215819000, v4, OS_LOG_TYPE_DEBUG, "Rebuilding completion list.", &buf, 2u);
        }
      }

      *(selfCopy + 144) = 0x7FFFFFFFFFFFFFFFLL;
      *(selfCopy + 72) = 0x7FFFFFFFFFFFFFFFLL;
      *(selfCopy + 168) = 0x7FFFFFFFFFFFFFFFLL;
      *(selfCopy + 8) = 0;
      array = [MEMORY[0x277CBEB18] array];
      topHits = [selfCopy topHits];
      _topParsecResultGroup = [(CompletionGroupListing *)selfCopy _topParsecResultGroup];
      v91 = _topParsecResultGroup;
      if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
      {
        string = [MEMORY[0x277CCAB68] string];
        _topParsecResultGroup2 = [(CompletionGroupListing *)selfCopy _topParsecResultGroup];
        completions = [_topParsecResultGroup2 completions];

        v19 = OUTLINED_FUNCTION_4_2(v11, v12, v13, v14, v15, v16, v17, v18, v81, v83, v85, array, topHits, selfCopy, _topParsecResultGroup, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, 0, 0, 0, 0, 0, 0, 0, 0, buf, *(&buf + 1), v112);
        if (v19)
        {
          v20 = v19;
          v21 = *v105;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v105 != v21)
              {
                objc_enumerationMutation(completions);
              }

              v23 = *(v104 + 8 * i);
              uuidString = [v23 uuidString];
              v25 = [v23 url];
              absoluteString = [v25 absoluteString];
              safari_urlHashesOfComponents = [absoluteString safari_urlHashesOfComponents];
              [string appendFormat:@" %@ <%@>, ", uuidString, safari_urlHashesOfComponents];
            }

            v20 = OUTLINED_FUNCTION_4_2(v28, v29, v30, v31, v32, v33, v34, v35, v82, v84, v86, v87, v88, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, buf, *(&buf + 1), v112);
          }

          while (v20);
        }

        v38 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v36, v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = string;
          _os_log_debug_impl(&dword_215819000, v38, OS_LOG_TYPE_DEBUG, "Pegasus' Results in top parsec result group: [%{public}@]", &buf, 0xCu);
        }

        topHits = v88;
        selfCopy = v89;
        _topParsecResultGroup = v91;
        array = v87;
      }

      _switchToTabCompletionGroup = [(CompletionGroupListing *)selfCopy _switchToTabCompletionGroup];
      _suggestedSitesGroup = [(CompletionGroupListing *)selfCopy _suggestedSitesGroup];
      if ([topHits count])
      {
        v44 = -[CompletionGroupListing _titleForTopHits:](selfCopy, [topHits count]);
        v45 = OUTLINED_FUNCTION_1_7();
        v48 = [(CompletionGroupListing *)v45 _groupWithTitle:v46 identifier:v47 completions:topHits];

        if (_suggestedSitesGroup)
        {
          completions2 = [_suggestedSitesGroup completions];
          v50 = OUTLINED_FUNCTION_1_7();
          [(CompletionGroupListing *)v50 _groupByAddingCompletions:v51 toGroup:v48];
          v52 = array;
          v54 = v53 = topHits;

          v48 = v54;
          topHits = v53;
          array = v52;
        }

        [(CompletionGroupListing *)selfCopy _mergeGroup:v48 toListing:array];
        *(selfCopy + 72) = [array count] - 1;
        [(CompletionGroupListing *)selfCopy _mergeGroup:_topParsecResultGroup toListing:array];
      }

      else
      {
        _pencilScribbleGroup = [(CompletionGroupListing *)selfCopy _pencilScribbleGroup];
        v42 = OUTLINED_FUNCTION_1_7();
        [(CompletionGroupListing *)v42 _mergeGroup:v43 toListing:array];

        [(CompletionGroupListing *)selfCopy _mergeGroup:_topParsecResultGroup toListing:array];
        [(CompletionGroupListing *)selfCopy _mergeGroup:_suggestedSitesGroup toListing:array];
      }

      _calculationResultGroup = [(CompletionGroupListing *)selfCopy _calculationResultGroup];
      [(CompletionGroupListing *)selfCopy _mergeGroup:_calculationResultGroup toListing:array];
      if (([*(selfCopy + 96) isLessRelevant] & 1) != 0 || _topParsecResultGroup)
      {
        *(selfCopy + 36) = 1;
      }

      else
      {
        v56 = [*(selfCopy + 80) count];
        *(selfCopy + 36) = v56 != 0;
        if (!v56)
        {
          [(CompletionGroupListing *)selfCopy _mergeGroup:_switchToTabCompletionGroup toListing:array];
        }
      }

      v90 = _switchToTabCompletionGroup;
      _quickWebsiteSearchGroup = [(CompletionGroupListing *)selfCopy _quickWebsiteSearchGroup];
      v58 = OUTLINED_FUNCTION_1_7();
      [(CompletionGroupListing *)v58 _mergeGroup:v59 toListing:array];

      _filteredURLCompletions = [(CompletionGroupListing *)selfCopy _filteredURLCompletions];
      if ([MEMORY[0x277D49A08] isLabelPreviousSearchesInCompletionListEnabled])
      {
        v61 = array;
        _maximumNumberOfSearchSuggestionsToShow = [(CompletionGroupListing *)selfCopy _maximumNumberOfSearchSuggestionsToShow];
        v63 = topHits;
        if (_maximumNumberOfSearchSuggestionsToShow >= [*(selfCopy + 136) count])
        {
          _maximumNumberOfSearchSuggestionsToShow2 = [*(selfCopy + 136) count];
        }

        else
        {
          _maximumNumberOfSearchSuggestionsToShow2 = [(CompletionGroupListing *)selfCopy _maximumNumberOfSearchSuggestionsToShow];
        }

        v65 = _maximumNumberOfSearchSuggestionsToShow2;
        v66 = [*(selfCopy + 136) subarrayWithRange:{0, _maximumNumberOfSearchSuggestionsToShow2}];
        v98 = MEMORY[0x277D85DD0];
        v99 = 3221225472;
        v100 = __44__CompletionGroupListing__buildListIfNeeded__block_invoke;
        v101 = &unk_2781DBAE0;
        v102 = selfCopy;
        v67 = [v66 safari_partionedArrayUsingCondition:&v98];

        v68 = [*(selfCopy + 136) subarrayWithRange:{v65, objc_msgSend(*(selfCopy + 136), "count") - v65}];
        v69 = [v67 arrayByAddingObjectsFromArray:v68];
        v70 = *(selfCopy + 136);
        *(selfCopy + 136) = v69;

        topHits = v63;
        array = v61;
      }

      _searchSuggestionsGroup = [(CompletionGroupListing *)selfCopy _searchSuggestionsGroup];
      if (_searchSuggestionsGroup)
      {
        [array addObject:_searchSuggestionsGroup];
        *(selfCopy + 144) = [array count] - 1;
      }

      v72 = objc_alloc_init(MEMORY[0x277D49B60]);
      v92 = MEMORY[0x277D85DD0];
      v93 = 3221225472;
      v94 = __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2;
      v95 = &unk_2781D4C88;
      v73 = array;
      v96 = v73;
      v97 = selfCopy;
      [v72 setHandler:&v92];
      if (*(selfCopy + 39) == 1 && *(selfCopy + 128) <= 1)
      {
        v74 = [v73 copy];
        v75 = *(selfCopy + 16);
        *(selfCopy + 16) = v74;
      }

      else
      {
        _bottomParsecResultGroup = [(CompletionGroupListing *)selfCopy _bottomParsecResultGroup];
        [v73 safari_addObjectUnlessNil:_bottomParsecResultGroup];

        if (![v73 count])
        {
          goto LABEL_41;
        }

        v77 = [(CompletionGroupListing *)selfCopy _bookmarksAndHistoryGroup:_filteredURLCompletions];
        v75 = v77;
        if (_searchSuggestionsGroup)
        {
          if (v77)
          {
            [v73 addObject:v77];
            *(selfCopy + 168) = [v73 count] - 1;
          }
        }

        _findOnPageGroup = [(CompletionGroupListing *)selfCopy _findOnPageGroup];
        [v73 safari_addObjectUnlessNil:_findOnPageGroup];

        v79 = [v73 copy];
        v80 = *(selfCopy + 16);
        *(selfCopy + 16) = v79;
      }

LABEL_41:
    }
  }
}

- (NSArray)groups
{
  [(CompletionGroupListing *)self _buildListIfNeeded];
  v3 = [(NSArray *)self->_groupListing copy];

  return v3;
}

- (void)setTopParsecResults:(id *)a3 .cold.1(void *a1, void **a2, id *a3)
{
  v6 = [a1 copy];
  v7 = *a2;
  *a2 = v6;

  [(CompletionGroupListing *)a3 _updateIconsForResultsIfNeeded:a1];
  [a3[3] addObjectsFromArray:a1];
  OUTLINED_FUNCTION_3_3();
}

void __44__CompletionGroupListing__buildListIfNeeded__block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 40) + 48);
  v5 = a2;
  v6 = [v4 queryString];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_debug_impl(&dword_215819000, v5, OS_LOG_TYPE_DEBUG, "Built Completion List for query %@: %@", &v7, 0x16u);
}

@end