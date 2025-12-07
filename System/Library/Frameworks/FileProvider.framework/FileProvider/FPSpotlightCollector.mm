@interface FPSpotlightCollector
+ (id)_recursiveDescription;
+ (id)processingQueue;
- (BOOL)_shouldFilterUpdatesForObserver:(id)observer;
- (BOOL)isQueryCancelled:(id)cancelled;
- (BOOL)isSuspended;
- (FPSpotlightCollector)init;
- (FPSpotlightCollector)initWithDescriptor:(id)descriptor;
- (FPSpotlightCollectorDelegate)delegate;
- (id)_allItemsForMountPoint:(id)point;
- (id)_createQueriesForMountPoints:(id)points;
- (id)_createQueryForMountPoint:(id)point;
- (id)_mountPointForExistingSearchQuery:(id)query;
- (id)_mountPointsForDescriptor;
- (id)allItems;
- (id)allItemsForObserver:(id)observer;
- (id)allObservers;
- (id)description;
- (id)filterItems:(id)items forObserver:(id)observer excludedItemIDs:(id *)ds;
- (unint64_t)_itemsOriginForItems:(id)items;
- (void)_addObserver:(id)observer;
- (void)_clear;
- (void)_regather;
- (void)_removeItemsForQuery:(id)query mountPoint:(id)point;
- (void)_removeObserver:(id)observer;
- (void)_start;
- (void)_stop;
- (void)addObserver:(id)observer;
- (void)mountPointsDidChange:(id)change;
- (void)query:(id)query didFinishWithError:(id)error;
- (void)query:(id)query didRemoveItemsWithCSIdentifiers:(id)identifiers inBundle:(id)bundle;
- (void)query:(id)query didUpdateItems:(id)items;
- (void)queryDidFinishGathering:(id)gathering;
- (void)removeObserver:(id)observer;
- (void)resume;
- (void)setNeedsItemsOriginUpdate;
- (void)suspend;
@end

@implementation FPSpotlightCollector

+ (id)processingQueue
{
  if (processingQueue_onceToken != -1)
  {
    +[FPSpotlightCollector processingQueue];
  }

  v3 = processingQueue_processingQueue;

  return v3;
}

void __39__FPSpotlightCollector_processingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.DocumentManager.Spotlight.processingQueue", v2);
  v1 = processingQueue_processingQueue;
  processingQueue_processingQueue = v0;
}

- (void)_clear
{
  v3 = objc_opt_new();
  observers = self->_observers;
  self->_observers = v3;

  self->_gathering = 1;
  v5 = objc_opt_new();
  itemsByBundleAndCSID = self->_itemsByBundleAndCSID;
  self->_itemsByBundleAndCSID = v5;

  v7 = objc_opt_new();
  itemsByProviderAndCollaborationIdentifier = self->_itemsByProviderAndCollaborationIdentifier;
  self->_itemsByProviderAndCollaborationIdentifier = v7;

  MEMORY[0x1EEE66BB8](v7, itemsByProviderAndCollaborationIdentifier);
}

- (void)_start
{
  OUTLINED_FUNCTION_6_0();
  v2 = [v1 description];
  v8 = [v0 description];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (id)_mountPointsForDescriptor
{
  queryDescriptor = [(FPSpotlightCollector *)self queryDescriptor];
  supportsQueryingAllMountPoints = [queryDescriptor supportsQueryingAllMountPoints];

  if (supportsQueryingAllMountPoints && ([(FPSpotlightCollector *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    delegate = [(FPSpotlightCollector *)self delegate];
    v7 = [delegate mountPointsForCollector:self];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:@"FPQueryCollectionDefaultMountPointIdentifier"];
  }

  return v7;
}

- (FPSpotlightCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setNeedsItemsOriginUpdate
{
  v15 = *MEMORY[0x1E69E9840];
  allItems = [(FPSpotlightCollector *)self allItems];
  v4 = [(FPSpotlightCollector *)self _itemsOriginForItems:allItems];

  if (v4 != [(FPSpotlightCollector *)self itemsOrigin])
  {
    [(FPSpotlightCollector *)self setItemsOrigin:v4];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_observers;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) collector:self didUpdateItemsOrigin:{-[FPSpotlightCollector itemsOrigin](self, "itemsOrigin", v10)}];
        }

        while (v7 != v9);
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)allItems
{
  v3 = objc_opt_new();
  itemsByBundleAndCSID = self->_itemsByBundleAndCSID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__FPSpotlightCollector_allItems__block_invoke;
  v7[3] = &unk_1E793AAC0;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)itemsByBundleAndCSID enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __32__FPSpotlightCollector_allItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allValues];
  [v3 addObjectsFromArray:v4];
}

+ (id)_recursiveDescription
{
  v2 = +[FPSpotlightCollectorManager sharedInstance];
  _recursiveDescription = [v2 _recursiveDescription];

  return _recursiveDescription;
}

- (FPSpotlightCollector)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPSpotlightCollector.m" lineNumber:109 description:@"UNREACHABLE: call -initWithDescriptor: instead"];

  return [(FPSpotlightCollector *)self initWithDescriptor:0];
}

- (FPSpotlightCollector)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v15.receiver = self;
  v15.super_class = FPSpotlightCollector;
  v6 = [(FPSpotlightCollector *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryDescriptor, descriptor);
    processingQueue = [objc_opt_class() processingQueue];
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = processingQueue;

    v10 = objc_opt_new();
    queries = v7->_queries;
    v7->_queries = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:261 valueOptions:256 capacity:10];
    queryToMountPoint = v7->_queryToMountPoint;
    v7->_queryToMountPoint = v12;

    [(FPSpotlightCollector *)v7 _clear];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  queryDescriptor = [(FPSpotlightCollector *)self queryDescriptor];
  name = [queryDescriptor name];
  v8 = [v3 stringWithFormat:@"<%@:%p n:%@>", v5, self, name];

  return v8;
}

- (BOOL)isSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__FPSpotlightCollector_isSuspended__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (([(NSMutableSet *)self->_observers containsObject:observerCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_observers addObject:observerCopy];
  }

  if (self->_suspended)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightCollector _addObserver:];
    }
  }

  else
  {
    if (!self->_gathering)
    {
      v6 = [(FPSpotlightCollector *)self allItemsForObserver:observerCopy];
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(FPSpotlightCollector *)self description];
        v11 = 138412802;
        v12 = v10;
        v13 = 2112;
        v14 = observerCopy;
        v15 = 2048;
        v16 = [v6 count];
        _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Adding observer %@: gathering %ld items", &v11, 0x20u);
      }

      [observerCopy collector:self didGatherItems:v6];
    }

    queries = [(FPSpotlightCollector *)self queries];
    v9 = [queries count];

    if (!v9)
    {
      [(FPSpotlightCollector *)self _start];
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPSpotlightCollector_addObserver___block_invoke;
  block[3] = &unk_1E793AA48;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__FPSpotlightCollector_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addObserver:*(a1 + 32)];
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightCollector _removeObserver:];
  }

  [(NSMutableSet *)self->_observers removeObject:observerCopy];
  if (![(NSMutableSet *)self->_observers count])
  {
    queryDescriptor = [(FPSpotlightCollector *)self queryDescriptor];
    keepCollectorsAlive = [queryDescriptor keepCollectorsAlive];

    if ((keepCollectorsAlive & 1) == 0)
    {
      [(FPSpotlightCollector *)self _stop];
      delegate = [(FPSpotlightCollector *)self delegate];
      [delegate collectorDidFinish:self];
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FPSpotlightCollector_removeObserver___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(processingQueue, v7);
}

- (id)allObservers
{
  v2 = [(NSMutableSet *)self->_observers copy];

  return v2;
}

- (void)_stop
{
  OUTLINED_FUNCTION_3();
  v3 = [v2 description];
  queries = [v1 queries];
  [queries count];
  v5 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

- (void)suspend
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__FPSpotlightCollector_suspend__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(processingQueue, block);
}

_BYTE *__31__FPSpotlightCollector_suspend__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    result = [result _stop];
    *(*(a1 + 32) + 24) = 1;
  }

  return result;
}

- (void)resume
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPSpotlightCollector_resume__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(processingQueue, block);
}

_BYTE *__30__FPSpotlightCollector_resume__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24] == 1)
  {
    result = [result _start];
    *(*(a1 + 32) + 24) = 0;
  }

  return result;
}

- (void)mountPointsDidChange:(id)change
{
  changeCopy = change;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPSpotlightCollector_mountPointsDidChange___block_invoke;
  block[3] = &unk_1E793AA70;
  block[4] = self;
  v9 = changeCopy;
  v10 = a2;
  v7 = changeCopy;
  dispatch_async(processingQueue, block);
}

void __45__FPSpotlightCollector_mountPointsDidChange___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  obj = [*(a1 + 32) observers];
  if ([obj count] && *(*v2 + 24) != 1)
  {
    v3 = [*v2 queryDescriptor];
    v4 = [v3 supportsQueryingAllMountPoints];

    if (v4)
    {
      v37 = [*(a1 + 40) mutableCopy];
      v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
      v38 = objc_opt_new();
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      obja = [*(a1 + 32) queries];
      v6 = [obja countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v50;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v50 != v8)
            {
              objc_enumerationMutation(obja);
            }

            v10 = *(*(&v49 + 1) + 8 * i);
            v11 = [*v2 _mountPointForExistingSearchQuery:v10];
            if (!v11)
            {
              __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_1();
            }

            if ([*(a1 + 40) containsObject:v11])
            {
              [v37 removeObject:v11];
            }

            else
            {
              if ([v11 isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"])
              {
                __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_2();
              }

              v12 = fp_current_or_default_log();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                v13 = [*v2 description];
                v36 = NSStringFromSelector(*(a1 + 48));
                *buf = 138412802;
                v54 = v13;
                v55 = 2112;
                v56 = v10;
                v57 = 2112;
                v58 = v36;
                _os_log_debug_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Cancelling query %@ (%@)", buf, 0x20u);
              }

              [v10 cancel];
              [v38 addObject:v10];
              [*v2 _removeItemsForQuery:v10 mountPoint:v11];
            }
          }

          v7 = [obja countByEnumeratingWithState:&v49 objects:v63 count:16];
        }

        while (v7);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v14 = v37;
      v15 = [v14 countByEnumeratingWithState:&v45 objects:v62 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v46;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v46 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*v2 _createQueryForMountPoint:*(*(&v45 + 1) + 8 * j)];
            [v5 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v45 objects:v62 count:16];
        }

        while (v16);
      }

      v20 = [*v2 queries];
      [v20 removeObjectsInArray:v38];

      v21 = [*v2 queries];
      [v21 addObjectsFromArray:v5];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = v5;
      v23 = [v22 countByEnumeratingWithState:&v41 objects:v61 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v42;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v41 + 1) + 8 * k);
            v28 = fp_current_or_default_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = [*v2 description];
              *buf = 138412546;
              v54 = v29;
              v55 = 2048;
              v56 = v27;
              _os_log_debug_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Starting query %p", buf, 0x16u);
            }

            [v27 start];
          }

          v24 = [v22 countByEnumeratingWithState:&v41 objects:v61 count:16];
        }

        while (v24);
      }

      v30 = fp_current_or_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = [*v2 description];
        v32 = [*v2 queries];
        v33 = [v32 count];
        v34 = [v38 count];
        v35 = [v22 count];
        *buf = 138413058;
        v54 = v31;
        v55 = 2048;
        v56 = v33;
        v57 = 2048;
        v58 = v34;
        v59 = 2048;
        v60 = v35;
        _os_log_debug_impl(&dword_1AAAE1000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Number of queries after mount points changed: %ld (cancelled %ld old query/ies, started %ld new query/ies).", buf, 0x2Au);
      }
    }
  }

  else
  {
  }
}

- (BOOL)_shouldFilterUpdatesForObserver:(id)observer
{
  observerCopy = observer;
  if ([(FPSpotlightCollector *)self _shouldRemoveItemsFromObserver:observerCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [observerCopy itemPredicateForCollector:self];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)_mountPointForExistingSearchQuery:(id)query
{
  processingQueue = self->_processingQueue;
  queryCopy = query;
  dispatch_assert_queue_V2(processingQueue);
  v6 = [(NSMapTable *)self->_queryToMountPoint objectForKey:queryCopy];

  return v6;
}

- (id)filterItems:(id)items forObserver:(id)observer excludedItemIDs:(id *)ds
{
  itemsCopy = items;
  observerCopy = observer;
  if (ds)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    *ds = v10;
  }

  else
  {
    v10 = 0;
  }

  v11 = [observerCopy itemPredicateForCollector:self];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke;
  v19[3] = &unk_1E793AA98;
  v20 = v11;
  selfCopy = self;
  v13 = v12;
  v22 = v13;
  v23 = v10;
  v14 = v10;
  v15 = v11;
  [itemsCopy enumerateObjectsUsingBlock:v19];
  v16 = v23;
  v17 = v13;

  return v13;
}

void __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 evaluateWithObject:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 collaborationIdentifier];

  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
    v8 = [v3 providerIDForDeduplication];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v3 collaborationIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [v3 isEqual:v11] ^ 1;
    }

    else
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke_cold_1();
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v5 | v12))
  {
    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = [v3 itemID];
      [v14 addObject:v15];
    }
  }

  else
  {
    [*(a1 + 48) addObject:v3];
  }
}

- (id)_allItemsForMountPoint:(id)point
{
  pointCopy = point;
  v5 = [(NSMutableDictionary *)self->_itemsByBundleAndCSID objectForKeyedSubscript:@"com.apple.filesystems.UserFS.FileProvider"];
  v6 = v5;
  if (v5)
  {
    allValues = [v5 allValues];
    v8 = MEMORY[0x1E696AE18];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__FPSpotlightCollector__allItemsForMountPoint___block_invoke;
    v12[3] = &unk_1E793AAE8;
    v13 = pointCopy;
    v9 = [v8 predicateWithBlock:v12];
    v10 = [allValues filteredArrayUsingPredicate:v9];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

uint64_t __47__FPSpotlightCollector__allItemsForMountPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 domainIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)allItemsForObserver:(id)observer
{
  v27[3] = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  allItems = [(FPSpotlightCollector *)self allItems];
  v6 = [(FPSpotlightCollector *)self filterItems:allItems forObserver:observerCopy excludedItemIDs:0];
  maximumNumberOfItems = [observerCopy maximumNumberOfItems];

  if ([v6 count] > maximumNumberOfItems)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastUsedDate" ascending:0];
    v27[0] = v8;
    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"contentModificationDate" ascending:0];
    v27[1] = v9;
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayName" ascending:1];
    v27[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    [v6 sortUsingDescriptors:v11];

    v12 = [v6 count] - maximumNumberOfItems;
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(FPSpotlightCollector *)self description];
      v17 = [v6 count];
      v29.location = maximumNumberOfItems;
      v29.length = v12;
      v18 = NSStringFromRange(v29);
      v19 = 138413058;
      v20 = v16;
      v21 = 2048;
      v22 = v17;
      v23 = 2048;
      v24 = maximumNumberOfItems;
      v25 = 2112;
      v26 = v18;
      _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Too many results (%ld > %ld), will cut off the items in range %@.", &v19, 0x2Au);
    }

    v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{maximumNumberOfItems, v12}];
    [v6 removeObjectsAtIndexes:v14];
  }

  return v6;
}

- (BOOL)isQueryCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  queries = [(FPSpotlightCollector *)self queries];
  v6 = [queries containsObject:cancelledCopy];

  return v6 ^ 1;
}

- (void)query:(id)query didRemoveItemsWithCSIdentifiers:(id)identifiers inBundle:(id)bundle
{
  v127 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  identifiersCopy = identifiers;
  bundleCopy = bundle;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (![(FPSpotlightCollector *)self isQueryCancelled:queryCopy])
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(FPSpotlightCollector *)self description];
      selfCopy = self;
      v81 = v80 = identifiersCopy;
      *buf = 138413314;
      v118 = v81;
      v119 = 2112;
      v120 = queryCopy;
      v121 = 2080;
      v122 = "removed";
      v123 = 2048;
      v124 = [v80 count];
      v125 = 2112;
      v126 = v80;
      _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Did remove items for query:%@ (%s %ld items) %@", buf, 0x34u);

      identifiersCopy = v80;
      self = selfCopy;
    }

    if (bundleCopy)
    {
      if (!self->_gathering)
      {
        v83 = queryCopy;
        v84 = bundleCopy;
        selfCopy2 = self;
        v12 = [(NSMutableDictionary *)self->_itemsByBundleAndCSID objectForKeyedSubscript:bundleCopy];
        v90 = objc_opt_new();
        v89 = objc_opt_new();
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v82 = identifiersCopy;
        obj = identifiersCopy;
        v13 = [obj countByEnumeratingWithState:&v108 objects:v116 count:16];
        v86 = v12;
        if (v13)
        {
          v14 = v13;
          v15 = *v109;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v109 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v108 + 1) + 8 * i);
              v18 = [v12 objectForKeyedSubscript:v17];
              v19 = v18;
              if (v18)
              {
                itemID = [v18 itemID];
                [v90 addObject:itemID];

                [v89 addObject:v19];
                providerIDForDeduplication = [v19 providerIDForDeduplication];
                collaborationIdentifier = [v19 collaborationIdentifier];
                collaborationIdentifier2 = [v19 collaborationIdentifier];
                if (collaborationIdentifier2)
                {
                  v24 = collaborationIdentifier2;
                  v25 = [(NSMutableDictionary *)selfCopy2->_itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:providerIDForDeduplication];
                  v26 = [v25 objectForKeyedSubscript:collaborationIdentifier];
                  v27 = [v26 isEqual:v19];

                  v12 = v86;
                  if (v27)
                  {
                    v28 = [(NSMutableDictionary *)selfCopy2->_itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:providerIDForDeduplication];
                    [v28 setObject:0 forKeyedSubscript:collaborationIdentifier];
                  }
                }
              }

              else
              {
                providerIDForDeduplication = fp_current_or_default_log();
                if (os_log_type_enabled(providerIDForDeduplication, OS_LOG_TYPE_ERROR))
                {
                  v29 = [(FPSpotlightCollector *)selfCopy2 description];
                  *buf = 138412546;
                  v118 = v29;
                  v119 = 2112;
                  v120 = v17;
                  _os_log_error_impl(&dword_1AAAE1000, providerIDForDeduplication, OS_LOG_TYPE_ERROR, "[ERROR] %@: Unable to obtain item for identifier %@ when items have been removed from query results.", buf, 0x16u);
                }
              }
            }

            v14 = [obj countByEnumeratingWithState:&v108 objects:v116 count:16];
          }

          while (v14);
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v30 = obj;
        v31 = [v30 countByEnumeratingWithState:&v104 objects:v115 count:16];
        bundleCopy = v84;
        if (v31)
        {
          v32 = v31;
          v33 = *v105;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v105 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v104 + 1) + 8 * j);
              v36 = [(NSMutableDictionary *)selfCopy2->_itemsByBundleAndCSID objectForKeyedSubscript:v84];
              [v36 setObject:0 forKeyedSubscript:v35];
            }

            v32 = [v30 countByEnumeratingWithState:&v104 objects:v115 count:16];
          }

          while (v32);
        }

        v37 = selfCopy2;
        if ([v90 count])
        {
          if (![(FPSpotlightCollector *)selfCopy2 _areItemsTransientFromBundleIdentifier:v84])
          {
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v38 = selfCopy2->_observers;
            v39 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v100 objects:v114 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v101;
              while (2)
              {
                for (k = 0; k != v40; ++k)
                {
                  if (*v101 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  if (![(FPSpotlightCollector *)selfCopy2 _shouldRemoveItemsFromObserver:*(*(&v100 + 1) + 8 * k)])
                  {

                    [(FPSpotlightCollector *)selfCopy2 _regather];
                    goto LABEL_73;
                  }
                }

                v40 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v100 objects:v114 count:16];
                if (v40)
                {
                  continue;
                }

                break;
              }
            }

            v37 = selfCopy2;
          }

          v43 = objc_opt_new();
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          allItems = [(FPSpotlightCollector *)v37 allItems];
          v45 = [allItems countByEnumeratingWithState:&v96 objects:v113 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v97;
            do
            {
              for (m = 0; m != v46; ++m)
              {
                if (*v97 != v47)
                {
                  objc_enumerationMutation(allItems);
                }

                v49 = *(*(&v96 + 1) + 8 * m);
                collaborationIdentifier3 = [v49 collaborationIdentifier];

                if (collaborationIdentifier3)
                {
                  itemsByProviderAndCollaborationIdentifier = selfCopy2->_itemsByProviderAndCollaborationIdentifier;
                  providerIDForDeduplication2 = [v49 providerIDForDeduplication];
                  v53 = [(NSMutableDictionary *)itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:providerIDForDeduplication2];
                  collaborationIdentifier4 = [v49 collaborationIdentifier];
                  v55 = [v53 objectForKeyedSubscript:collaborationIdentifier4];

                  if (!v55)
                  {
                    v56 = selfCopy2->_itemsByProviderAndCollaborationIdentifier;
                    providerIDForDeduplication3 = [v49 providerIDForDeduplication];
                    v58 = [(NSMutableDictionary *)v56 objectForKeyedSubscript:providerIDForDeduplication3];

                    if (!v58)
                    {
                      v58 = objc_opt_new();
                      v59 = selfCopy2->_itemsByProviderAndCollaborationIdentifier;
                      providerIDForDeduplication4 = [v49 providerIDForDeduplication];
                      [(NSMutableDictionary *)v59 setObject:v58 forKeyedSubscript:providerIDForDeduplication4];
                    }

                    collaborationIdentifier5 = [v49 collaborationIdentifier];
                    [v58 setObject:v49 forKeyedSubscript:collaborationIdentifier5];

                    [v43 addObject:v49];
                  }
                }
              }

              v46 = [allItems countByEnumeratingWithState:&v96 objects:v113 count:16];
            }

            while (v46);
          }

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          obja = selfCopy2->_observers;
          v62 = [(NSMutableSet *)obja countByEnumeratingWithState:&v92 objects:v112 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v93;
            do
            {
              v65 = 0;
              v85 = v63;
              do
              {
                if (*v93 != v64)
                {
                  objc_enumerationMutation(obja);
                }

                v66 = *(*(&v92 + 1) + 8 * v65);
                v67 = objc_autoreleasePoolPush();
                if ([(FPSpotlightCollector *)selfCopy2 _shouldFilterUpdatesForObserver:v66])
                {
                  v68 = v43;
                  v69 = v64;
                  v70 = [(FPSpotlightCollector *)selfCopy2 filterItems:v89 forObserver:v66 excludedItemIDs:0];
                  fp_itemIDs = [v70 fp_itemIDs];
                  v72 = [fp_itemIDs count];
                  v73 = fp_current_or_default_log();
                  v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);
                  if (v72)
                  {
                    if (v74)
                    {
                      v77 = [(FPSpotlightCollector *)selfCopy2 description];
                      *buf = 138412802;
                      v118 = v77;
                      v119 = 2112;
                      v120 = v66;
                      v121 = 2112;
                      v122 = fp_itemIDs;
                      _os_log_debug_impl(&dword_1AAAE1000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@ to remove: %@", buf, 0x20u);
                    }

                    [v66 collector:selfCopy2 didRemoveItemIDs:fp_itemIDs];
                  }

                  else
                  {
                    if (v74)
                    {
                      v78 = [(FPSpotlightCollector *)selfCopy2 description];
                      *buf = 138412546;
                      v118 = v78;
                      v119 = 2112;
                      v120 = v66;
                      _os_log_debug_impl(&dword_1AAAE1000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Nothing to send to observer:%@", buf, 0x16u);
                    }
                  }

                  v64 = v69;
                  v43 = v68;
                  v63 = v85;
                }

                else
                {
                  v75 = fp_current_or_default_log();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                  {
                    v76 = [(FPSpotlightCollector *)selfCopy2 description];
                    *buf = 138412802;
                    v118 = v76;
                    v119 = 2112;
                    v120 = v66;
                    v121 = 2112;
                    v122 = v90;
                    _os_log_debug_impl(&dword_1AAAE1000, v75, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@ to receive delta deletion updates: %@", buf, 0x20u);
                  }

                  [v66 collector:selfCopy2 didRemoveItemIDs:v90];
                }

                if ([v43 count])
                {
                  [v66 collector:selfCopy2 didUpdateItems:v43];
                }

                objc_autoreleasePoolPop(v67);
                ++v65;
              }

              while (v63 != v65);
              v63 = [(NSMutableSet *)obja countByEnumeratingWithState:&v92 objects:v112 count:16];
            }

            while (v63);
          }

          [(FPSpotlightCollector *)selfCopy2 setNeedsItemsOriginUpdate];
          bundleCopy = v84;
          v12 = v86;
        }

LABEL_73:

        identifiersCopy = v82;
        queryCopy = v83;
      }
    }
  }
}

- (void)query:(id)query didUpdateItems:(id)items
{
  v92 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  itemsCopy = items;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (![(FPSpotlightCollector *)self isQueryCancelled:queryCopy])
  {
    v8 = fp_current_or_default_log();
    selfCopy = self;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v54 = [(FPSpotlightCollector *)self description];
      v55 = [itemsCopy count];
      if (self->_gathering)
      {
        v56 = "initially gathered";
      }

      else
      {
        v56 = "updated";
      }

      v57 = itemsCopy;
      v58 = [v57 count];
      v59 = MEMORY[0x1E696AEC0];
      if (v58 > 0xA)
      {
        v61 = [v57 subarrayWithRange:{0, 10}];

        v60 = [v59 stringWithFormat:@"%@...", v61];
        v57 = v61;
        self = selfCopy;
      }

      else
      {
        v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v57];
      }

      *buf = 138413314;
      v83 = v54;
      v84 = 2048;
      v85 = v55;
      v86 = 2080;
      v87 = v56;
      v88 = 2112;
      v89 = queryCopy;
      v90 = 2112;
      v91 = v60;
      _os_log_debug_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Did receive %ld %s items from query:%@ -- %@", buf, 0x34u);
    }

    v63 = queryCopy;

    v69 = objc_opt_new();
    v9 = objc_opt_new();
    v66 = self->_itemsByBundleAndCSID;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v62 = itemsCopy;
    v10 = itemsCopy;
    v11 = [v10 countByEnumeratingWithState:&v76 objects:v81 count:16];
    v67 = v9;
    if (v11)
    {
      v12 = v11;
      v13 = *v77;
      v65 = v10;
      v64 = *v77;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v77 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v76 + 1) + 8 * i);
          v16 = [[FPItem alloc] initWithSearchableItem:v15];
          v17 = v16;
          if (v16)
          {
            itemIdentifier = [(FPItem *)v16 itemIdentifier];
            v19 = [itemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

            if ((v19 & 1) == 0)
            {
              [v9 addObject:v17];
              bundleID = [v15 bundleID];
              if (bundleID)
              {
                v21 = [(NSMutableDictionary *)v66 objectForKeyedSubscript:bundleID];
                if (!v21)
                {
                  v21 = objc_opt_new();
                  [(NSMutableDictionary *)v66 setObject:v21 forKeyedSubscript:bundleID];
                }

                uniqueIdentifier = [v15 uniqueIdentifier];
                if (uniqueIdentifier)
                {
                  [v21 setObject:v17 forKeyedSubscript:uniqueIdentifier];
                }

                collaborationIdentifier = [(FPItem *)v17 collaborationIdentifier];

                if (collaborationIdentifier)
                {
                  itemsByProviderAndCollaborationIdentifier = self->_itemsByProviderAndCollaborationIdentifier;
                  providerIDForDeduplication = [(FPItem *)v17 providerIDForDeduplication];
                  v26 = [(NSMutableDictionary *)itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:providerIDForDeduplication];
                  collaborationIdentifier2 = [(FPItem *)v17 collaborationIdentifier];
                  v28 = [v26 objectForKeyedSubscript:collaborationIdentifier2];

                  self = selfCopy;
                  if (!v28 || ([v28 isEqual:v17] & 1) == 0 && !-[FPItem isCollaborationInvitation](v17, "isCollaborationInvitation"))
                  {
                    v29 = selfCopy->_itemsByProviderAndCollaborationIdentifier;
                    providerIDForDeduplication2 = [(FPItem *)v17 providerIDForDeduplication];
                    v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:providerIDForDeduplication2];

                    if (!v31)
                    {
                      v31 = objc_opt_new();
                      v32 = selfCopy->_itemsByProviderAndCollaborationIdentifier;
                      providerIDForDeduplication3 = [(FPItem *)v17 providerIDForDeduplication];
                      [(NSMutableDictionary *)v32 setObject:v31 forKeyedSubscript:providerIDForDeduplication3];
                    }

                    collaborationIdentifier3 = [(FPItem *)v17 collaborationIdentifier];
                    [v31 setObject:v17 forKeyedSubscript:collaborationIdentifier3];

                    if (v28)
                    {
                      itemID = [v28 itemID];
                      [v69 addObject:itemID];
                    }

                    self = selfCopy;
                  }

                  v9 = v67;
                }

                v10 = v65;
                v13 = v64;
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v76 objects:v81 count:16];
      }

      while (v12);
    }

    if (!self->_gathering)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = self->_observers;
      v36 = [(NSMutableSet *)obj countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v73;
        do
        {
          v39 = 0;
          do
          {
            if (*v73 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v72 + 1) + 8 * v39);
            v41 = objc_autoreleasePoolPush();
            if ([(FPSpotlightCollector *)self _shouldFilterUpdatesForObserver:v40])
            {
              v71 = 0;
              v42 = [(FPSpotlightCollector *)self filterItems:v9 forObserver:v40 excludedItemIDs:&v71];
              v43 = v71;
              v44 = [v42 count];
              v45 = [v43 count] + v44;
              v46 = [v69 count];
              v47 = fp_current_or_default_log();
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
              if (v45 + v46)
              {
                self = selfCopy;
                if (v48)
                {
                  v53 = [(FPSpotlightCollector *)selfCopy description];
                  *buf = 138413058;
                  v83 = v53;
                  v84 = 2112;
                  v85 = v40;
                  v86 = 2112;
                  v87 = v42;
                  v88 = 2112;
                  v89 = v43;
                  _os_log_debug_impl(&dword_1AAAE1000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@ notifying updates: %@ removal: %@", buf, 0x2Au);
                }

                if ([v42 count])
                {
                  [v40 collector:selfCopy didUpdateItems:v42];
                }

                v9 = v67;
                if ([v43 count])
                {
                  [v40 collector:selfCopy didRemoveItemIDs:v43];
                }

                if ([v69 count])
                {
                  [v40 collector:selfCopy didRemoveItemIDs:v69];
                }
              }

              else
              {
                self = selfCopy;
                if (v48)
                {
                  v52 = [(FPSpotlightCollector *)selfCopy description];
                  *buf = 138412546;
                  v83 = v52;
                  v84 = 2112;
                  v85 = v40;
                  _os_log_debug_impl(&dword_1AAAE1000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Skipping observer %@", buf, 0x16u);
                }

                v9 = v67;
              }
            }

            else
            {
              v49 = fp_current_or_default_log();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                v50 = [(FPSpotlightCollector *)self description];
                v51 = [v67 count];
                *buf = 138412802;
                v83 = v50;
                v84 = 2112;
                v85 = v40;
                v86 = 2048;
                v87 = v51;
                _os_log_debug_impl(&dword_1AAAE1000, v49, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@: notifying with delta updates (%ld items)", buf, 0x20u);

                v9 = v67;
              }

              [v40 collector:self didUpdateItems:v9];
            }

            objc_autoreleasePoolPop(v41);
            ++v39;
          }

          while (v37 != v39);
          v37 = [(NSMutableSet *)obj countByEnumeratingWithState:&v72 objects:v80 count:16];
        }

        while (v37);
      }

      [(FPSpotlightCollector *)self setNeedsItemsOriginUpdate];
    }

    itemsCopy = v62;
    queryCopy = v63;
  }
}

- (void)queryDidFinishGathering:(id)gathering
{
  v35 = *MEMORY[0x1E69E9840];
  gatheringCopy = gathering;
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = [(FPSpotlightCollector *)self isQueryCancelled:gatheringCopy];
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v19 = [(FPSpotlightCollector *)self description];
    v20 = @"NO";
    *buf = 138412802;
    v27 = v19;
    v28 = 2112;
    if (v5)
    {
      v20 = @"YES";
    }

    v29 = v20;
    v30 = 2112;
    v31 = gatheringCopy;
    _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Query did finish gathering (cancelled: %@): %@", buf, 0x20u);
  }

  if (!v5)
  {
    [(FPSpotlightCollector *)self setNeedsItemsOriginUpdate];
    self->_gathering = 0;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightCollector queryDidFinishGathering:];
    }

    v21 = gatheringCopy;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = self->_observers;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [(FPSpotlightCollector *)self allItemsForObserver:v13];
          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [(FPSpotlightCollector *)self description];
            v18 = [v15 count];
            *buf = 138413058;
            v27 = v17;
            v28 = 2048;
            v29 = v18;
            v30 = 2112;
            v31 = v13;
            v32 = 2112;
            v33 = v15;
            _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → %ld item(s) to observer %@: %@", buf, 0x2Au);
          }

          [v13 collector:self didGatherItems:v15];
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v10);
    }

    gatheringCopy = v21;
  }
}

- (void)query:(id)query didFinishWithError:(id)error
{
  v54[3] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (![(FPSpotlightCollector *)self isQueryCancelled:queryCopy])
  {
    if (!self->_gathering)
    {
      [(FPSpotlightCollector *)self queryDidFinishGathering:queryCopy];
    }

    v8 = [(FPSpotlightCollector *)self _mountPointForExistingSearchQuery:queryCopy];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"];
    }

    else
    {
      v10 = 1;
    }

    domain = [errorCopy domain];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v12 = getCSSearchQueryErrorDomainSymbolLoc_ptr;
    v48 = getCSSearchQueryErrorDomainSymbolLoc_ptr;
    if (!getCSSearchQueryErrorDomainSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSSearchQueryErrorDomainSymbolLoc_block_invoke;
      v53 = &unk_1E793A2E8;
      v54[0] = &v45;
      v13 = CoreSpotlightLibrary_0();
      v14 = dlsym(v13, "CSSearchQueryErrorDomain");
      *(*(v54[0] + 8) + 24) = v14;
      getCSSearchQueryErrorDomainSymbolLoc_ptr = *(*(v54[0] + 8) + 24);
      v12 = v46[3];
    }

    _Block_object_dispose(&v45, 8);
    if (!v12)
    {
      [FPSpotlightCollector query:didFinishWithError:];
    }

    v15 = [domain isEqualToString:*v12];

    domain2 = [errorCopy domain];
    v17 = [domain2 isEqualToString:*MEMORY[0x1E696A250]];

    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v37 = [(FPSpotlightCollector *)self description];
      *buf = 138412802;
      *&buf[4] = v37;
      *&buf[12] = 2048;
      *&buf[14] = queryCopy;
      *&buf[22] = 2112;
      v53 = errorCopy;
      _os_log_debug_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Did finish query:%p with error: %@", buf, 0x20u);
    }

    if (v15)
    {
      if ([errorCopy code] == -2003)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [FPSpotlightCollector query:didFinishWithError:];
        }

LABEL_32:

        [(FPSpotlightCollector *)self _removeItemsForQuery:queryCopy mountPoint:v9];
        queries = [(FPSpotlightCollector *)self queries];
        [queries removeObject:queryCopy];

LABEL_33:
        goto LABEL_34;
      }

      if ([errorCopy code] == -2002)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v38 = [(FPSpotlightCollector *)self description];
          v39 = [(FPSpotlightCollector *)self description];
          queryString = [queryCopy queryString];
          *buf = 138413058;
          *&buf[4] = v38;
          *&buf[12] = 2114;
          *&buf[14] = v39;
          *&buf[22] = 2114;
          v53 = errorCopy;
          LOWORD(v54[0]) = 2114;
          *(v54 + 2) = queryString;
          _os_log_debug_impl(&dword_1AAAE1000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Stopped searching for %{public}@: %{public}@, since query seems invalid: %{public}@", buf, 0x2Au);
        }

LABEL_24:

        v21 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696AA08];
        v51 = errorCopy;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v19 = [v21 errorWithDomain:@"com.apple.FileProvider.Spotlight" code:0 userInfo:v22];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v23 = self->_observers;
        v24 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v24)
        {
          v25 = *v42;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v23);
              }

              [*(*(&v41 + 1) + 8 * i) collector:self didEncounterError:{v19, v41}];
            }

            v24 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v24);
        }

        goto LABEL_32;
      }
    }

    else if (!v17 || [errorCopy code] != 4097)
    {
      v20 = fp_current_or_default_log();
      v19 = v20;
      if (!errorCopy)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [FPSpotlightCollector query:? didFinishWithError:?];
        }

        goto LABEL_32;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [FPSpotlightCollector query:didFinishWithError:];
      }

      goto LABEL_24;
    }

    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightCollector query:didFinishWithError:];
    }

    if (v15 && !(([errorCopy code] != -2000) | v10 & 1))
    {
      goto LABEL_33;
    }

    lastStartOfRecovery = self->_lastStartOfRecovery;
    if (lastStartOfRecovery && ([(NSDate *)lastStartOfRecovery timeIntervalSinceNow], v30 >= -15.0))
    {
      p_numberOfRecoveryAttempts = &self->_numberOfRecoveryAttempts;
      numberOfRecoveryAttempts = self->_numberOfRecoveryAttempts;
      if (numberOfRecoveryAttempts > 5)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [FPSpotlightCollector query:didFinishWithError:];
        }

        goto LABEL_24;
      }
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      v32 = self->_lastStartOfRecovery;
      self->_lastStartOfRecovery = date;

      numberOfRecoveryAttempts = 0;
      self->_numberOfRecoveryAttempts = 0;
      p_numberOfRecoveryAttempts = &self->_numberOfRecoveryAttempts;
    }

    *p_numberOfRecoveryAttempts = numberOfRecoveryAttempts + 1;
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightCollector query:didFinishWithError:];
    }

    [(FPSpotlightCollector *)self _removeItemsForQuery:queryCopy mountPoint:v9];
    queries2 = [(FPSpotlightCollector *)self queries];
    [queries2 removeObject:queryCopy];

    [(FPSpotlightCollector *)self _regather];
    goto LABEL_33;
  }

LABEL_34:
}

- (id)_createQueriesForMountPoints:(id)points
{
  v18 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(pointsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = pointsCopy;
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

        v11 = [(FPSpotlightCollector *)self _createQueryForMountPoint:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_createQueryForMountPoint:(id)point
{
  v67 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  dispatch_assert_queue_V2(self->_processingQueue);
  queryDescriptor = [(FPSpotlightCollector *)self queryDescriptor];
  v35 = [queryDescriptor queryStringForMountPoint:pointCopy];
  if (v35)
  {
    if ([queryDescriptor supportsSemanticSearch])
    {
      from = 0;
      p_from = &from;
      v59 = 0x2050000000;
      v5 = getCSUserQueryContextClass_softClass;
      v60 = getCSUserQueryContextClass_softClass;
      if (!getCSUserQueryContextClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSUserQueryContextClass_block_invoke;
        v65 = &unk_1E793A2E8;
        v66 = &from;
        __getCSUserQueryContextClass_block_invoke(location);
        v5 = p_from[3];
      }

      v6 = v5;
      _Block_object_dispose(&from, 8);
      v7 = objc_alloc_init(v5);
      [v7 setEnableRankedResults:0];
    }

    else
    {
      from = 0;
      p_from = &from;
      v59 = 0x2050000000;
      v9 = getCSSearchQueryContextClass_softClass;
      v60 = getCSSearchQueryContextClass_softClass;
      if (!getCSSearchQueryContextClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSSearchQueryContextClass_block_invoke;
        v65 = &unk_1E793A2E8;
        v66 = &from;
        __getCSSearchQueryContextClass_block_invoke(location);
        v9 = p_from[3];
      }

      v10 = v9;
      _Block_object_dispose(&from, 8);
      v7 = objc_alloc_init(v9);
    }

    v11 = FPDefaultFetchedAttributes();
    [v7 setFetchAttributes:v11];

    [v7 setLive:1];
    if ([queryDescriptor desiredCount] != -1)
    {
      [v7 setMaxCount:{objc_msgSend(queryDescriptor, "desiredCount")}];
    }

    if (([pointCopy isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"] & 1) == 0)
    {
      v63 = pointCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      [v7 setMountPoints:v12];
    }

    [queryDescriptor augmentQueryContext:v7];
    if ([queryDescriptor supportsSemanticSearch])
    {
      settings = [queryDescriptor settings];
      searchQuery = [settings searchQuery];
      userQueryString = [searchQuery userQueryString];

      from = 0;
      p_from = &from;
      v59 = 0x2050000000;
      v16 = getCSUserQueryClass_softClass;
      v60 = getCSUserQueryClass_softClass;
      if (!getCSUserQueryClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSUserQueryClass_block_invoke;
        v65 = &unk_1E793A2E8;
        v66 = &from;
        __getCSUserQueryClass_block_invoke(location);
        v16 = p_from[3];
      }

      v17 = v16;
      _Block_object_dispose(&from, 8);
      v18 = [[v16 alloc] initWithUserQueryString:userQueryString userQueryContext:v7];
      v62 = v35;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
      [v18 setFilterQueries:v19];
    }

    else
    {
      from = 0;
      p_from = &from;
      v59 = 0x2050000000;
      v20 = getCSSearchQueryClass_softClass;
      v60 = getCSSearchQueryClass_softClass;
      if (!getCSSearchQueryClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSSearchQueryClass_block_invoke;
        v65 = &unk_1E793A2E8;
        v66 = &from;
        __getCSSearchQueryClass_block_invoke(location);
        v20 = p_from[3];
      }

      v21 = v20;
      _Block_object_dispose(&from, 8);
      v18 = [[v20 alloc] initWithQueryString:v35 context:v7];
    }

    if (!v18)
    {
      [FPSpotlightCollector _createQueryForMountPoint:];
    }

    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(FPSpotlightCollector *)self description];
      *location = 138412802;
      *&location[4] = v34;
      *&location[12] = 2112;
      *&location[14] = pointCopy;
      *&location[22] = 2112;
      v65 = v18;
      _os_log_debug_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Creating query for mount point '%@': %@", location, 0x20u);
    }

    [(NSMapTable *)self->_queryToMountPoint setObject:pointCopy forKey:v18];
    v61 = *MEMORY[0x1E696A388];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    [v18 setProtectionClasses:v23];

    objc_initWeak(location, v18);
    objc_initWeak(&from, self);
    v24 = self->_processingQueue;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke;
    v52[3] = &unk_1E793AB38;
    v25 = v24;
    v53 = v25;
    v26 = pointCopy;
    v54 = v26;
    objc_copyWeak(&v55, &from);
    objc_copyWeak(&v56, location);
    [v18 setFoundItemsHandler:v52];
    foundItemsHandler = [v18 foundItemsHandler];
    [v18 setChangedItemsHandler:foundItemsHandler];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_3;
    v47[3] = &unk_1E793AB88;
    v28 = v25;
    v48 = v28;
    v29 = v26;
    v49 = v29;
    objc_copyWeak(&v50, &from);
    objc_copyWeak(&v51, location);
    [v18 setRemovedItemsHandler:v47];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_5;
    v42[3] = &unk_1E793ABD8;
    v30 = v28;
    v43 = v30;
    v31 = v29;
    v44 = v31;
    objc_copyWeak(&v45, &from);
    objc_copyWeak(&v46, location);
    [v18 setGatherEndedHandler:v42];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_7;
    v37[3] = &unk_1E793AC00;
    v32 = v30;
    v38 = v32;
    v39 = v31;
    objc_copyWeak(&v40, &from);
    objc_copyWeak(&v41, location);
    [v18 setCompletionHandler:v37];
    v8 = v18;
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v40);

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v45);

    objc_destroyWeak(&v51);
    objc_destroyWeak(&v50);

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v55);

    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_2;
  v6[3] = &unk_1E793AB10;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  objc_copyWeak(&v10, (a1 + 56));
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained query:v2 didUpdateItems:*(a1 + 40)];
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_4;
  block[3] = &unk_1E793AB60;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  objc_copyWeak(&v14, (a1 + 48));
  objc_copyWeak(&v15, (a1 + 56));
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  [WeakRetained query:v2 didRemoveItemsWithCSIdentifiers:*(a1 + 40) inBundle:*(a1 + 48)];
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_6;
  block[3] = &unk_1E793ABB0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  objc_copyWeak(&v6, (a1 + 56));
  dispatch_async(v2, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained queryDidFinishGathering:v2];
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_8;
  v6[3] = &unk_1E793AB10;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  objc_copyWeak(&v10, (a1 + 56));
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained query:v2 didFinishWithError:*(a1 + 40)];
}

- (void)_regather
{
  v6 = [self description];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (unint64_t)_itemsOriginForItems:(id)items
{
  itemsCopy = items;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__3;
  v11[4] = __Block_byref_object_dispose__3;
  v12 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__FPSpotlightCollector__itemsOriginForItems___block_invoke;
  v6[3] = &unk_1E793AC28;
  v6[4] = v11;
  v6[5] = &v7;
  [itemsCopy enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

void __45__FPSpotlightCollector__itemsOriginForItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 providerIDForDeduplication];
  v7 = *(*(a1 + 32) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  v10 = v6;
  if (v9)
  {
    if (([v6 isEqualToString:?] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong(v8, v6);
  }
}

- (void)_removeItemsForQuery:(id)query mountPoint:(id)point
{
  queryCopy = query;
  processingQueue = self->_processingQueue;
  pointCopy = point;
  dispatch_assert_queue_V2(processingQueue);
  v9 = [(FPSpotlightCollector *)self _allItemsForMountPoint:pointCopy];

  v10 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__FPSpotlightCollector__removeItemsForQuery_mountPoint___block_invoke;
  v15[3] = &unk_1E793AC50;
  v16 = v10;
  v11 = v10;
  [v9 enumerateObjectsUsingBlock:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__FPSpotlightCollector__removeItemsForQuery_mountPoint___block_invoke_2;
  v13[3] = &unk_1E793AC78;
  v13[4] = self;
  v14 = queryCopy;
  v12 = queryCopy;
  [v11 enumerateKeysAndObjectsUsingBlock:v13];
}

void __56__FPSpotlightCollector__removeItemsForQuery_mountPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 providerID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = [v11 providerID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  v9 = [v11 itemID];
  v10 = [v9 coreSpotlightIdentifier];
  [v6 addObject:v10];
}

- (void)_addObserver:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 description];
  v3 = [v0 description];
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [v0 description];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*v1 object:*v0 file:@"FPSpotlightCollector.m" lineNumber:278 description:@"Shouldn't be nil."];
}

void __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*v1 object:*v0 file:@"FPSpotlightCollector.m" lineNumber:286 description:@"The default mount point should never be removed."];
}

void __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v1 = [*v0 description];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)queryDidFinishGathering:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [v0 description];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)query:didFinishWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  [v1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)query:(void *)a1 didFinishWithError:.cold.2(void *a1)
{
  [a1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)query:didFinishWithError:.cold.3()
{
  OUTLINED_FUNCTION_3_2();
  [v1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)query:didFinishWithError:.cold.4()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [v1 description];
  v3 = [v0 description];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)query:didFinishWithError:.cold.5()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [v1 description];
  v3 = [v0 description];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)query:didFinishWithError:.cold.6()
{
  OUTLINED_FUNCTION_3_2();
  [v1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)query:didFinishWithError:.cold.7()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCSSearchQueryErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightCollector.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_createQueryForMountPoint:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [v1 queryDescriptor];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 handleFailureInMethod:v0 object:v1 file:@"FPSpotlightCollector.m" lineNumber:853 description:{@"Unable to create query for descriptor '%@'", v5}];
}

@end