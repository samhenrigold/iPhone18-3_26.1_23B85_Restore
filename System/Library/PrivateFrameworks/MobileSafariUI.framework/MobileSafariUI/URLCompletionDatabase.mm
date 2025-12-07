@interface URLCompletionDatabase
- (URLCompletionDatabase)initWithCloudTabStore:(id)store profileIdentifier:(id)identifier searchableCollectionsMask:(int)mask bookmarkProvider:(id)provider;
- (id)fakeBookmarkMatchDataWithURLString:(id)string title:(id)title shouldPreload:(BOOL)preload;
- (void)_updateCloudDevices:(id)devices;
- (void)dealloc;
- (void)enumerateMatchDataForTypedStringHint:(id)hint filterResultsUsingProfileIdentifier:(id)identifier options:(unint64_t)options withBlock:(id)block;
@end

@implementation URLCompletionDatabase

- (URLCompletionDatabase)initWithCloudTabStore:(id)store profileIdentifier:(id)identifier searchableCollectionsMask:(int)mask bookmarkProvider:(id)provider
{
  storeCopy = store;
  identifierCopy = identifier;
  providerCopy = provider;
  v27.receiver = self;
  v27.super_class = URLCompletionDatabase;
  v14 = [(WBSURLCompletionDatabase *)&v27 init];
  v15 = v14;
  if (v14)
  {
    [(WBSURLCompletionDatabase *)v14 setDataSource:v14];
    v15->_searchableCollectionsMask = mask;
    v16 = [identifierCopy copy];
    profileIdentifier = v15->_profileIdentifier;
    v15->_profileIdentifier = v16;

    objc_storeStrong(&v15->_cloudTabStore, store);
    v18 = dispatch_queue_create("com.apple.mobilesafari.iCloudTabsAccessQueue", 0);
    cloudTabsAccessQueue = v15->_cloudTabsAccessQueue;
    v15->_cloudTabsAccessQueue = v18;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__updateCloudDevices_ name:@"CloudTabStoreDidUpdateNotification" object:0];
    v21 = objc_alloc_init(MEMORY[0x277CBEA78]);
    bookmarksCache = v15->_bookmarksCache;
    v15->_bookmarksCache = v21;

    [(NSCache *)v15->_bookmarksCache setCountLimit:1];
    objc_storeStrong(&v15->_bookmarkProvider, provider);
    v23 = +[Application sharedApplication];
    tabGroupManager = [v23 tabGroupManager];
    [tabGroupManager addCloudTabsObserver:v15];

    v25 = v15;
  }

  return v15;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = URLCompletionDatabase;
  [(URLCompletionDatabase *)&v4 dealloc];
}

- (void)_updateCloudDevices:(id)devices
{
  cloudTabsAccessQueue = self->_cloudTabsAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__URLCompletionDatabase__updateCloudDevices___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_sync(cloudTabsAccessQueue, block);
}

void __45__URLCompletionDatabase__updateCloudDevices___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 128) syncedRemoteCloudTabDevicesForProfileWithIdentifier:*(*(a1 + 32) + 168)];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

- (void)enumerateMatchDataForTypedStringHint:(id)hint filterResultsUsingProfileIdentifier:(id)identifier options:(unint64_t)options withBlock:(id)block
{
  v82 = *MEMORY[0x277D85DE8];
  hintCopy = hint;
  identifierCopy = identifier;
  blockCopy = block;
  v11 = +[Application sharedApplication];
  historyController = [v11 historyController];
  v50 = [historyController historyForProfileIdentifier:identifierCopy loadIfNeeded:1];

  group = dispatch_group_create();
  searchableCollectionsMask = self->_searchableCollectionsMask;
  if ((searchableCollectionsMask & 4) != 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    dispatch_group_enter(group);
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v17 = v16;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke;
    v77[3] = &unk_2781DB760;
    v78 = v50;
    v18 = array;
    v79 = v18;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2;
    v74[3] = &unk_2781DB788;
    v75 = hintCopy;
    v76 = group;
    [v78 searchForUserTypedString:v75 options:options currentTime:v77 enumerationBlock:v74 completionHandler:v17];

    searchableCollectionsMask = self->_searchableCollectionsMask;
    v52 = v18;
    if ((searchableCollectionsMask & 2) == 0)
    {
LABEL_3:
      if ((searchableCollectionsMask & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v52 = 0;
    if ((searchableCollectionsMask & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  cloudTabsAccessQueue = self->_cloudTabsAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_285;
  block[3] = &unk_2781DB7B0;
  block[4] = self;
  v71 = hintCopy;
  optionsCopy = options;
  v72 = blockCopy;
  dispatch_sync(cloudTabsAccessQueue, block);

  searchableCollectionsMask = self->_searchableCollectionsMask;
  if ((searchableCollectionsMask & 1) == 0)
  {
LABEL_4:
    if ((searchableCollectionsMask & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

LABEL_8:
  bookmarksCache = self->_bookmarksCache;
  normalizedString = [hintCopy normalizedString];
  v49 = [(NSCache *)bookmarksCache objectForKey:normalizedString];

  if (v49)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v49;
    v22 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
    if (v22)
    {
      v23 = *v67;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v67 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v66 + 1) + 8 * i);
          address = [v25 address];
          title = [v25 title];
          hasMatchWithOptions = SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions();

          if (hasMatchWithOptions)
          {
            v31 = matchDataWithBookmark(v25, v29, v30);
            (*(blockCopy + 2))(blockCopy, v31);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
      }

      while (v22);
    }
  }

  else
  {
    components = [hintCopy components];
    firstObject = [components firstObject];
    v34 = firstObject;
    if (firstObject)
    {
      obj = firstObject;
    }

    else
    {
      obj = [hintCopy normalizedString];
    }

    v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
    bookmarkProvider = self->_bookmarkProvider;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_287;
    v60[3] = &unk_2781DB7D8;
    v37 = hintCopy;
    v61 = v37;
    optionsCopy2 = options;
    v38 = v35;
    v62 = v38;
    v64 = blockCopy;
    v63 = v50;
    [(WBBookmarkProvider *)bookmarkProvider enumerateBookmarks:1 andReadingListItems:1 matchingString:obj usingBlock:v60];
    v39 = self->_bookmarksCache;
    normalizedString2 = [v37 normalizedString];
    [(NSCache *)v39 setObject:v38 forKey:normalizedString2];
  }

  if ((self->_searchableCollectionsMask & 4) != 0)
  {
LABEL_24:
    v41 = dispatch_time(0, 2000000000);
    v42 = dispatch_group_wait(group, v41);
    if (v42)
    {
      v44 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v42, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [URLCompletionDatabase enumerateMatchDataForTypedStringHint:hintCopy filterResultsUsingProfileIdentifier:v44 options:? withBlock:?];
      }
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v45 = v52;
      v46 = [v45 countByEnumeratingWithState:&v56 objects:v80 count:16];
      if (v46)
      {
        v47 = *v57;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v57 != v47)
            {
              objc_enumerationMutation(v45);
            }

            (*(blockCopy + 2))(blockCopy, *(*(&v56 + 1) + 8 * j));
          }

          v46 = [v45 countByEnumeratingWithState:&v56 objects:v80 count:16];
        }

        while (v46);
      }
    }
  }

LABEL_35:
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 originalURLString];
  v6 = [v4 itemForURLString:v5];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 safari_privacyPreservingDescription];
      __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_cold_1(v7, a1, v8, v6);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_285(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (!*(v2 + 136))
  {
    v3 = [*(v2 + 128) syncedRemoteCloudTabDevicesForProfileWithIdentifier:*(v2 + 168)];
    v4 = [v3 copy];
    v5 = a1[4];
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;

    v2 = a1[4];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(v2 + 136);
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v21 = [v8 tabs];
        v9 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v21);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = [v12 url];
              v14 = [v13 absoluteString];

              v15 = [v12 title];
              if (SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions())
              {
                v16 = a1[6];
                v17 = [objc_alloc(MEMORY[0x277D28E88]) initWithCloudTabItem:v12 device:v8];
                (*(v16 + 16))(v16, v17);
              }
            }

            v9 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_287(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v6 = a4;
  if (SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions())
  {
    v7 = v6[2](v6);
    [*(a1 + 40) addObject:v7];
    v8 = *(a1 + 56);
    v11 = matchDataWithBookmark(v7, v9, v10);
    (*(v8 + 16))(v8, v11);
  }
}

- (id)fakeBookmarkMatchDataWithURLString:(id)string title:(id)title shouldPreload:(BOOL)preload
{
  preloadCopy = preload;
  stringCopy = string;
  titleCopy = title;
  v9 = [objc_alloc(MEMORY[0x277D7B5A0]) initWithTitle:titleCopy address:stringCopy collectionType:0];
  v10 = [objc_alloc(MEMORY[0x277D28E80]) initWithBookmark:v9 shouldPreload:preloadCopy isSynthesizedTopHit:1];

  return v10;
}

- (void)enumerateMatchDataForTypedStringHint:(uint64_t)a1 filterResultsUsingProfileIdentifier:(NSObject *)a2 options:withBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 141558275;
  v3 = 1752392040;
  v4 = 2117;
  v5 = a1;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "Timeout while processing user-typed string: %{sensitive, mask.hash}@", &v2, 0x16u);
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 32);
  *buf = 138543875;
  *(buf + 4) = a1;
  *(buf + 6) = 2160;
  *(buf + 14) = 1752392040;
  *(buf + 11) = 2117;
  *(buf + 3) = v5;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Error searching history: %{public}@ for user-typed string: %{sensitive, mask.hash}@", buf, 0x20u);
}

@end