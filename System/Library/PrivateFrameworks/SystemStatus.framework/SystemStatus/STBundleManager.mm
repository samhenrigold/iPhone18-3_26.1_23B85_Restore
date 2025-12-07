@interface STBundleManager
+ (id)_defaultBundleRecordDirectoriesForClass:(Class)class;
+ (id)_defaultBundleRecordIdentifierAllowListForClass:(Class)class;
- (NSSet)recordIdentifiers;
- (STBundleManager)initWithBundleRecordClass:(Class)class;
- (id)_initWithBundleRecordClass:(Class)class directoryURLs:(id)ls allowedBundleRecordIdentifiers:(id)identifiers;
- (id)_queue_loadAllBundleRecords;
- (id)bundleRecordForRecordIdentifier:(id)identifier;
- (void)_queue_prepareInternalPreferences;
- (void)_queue_registerForInternalPreferenceChanges;
- (void)_queue_runBlockOnObservers:(id)observers;
- (void)_queue_setIgnoreAllowedList:(BOOL)list;
- (void)_queue_unregisterForInternalPreferenceChanges;
- (void)_queue_updateAllBundleRecords;
- (void)_queue_updateAllBundleRecordsForAllBundleRecords:(id)records;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation STBundleManager

- (id)_initWithBundleRecordClass:(Class)class directoryURLs:(id)ls allowedBundleRecordIdentifiers:(id)identifiers
{
  lsCopy = ls;
  identifiersCopy = identifiers;
  v28.receiver = self;
  v28.super_class = STBundleManager;
  v10 = [(STBundleManager *)&v28 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundleRecordClass, class);
    v12 = [lsCopy copy];
    directoryURLs = v11->_directoryURLs;
    v11->_directoryURLs = v12;

    v14 = [identifiersCopy copy];
    allowedBundleRecordIdentifiers = v11->_allowedBundleRecordIdentifiers;
    v11->_allowedBundleRecordIdentifiers = v14;

    v16 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    queue_observers = v11->_queue_observers;
    v11->_queue_observers = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.SystemStatus.BundleManager.work", v18);
    queue = v11->_queue;
    v11->_queue = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.SystemStatus.BundleManager.callout", v21);
    callOutQueue = v11->_callOutQueue;
    v11->_callOutQueue = v22;

    v24 = v11->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__STBundleManager__initWithBundleRecordClass_directoryURLs_allowedBundleRecordIdentifiers___block_invoke;
    block[3] = &unk_1E85DE068;
    v27 = v11;
    dispatch_sync(v24, block);
  }

  return v11;
}

uint64_t __91__STBundleManager__initWithBundleRecordClass_directoryURLs_allowedBundleRecordIdentifiers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_prepareInternalPreferences];
  [*(a1 + 32) _queue_updateAllBundleRecords];
  v2 = *(a1 + 32);

  return [v2 _queue_registerForInternalPreferenceChanges];
}

- (STBundleManager)initWithBundleRecordClass:(Class)class
{
  v5 = [objc_opt_class() _defaultBundleRecordDirectoriesForClass:class];
  v6 = [objc_opt_class() _defaultBundleRecordIdentifierAllowListForClass:class];
  v7 = [(STBundleManager *)self _initWithBundleRecordClass:class directoryURLs:v5 allowedBundleRecordIdentifiers:v6];

  return v7;
}

+ (id)_defaultBundleRecordDirectoriesForClass:(Class)class
{
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (MEMORY[0x1E12742A0]("+[STBundleManager _defaultBundleRecordDirectoriesForClass:]"))
  {
    v5 = +[STSystemStatusDefaults standardDefaults];
    shouldEnableInternalBundles = [v5 shouldEnableInternalBundles];

    if (shouldEnableInternalBundles)
    {
      v7 = [MEMORY[0x1E696AEC0] pathWithComponents:&unk_1F5678600];
      v8 = [v4 arrayByAddingObject:v7];

      v4 = v8;
    }
  }

  recordType = [(objc_class *)class recordType];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__STBundleManager__defaultBundleRecordDirectoriesForClass___block_invoke;
  v13[3] = &unk_1E85DE650;
  v14 = recordType;
  v10 = recordType;
  v11 = [v4 bs_map:v13];

  return v11;
}

id __59__STBundleManager__defaultBundleRecordDirectoriesForClass___block_invoke(uint64_t a1, void *a2)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = a2;
  v5 = BSSystemRootDirectory();
  v9[0] = v5;
  v9[1] = v4;
  v9[2] = @"SystemStatus";
  v9[3] = @"Bundles";
  v9[4] = *(a1 + 32);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v7 = [v3 fileURLWithPathComponents:v6];

  return v7;
}

+ (id)_defaultBundleRecordIdentifierAllowListForClass:(Class)class
{
  recordType = [(objc_class *)class recordType];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__STBundleManager__defaultBundleRecordIdentifierAllowListForClass___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED7F5CC8 != -1)
  {
    dispatch_once(&qword_1ED7F5CC8, block);
  }

  v5 = [_MergedGlobals_7 objectForKey:recordType];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];

  return v6;
}

void __67__STBundleManager__defaultBundleRecordIdentifierAllowListForClass___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"BundleAllowList" withExtension:@"plist"];

  v9 = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v2 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = v3;
    v7 = _MergedGlobals_7;
    _MergedGlobals_7 = v8;
  }

  else
  {
    v7 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1DA9C2000, v7, OS_LOG_TYPE_ERROR, "Unable to load bundle allow list: %@", buf, 0xCu);
    }
  }
}

- (id)bundleRecordForRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__STBundleManager_bundleRecordForRecordIdentifier___block_invoke;
  block[3] = &unk_1E85DDDF0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__STBundleManager_bundleRecordForRecordIdentifier___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 56) objectForKey:a1[5]];
  v2 = [v5 copyWithZone:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSSet)recordIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__STBundleManager_recordIdentifiers__block_invoke;
  v5[3] = &unk_1E85DE698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__STBundleManager_recordIdentifiers__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFD8];
  v6 = [*(*(a1 + 32) + 56) allKeys];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__STBundleManager_addObserver___block_invoke;
  v7[3] = &unk_1E85DDD00;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__STBundleManager_removeObserver___block_invoke;
  v7[3] = &unk_1E85DDD00;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)_queue_runBlockOnObservers:(id)observers
{
  observersCopy = observers;
  dispatch_assert_queue_V2(self->_queue);
  allObjects = [(NSHashTable *)self->_queue_observers allObjects];
  callOutQueue = self->_callOutQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__STBundleManager__queue_runBlockOnObservers___block_invoke;
  v9[3] = &unk_1E85DE6C0;
  v10 = allObjects;
  v11 = observersCopy;
  v7 = observersCopy;
  v8 = allObjects;
  dispatch_async(callOutQueue, v9);
}

- (void)_queue_updateAllBundleRecords
{
  dispatch_assert_queue_V2(self->_queue);
  _queue_loadAllBundleRecords = [(STBundleManager *)self _queue_loadAllBundleRecords];
  [(STBundleManager *)self _queue_updateAllBundleRecordsForAllBundleRecords:_queue_loadAllBundleRecords];
}

- (id)_queue_loadAllBundleRecords
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSArray *)self->_directoryURLs bs_mapNoNulls:&__block_literal_global_8];
  bs_flatten = [v3 bs_flatten];
  v5 = [bs_flatten bs_filter:&__block_literal_global_34];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__STBundleManager__queue_loadAllBundleRecords__block_invoke_3;
  v8[3] = &unk_1E85DE728;
  v8[4] = self;
  v6 = [v5 bs_mapNoNulls:v8];

  return v6;
}

id __46__STBundleManager__queue_loadAllBundleRecords__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AC08];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:0];

  return v5;
}

BOOL __46__STBundleManager__queue_loadAllBundleRecords__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 caseInsensitiveCompare:@"bundle"] == 0;

  return v3;
}

void *__46__STBundleManager__queue_loadAllBundleRecords__block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) bundleRecordForBundleAtURL:v3];
  v5 = v4;
  v6 = *(a1 + 32);
  if ((*(v6 + 72) & 1) != 0 || (v7 = *(v6 + 24), [v4 recordIdentifier], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "containsObject:", v8), v8, v7))
  {
    v9 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_INFO, "Loaded bundle at %{public}@:\n%{public}@", &v14, 0x16u);
    }

    v10 = v5;
  }

  else
  {
    if (!MEMORY[0x1E12742A0]("[STBundleManager _queue_loadAllBundleRecords]_block_invoke"))
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 recordIdentifier];
      v14 = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "Not loading bundle at %{public}@, either add %{public}@ to the allow list, or configure SystemStatus for debugging.", &v14, 0x16u);
    }

    v10 = 0;
  }

LABEL_7:
  v11 = v10;

  return v10;
}

- (void)_queue_updateAllBundleRecordsForAllBundleRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        recordIdentifier = [v11 recordIdentifier];
        [v5 setObject:v11 forKey:recordIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v13 = [v5 copy];
    queue_allBundleRecordsByIdentifier = self->_queue_allBundleRecordsByIdentifier;
    self->_queue_allBundleRecordsByIdentifier = v13;

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__STBundleManager__queue_updateAllBundleRecordsForAllBundleRecords___block_invoke;
    v15[3] = &unk_1E85DE750;
    v15[4] = self;
    [(STBundleManager *)self _queue_runBlockOnObservers:v15];
  }
}

- (void)_queue_prepareInternalPreferences
{
  dispatch_assert_queue_V2(self->_queue);
  if (MEMORY[0x1E12742A0]("[STBundleManager _queue_prepareInternalPreferences]"))
  {
    v3 = +[STSystemStatusDefaults standardDefaults];
    self->_queue_ignoreAllowList = [v3 shouldEnableUnknownBundles];
  }

  else
  {
    self->_queue_ignoreAllowList = 0;
  }
}

- (void)_queue_registerForInternalPreferenceChanges
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v3 = +[STSystemStatusDefaults standardDefaults];
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__STBundleManager__queue_registerForInternalPreferenceChanges__block_invoke;
  v7[3] = &unk_1E85DDD78;
  objc_copyWeak(&v8, &location);
  v5 = [v3 observeDefault:@"shouldEnableUnknownBundles" onQueue:queue withBlock:v7];
  internalDefaultsObserver = self->_internalDefaultsObserver;
  self->_internalDefaultsObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__STBundleManager__queue_registerForInternalPreferenceChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[STSystemStatusDefaults standardDefaults];
  [WeakRetained _queue_setIgnoreAllowedList:{objc_msgSend(v1, "shouldEnableUnknownBundles")}];
}

- (void)_queue_unregisterForInternalPreferenceChanges
{
  dispatch_assert_queue_V2(self->_queue);
  internalDefaultsObserver = self->_internalDefaultsObserver;

  [(BSDefaultObserver *)internalDefaultsObserver invalidate];
}

- (void)_queue_setIgnoreAllowedList:(BOOL)list
{
  listCopy = list;
  v9 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (MEMORY[0x1E12742A0]("[STBundleManager _queue_setIgnoreAllowedList:]") && self->_queue_ignoreAllowList != listCopy)
  {
    self->_queue_ignoreAllowList = listCopy;
    v5 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Disabling";
      if (listCopy)
      {
        v6 = @"Enabling";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "%@ bundles which are not on the allow list and re-scanning...", &v7, 0xCu);
    }

    [(STBundleManager *)self _queue_updateAllBundleRecords];
  }
}

@end