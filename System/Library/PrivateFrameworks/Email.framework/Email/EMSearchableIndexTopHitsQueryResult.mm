@interface EMSearchableIndexTopHitsQueryResult
+ (id)log;
- (EMSearchableIndexTopHitsQueryResult)initWithTopHitSearchQuery:(id)query foundItems:(id)items foundMatchingHintsByPersistentID:(id)d;
- (NSArray)searchableItemIdentifiers;
- (NSDictionary)mailRankingSignalsByPersistentID;
- (int64_t)rankingIndexForConversationID:(id)d;
- (int64_t)rankingIndexForMessageLibraryID:(id)d;
- (void)userDidInteractWithConversationID:(id)d;
- (void)userDidInteractWithLibraryIdentifier:(id)identifier;
@end

@implementation EMSearchableIndexTopHitsQueryResult

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EMSearchableIndexTopHitsQueryResult_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_37 != -1)
  {
    dispatch_once(&log_onceToken_37, block);
  }

  v2 = log_log_37;

  return v2;
}

void __42__EMSearchableIndexTopHitsQueryResult_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_37;
  log_log_37 = v1;
}

- (EMSearchableIndexTopHitsQueryResult)initWithTopHitSearchQuery:(id)query foundItems:(id)items foundMatchingHintsByPersistentID:(id)d
{
  queryCopy = query;
  itemsCopy = items;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = EMSearchableIndexTopHitsQueryResult;
  v12 = [(EMSearchableIndexTopHitsQueryResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topHitSearchQuery, query);
    v14 = [itemsCopy copy];
    foundItems = v13->_foundItems;
    v13->_foundItems = v14;

    v16 = [dCopy copy];
    foundMatchingHintsByPersistentID = v13->_foundMatchingHintsByPersistentID;
    v13->_foundMatchingHintsByPersistentID = v16;
  }

  return v13;
}

- (NSArray)searchableItemIdentifiers
{
  v33 = *MEMORY[0x1E69E9840];
  searchableItemIdentifiers = self->_searchableItemIdentifiers;
  if (!searchableItemIdentifiers)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    selfCopy = self;
    foundItems = [(EMSearchableIndexTopHitsQueryResult *)self foundItems];
    v8 = [foundItems countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v8)
    {
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(foundItems);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          firstObject = [EMSearchableIndex persistentIDForSearchableItem:v11];
          if (firstObject)
          {
            [(NSArray *)v5 addObject:firstObject];
            attributeSet = [v11 attributeSet];
            matchingHints = [attributeSet matchingHints];
            [v6 setObject:matchingHints forKeyedSubscript:firstObject];
          }
        }

        v8 = [foundItems countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }

    allValues = [v6 allValues];
    v15 = +[EMSearchableIndexTopHitsQueryResult log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v20 = [allValues count];
      v21 = [allValues count];
      if (v21)
      {
        firstObject = [allValues firstObject];
        v22 = [EMCSLoggingAdditions publicDescriptionForSnippetHintsArray:firstObject];
      }

      else
      {
        v22 = @"No values found.";
      }

      *buf = 134218242;
      v29 = v20;
      v30 = 2112;
      v31 = v22;
      _os_log_debug_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEBUG, "Top hits query collected %lu snippet hints: %@", buf, 0x16u);
      if (v21)
      {
      }
    }

    v16 = [v6 copy];
    matchingHintsByPersistentID = selfCopy->_matchingHintsByPersistentID;
    selfCopy->_matchingHintsByPersistentID = v16;

    v18 = selfCopy->_searchableItemIdentifiers;
    selfCopy->_searchableItemIdentifiers = v5;

    searchableItemIdentifiers = selfCopy->_searchableItemIdentifiers;
  }

  return searchableItemIdentifiers;
}

- (NSDictionary)mailRankingSignalsByPersistentID
{
  v22 = *MEMORY[0x1E69E9840];
  mailRankingSignalsByPersistentID = self->_mailRankingSignalsByPersistentID;
  if (mailRankingSignalsByPersistentID)
  {
    v3 = mailRankingSignalsByPersistentID;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    foundItems = [(EMSearchableIndexTopHitsQueryResult *)self foundItems];
    v7 = [foundItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(foundItems);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [EMSearchableIndex persistentIDForSearchableItem:v10];
          if (v11)
          {
            em_mailRankingSignals = [v10 em_mailRankingSignals];
            [v5 setObject:em_mailRankingSignals forKeyedSubscript:v11];
          }
        }

        v7 = [foundItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v13 = [v5 copy];
    v15 = self->_mailRankingSignalsByPersistentID;
    p_mailRankingSignalsByPersistentID = &self->_mailRankingSignalsByPersistentID;
    *p_mailRankingSignalsByPersistentID = v13;

    v3 = *p_mailRankingSignalsByPersistentID;
  }

  return v3;
}

- (void)userDidInteractWithLibraryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(EMSearchableIndexTopHitsQueryResult *)self rankingIndexForMessageLibraryID:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    topHitSearchQuery = [(EMSearchableIndexTopHitsQueryResult *)self topHitSearchQuery];
    foundItems = [(EMSearchableIndexTopHitsQueryResult *)self foundItems];
    v7 = [foundItems objectAtIndexedSubscript:v4];
    [topHitSearchQuery userEngagedWithResult:v7 interactionType:0];
  }
}

- (int64_t)rankingIndexForMessageLibraryID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  foundItems = [(EMSearchableIndexTopHitsQueryResult *)self foundItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__EMSearchableIndexTopHitsQueryResult_rankingIndexForMessageLibraryID___block_invoke;
  v9[3] = &unk_1E826F9A0;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [foundItems enumerateObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __71__EMSearchableIndexTopHitsQueryResult_rankingIndexForMessageLibraryID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 attributeSet];
  v8 = [v7 uniqueIdentifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)userDidInteractWithConversationID:(id)d
{
  dCopy = d;
  v4 = [(EMSearchableIndexTopHitsQueryResult *)self rankingIndexForConversationID:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    topHitSearchQuery = [(EMSearchableIndexTopHitsQueryResult *)self topHitSearchQuery];
    foundItems = [(EMSearchableIndexTopHitsQueryResult *)self foundItems];
    v7 = [foundItems objectAtIndexedSubscript:v4];
    [topHitSearchQuery userEngagedWithResult:v7 interactionType:0];
  }
}

- (int64_t)rankingIndexForConversationID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  foundItems = [(EMSearchableIndexTopHitsQueryResult *)self foundItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__EMSearchableIndexTopHitsQueryResult_rankingIndexForConversationID___block_invoke;
  v9[3] = &unk_1E826F9A0;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [foundItems enumerateObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __69__EMSearchableIndexTopHitsQueryResult_rankingIndexForConversationID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 attributeSet];
  v8 = [v7 mailConversationID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end