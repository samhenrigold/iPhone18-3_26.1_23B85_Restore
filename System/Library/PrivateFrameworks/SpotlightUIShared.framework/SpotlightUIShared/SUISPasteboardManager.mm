@interface SUISPasteboardManager
+ (id)collectExpiredItemsFromItems:(id)items expirationThresholdInSeconds:(double)seconds outputNextExpirationDate:(id *)date;
+ (id)pasteboardExpirationManagerQueue;
+ (id)pasteboardFilter;
+ (id)shared;
- (SUISPasteboardManager)init;
- (void)clearIndexAndCachedFiles;
- (void)configurePasteboardHistory;
- (void)dealloc;
- (void)deleteContinuityPasteboardItems;
- (void)indexCoreSpotlightItemWithAttributeSet:(id)set;
- (void)indexOrUpdateIfExistsCorespotlightItemAttributeSet:(id)set;
- (void)setChangeCount:(int64_t)count;
- (void)setup;
- (void)tearDown;
@end

@implementation SUISPasteboardManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[SUISPasteboardManager shared];
  }

  v3 = shared_sharedPasteboardManager;

  return v3;
}

uint64_t __31__SUISPasteboardManager_shared__block_invoke()
{
  shared_sharedPasteboardManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)indexOrUpdateIfExistsCorespotlightItemAttributeSet:(id)set
{
  v20[5] = *MEMORY[0x277D85DE8];
  setCopy = set;
  uniqueIdentifier = [setCopy uniqueIdentifier];
  if ([uniqueIdentifier length])
  {
    if ([(SUISPasteboardManager *)self pasteboardHistoryItemWasCopied])
    {
      defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
      v7 = *MEMORY[0x277CC31F0];
      v20[0] = *MEMORY[0x277CC2640];
      v20[1] = v7;
      v8 = *MEMORY[0x277CC31B8];
      v20[2] = *MEMORY[0x277CC3038];
      v20[3] = v8;
      v20[4] = @"_kMDItemThumbnailData";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
      v19 = uniqueIdentifier;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __76__SUISPasteboardManager_indexOrUpdateIfExistsCorespotlightItemAttributeSet___block_invoke;
      v15 = &unk_279D10278;
      v16 = setCopy;
      selfCopy = self;
      [defaultSearchableIndex slowFetchAttributes:v9 protectionClass:0 bundleID:@"com.apple.spotlight" identifiers:v10 options:32 completionHandler:&v12];
    }

    else
    {
      [(SUISPasteboardManager *)self indexCoreSpotlightItemWithAttributeSet:setCopy];
    }

    [(SUISPasteboardManager *)self setPasteboardHistoryItemWasCopied:0, v12, v13, v14, v15];
  }

  else
  {
    v11 = SUISPasteboardIndexingLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B8E8000, v11, OS_LOG_TYPE_DEFAULT, "identifier for CSSItem has no length", buf, 2u);
    }
  }
}

void __76__SUISPasteboardManager_indexOrUpdateIfExistsCorespotlightItemAttributeSet___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = [v3 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setContentCreationDate:v4];
  }

  if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndex:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setTitle:v5];
  }

  if ([v3 count] < 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 objectAtIndex:2];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setRelatedAppBundleIdentifier:v6];
  }

  if ([v3 count] < 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 objectAtIndex:3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setThumbnailBundleID:v7];
  }

  if ([v3 count] < 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v3 objectAtIndex:4];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = [*(a1 + 32) setThumbnailData:v8];
  }

  v10 = SUISPasteboardIndexingLog(isKindOfClass);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [v3 count];
    _os_log_impl(&dword_26B8E8000, v10, OS_LOG_TYPE_DEFAULT, "got attributes: %lu", &v11, 0xCu);
  }

  [*(a1 + 40) indexCoreSpotlightItemWithAttributeSet:*(a1 + 32)];
}

- (void)indexCoreSpotlightItemWithAttributeSet:(id)set
{
  v22[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  isShared = [setCopy isShared];
  bOOLValue = [isShared BOOLValue];
  v7 = *MEMORY[0x277D65CF0];
  if (bOOLValue)
  {
    v7 = @"com.apple.spotlight.pasteboard.continuity";
  }

  v8 = v7;

  v9 = objc_alloc(MEMORY[0x277CC34B0]);
  uniqueIdentifier = [setCopy uniqueIdentifier];
  v11 = [v9 initWithUniqueIdentifier:uniqueIdentifier domainIdentifier:v8 attributeSet:setCopy];

  v13 = SUISPasteboardIndexingLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B8E8000, v13, OS_LOG_TYPE_DEFAULT, "indexing pasteboard contents", buf, 2u);
  }

  lastUsedDate = [setCopy lastUsedDate];

  if (lastUsedDate)
  {
    defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    v22[0] = v11;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke;
    v19[3] = &unk_279D102A0;
    v19[4] = self;
    v20 = v11;
    [defaultSearchableIndex indexSearchableItems:v17 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:0 forBundleID:0 options:32 completionHandler:v19];
  }

  else
  {
    v18 = SUISPasteboardIndexingLog(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SUISPasteboardManager indexCoreSpotlightItemWithAttributeSet:v18];
    }
  }
}

void __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SUISPasteboardIndexingLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26B8E8000, v4, OS_LOG_TYPE_DEFAULT, "finished indexing pasteboard contents", v7, 2u);
  }

  v5 = [*(a1 + 32) isNothingDispatchedForNextExpiration];
  if (v5)
  {
    v5 = [*(a1 + 32) deleteExpiredItemsAndDispatchForNextExpiration];
  }

  if (v3)
  {
    v6 = SUISPasteboardIndexingLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke_cold_1(v3, a1, v6);
    }
  }
}

+ (id)pasteboardFilter
{
  if (pasteboardFilter_onceToken != -1)
  {
    +[SUISPasteboardManager pasteboardFilter];
  }

  v3 = pasteboardFilter_pasteboardFilter;

  return v3;
}

uint64_t __41__SUISPasteboardManager_pasteboardFilter__block_invoke()
{
  pasteboardFilter_pasteboardFilter = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemDomainIdentifier = %@*", *MEMORY[0x277D65CF0]];

  return MEMORY[0x2821F96F8]();
}

+ (id)pasteboardExpirationManagerQueue
{
  if (pasteboardExpirationManagerQueue_onceToken != -1)
  {
    +[SUISPasteboardManager pasteboardExpirationManagerQueue];
  }

  v3 = pasteboardExpirationManagerQueue_queue;

  return v3;
}

uint64_t __57__SUISPasteboardManager_pasteboardExpirationManagerQueue__block_invoke()
{
  pasteboardExpirationManagerQueue_queue = dispatch_queue_create("com.apple.spotlight.pasteboardExpirationManagerQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (SUISPasteboardManager)init
{
  v4.receiver = self;
  v4.super_class = SUISPasteboardManager;
  v2 = [(SUISPasteboardManager *)&v4 init];
  if (v2 && [MEMORY[0x277D4C898] isSpotlightPlusEnabled])
  {
    [(SUISPasteboardManager *)v2 configurePasteboardHistory];
  }

  return v2;
}

- (void)dealloc
{
  [(SUISPasteboardManager *)self tearDown];
  v3.receiver = self;
  v3.super_class = SUISPasteboardManager;
  [(SUISPasteboardManager *)&v3 dealloc];
}

- (void)deleteContinuityPasteboardItems
{
  mEMORY[0x277D65D50] = [MEMORY[0x277D65D50] shared];
  isContinuityEnabled = [mEMORY[0x277D65D50] isContinuityEnabled];

  if ((isContinuityEnabled & 1) == 0)
  {
    defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
    [defaultSearchableIndex deleteSearchableItemsWithDomainIdentifiers:&unk_287C64E90 protectionClass:0 forBundleID:0 options:32 completionHandler:&__block_literal_global_545];
  }
}

void __56__SUISPasteboardManager_deleteContinuityPasteboardItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = SUISPasteboardIndexingLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__SUISPasteboardManager_deleteContinuityPasteboardItems__block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)configurePasteboardHistory
{
  mEMORY[0x277D65D50] = [MEMORY[0x277D65D50] shared];
  isEnabled = [mEMORY[0x277D65D50] isEnabled];

  if (isEnabled)
  {
    [(SUISPasteboardManager *)self deleteExpiredItemsAndDispatchForNextExpiration];
    sink = [(SUISPasteboardManager *)self sink];

    if (!sink)
    {

      [(SUISPasteboardManager *)self setup];
    }
  }

  else
  {
    [(SUISPasteboardManager *)self tearDown];

    [(SUISPasteboardManager *)self clearIndexAndCachedFiles];
  }
}

- (void)setup
{
  [(SUISPasteboardManager *)self deleteExpiredItemsAndDispatchForNextExpiration];

  [(SUISPasteboardManager *)self registerPasteboardExpirationWatchdog];
}

- (void)tearDown
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  scheduler = [(SUISPasteboardManager *)self scheduler];
  [scheduler cancel];

  sink = [(SUISPasteboardManager *)self sink];
  [sink cancel];

  [(SUISPasteboardManager *)self setScheduler:0];

  [(SUISPasteboardManager *)self setSink:0];
}

- (void)clearIndexAndCachedFiles
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v9[0] = *MEMORY[0x277D65CF0];
  v9[1] = @"com.apple.spotlight.pasteboard.continuity";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v2 setDomainIdentifiers:v3];

  v4 = MEMORY[0x277CBEBC0];
  spotlightPasteboardCacheDirectory = [MEMORY[0x277D65910] spotlightPasteboardCacheDirectory];
  v6 = [v4 fileURLWithPath:spotlightPasteboardCacheDirectory];
  v8 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [v2 setFilesToDelete:v7];

  [SUIUtilities performDeleteCommand:v2];
}

+ (id)collectExpiredItemsFromItems:(id)items expirationThresholdInSeconds:(double)seconds outputNextExpirationDate:(id *)date
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = [items sortedArrayUsingComparator:&__block_literal_global_553];
  v7 = [v6 mutableCopy];

  v46 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEAA8] now];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v10 = v7;
  v50 = [v10 countByEnumeratingWithState:&v59 objects:v68 count:16];
  v11 = 0;
  if (v50)
  {
    v48 = 0;
    v49 = *v60;
    v44 = v9;
    v45 = v10;
    do
    {
      for (i = 0; i != v50; i = v35 + 1)
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(v10);
        }

        v51 = i;
        v13 = *(*(&v59 + 1) + 8 * i);
        attributeSet = [v13 attributeSet];
        lastUsedDate = [attributeSet lastUsedDate];

        if (!lastUsedDate)
        {
          v17 = SUISPasteboardIndexingLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [SUISPasteboardManager collectExpiredItemsFromItems:v58 expirationThresholdInSeconds:v17 outputNextExpirationDate:?];
          }
        }

        attributeSet2 = [v13 attributeSet];
        lastUsedDate2 = [attributeSet2 lastUsedDate];
        v20 = [lastUsedDate2 dateByAddingTimeInterval:seconds];

        v52 = v20;
        v21 = [v9 laterDate:v20];

        if (v21 == v9)
        {
          uniqueIdentifier = [v13 uniqueIdentifier];
          [v46 addObject:uniqueIdentifier];

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          attributeSet3 = [v13 attributeSet];
          attachmentPaths = [attributeSet3 attachmentPaths];

          v27 = [attachmentPaths countByEnumeratingWithState:&v53 objects:v67 count:16];
          if (v27)
          {
            v28 = v27;
            v47 = v11;
            v29 = *v54;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v54 != v29)
                {
                  objc_enumerationMutation(attachmentPaths);
                }

                v31 = *(*(&v53 + 1) + 8 * j);
                spotlightPasteboardCacheDirectory = [MEMORY[0x277D65910] spotlightPasteboardCacheDirectory];
                v33 = [v31 containsString:spotlightPasteboardCacheDirectory];

                if (v33)
                {
                  v34 = [MEMORY[0x277CBEBC0] URLWithString:v31];
                  [v8 addObject:v34];
                }
              }

              v28 = [attachmentPaths countByEnumeratingWithState:&v53 objects:v67 count:16];
            }

            while (v28);
            v9 = v44;
            v10 = v45;
            v11 = v47;
          }

          v35 = v51;
          v20 = v52;
        }

        else
        {
          if (v48)
          {
            currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
            v23 = [currentCalendar isDate:v48 equalToDate:v20 toUnitGranularity:64];

            if ((v23 & 1) == 0)
            {

              goto LABEL_31;
            }
          }

          else
          {
            v48 = v20;
          }

          attachmentPaths = v11;
          v11 = v20;
          v35 = v51;
        }
      }

      v50 = [v10 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v50);
  }

  else
  {
    v48 = 0;
  }

LABEL_31:

  v37 = SUISPasteboardIndexingLog(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [v46 count];
    v39 = [v8 count];
    *buf = 134218240;
    v64 = v38;
    v65 = 2048;
    v66 = v39;
    _os_log_impl(&dword_26B8E8000, v37, OS_LOG_TYPE_DEFAULT, "Found expired items %lu, files %lu", buf, 0x16u);
  }

  if (date)
  {
    v40 = v11;
    *date = v11;
  }

  v41 = objc_opt_new();
  [v41 setItemIdentifiers:v46];
  [v41 setFilesToDelete:v8];

  return v41;
}

uint64_t __108__SUISPasteboardManager_collectExpiredItemsFromItems_expirationThresholdInSeconds_outputNextExpirationDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributeSet];
  v6 = [v5 lastUsedDate];
  v7 = [v4 attributeSet];

  v8 = [v7 lastUsedDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)setChangeCount:(int64_t)count
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = SUISPasteboardIndexingLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    changeCount = [(SUISPasteboardManager *)self changeCount];
    v8 = 2048;
    countCopy = count;
    _os_log_impl(&dword_26B8E8000, v5, OS_LOG_TYPE_DEFAULT, "updating changeCount from:%ld to %ld", &v6, 0x16u);
  }

  self->_changeCount = count;
}

void __64__SUISPasteboardManager_indexCoreSpotlightItemWithAttributeSet___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_26B8E8000, log, OS_LOG_TYPE_ERROR, "error: %@ indexing pasteboard item :%@", &v4, 0x16u);
}

void __56__SUISPasteboardManager_deleteContinuityPasteboardItems__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B8E8000, a2, OS_LOG_TYPE_ERROR, "error deleting continuity pasteboard items in corespotlight: %@", &v2, 0xCu);
}

+ (void)collectExpiredItemsFromItems:(uint8_t *)buf expirationThresholdInSeconds:(_BYTE *)a2 outputNextExpirationDate:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_26B8E8000, log, OS_LOG_TYPE_ERROR, "we're missing the lastuseddate when checking for expirationdate", buf, 2u);
}

@end