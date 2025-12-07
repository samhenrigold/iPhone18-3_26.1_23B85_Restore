@interface FPTrashUnionCollection
- (FPTrashUnionCollection)initWithQueryCollection:(id)collection;
- (id)scopedSearchQuery;
- (void)fetchTrashItemsFromProvider:(id)provider completionHandler:(id)handler;
- (void)updateCollectionsForDomains:(id)domains;
@end

@implementation FPTrashUnionCollection

- (FPTrashUnionCollection)initWithQueryCollection:(id)collection
{
  v17[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v17[0] = collectionCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v16.receiver = self;
  v16.super_class = FPTrashUnionCollection;
  v7 = [(FPUnionCollection *)&v16 initWithCollections:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_trashQueryCollection, collection);
    updateQueue = [(FPItemCollection *)v7->_trashQueryCollection updateQueue];
    queue = v7->_queue;
    v7->_queue = updateQueue;

    objc_initWeak(&location, v7);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__FPTrashUnionCollection_initWithQueryCollection___block_invoke;
    v13[3] = &unk_1E793DB50;
    objc_copyWeak(&v14, &location);
    v10 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:v13];
    providerDomainChangesToken = v7->_providerDomainChangesToken;
    v7->_providerDomainChangesToken = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __50__FPTrashUnionCollection_initWithQueryCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 allValues];
    v6 = [WeakRetained filterDomains:v5];

    v7 = WeakRetained[32];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__FPTrashUnionCollection_initWithQueryCollection___block_invoke_2;
    v9[3] = &unk_1E79390B8;
    v10 = WeakRetained;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v9);
  }
}

BOOL __40__FPTrashUnionCollection_filterDomains___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 spotlightMountPoint];
  v3 = v2 != 0;

  return v3;
}

- (void)fetchTrashItemsFromProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  v7 = +[FPItemManager defaultManager];
  identifier = [providerCopy identifier];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__FPTrashUnionCollection_fetchTrashItemsFromProvider_completionHandler___block_invoke;
  v10[3] = &unk_1E793DBC0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v7 fetchOperationServiceForProviderDomainID:identifier handler:v10];
}

void __72__FPTrashUnionCollection_fetchTrashItemsFromProvider_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v4 = [a2 remoteObjectProxy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__FPTrashUnionCollection_fetchTrashItemsFromProvider_completionHandler___block_invoke_2;
    v6[3] = &unk_1E793DB98;
    v7 = *(a1 + 32);
    [v4 fetchTrashIdentifiersWithCompletionHandler:v6];
  }
}

- (void)updateCollectionsForDomains:(id)domains
{
  v26 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPTrashUnionCollection *)domainsCopy updateCollectionsForDomains:v5];
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(domainsCopy, "count") + 1}];
  [v6 addObject:self->_trashQueryCollection];
  v7 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = domainsCopy;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        dispatch_group_enter(v7);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke;
        v18[3] = &unk_1E793DBE8;
        v18[4] = v12;
        v19 = v6;
        v20 = v7;
        [(FPTrashUnionCollection *)self fetchTrashItemsFromProvider:v12 completionHandler:v18];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_8;
  block[3] = &unk_1E79390B8;
  block[4] = self;
  v17 = v6;
  v14 = v6;
  dispatch_group_notify(v7, queue, block);
}

void __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v15 = a3;
  if (v15)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 40);
    objc_sync_enter(v5);
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_cold_2();
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v16;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = +[FPItemManager defaultManager];
          v14 = [v13 newCollectionWithItemID:v11];
          [v12 addObject:v14];
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v5);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)scopedSearchQuery
{
  v2 = [[NSFileProviderSearchQuery alloc] initWithSearchScope:0];

  return v2;
}

- (void)updateCollectionsForDomains:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] updating trash collection with domains %@", &v2, 0xCu);
}

@end