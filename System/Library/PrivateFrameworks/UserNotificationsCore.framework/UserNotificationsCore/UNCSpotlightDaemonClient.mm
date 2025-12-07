@interface UNCSpotlightDaemonClient
+ (id)sharedInstance;
- (UNCSpotlightDaemonClient)init;
- (void)addObserver:(id)observer;
- (void)init;
- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask;
@end

@implementation UNCSpotlightDaemonClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNCSpotlightDaemonClient sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __42__UNCSpotlightDaemonClient_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(UNCSpotlightDaemonClient);

  return MEMORY[0x1EEE66BB8]();
}

- (UNCSpotlightDaemonClient)init
{
  v11.receiver = self;
  v11.super_class = UNCSpotlightDaemonClient;
  v2 = [(UNCSpotlightDaemonClient *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = v2;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v6 = getSpotlightDaemonClientRegisterSymbolLoc_ptr;
    v20 = getSpotlightDaemonClientRegisterSymbolLoc_ptr;
    if (!getSpotlightDaemonClientRegisterSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __getSpotlightDaemonClientRegisterSymbolLoc_block_invoke;
      v15 = &unk_1E85D6DE8;
      v16 = &v17;
      __getSpotlightDaemonClientRegisterSymbolLoc_block_invoke(buf);
      v6 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v6)
    {
      [UNCSpotlightDaemonClient init];
      v10 = v9;
      _Block_object_dispose(&v17, 8);
      _Unwind_Resume(v10);
    }

    v6(@"com.apple.corespotlight.daemon.notifications", v5);

    v7 = *MEMORY[0x1E69833A8];
    if (os_log_type_enabled(*MEMORY[0x1E69833A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "Registered as Spotlight client", buf, 2u);
    }
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }
}

- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }
}

- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask
{
  v42 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  array = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = updateCopy;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AEC0];
        v10 = objc_opt_class();
        uniqueIdentifier = [v8 uniqueIdentifier];
        attributeSet = [v8 attributeSet];
        summarizationStatus = [attributeSet summarizationStatus];
        attributeSet2 = [v8 attributeSet];
        v15 = [v9 stringWithFormat:@"<%@:%p, %@, %d, %d>", v10, v8, uniqueIdentifier, summarizationStatus, objc_msgSend(attributeSet2, "urgencyStatus")];
        [array addObject:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v5);
  }

  v16 = MEMORY[0x1E69833A8];
  v17 = *MEMORY[0x1E69833A8];
  if (os_log_type_enabled(*MEMORY[0x1E69833A8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    maskCopy = mask;
    v39 = 2112;
    v40 = array;
    _os_log_impl(&dword_1DA7A9000, v17, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient searchableItemsDidUpdate: %lu, %@", buf, 0x16u);
  }

  if (mask)
  {
    v18 = self->_observers;
    objc_sync_enter(v18);
    if ([(NSHashTable *)self->_observers count])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v19 = self->_observers;
      v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v20)
      {
        v21 = *v29;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v28 + 1) + 8 * j) searchableItemsDidUpdate:obj];
          }

          v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v23 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        [UNCSpotlightDaemonClient searchableItemsDidUpdate:v23 mask:?];
      }
    }

    objc_sync_exit(v18);
  }
}

- (void)init
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  [UNCSpotlightDaemonClient searchableItemsDidUpdate:v1 mask:?];
}

@end