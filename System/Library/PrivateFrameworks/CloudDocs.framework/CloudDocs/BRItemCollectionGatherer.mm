@interface BRItemCollectionGatherer
- (BOOL)_buildCollectionOnItemIfPossible:(id)possible;
- (BOOL)_canWatchItem:(id)item;
- (BOOL)_isItemOwnedByAnyCollection:(id)collection;
- (BOOL)_shouldFilterEvaluatedItem:(id)item collectionRootItem:(id)rootItem;
- (BOOL)_signalDelegateIfNeededOnFinishGathering;
- (BRItemCollectionGatherer)initWithDelegate:(id)delegate query:(id)query;
- (id)_getAppLibraryURLFromConfig:(id)config;
- (id)_getDeletedItems;
- (id)_getUpdatedItems;
- (unint64_t)_itemID:(id)d becameOwnedByCollection:(id)collection;
- (unint64_t)_itemID:(id)d wasDeletedByCollection:(id)collection;
- (void)_accountDidChangeNotificationBlock;
- (void)_addDeletedItems:(id)items;
- (void)_addItemCollectionOnItem:(id)item;
- (void)_addUpdatedItems:(id)items;
- (void)_boostAppLibraryOfItemIfNeeded:(id)needed;
- (void)_invalidateAndNotifyDelegate:(BOOL)delegate;
- (void)_itemCollectionGathererSendUpdates;
- (void)_queueSignalDelegateIfNeededOnFinishGathering;
- (void)_removeCollectionFromGatherSet:(id)set;
- (void)_signalDelegateIfNeededOnFinishGathering;
- (void)_startObservingAccountTokenDidChangeNotification;
- (void)_startWatchingAppLibraries:(id)libraries;
- (void)_startWatchingNewSubItem:(id)item;
- (void)_startWatchingRootItemWithConfig:(id)config;
- (void)_startWatchingURLs:(id)ls;
- (void)_stopObeservingCollections;
- (void)_stopObservingAccountTokenDidChangeNotification;
- (void)_stopWatchingItemIDRecusively:(id)recusively itemIDsInItem:(id)item;
- (void)_unboostApplibrariesIfNeeded;
- (void)collection:(id)collection didEncounterError:(id)error;
- (void)collection:(id)collection didUpdateItems:(id)items replaceItemsByFormerID:(id)d deleteItemsWithIDs:(id)ds;
- (void)collectionDidFinishGathering:(id)gathering;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded deleteItemsWithIDs:(id)ds;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)pauseWatchingWithCompletionBlock:(id)block;
- (void)resumeWatching;
- (void)startWatchingRootItemWithScopes:(id)scopes;
@end

@implementation BRItemCollectionGatherer

- (BRItemCollectionGatherer)initWithDelegate:(id)delegate query:(id)query
{
  delegateCopy = delegate;
  queryCopy = query;
  v45.receiver = self;
  v45.super_class = BRItemCollectionGatherer;
  v8 = [(BRItemCollectionGatherer *)&v45 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(v8 + 2);
    *(v8 + 2) = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.br.item-collection-gatherer", v12);

    v14 = *(v8 + 1);
    *(v8 + 1) = v13;

    objc_storeWeak(v8 + 3, delegateCopy);
    objc_storeStrong(v8 + 4, query);
    predicate = [*(v8 + 4) predicate];
    v16 = *(v8 + 5);
    *(v8 + 5) = predicate;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = *(v8 + 7);
    *(v8 + 7) = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20 = *(v8 + 8);
    *(v8 + 8) = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v22 = *(v8 + 9);
    *(v8 + 9) = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = *(v8 + 10);
    *(v8 + 10) = v23;

    *(v8 + 88) = 0;
    v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v26 = *(v8 + 12);
    *(v8 + 12) = v25;

    v27 = *(v8 + 15);
    *(v8 + 15) = 0;

    v28 = +[BRRemoteUserDefaults sharedDefaults];
    [v28 collectionGathererPacerMinFireInterval];
    v30 = br_pacer_create("collection-gatherer", *(v8 + 1), v29);
    v31 = *(v8 + 18);
    *(v8 + 18) = v30;

    objc_initWeak(&location, v8);
    v32 = *(v8 + 18);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __51__BRItemCollectionGatherer_initWithDelegate_query___block_invoke;
    v42[3] = &unk_1E7A15630;
    objc_copyWeak(&v43, &location);
    br_pacer_set_event_handler(v32, v42);
    br_pacer_resume(*(v8 + 18));
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = *(v8 + 19);
    *(v8 + 19) = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v36 = *(v8 + 20);
    *(v8 + 20) = v35;

    v37 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v38 = dispatch_queue_attr_make_with_autorelease_frequency(v37, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("com.apple.br.item-collection-gatherer.invalidate", v38);

    v40 = *(v8 + 21);
    *(v8 + 21) = v39;

    *(v8 + 176) = 0;
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __51__BRItemCollectionGatherer_initWithDelegate_query___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _itemCollectionGathererSendUpdates];
}

- (void)_stopObservingAccountTokenDidChangeNotification
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_accountDidChangeNotificationBlock
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_startObservingAccountTokenDidChangeNotification
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __76__BRItemCollectionGatherer__startObservingAccountTokenDidChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _accountDidChangeNotificationBlock];
    WeakRetained = v2;
  }
}

- (BOOL)_shouldFilterEvaluatedItem:(id)item collectionRootItem:(id)rootItem
{
  v47 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  rootItemCopy = rootItem;
  itemID = [rootItemCopy itemID];
  if ((-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") & 0x40) != 0 && ![itemCopy isFolder])
  {
    goto LABEL_21;
  }

  if (([(BRWatchingConfiguration *)self->_config watchTypes]& 1) == 0)
  {
    parentItemID = [itemCopy parentItemID];

    if (!parentItemID)
    {
      v31 = brc_bread_crumbs("[BRItemCollectionGatherer _shouldFilterEvaluatedItem:collectionRootItem:]", 387);
      v32 = brc_default_log(0, 0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        selfCopy = self;
        v43 = 2112;
        v44 = itemCopy;
        v45 = 2112;
        v46 = v31;
        _os_log_fault_impl(&dword_1AE2A9000, v32, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ - fp items should always have a parentItemID set on it - %@%@", buf, 0x20u);
      }

      goto LABEL_21;
    }

    parentItemID2 = [itemCopy parentItemID];
    if (!parentItemID2 || (v11 = parentItemID2, watchedAppLibraryFPItemIDs = self->_watchedAppLibraryFPItemIDs, [itemCopy parentItemID], v13 = objc_claimAutoreleasedReturnValue(), LODWORD(watchedAppLibraryFPItemIDs) = -[NSMutableSet containsObject:](watchedAppLibraryFPItemIDs, "containsObject:", v13), v13, v11, !watchedAppLibraryFPItemIDs) || ((objc_msgSend(itemCopy, "displayName"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", @"Documents"), v14, (-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") & 6) != 0) || v15) && ((objc_msgSend(rootItemCopy, "providerItemIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", *MEMORY[0x1E6967168]), v16, !v17) || (v15 & 1) == 0 && (objc_msgSend(itemCopy, "displayName"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", @"Desktop"), v18, (v19 & 1) == 0)))
    {
      gatherPrefix = [(BRWatchingConfiguration *)self->_config gatherPrefix];

      if (!gatherPrefix)
      {
        goto LABEL_24;
      }

      v21 = MEMORY[0x1E696AE70];
      v22 = MEMORY[0x1E696AEC0];
      gatherPrefix2 = [(BRWatchingConfiguration *)self->_config gatherPrefix];
      v24 = [v22 stringWithFormat:@"^%@", gatherPrefix2];
      v40 = 0;
      v25 = [v21 regularExpressionWithPattern:v24 options:0 error:&v40];
      v26 = v40;

      if (v26)
      {
        v27 = brc_bread_crumbs("[BRItemCollectionGatherer _shouldFilterEvaluatedItem:collectionRootItem:]", 428);
        v28 = brc_default_log(1, 0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [BRItemCollectionGatherer _shouldFilterEvaluatedItem:collectionRootItem:];
        }

        goto LABEL_21;
      }

      displayName = [itemCopy displayName];
      displayName2 = [itemCopy displayName];
      v36 = [v25 numberOfMatchesInString:displayName options:0 range:{0, objc_msgSend(displayName2, "length")}];

      if (v36)
      {
LABEL_24:
        fileURL = [itemCopy fileURL];
        lastPathComponent = [fileURL lastPathComponent];
        v39 = [lastPathComponent br_isExcludedWithMaximumDepth:1];

        v30 = v39 ^ 1;
        goto LABEL_22;
      }
    }

LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  itemID2 = [itemCopy itemID];
  v30 = [itemID2 isEqualToItemID:itemID];

LABEL_22:
  return v30;
}

- (void)_addItemCollectionOnItem:(id)item
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dispatch_assert_queue_V2(self->_queue);
  itemID = [itemCopy itemID];
  v6 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap objectForKey:itemID];

  if (!v6)
  {
    v7 = brc_bread_crumbs("[BRItemCollectionGatherer _addItemCollectionOnItem:]", 460);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      providerItemIdentifier = [itemCopy providerItemIdentifier];
      *location = 138413058;
      *&location[4] = self;
      v23 = 2112;
      v24 = itemID;
      v25 = 2112;
      v26 = providerItemIdentifier;
      v27 = 2112;
      v28 = v7;
      _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Adding Item Collection on itemID = %@, providerItemIdentifier = %@%@", location, 0x2Au);
    }

    defaultManager = [MEMORY[0x1E69673A8] defaultManager];
    v10 = [defaultManager newCollectionWithItemID:itemID];

    objc_initWeak(location, self);
    v11 = MEMORY[0x1E696AE18];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __53__BRItemCollectionGatherer__addItemCollectionOnItem___block_invoke;
    v19 = &unk_1E7A16B70;
    objc_copyWeak(&v21, location);
    v20 = itemCopy;
    v12 = [v11 predicateWithBlock:&v16];
    [v10 setItemFilteringPredicate:{v12, v16, v17, v18, v19}];

    [v10 setDelegate:self];
    [v10 setWorkingQueue:self->_queue];
    [v10 setShowHiddenFiles:1];
    settings = [v10 settings];
    [settings setRequireSandboxAccess:1];

    settings2 = [v10 settings];
    [settings2 setUnbounded:1];

    [(NSMutableDictionary *)self->_itemIDToItemCollectionMap setObject:v10 forKey:itemID];
    [(NSMutableSet *)self->_waitingToBeGatheredCollections addObject:v10];
    [(NSMutableSet *)self->_collectionsSet addObject:v10];
    [v10 startObserving];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }
}

uint64_t __53__BRItemCollectionGatherer__addItemCollectionOnItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _shouldFilterEvaluatedItem:v3 collectionRootItem:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_canWatchItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_V2(self->_queue);
  itemID = [itemCopy itemID];
  if (([(BRWatchingConfiguration *)self->_config watchTypes]& 2) != 0 || ([(BRWatchingConfiguration *)self->_config watchTypes]& 1) != 0)
  {
    v14 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap count]== 0;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap objectForKey:itemID];

    if (!v6 && [itemCopy isFolder] && -[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") && ((watchedAppLibraryFPItemIDs = self->_watchedAppLibraryFPItemIDs, objc_msgSend(itemCopy, "parentItemID"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(watchedAppLibraryFPItemIDs) = -[NSMutableSet containsObject:](watchedAppLibraryFPItemIDs, "containsObject:", v8), v8, !watchedAppLibraryFPItemIDs) || ((objc_msgSend(itemCopy, "displayName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", @"Documents"), v9, (-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") & 8) != 0) || (v10 & 1) == 0) && ((v10 | (-[BRWatchingConfiguration watchTypes](self->_config, "watchTypes") >> 2)) & 1) != 0))
    {
      fileURL = [itemCopy fileURL];
      path = [fileURL path];
      v13 = [path br_isExcludedWithMaximumDepth:1024];

      v14 = v13 ^ 1;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)_buildCollectionOnItemIfPossible:(id)possible
{
  v19 = *MEMORY[0x1E69E9840];
  possibleCopy = possible;
  v5 = brc_bread_crumbs("[BRItemCollectionGatherer _buildCollectionOnItemIfPossible:]", 544);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    itemID = [possibleCopy itemID];
    providerItemIdentifier = [possibleCopy providerItemIdentifier];
    v11 = 138413058;
    selfCopy = self;
    v13 = 2112;
    v14 = itemID;
    v15 = 2112;
    v16 = providerItemIdentifier;
    v17 = 2112;
    v18 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - _buildCollectionOnItemIfPossible itemID = %@, providerItemIdentifier = %@%@", &v11, 0x2Au);
  }

  dispatch_assert_queue_V2(self->_queue);
  v7 = [(BRItemCollectionGatherer *)self _canWatchItem:possibleCopy];
  if (v7)
  {
    [(BRItemCollectionGatherer *)self _addItemCollectionOnItem:possibleCopy];
  }

  return v7;
}

- (id)_getAppLibraryURLFromConfig:(id)config
{
  configCopy = config;
  appLibraryIDToURLMapOfSuppliedAppIDs = [(BRWatchingConfiguration *)self->_config appLibraryIDToURLMapOfSuppliedAppIDs];
  v6 = [appLibraryIDToURLMapOfSuppliedAppIDs valueForKey:configCopy];

  if (!v6)
  {
    appLibraryIDToURLMapOfSuppliedURLs = [(BRWatchingConfiguration *)self->_config appLibraryIDToURLMapOfSuppliedURLs];
    v6 = [appLibraryIDToURLMapOfSuppliedURLs valueForKey:configCopy];
  }

  return v6;
}

- (void)_boostAppLibraryOfItemIfNeeded:(id)needed
{
  fileURL = [needed fileURL];
  br_containerID = [fileURL br_containerID];

  if (([(NSMutableSet *)self->_boostedAppLibraries containsObject:br_containerID]& 1) == 0)
  {
    v6 = [(BRItemCollectionGatherer *)self _getAppLibraryURLFromConfig:br_containerID];
    if (v6)
    {
      v7 = [BRFileProviderServicesFactory itemServiceSyncProxyForURL:v6];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59__BRItemCollectionGatherer__boostAppLibraryOfItemIfNeeded___block_invoke;
      v8[3] = &unk_1E7A16B98;
      v9 = br_containerID;
      selfCopy = self;
      [v7 boostFilePresenter:v8];
    }
  }
}

void __59__BRItemCollectionGatherer__boostAppLibraryOfItemIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = brc_bread_crumbs("[BRItemCollectionGatherer _boostAppLibraryOfItemIfNeeded:]_block_invoke", 578);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] boosted %@ with %@%@", &v7, 0x20u);
  }

  if (!v3)
  {
    [*(*(a1 + 40) + 96) addObject:*(a1 + 32)];
  }
}

- (void)_startWatchingURLs:(id)ls
{
  v41 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v5 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 586);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRItemCollectionGatherer _startWatchingURLs:];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = lsCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v25 = v7;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v28 + 1) + 8 * v11);
      v13 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 588);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        path = [v12 path];
        fp_obfuscatedPath = [path fp_obfuscatedPath];
        *buf = 138412802;
        selfCopy3 = self;
        v34 = 2112;
        v35 = fp_obfuscatedPath;
        v36 = 2112;
        v37 = v13;
        _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - -- _startWatchingURLsIfNeeded working on %@%@", buf, 0x20u);

        v7 = v25;
      }

      if (v12)
      {
        if (([v12 br_isInSyncedLocation] & 1) == 0)
        {
          v17 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 594);
          v21 = brc_default_log(0, 0);
          if (os_log_type_enabled(v21, 0x90u))
          {
            path2 = [v12 path];
            fp_obfuscatedPath2 = [path2 fp_obfuscatedPath];
            *buf = 138412802;
            selfCopy3 = self;
            v34 = 2112;
            v35 = fp_obfuscatedPath2;
            v36 = 2112;
            v37 = v17;
            _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] %@ - Can't Watch url %@ since its not in a synced location.%@", buf, 0x20u);
            goto LABEL_24;
          }

LABEL_21:

          goto LABEL_22;
        }

        defaultManager = [MEMORY[0x1E69673A8] defaultManager];
        v27 = 0;
        v16 = [defaultManager itemForURL:v12 error:&v27];
        v17 = v27;

        if (!v16)
        {
          v21 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]", 601);
          path2 = brc_default_log(0, 0);
          if (!os_log_type_enabled(path2, 0x90u))
          {
            goto LABEL_20;
          }

          fp_obfuscatedPath2 = [v12 path];
          v23Fp_obfuscatedPath = [fp_obfuscatedPath2 fp_obfuscatedPath];
          *buf = 138413058;
          selfCopy3 = self;
          v34 = 2112;
          v35 = v23Fp_obfuscatedPath;
          v36 = 2112;
          v37 = v17;
          v38 = 2112;
          v39 = v21;
          _os_log_error_impl(&dword_1AE2A9000, path2, 0x90u, "[ERROR] %@ - Can't build an fpItem for %@ - %@%@", buf, 0x2Au);

LABEL_24:
LABEL_20:

          goto LABEL_21;
        }

        [(BRItemCollectionGatherer *)self _boostAppLibraryOfItemIfNeeded:v16];
        [(BRItemCollectionGatherer *)self _startWatchingNewSubItem:v16];
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__BRItemCollectionGatherer__startWatchingURLs___block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_async(queue, block);
LABEL_22:
}

void *__47__BRItemCollectionGatherer__startWatchingURLs___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(*(a1 + 32) + 72) count];
  if (!result)
  {
    result = [*(*v1 + 6) watchTypes];
    if (result <= 3)
    {
      v3 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingURLs:]_block_invoke", 612);
      v4 = brc_default_log(1, 0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __47__BRItemCollectionGatherer__startWatchingURLs___block_invoke_cold_1();
      }

      return [*v1 _queueSignalDelegateIfNeededOnFinishGathering];
    }
  }

  return result;
}

- (void)_startWatchingAppLibraries:(id)libraries
{
  v31 = *MEMORY[0x1E69E9840];
  librariesCopy = libraries;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(librariesCopy, "count")}];
  v5 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]", 620);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v27 = 2112;
    v28 = librariesCopy;
    v29 = 2112;
    v30 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ -  _startWatchingAppLibrariesIfNeeded(%@)%@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke;
  v18[3] = &unk_1E7A16BC0;
  v18[4] = self;
  v7 = MEMORY[0x1B26FEA90](v18);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2;
  v15[3] = &unk_1E7A16BE8;
  v8 = v7;
  v15[4] = self;
  v16 = v8;
  v17 = &v19;
  [librariesCopy enumerateKeysAndObjectsUsingBlock:v15];
  if ([v20[5] count])
  {
    v9 = self->_appLibrariesLookupAttempts + 1;
    self->_appLibrariesLookupAttempts = v9;
    self->_finishedLookingUpAppLibraries = 0;
    v10 = dispatch_time(0, 1000000000 * (1 << v9));
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58;
    v14[3] = &unk_1E7A16580;
    v14[4] = self;
    v14[5] = &v19;
    dispatch_after(v10, queue, v14);
  }

  else
  {
    v12 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]", 648);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRItemCollectionGatherer _startWatchingAppLibraries:];
    }

    self->_finishedLookingUpAppLibraries = 1;
    [(BRItemCollectionGatherer *)self _queueSignalDelegateIfNeededOnFinishGathering];
  }

  _Block_object_dispose(&v19, 8);
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 _boostAppLibraryOfItemIfNeeded:v6];
  v4 = *(*(a1 + 32) + 56);
  v5 = [v6 itemID];
  [v4 addObject:v5];

  [*(a1 + 32) _startWatchingNewSubItem:v6];
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69673A8] defaultManager];
  v8 = [v7 itemForURL:v6 error:0];

  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (*(*(a1 + 32) + 128) < 7uLL)
  {
    [*(*(*(a1 + 48) + 8) + 40) setValue:v6 forKey:v5];
  }

  else
  {
    v9 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]_block_invoke_2", 632);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2_cold_1(v9, v10);
    }

    *(*(a1 + 32) + 136) = 1;
    [*(a1 + 32) _queueSignalDelegateIfNeededOnFinishGathering];
  }
}

uint64_t __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingAppLibraries:]_block_invoke", 644);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58_cold_1();
  }

  return [*(a1 + 32) _startWatchingAppLibraries:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)startWatchingRootItemWithScopes:(id)scopes
{
  scopesCopy = scopes;
  v5 = [[BRWatchingConfiguration alloc] initWithScopes:scopesCopy predicate:self->_predicate];

  [(BRItemCollectionGatherer *)self _startWatchingRootItemWithConfig:v5];
  [(BRItemCollectionGatherer *)self _startObservingAccountTokenDidChangeNotification];
}

- (void)_startWatchingRootItemWithConfig:(id)config
{
  configCopy = config;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = configCopy;
  v6 = configCopy;
  dispatch_async(queue, v7);
}

void __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingRootItemWithConfig:]_block_invoke", 678);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = (a1 + 32);
  objc_storeStrong((v5 + 48), v4);
  v7 = [(*v6)[6] urls];
  if ([v7 count] < 2)
  {
    v10 = *v6;
    v11 = [(*v6)[6] urls];
    [v10 _startWatchingURLs:v11];

    v12 = *v6;
    v8 = [v12[6] appLibraryIDToURLMapOfSuppliedAppIDs];
    [v12 _startWatchingAppLibraries:v8];
  }

  else
  {
    v8 = brc_bread_crumbs("[BRItemCollectionGatherer _startWatchingRootItemWithConfig:]_block_invoke", 682);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke_cold_2();
    }
  }
}

- (void)_startWatchingNewSubItem:(id)item
{
  itemCopy = item;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__BRItemCollectionGatherer__startWatchingNewSubItem___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_async(queue, v7);
}

- (void)_stopWatchingItemIDRecusively:(id)recusively itemIDsInItem:(id)item
{
  v42 = *MEMORY[0x1E69E9840];
  recusivelyCopy = recusively;
  itemCopy = item;
  dispatch_assert_queue_V2(self->_queue);
  v7 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 701);
  v8 = brc_default_log(1, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v36 = 2112;
    v37 = recusivelyCopy;
    v38 = 2112;
    v39 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - stop watching itemID %@ recursively%@", buf, 0x20u);
  }

  if (recusivelyCopy)
  {
    [itemCopy addObject:recusivelyCopy];
    v9 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap objectForKey:recusivelyCopy];
    v10 = v9;
    if (v9)
    {
      [v9 stopObserving];
      [(NSMutableSet *)self->_collectionsSet removeObject:v10];
      v11 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 715);
      v12 = brc_default_log(1, 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        items = [v10 items];
        *buf = 138413058;
        selfCopy4 = self;
        v36 = 2112;
        v37 = recusivelyCopy;
        v38 = 2112;
        v39 = items;
        v40 = 2112;
        v41 = v11;
        _os_log_debug_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item %@ collection childs %@%@", buf, 0x2Au);
      }

      v27 = recusivelyCopy;

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      items2 = [v10 items];
      v14 = [items2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(items2);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            itemID = [v18 itemID];
            v20 = [(BRItemCollectionGatherer *)self _itemID:itemID wasDeletedByCollection:v10];

            if (v20)
            {
              itemID3 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 722);
              v22 = brc_default_log(1, 0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                itemID2 = [v18 itemID];
                *buf = 138413058;
                selfCopy4 = self;
                v36 = 2112;
                v37 = itemID2;
                v38 = 2048;
                v39 = v20;
                v40 = 2112;
                v41 = itemID3;
                _os_log_debug_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is owned by %lu other collections. Stopping the recursive traverse%@", buf, 0x2Au);
              }
            }

            else
            {
              itemID3 = [v18 itemID];
              [(BRItemCollectionGatherer *)self _stopWatchingItemIDRecusively:itemID3 itemIDsInItem:itemCopy];
            }
          }

          v15 = [items2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v15);
      }

      recusivelyCopy = v27;
      [(NSMutableDictionary *)self->_itemIDToItemCollectionMap removeObjectForKey:v27];
      [(BRItemCollectionGatherer *)self _removeCollectionFromGatherSet:v10];
    }

    else
    {
      v24 = brc_bread_crumbs("[BRItemCollectionGatherer _stopWatchingItemIDRecusively:itemIDsInItem:]", 709);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        selfCopy4 = self;
        v36 = 2112;
        v37 = recusivelyCopy;
        v38 = 2112;
        v39 = v24;
        _os_log_debug_impl(&dword_1AE2A9000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - No collection found for item %@%@", buf, 0x20u);
      }
    }
  }
}

- (void)_unboostApplibrariesIfNeeded
{
  v4 = brc_bread_crumbs("[BRItemCollectionGatherer _unboostApplibrariesIfNeeded]", 737);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *self = 138412290;
    *a2 = v4;
    _os_log_fault_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: appLibraryURL%@", self, 0xCu);
  }
}

void __56__BRItemCollectionGatherer__unboostApplibrariesIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = brc_bread_crumbs("[BRItemCollectionGatherer _unboostApplibrariesIfNeeded]_block_invoke", 741);
    v3 = brc_default_log(1, 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __56__BRItemCollectionGatherer__unboostApplibrariesIfNeeded__block_invoke_cold_1();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 96);

    [v5 removeObject:v4];
  }
}

- (void)_stopObeservingCollections
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_collectionsSet;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) stopObserving];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_invalidateAndNotifyDelegate:(BOOL)delegate
{
  invalidateQueue = self->_invalidateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke;
  v4[3] = &unk_1E7A15768;
  v4[4] = self;
  delegateCopy = delegate;
  dispatch_async(invalidateQueue, v4);
}

void __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[176] & 1) == 0)
  {
    [v2 disableUpdates];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2;
    v5[3] = &unk_1E7A15768;
    v5[4] = v3;
    v6 = *(a1 + 40);
    dispatch_sync(v4, v5);
    *(*(a1 + 32) + 176) = 1;
  }
}

void __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer _invalidateAndNotifyDelegate:]_block_invoke_2", 764);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2_cold_1();
  }

  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained itemCollectionGathererDidInvalidate];
  }

  objc_storeWeak((*(a1 + 32) + 24), 0);
  [*(a1 + 32) _stopObeservingCollections];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = 0;

  *(*(a1 + 32) + 88) = 0;
  v13 = *(a1 + 32);
  v14 = *(v13 + 96);
  *(v13 + 96) = 0;

  [*(a1 + 32) _stopObservingAccountTokenDidChangeNotification];
  v15 = *(a1 + 32);
  v16 = *(v15 + 16);
  *(v15 + 16) = 0;

  [*(*(a1 + 32) + 152) removeAllObjects];
  [*(*(a1 + 32) + 160) removeAllObjects];
  br_pacer_cancel(*(*(a1 + 32) + 144));
}

- (void)disableUpdates
{
  OUTLINED_FUNCTION_4_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __42__BRItemCollectionGatherer_disableUpdates__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)enableUpdates
{
  OUTLINED_FUNCTION_4_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __41__BRItemCollectionGatherer_enableUpdates__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)pauseWatchingWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E7A16670;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

uint64_t __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer pauseWatchingWithCompletionBlock:]_block_invoke", 821);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) _stopObeservingCollections];
  return (*(*(a1 + 40) + 16))();
}

- (void)resumeWatching
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__BRItemCollectionGatherer_resumeWatching__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__BRItemCollectionGatherer_resumeWatching__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer resumeWatching]_block_invoke", 829);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__BRItemCollectionGatherer_resumeWatching__block_invoke_cold_1();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(*(a1 + 32) + 16) allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) startObserving];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_queueSignalDelegateIfNeededOnFinishGathering
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__BRItemCollectionGatherer__queueSignalDelegateIfNeededOnFinishGathering__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_signalDelegateIfNeededOnFinishGathering
{
  if (self->_finishedInitialGathering || [(NSMutableSet *)self->_waitingToBeGatheredCollections count]|| !self->_finishedLookingUpAppLibraries)
  {
    return 0;
  }

  v3 = brc_bread_crumbs("[BRItemCollectionGatherer _signalDelegateIfNeededOnFinishGathering]", 847);
  v4 = 1;
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRItemCollectionGatherer _signalDelegateIfNeededOnFinishGathering];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained itemCollectionGathererFinishedGathering];

  self->_finishedInitialGathering = 1;
  return v4;
}

- (void)_removeCollectionFromGatherSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_waitingToBeGatheredCollections removeObject:set];
  if (![(BRItemCollectionGatherer *)self _signalDelegateIfNeededOnFinishGathering])
  {
    if (!self->_finishedLookingUpAppLibraries)
    {
      v4 = brc_bread_crumbs("[BRItemCollectionGatherer _removeCollectionFromGatherSet:]", 860);
      v5 = brc_default_log(1, 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [BRItemCollectionGatherer _removeCollectionFromGatherSet:];
      }
    }

    if ([(NSMutableSet *)self->_waitingToBeGatheredCollections count])
    {
      v6 = brc_bread_crumbs("[BRItemCollectionGatherer _removeCollectionFromGatherSet:]", 863);
      v7 = brc_default_log(1, 0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        anyObject = [(NSMutableSet *)self->_waitingToBeGatheredCollections anyObject];
        v9 = [(NSMutableSet *)self->_waitingToBeGatheredCollections count];
        v10 = 138413058;
        selfCopy = self;
        v12 = 2112;
        v13 = anyObject;
        v14 = 2048;
        v15 = v9 - 1;
        v16 = 2112;
        v17 = v6;
        _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - still waiting on %@ (and %lu more collections) to finish gathering%@", &v10, 0x2Au);
      }
    }
  }
}

- (unint64_t)_itemID:(id)d becameOwnedByCollection:(id)collection
{
  dCopy = d;
  collectionCopy = collection;
  v8 = [(NSMutableDictionary *)self->_itemOwnersMap objectForKey:dCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSMutableDictionary *)self->_itemOwnersMap setObject:v8 forKey:dCopy];
  }

  [v8 addObject:collectionCopy];
  v9 = [v8 count];

  return v9;
}

- (unint64_t)_itemID:(id)d wasDeletedByCollection:(id)collection
{
  dCopy = d;
  collectionCopy = collection;
  v8 = [(NSMutableDictionary *)self->_itemOwnersMap objectForKey:dCopy];
  if (!v8)
  {
    [BRItemCollectionGatherer _itemID:wasDeletedByCollection:];
  }

  [v8 removeObject:collectionCopy];
  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_itemOwnersMap removeObjectForKey:dCopy];
  }

  v9 = [v8 count];

  return v9;
}

- (BOOL)_isItemOwnedByAnyCollection:(id)collection
{
  v3 = [(NSMutableDictionary *)self->_itemOwnersMap objectForKey:collection];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  queue = self->_queue;
  reloadedCopy = reloaded;
  dispatch_assert_queue_V2(queue);
  [(BRItemCollectionGatherer *)self dataForCollectionShouldBeReloaded:reloadedCopy deleteItemsWithIDs:MEMORY[0x1E695E0F0]];
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded deleteItemsWithIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  reloadedCopy = reloaded;
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_queue);
  if (([(NSMutableSet *)self->_collectionsSet containsObject:reloadedCopy]& 1) != 0)
  {
    v8 = brc_bread_crumbs("[BRItemCollectionGatherer dataForCollectionShouldBeReloaded:deleteItemsWithIDs:]", 907);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412802;
      selfCopy2 = self;
      v14 = 2112;
      v15 = reloadedCopy;
      v16 = 2112;
      v17 = v8;
      _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - dataForCollectionShouldBeReloaded on collection %@ - forwarding it to the didUpdate method%@", &v12, 0x20u);
    }

    items = [reloadedCopy items];
    [(BRItemCollectionGatherer *)self collection:reloadedCopy didUpdateItems:items replaceItemsByFormerID:MEMORY[0x1E695E0F8] deleteItemsWithIDs:dsCopy];
  }

  else
  {
    items = brc_bread_crumbs("[BRItemCollectionGatherer dataForCollectionShouldBeReloaded:deleteItemsWithIDs:]", 904);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy2 = self;
      v14 = 2112;
      v15 = reloadedCopy;
      v16 = 2112;
      v17 = items;
      _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", &v12, 0x20u);
    }
  }
}

- (void)collectionDidFinishGathering:(id)gathering
{
  v29 = *MEMORY[0x1E69E9840];
  gatheringCopy = gathering;
  if (([(NSMutableSet *)self->_collectionsSet containsObject:gatheringCopy]& 1) == 0)
  {
    WeakRetained = brc_bread_crumbs("[BRItemCollectionGatherer collectionDidFinishGathering:]", 913);
    v18 = brc_default_log(1, 0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = self;
      v25 = 2112;
      v26 = gatheringCopy;
      v27 = 2112;
      v28 = WeakRetained;
      _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v5 = brc_bread_crumbs("[BRItemCollectionGatherer collectionDidFinishGathering:]", 920);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = self;
    v25 = 2112;
    v26 = gatheringCopy;
    v27 = 2112;
    v28 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - collectionDidFinishGathering on %@%@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  items = [gatheringCopy items];
  [WeakRetained itemCollectionGathererGatheredItems:items];

  v9 = [(NSMutableDictionary *)self->_itemIDToItemCollectionMap count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  items2 = [gatheringCopy items];
  v11 = [items2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(items2);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        itemID = [v15 itemID];
        [(BRItemCollectionGatherer *)self _itemID:itemID becameOwnedByCollection:gatheringCopy];

        [(BRItemCollectionGatherer *)self _buildCollectionOnItemIfPossible:v15];
      }

      v12 = [items2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  finishedInitialGathering = self->_finishedInitialGathering;
  [(BRItemCollectionGatherer *)self _removeCollectionFromGatherSet:gatheringCopy];
  if (!finishedInitialGathering && self->_finishedInitialGathering && v9 != [(NSMutableDictionary *)self->_itemIDToItemCollectionMap count])
  {
    [BRItemCollectionGatherer collectionDidFinishGathering:buf];
    v18 = *buf;
LABEL_17:
  }
}

- (void)_addDeletedItems:(id)items
{
  queue = self->_queue;
  itemsCopy = items;
  dispatch_assert_queue_V2(queue);
  [(NSMutableSet *)self->_deletedItems addObjectsFromArray:itemsCopy];
  [(NSMutableDictionary *)self->_addedItems removeObjectsForKeys:itemsCopy];
}

- (void)_addUpdatedItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        addedItems = self->_addedItems;
        itemID = [v10 itemID];
        [(NSMutableDictionary *)addedItems setObject:v10 forKeyedSubscript:itemID];

        deletedItems = self->_deletedItems;
        itemID2 = [v10 itemID];
        [(NSMutableSet *)deletedItems removeObject:itemID2];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)_getUpdatedItems
{
  dispatch_assert_queue_V2(self->_queue);
  allValues = [(NSMutableDictionary *)self->_addedItems allValues];
  [(NSMutableDictionary *)self->_addedItems removeAllObjects];

  return allValues;
}

- (id)_getDeletedItems
{
  dispatch_assert_queue_V2(self->_queue);
  allObjects = [(NSMutableSet *)self->_deletedItems allObjects];
  [(NSMutableSet *)self->_deletedItems removeAllObjects];

  return allObjects;
}

- (void)collection:(id)collection didEncounterError:(id)error
{
  v59 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  errorCopy = error;
  if (([(NSMutableSet *)self->_collectionsSet containsObject:collectionCopy]& 1) != 0)
  {
    v8 = [(NSMutableSet *)self->_waitingToBeGatheredCollections containsObject:collectionCopy];
    v9 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 985);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      v37 = &stru_1F23D4ED0;
      *v56 = 138413314;
      *&v56[4] = self;
      if (v8)
      {
        v37 = @" while gathering";
      }

      *&v56[12] = 2112;
      *&v56[14] = collectionCopy;
      *&v56[22] = 2112;
      v57 = errorCopy;
      *v58 = 2112;
      *&v58[2] = v37;
      *&v58[10] = 2112;
      *&v58[12] = v9;
      _os_log_error_impl(&dword_1AE2A9000, v10, 0x90u, "[ERROR] %@ - collection %@ did encounter error %@%@%@", v56, 0x34u);
    }

    *v56 = 0;
    *&v56[8] = v56;
    *&v56[16] = 0x3032000000;
    v57 = __Block_byref_object_copy__12;
    *v58 = __Block_byref_object_dispose__12;
    *&v58[8] = 0;
    itemIDToItemCollectionMap = self->_itemIDToItemCollectionMap;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke;
    v45[3] = &unk_1E7A16C10;
    v12 = collectionCopy;
    v46 = v12;
    v47 = v56;
    [(NSMutableDictionary *)itemIDToItemCollectionMap enumerateKeysAndObjectsUsingBlock:v45];
    v13 = *(*&v56[8] + 40);
    if (!v13)
    {
      v27 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1037);
      v28 = brc_default_log(0, 0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        selfCopy6 = self;
        v50 = 2112;
        v51 = v12;
        v52 = 2112;
        v53 = v27;
        _os_log_fault_impl(&dword_1AE2A9000, v28, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ - Couldn't locate itemID for collection %@%@", buf, 0x20u);
      }

      if (v8)
      {
        [(BRItemCollectionGatherer *)self _removeCollectionFromGatherSet:v12];
      }

      goto LABEL_27;
    }

    failureCountByItemID = self->_failureCountByItemID;
    if (!failureCountByItemID)
    {
      v15 = objc_opt_new();
      v16 = self->_failureCountByItemID;
      self->_failureCountByItemID = v15;

      failureCountByItemID = self->_failureCountByItemID;
      v13 = *(*&v56[8] + 40);
    }

    v17 = [(NSMutableDictionary *)failureCountByItemID objectForKeyedSubscript:v13];
    longLongValue = [v17 longLongValue];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:longLongValue];
    [(NSMutableDictionary *)self->_failureCountByItemID setObject:v19 forKeyedSubscript:*(*&v56[8] + 40)];

    v20 = longLongValue + 1;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    if ((longLongValue + 1) < 6)
    {
      if ([errorCopy br_isFileProviderErrorCode:-1005])
      {
        v21 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1008);
        v22 = brc_default_log(1, 0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(*&v56[8] + 40);
          *buf = 138412802;
          selfCopy6 = self;
          v50 = 2112;
          v51 = v29;
          v52 = 2112;
          v53 = v21;
          _os_log_debug_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Looks like item %@ got deleted -> recursive delete.%@", buf, 0x20u);
        }

        goto LABEL_22;
      }

      if (![errorCopy br_isCocoaErrorCode:257])
      {
        defaultManager = [MEMORY[0x1E69673A8] defaultManager];
        v34 = *(*&v56[8] + 40);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68;
        v40[3] = &unk_1E7A16C38;
        v40[4] = self;
        v40[5] = v56;
        v40[6] = &v41;
        [defaultManager fetchItemForItemID:v34 completionHandler:v40];

        if ((v42[3] & 1) == 0)
        {
          v35 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1026);
          v36 = brc_default_log(1, 0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            selfCopy6 = self;
            v50 = 2048;
            v51 = v20;
            v52 = 2112;
            v53 = v35;
            _os_log_debug_impl(&dword_1AE2A9000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - restart observing the collection. Failure count [%llu]%@", buf, 0x20u);
          }

          [v12 startObserving];
          goto LABEL_26;
        }

LABEL_23:
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(BRItemCollectionGatherer *)self _stopWatchingItemIDRecusively:*(*&v56[8] + 40) itemIDsInItem:v30];
        v31 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1032);
        v32 = brc_default_log(1, 0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(*&v56[8] + 40);
          *buf = 138413058;
          selfCopy6 = self;
          v50 = 2112;
          v51 = v30;
          v52 = 2112;
          v53 = v38;
          v54 = 2112;
          v55 = v31;
          _os_log_debug_impl(&dword_1AE2A9000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - All these items [%@] found under this item [%@] and should be deleted.%@", buf, 0x2Au);
        }

        [(BRItemCollectionGatherer *)self _addDeletedItems:v30];
        br_pacer_signal(self->_notificationPacer);

LABEL_26:
        _Block_object_dispose(&v41, 8);

LABEL_27:
        _Block_object_dispose(v56, 8);

        goto LABEL_28;
      }

      v21 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1011);
      v22 = brc_default_log(0, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v39 = *(*&v56[8] + 40);
        *buf = 138412802;
        selfCopy6 = self;
        v50 = 2112;
        v51 = v39;
        v52 = 2112;
        v53 = v21;
        v24 = "[CRIT] UNREACHABLE: %@ - Looks like we don't have permission to view %@%@";
        goto LABEL_9;
      }
    }

    else
    {
      v21 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 1005);
      v22 = brc_default_log(0, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v23 = *(*&v56[8] + 40);
        *buf = 138412802;
        selfCopy6 = self;
        v50 = 2112;
        v51 = v23;
        v52 = 2112;
        v53 = v21;
        v24 = "[CRIT] UNREACHABLE: %@ - BRItemCollectionGatherer - Repeatedly can't watch item %@%@";
LABEL_9:
        _os_log_fault_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_FAULT, v24, buf, 0x20u);
      }
    }

LABEL_22:

    *(v42 + 24) = 1;
    goto LABEL_23;
  }

  v25 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]", 980);
  v26 = brc_default_log(1, 0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 138412802;
    *&v56[4] = self;
    *&v56[12] = 2112;
    *&v56[14] = collectionCopy;
    *&v56[22] = 2112;
    v57 = v25;
    _os_log_impl(&dword_1AE2A9000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", v56, 0x20u);
  }

LABEL_28:
}

void __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]_block_invoke", 1016);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v9 = a1[4];
      v10 = *(*(a1[5] + 8) + 40);
      v11 = 138413058;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %@ - Couldn't refresh itemID %@ error [%@]%@", &v11, 0x2Au);
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didEncounterError:]_block_invoke", 1019);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68_cold_1();
    }
  }

  *(*(a1[6] + 8) + 24) = 1;
LABEL_6:
}

- (void)_itemCollectionGathererSendUpdates
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)collection:(id)collection didUpdateItems:(id)items replaceItemsByFormerID:(id)d deleteItemsWithIDs:(id)ds
{
  v61 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  itemsCopy = items;
  dsCopy = ds;
  if (([(NSMutableSet *)self->_collectionsSet containsObject:collectionCopy]& 1) != 0)
  {
    v12 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1066);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = itemsCopy;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v48;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v47 + 1) + 8 * i);
          itemID = [v19 itemID];
          [(BRItemCollectionGatherer *)self _itemID:itemID becameOwnedByCollection:collectionCopy];

          [(BRItemCollectionGatherer *)self _startWatchingNewSubItem:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v16);
    }

    v39 = v14;

    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = dsCopy;
    v21 = dsCopy;
    v22 = [v21 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v44;
      do
      {
        v25 = 0;
        do
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v43 + 1) + 8 * v25);
          if (![(BRItemCollectionGatherer *)self _isItemOwnedByAnyCollection:v26])
          {
            v29 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1078);
            v31 = brc_default_log(1, 0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              selfCopy5 = self;
              v53 = 2112;
              v54 = v26;
              v55 = 2112;
              v56 = v29;
              _os_log_debug_impl(&dword_1AE2A9000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is not known by us, ignoring it%@", buf, 0x20u);
            }

            goto LABEL_24;
          }

          v27 = [(BRItemCollectionGatherer *)self _itemID:v26 wasDeletedByCollection:collectionCopy];
          if (v27)
          {
            v28 = v27;
            v29 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1086);
            v30 = brc_default_log(1, 0);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413058;
              selfCopy5 = self;
              v53 = 2112;
              v54 = v26;
              v55 = 2048;
              v56 = v28;
              v57 = 2112;
              v58 = v29;
              _os_log_debug_impl(&dword_1AE2A9000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is being owned by %lu other collections%@", buf, 0x2Au);
            }

LABEL_24:
            goto LABEL_25;
          }

          v32 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1083);
          v33 = brc_default_log(1, 0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            selfCopy5 = self;
            v53 = 2112;
            v54 = v26;
            v55 = 2112;
            v56 = v32;
            _os_log_debug_impl(&dword_1AE2A9000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - item ID %@ is not owned by any other collection, reporting a deletion for this item%@", buf, 0x20u);
          }

          [(BRItemCollectionGatherer *)self _stopWatchingItemIDRecusively:v26 itemIDsInItem:v42];
LABEL_25:
          ++v25;
        }

        while (v23 != v25);
        v34 = [v21 countByEnumeratingWithState:&v43 objects:v59 count:16];
        v23 = v34;
      }

      while (v34);
    }

    v35 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1092);
    v36 = brc_default_log(1, 0);
    v37 = v42;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      selfCopy5 = self;
      v53 = 2112;
      v54 = v42;
      v55 = 2112;
      v56 = v21;
      v57 = 2112;
      v58 = v35;
      _os_log_debug_impl(&dword_1AE2A9000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - All these items [%@] found under these items [%@] and should be deleted.%@", buf, 0x2Au);
    }

    [(BRItemCollectionGatherer *)self _addUpdatedItems:v39];
    [(BRItemCollectionGatherer *)self _addDeletedItems:v42];
    br_pacer_signal(self->_notificationPacer);
    dsCopy = v40;
    itemsCopy = v41;
  }

  else
  {
    v37 = brc_bread_crumbs("[BRItemCollectionGatherer collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:]", 1056);
    v38 = brc_default_log(1, 0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy5 = self;
      v53 = 2112;
      v54 = collectionCopy;
      v55 = 2112;
      v56 = v37;
      _os_log_impl(&dword_1AE2A9000, v38, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Ignoring events from item collection: %@%@", buf, 0x20u);
    }
  }
}

- (void)_shouldFilterEvaluatedItem:collectionRootItem:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_startWatchingURLs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __47__BRItemCollectionGatherer__startWatchingURLs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_startWatchingAppLibraries:.cold.1()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE2A9000, a2, 0x90u, "[ERROR] Reached maximum retry attempts, giving up on retrying...%@", &v2, 0xCu);
}

void __55__BRItemCollectionGatherer__startWatchingAppLibraries___block_invoke_58_cold_1()
{
  OUTLINED_FUNCTION_4_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __61__BRItemCollectionGatherer__startWatchingRootItemWithConfig___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __56__BRItemCollectionGatherer__unboostApplibrariesIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __57__BRItemCollectionGatherer__invalidateAndNotifyDelegate___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __61__BRItemCollectionGatherer_pauseWatchingWithCompletionBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __42__BRItemCollectionGatherer_resumeWatching__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_5(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_signalDelegateIfNeededOnFinishGathering
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_removeCollectionFromGatherSet:.cold.1()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_itemID:wasDeletedByCollection:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRItemCollectionGatherer _itemID:wasDeletedByCollection:]", 880);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: itemOwners%@", &v2, 0xCu);
  }
}

- (void)collectionDidFinishGathering:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = brc_bread_crumbs("[BRItemCollectionGatherer collectionDidFinishGathering:]", 937);
  *a1 = v2;
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_fault_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: numberOfWatchedItemsBefore == numberOfWatchedItemsAfter%@", &v4, 0xCu);
  }
}

void __57__BRItemCollectionGatherer_collection_didEncounterError___block_invoke_68_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)collection:didUpdateItems:replaceItemsByFormerID:deleteItemsWithIDs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end