@interface CalSpotlightPendingSearch
+ (id)_createSearchQueryWithPredicate:(id)predicate options:(id)options;
+ (id)_pendingSearches;
+ (id)_queue;
+ (id)_resultForSearchableItem:(id)item;
+ (id)_resultsForSearchableItems:(id)items;
- (CalSpotlightPendingSearch)initWithString:(id)string clientBundleID:(id)d completionHandler:(id)handler;
- (CalSpotlightPendingSearch)searchWithString:(id)string;
- (void)_searchEnded;
- (void)_startSearchWithQuery:(id)query;
- (void)cancel;
- (void)searchQuery:(id)query didFailWithError:(id)error;
- (void)searchQuery:(id)query didReturnItems:(id)items;
- (void)searchQuery:(id)query statusChanged:(unint64_t)changed;
@end

@implementation CalSpotlightPendingSearch

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[CalSpotlightPendingSearch _queue];
  }

  v3 = _queue_queue;

  return v3;
}

uint64_t __35__CalSpotlightPendingSearch__queue__block_invoke()
{
  _queue_queue = dispatch_queue_create("com.apple.calendar.foundation.spotlightquerycontroller.internalqueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_createSearchQueryWithPredicate:(id)predicate options:(id)options
{
  optionsCopy = options;
  predicateCopy = predicate;
  v7 = [objc_alloc(EKWeakLinkClass(@"MDSearchQuery" 0xBuLL))];

  return v7;
}

- (CalSpotlightPendingSearch)initWithString:(id)string clientBundleID:(id)d completionHandler:(id)handler
{
  stringCopy = string;
  dCopy = d;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CalSpotlightPendingSearch;
  v11 = [(CalSpotlightPendingSearch *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(CalSpotlightPendingSearch *)v11 setClientBundleID:dCopy];
    v13 = objc_opt_new();
    [(CalSpotlightPendingSearch *)v12 setSearchableItemIdentifiers:v13];

    v14 = objc_opt_new();
    [(CalSpotlightPendingSearch *)v12 setSearchableItems:v14];

    [(CalSpotlightPendingSearch *)v12 setCompletionHandler:handlerCopy];
    [(CalSpotlightPendingSearch *)v12 searchWithString:stringCopy];
  }

  return v12;
}

+ (id)_pendingSearches
{
  v2 = _pendingSearches_pendingSearches;
  if (!_pendingSearches_pendingSearches)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = _pendingSearches_pendingSearches;
    _pendingSearches_pendingSearches = v3;

    v2 = _pendingSearches_pendingSearches;
  }

  return v2;
}

- (void)_startSearchWithQuery:(id)query
{
  queryCopy = query;
  _pendingSearches = [objc_opt_class() _pendingSearches];
  [_pendingSearches addObject:self];

  [(CalSpotlightPendingSearch *)self setQuery:queryCopy];
  [queryCopy start];
}

- (void)_searchEnded
{
  [(CalSpotlightPendingSearch *)self setQuery:0];
  _pendingSearches = [objc_opt_class() _pendingSearches];
  [_pendingSearches removeObject:self];
}

- (CalSpotlightPendingSearch)searchWithString:(id)string
{
  stringCopy = string;
  query = [(CalSpotlightPendingSearch *)self query];

  if (query)
  {
    [CalSpotlightPendingSearch searchWithString:];
  }

  _queue = [objc_opt_class() _queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CalSpotlightPendingSearch_searchWithString___block_invoke;
  v9[3] = &unk_1E7EC6528;
  v10 = stringCopy;
  selfCopy = self;
  v7 = stringCopy;
  dispatch_async(_queue, v9);

  return result;
}

void __46__CalSpotlightPendingSearch_searchWithString___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) length])
  {
    v2 = EKWeakLinkStringConstant("MDSearchQueryOptionFetchAttributes", 0xBuLL);
    v14 = v2;
    v3 = EKWeakLinkStringConstant("MDItemIdentifier", 0xBuLL);
    v13[0] = v3;
    v4 = EKWeakLinkStringConstant("MDItemTitle", 0xBuLL);
    v13[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v15[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v7 = MEMORY[0x1E696AE18];
    v8 = [*MEMORY[0x1E6982D30] identifier];
    v9 = [v7 predicateWithFormat:@"kMDItemContentType == %@ && kMDItemTitle contains[cd] %@", v8, *(a1 + 32)];

    v10 = [objc_opt_class() _createSearchQueryWithPredicate:v9 options:v6];
    v11 = [*(a1 + 40) clientBundleID];
    [v10 setClientBundleID:v11];

    [v10 setDelegate:*(a1 + 40)];
    [*(a1 + 40) _startSearchWithQuery:v10];
  }

  else
  {
    v12 = [*(a1 + 40) completionHandler];
    (*(v12 + 2))(v12, MEMORY[0x1E695E0F0], 0);
  }
}

- (void)cancel
{
  _queue = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CalSpotlightPendingSearch_cancel__block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_sync(_queue, block);
}

void __35__CalSpotlightPendingSearch_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    v3 = [*(a1 + 32) query];
    [v3 cancel];

    v4 = *(a1 + 32);

    [v4 _searchEnded];
  }
}

+ (id)_resultForSearchableItem:(id)item
{
  attributeSet = [item attributeSet];
  v4 = attributeSet;
  if (attributeSet)
  {
    identifier = [attributeSet identifier];
    title = [v4 title];
    v7 = title;
    v8 = 0;
    if (identifier && title)
    {
      v8 = objc_opt_new();
      [v8 setIdentifier:identifier];
      [v8 setTitle:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_resultsForSearchableItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _resultForSearchableItem:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)searchQuery:(id)query didReturnItems:(id)items
{
  queryCopy = query;
  itemsCopy = items;
  _queue = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke;
  block[3] = &unk_1E7EC72B0;
  block[4] = self;
  v12 = queryCopy;
  v13 = itemsCopy;
  v9 = itemsCopy;
  v10 = queryCopy;
  dispatch_async(_queue, block);
}

void __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke_cold_1();
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 attributeSet];
          v11 = [v10 identifier];

          if (v11)
          {
            v12 = [*(a1 + 32) searchableItemIdentifiers];
            v13 = [v12 containsObject:v11];

            if ((v13 & 1) == 0)
            {
              v14 = [*(a1 + 32) searchableItemIdentifiers];
              [v14 addObject:v11];

              v15 = [*(a1 + 32) searchableItems];
              [v15 addObject:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }
}

- (void)searchQuery:(id)query statusChanged:(unint64_t)changed
{
  queryCopy = query;
  _queue = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke;
  block[3] = &unk_1E7EC72D8;
  block[4] = self;
  v10 = queryCopy;
  changedCopy = changed;
  v8 = queryCopy;
  dispatch_async(_queue, block);
}

void __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke_cold_1();
    }

    if (*(a1 + 48) == 3)
    {
      [*(a1 + 32) _searchEnded];
      v4 = objc_opt_class();
      v5 = [*(a1 + 32) searchableItems];
      v6 = [v5 array];
      v7 = [v4 _resultsForSearchableItems:v6];

      v8 = [*(a1 + 32) completionHandler];
      (v8)[2](v8, v7, 0);
    }
  }
}

- (void)searchQuery:(id)query didFailWithError:(id)error
{
  queryCopy = query;
  errorCopy = error;
  _queue = [objc_opt_class() _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke;
  block[3] = &unk_1E7EC72B0;
  block[4] = self;
  v12 = queryCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = queryCopy;
  dispatch_async(_queue, block);
}

void __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) query];

  if (v2)
  {
    [*(a1 + 32) _searchEnded];
    v3 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) completionHandler];
    v4[2](v4, MEMORY[0x1E695E0F0], *(a1 + 48));
  }
}

- (void)searchWithString:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CalSpotlightQueryController.m" lineNumber:110 description:@"searchWithString: called multiple times"];
}

void __56__CalSpotlightPendingSearch_searchQuery_didReturnItems___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [OUTLINED_FUNCTION_1_4(v0) predicate];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_1(&dword_1B990D000, v2, v3, "Spotlight query %@ with predicate %@ did return items: %@", v4, v5, v6, v7);
}

void __55__CalSpotlightPendingSearch_searchQuery_statusChanged___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v3 = [OUTLINED_FUNCTION_1_4(v2) predicate];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v0 + 48)];
  *v11 = 138412802;
  *&v11[4] = v1;
  *&v11[12] = 2112;
  *&v11[14] = v3;
  *&v11[22] = 2112;
  OUTLINED_FUNCTION_3_1(&dword_1B990D000, v5, v6, "Spotlight query %@ with predicate %@ did change status: [%@]", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16], v4);
}

void __58__CalSpotlightPendingSearch_searchQuery_didFailWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v2 = [OUTLINED_FUNCTION_1_4(v1) predicate];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(&dword_1B990D000, v0, OS_LOG_TYPE_ERROR, "Spotlight query %@ with predicate %@ failed with error: %@", v3, 0x20u);
}

@end