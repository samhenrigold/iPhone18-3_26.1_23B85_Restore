@interface _KSTextReplacementLegacyStore
+ (id)basePersistentStoreURL;
+ (id)cachedStorePath;
+ (id)legacyImportFilePaths;
+ (id)legacyImportWordKeyPairsFromFiles:(id)files;
+ (id)legacyStorePath;
+ (id)textReplacementEntriesFromManagedObjects:(id)objects;
- (BOOL)_mergeShortcut:(id)shortcut phrase:(id)phrase fromContext:(id)context;
- (BOOL)_shouldMergeShortcut:(id)shortcut phrase:(id)phrase intoContext:(id)context;
- (BOOL)detectAndCleanDuplicatesWithContext:(id)context;
- (BOOL)mergeEntriesForUbiquityIdentityChangeFromURL:(id)l firstDelete:(BOOL)delete;
- (BOOL)mergeEntriesForUbiquityIdentityChangeIfNecessary;
- (BOOL)mergeEntriesFromAllStoresIncludeLocalVariations:(BOOL)variations;
- (BOOL)migrateEntriesFromStoreAtURL:(id)l error:(id *)error;
- (BOOL)needsMaintenance;
- (BOOL)save;
- (BOOL)writeEntriesToCache:(id)cache;
- (NSManagedObjectContext)managedObjectContext;
- (NSPersistentStore)persistentStore;
- (_KSTextReplacementLegacyStore)init;
- (_KSTextReplacementLegacyStore)initWithBaseURL:(id)l;
- (double)minimumUptimeRemaining;
- (id)_deleteTransaction:(id)transaction;
- (id)currentStoreIndentity;
- (id)entityDescription;
- (id)entriesFromCache:(id *)cache;
- (id)entriesMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)managedObjectModelURL;
- (id)mergeShortcutsFromContext:(id)context;
- (id)removeEntriesWithPredicate:(id)predicate;
- (id)storeURLForMergeAfterUbiquityIdentityChangeFromToken:(id)token toToken:(id)toToken withLastKnownToken:(id)knownToken shouldDeleteFirst:(BOOL *)first;
- (id)textReplacementEntries;
- (void)_deleteDuplicatesOfShortcut:(id)shortcut phrase:(id)phrase count:(int64_t)count withContext:(id)context;
- (void)addEntries:(id)entries removeEntries:(id)removeEntries withCompletionHandler:(id)handler;
- (void)cleanup;
- (void)dealloc;
- (void)didMaintenance;
- (void)didMergeEntriesForNewUbiquityIdentity:(id)identity;
- (void)didMergeEntriesForOtherLocalPeers:(id)peers;
- (void)endMinimumUptime;
- (void)iCloudAccountDidChange:(id)change;
- (void)importLegacyEntries;
- (void)importSampleShortcutsIfNecessary;
- (void)insertEntryWithValue:(id)value;
- (void)loadMaintenancePreferencesIfNecessary;
- (void)loadPersistentStoreIfNecessary;
- (void)migrateSundanceData;
- (void)migrateTellurideData;
- (void)performMaintenanceIfNecessary;
- (void)persistentStoreCoordinatorStoresDidChange:(id)change;
- (void)persistentStoreCoordinatorStoresWillChange:(id)change;
- (void)persistentStoreDidImportUbiquitousContentChanges:(id)changes;
- (void)prepareForMigration;
- (void)queryTextReplacementsWithCallback:(id)callback;
- (void)queryTextReplacementsWithPredicate:(id)predicate callback:(id)callback;
- (void)removeAllEntries;
- (void)requestMinimumUptime;
- (void)requestSync:(unint64_t)sync withCompletionBlock:(id)block;
- (void)retirePersistentStoreAtURL:(id)l;
- (void)runLegacyMigration;
- (void)runMaintenanceIncludeLocalVariations:(BOOL)variations;
- (void)scheduleCacheUpdate:(id)update;
- (void)unloadPersistentStore;
@end

@implementation _KSTextReplacementLegacyStore

- (id)managedObjectModelURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"UserDictionary" withExtension:@"mom"];

  return v3;
}

- (void)dealloc
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = +[_KSUtilities userDefaultsSuiteName];
  v5 = [v3 initWithSuiteName:v4];

  [v5 setBool:-[_KSTextReplacementLegacyStore shouldUpdateTheCache](self forKey:{"shouldUpdateTheCache"), @"KSLSShouldUpdateCache"}];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_suspendedForAccountChange)
  {
    workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
    dispatch_resume(workQueue);

    self->_suspendedForAccountChange = 0;
  }

  softLinkBRDaemonConnectionInvalidate();

  v8.receiver = self;
  v8.super_class = _KSTextReplacementLegacyStore;
  [(_KSTextReplacementLegacyStore *)&v8 dealloc];
}

- (_KSTextReplacementLegacyStore)initWithBaseURL:(id)l
{
  lCopy = l;
  v20.receiver = self;
  v20.super_class = _KSTextReplacementLegacyStore;
  v6 = [(_KSTextReplacementLegacyStore *)&v20 init];
  v7 = v6;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49___KSTextReplacementLegacyStore_initWithBaseURL___block_invoke;
    block[3] = &unk_2797F6310;
    v8 = v6;
    v19 = v8;
    if (initWithBaseURL__onceToken != -1)
    {
      dispatch_once(&initWithBaseURL__onceToken, block);
    }

    objc_storeStrong(&v8->_workQueue, initWithBaseURL__cdWorkQueueShared);
    objc_storeStrong(&v8->_persistentStoreCoordinator, initWithBaseURL__pscShared);
    objc_storeStrong(&v8->_baseURL, l);
    cachedStorePath = [objc_opt_class() cachedStorePath];
    cacheFilePath = v8->_cacheFilePath;
    v8->_cacheFilePath = cachedStorePath;

    [(_KSTextReplacementLegacyStore *)v8 setMinimumUptimeDidExpire:1];
    date = [MEMORY[0x277CBEAA8] date];
    [(_KSTextReplacementLegacyStore *)v8 setPersistentStoreDidLoadTime:date];

    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    v13 = +[_KSUtilities userDefaultsSuiteName];
    v14 = [v12 initWithSuiteName:v13];

    v8->_shouldUpdateTheCache = [v14 BOOLForKey:@"KSLSShouldUpdateCache"];
    v8->_shouldDisableCaching = [v14 BOOLForKey:@"KSShouldDisableCaching"];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_cleanup name:@"_KSTRShouldCleanupResources" object:0];

    if (!v8->_shouldDisableCaching)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v8 selector:sel_iCloudAccountDidChange_ name:*MEMORY[0x277CCA7C8] object:0];
    }
  }

  return v7;
}

- (_KSTextReplacementLegacyStore)init
{
  basePersistentStoreURL = [objc_opt_class() basePersistentStoreURL];
  v4 = [(_KSTextReplacementLegacyStore *)self initWithBaseURL:basePersistentStoreURL];

  return v4;
}

- (double)minimumUptimeRemaining
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  workQueue2 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___KSTextReplacementLegacyStore_minimumUptimeRemaining__block_invoke;
  v7[3] = &unk_2797F6F70;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(workQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)cleanup
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___KSTextReplacementLegacyStore_cleanup__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (NSManagedObjectContext)managedObjectContext
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  managedObjectContext = self->_managedObjectContext;
  if (!managedObjectContext)
  {
    v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v6 = self->_managedObjectContext;
    self->_managedObjectContext = v5;

    [(NSManagedObjectContext *)self->_managedObjectContext _setDelegate:self];
    v7 = self->_managedObjectContext;
    persistentStoreCoordinator = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
    [(NSManagedObjectContext *)v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

    [(NSManagedObjectContext *)self->_managedObjectContext setMergePolicy:*MEMORY[0x277CBE1C8]];
    managedObjectContext = self->_managedObjectContext;
  }

  v9 = managedObjectContext;

  return v9;
}

- (void)loadPersistentStoreIfNecessary
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[_KSTextReplacementLegacyStore loadPersistentStoreIfNecessary]";
  v5 = 2112;
  selfCopy = self;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  couldn't load persistent store at url: %@, error: %@", &v3, 0x20u);
}

- (void)unloadPersistentStore
{
  v11 = *MEMORY[0x277D85DE8];
  persistentStoreCoordinator = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
  persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v8 = 0;
  [persistentStoreCoordinator removePersistentStore:persistentStore error:&v8];
  v5 = v8;

  v6 = [(_KSTextReplacementLegacyStore *)self setUbiquityStoreLoaded:0];
  if (v5)
  {
    v7 = KSCategory(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[_KSTextReplacementLegacyStore unloadPersistentStore]";
      _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  ERROR: failed to unload PSC store", buf, 0xCu);
    }
  }
}

- (void)requestMinimumUptime
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = KSCategory(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[_KSTextReplacementLegacyStore requestMinimumUptime]";
    _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  persistentstore loaded, requesting minimum uptime", buf, 0xCu);
  }

  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(_KSTextReplacementLegacyStore *)self minimumUptimeDidExpire])
  {
    v5 = os_transaction_create();
    uptimeTransaction = self->_uptimeTransaction;
    self->_uptimeTransaction = v5;

    [(_KSTextReplacementLegacyStore *)self setMinimumUptimeDidExpire:0];
    date = [MEMORY[0x277CBEAA8] date];
    [(_KSTextReplacementLegacyStore *)self setPersistentStoreDidLoadTime:date];

    v8 = dispatch_time(0, 180000000000);
    workQueue2 = [(_KSTextReplacementLegacyStore *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___KSTextReplacementLegacyStore_requestMinimumUptime__block_invoke;
    block[3] = &unk_2797F6310;
    block[4] = self;
    dispatch_after(v8, workQueue2, block);
  }
}

- (void)endMinimumUptime
{
  v8 = *MEMORY[0x277D85DE8];
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(_KSTextReplacementLegacyStore *)self minimumUptimeDidExpire])
  {
    uptimeTransaction = self->_uptimeTransaction;
    self->_uptimeTransaction = 0;

    v5 = KSCategory([(_KSTextReplacementLegacyStore *)self setMinimumUptimeDidExpire:1]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[_KSTextReplacementLegacyStore endMinimumUptime]";
      _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  Ending minimum uptime", &v6, 0xCu);
    }
  }
}

- (NSPersistentStore)persistentStore
{
  persistentStoreCoordinator = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  return firstObject;
}

- (void)importSampleShortcutsIfNecessary
{
  v22 = *MEMORY[0x277D85DE8];
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = KSCategory(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[_KSTextReplacementLegacyStore importSampleShortcutsIfNecessary]";
    _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  importing sample shortcut", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  if (![(_KSTextReplacementLegacyStore *)self pendingSampleShortcutImport])
  {
    v6 = objc_alloc(MEMORY[0x277CBEBD0]);
    v7 = +[_KSUtilities userDefaultsSuiteName];
    v8 = [v6 initWithSuiteName:v7];

    v9 = [v8 stringForKey:@"kDidInsertSampleShortcutForPeer"];
    currentStoreIndentity = [(_KSTextReplacementLegacyStore *)self currentStoreIndentity];
    v11 = [v9 isEqualToString:currentStoreIndentity];
    if (v11)
    {
      v12 = KSCategory(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "[_KSTextReplacementLegacyStore importSampleShortcutsIfNecessary]";
        _os_log_impl(&dword_2557E2000, v12, OS_LOG_TYPE_INFO, "%s  already imported sample shortcut", buf, 0xCu);
      }
    }

    else
    {
      [(_KSTextReplacementLegacyStore *)self setPendingSampleShortcutImport:1];
      v12 = +[_KSTextReplacementHelper sampleShortcut];
      v19 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65___KSTextReplacementLegacyStore_importSampleShortcutsIfNecessary__block_invoke;
      v14[3] = &unk_2797F73A0;
      objc_copyWeak(&v17, &location);
      v15 = v8;
      v16 = currentStoreIndentity;
      [(_KSTextReplacementLegacyStore *)self addEntries:v13 removeEntries:0 withCompletionHandler:v14];

      objc_destroyWeak(&v17);
    }
  }

  objc_destroyWeak(&location);
}

- (void)prepareForMigration
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v4 = dispatch_semaphore_create(0);
  workQueue2 = [(_KSTextReplacementLegacyStore *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___KSTextReplacementLegacyStore_prepareForMigration__block_invoke;
  v8[3] = &unk_2797F71B8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(workQueue2, v8);

  v7 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v6, v7);
}

- (void)runMaintenanceIncludeLocalVariations:(BOOL)variations
{
  variationsCopy = variations;
  v10 = *MEMORY[0x277D85DE8];
  v5 = KSCategory(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[_KSTextReplacementLegacyStore runMaintenanceIncludeLocalVariations:]";
    _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  LS: running maintenance", &v8, 0xCu);
  }

  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = objc_autoreleasePoolPush();
  [(_KSTextReplacementLegacyStore *)self performMaintenanceIfNecessary];
  [(_KSTextReplacementLegacyStore *)self mergeEntriesFromAllStoresIncludeLocalVariations:variationsCopy];
  [(_KSTextReplacementLegacyStore *)self mergeEntriesForUbiquityIdentityChangeIfNecessary];
  objc_autoreleasePoolPop(v7);
}

- (void)addEntries:(id)entries removeEntries:(id)removeEntries withCompletionHandler:(id)handler
{
  entriesCopy = entries;
  removeEntriesCopy = removeEntries;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80___KSTextReplacementLegacyStore_addEntries_removeEntries_withCompletionHandler___block_invoke;
  v15[3] = &unk_2797F73C8;
  objc_copyWeak(&v20, &location);
  v16 = entriesCopy;
  v17 = removeEntriesCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = removeEntriesCopy;
  v14 = entriesCopy;
  dispatch_async(workQueue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)requestSync:(unint64_t)sync withCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___KSTextReplacementLegacyStore_requestSync_withCompletionBlock___block_invoke;
  block[3] = &unk_2797F6750;
  v10 = blockCopy;
  syncCopy = sync;
  block[4] = self;
  v8 = blockCopy;
  dispatch_async(workQueue, block);
}

- (void)removeAllEntries
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___KSTextReplacementLegacyStore_removeAllEntries__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)removeEntriesWithPredicate:(id)predicate
{
  v24[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1 selector:sel_compare_];
  v24[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];

  v8 = [(_KSTextReplacementLegacyStore *)self entriesMatchingPredicate:predicateCopy sortDescriptors:v7];
  managedObjectContext = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke;
  v14[3] = &unk_2797F6338;
  v10 = v8;
  v15 = v10;
  v11 = managedObjectContext;
  v16 = v11;
  v17 = &v18;
  [v11 performBlockAndWait:v14];

  objc_autoreleasePoolPop(v5);
  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)_deleteTransaction:(id)transaction
{
  transactionCopy = transaction;
  valueToDelete = [transactionCopy valueToDelete];

  if (valueToDelete)
  {
    v6 = MEMORY[0x277CCAC30];
    valueToDelete2 = [transactionCopy valueToDelete];
    phrase = [valueToDelete2 phrase];
    valueToDelete3 = [transactionCopy valueToDelete];
    shortcut = [valueToDelete3 shortcut];
    v11 = [v6 predicateWithFormat:@"phrase == %@ AND shortcut == %@", phrase, shortcut];

    v12 = [(_KSTextReplacementLegacyStore *)self removeEntriesWithPredicate:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)textReplacementEntries
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___KSTextReplacementLegacyStore_textReplacementEntries__block_invoke;
  v6[3] = &unk_2797F6F70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = [objc_opt_class() textReplacementEntriesFromManagedObjects:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)textReplacementEntriesFromManagedObjects:(id)objects
{
  v25 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        phrase = [v10 phrase];
        if ([(_KSTextReplacementEntry *)phrase length])
        {
          shortcut = [v10 shortcut];
          v13 = [shortcut length];

          if (!v13)
          {
            continue;
          }

          phrase = objc_alloc_init(_KSTextReplacementEntry);
          phrase2 = [v10 phrase];
          [(_KSTextReplacementEntry *)phrase setPhrase:phrase2];

          shortcut2 = [v10 shortcut];
          [(_KSTextReplacementEntry *)phrase setShortcut:shortcut2];

          v16 = MEMORY[0x277CBEAA8];
          timestamp = [v10 timestamp];
          v18 = [v16 dateWithTimeIntervalSince1970:{objc_msgSend(timestamp, "integerValue")}];
          [(_KSTextReplacementEntry *)phrase setTimestamp:v18];

          [v4 addObject:phrase];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)queryTextReplacementsWithCallback:(id)callback
{
  callbackCopy = callback;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___KSTextReplacementLegacyStore_queryTextReplacementsWithCallback___block_invoke;
  v7[3] = &unk_2797F7058;
  v8 = callbackCopy;
  v6 = callbackCopy;
  [(_KSTextReplacementLegacyStore *)self queryTextReplacementsWithPredicate:v5 callback:v7];
}

- (void)queryTextReplacementsWithPredicate:(id)predicate callback:(id)callback
{
  v18[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  callbackCopy = callback;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1 selector:sel_compare_];
  v18[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77___KSTextReplacementLegacyStore_queryTextReplacementsWithPredicate_callback___block_invoke;
  v14[3] = &unk_2797F6D48;
  v14[4] = self;
  v15 = predicateCopy;
  v16 = v9;
  v17 = callbackCopy;
  v11 = callbackCopy;
  v12 = v9;
  v13 = predicateCopy;
  dispatch_async(workQueue, v14);
}

- (id)entriesFromCache:(id *)cache
{
  v4 = MEMORY[0x277CBEA90];
  cacheFilePath = [(_KSTextReplacementLegacyStore *)self cacheFilePath];
  v6 = [v4 dataWithContentsOfFile:cacheFilePath];

  if (v6)
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:cache];
  }

  else
  {
    [_KSTextReplacementHelper errorWithCode:13 description:@"Couldn't decode cache"];
    *cache = v11 = 0;
  }

  return v11;
}

- (void)scheduleCacheUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  didScheduleCacheUpdate = [(_KSTextReplacementLegacyStore *)self didScheduleCacheUpdate];
  if ((didScheduleCacheUpdate & 1) == 0)
  {
    v7 = KSCategory(didScheduleCacheUpdate);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[_KSTextReplacementLegacyStore scheduleCacheUpdate:]";
      _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  Scheduling cache update", buf, 0xCu);
    }

    v8 = dispatch_time(0, 500000000);
    workQueue2 = [(_KSTextReplacementLegacyStore *)self workQueue];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __53___KSTextReplacementLegacyStore_scheduleCacheUpdate___block_invoke;
    v13 = &unk_2797F71B8;
    selfCopy = self;
    v15 = updateCopy;
    dispatch_after(v8, workQueue2, &v10);

    [(_KSTextReplacementLegacyStore *)self setDidScheduleCacheUpdate:1, v10, v11, v12, v13, selfCopy];
  }
}

- (BOOL)writeEntriesToCache:(id)cache
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:cache requiringSecureCoding:1 error:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = v5;
    v7 = KSCategory(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 description];
      *buf = 136315394;
      v17 = "[_KSTextReplacementLegacyStore writeEntriesToCache:]";
      v18 = 2112;
      v19 = v8;
      v9 = "%s  ERROR: Couldn't create data from TR entries: %@";
LABEL_7:
      _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, v9, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  cacheFilePath = [(_KSTextReplacementLegacyStore *)self cacheFilePath];
  v14 = 0;
  v11 = 1;
  [v4 writeToFile:cacheFilePath options:1 error:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = KSCategory(v12);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 description];
      *buf = 136315394;
      v17 = "[_KSTextReplacementLegacyStore writeEntriesToCache:]";
      v18 = 2112;
      v19 = v8;
      v9 = "%s  could not save TR cache: %@";
      goto LABEL_7;
    }

LABEL_8:

    v11 = 0;
  }

  return v11;
}

- (void)iCloudAccountDidChange:(id)change
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___KSTextReplacementLegacyStore_iCloudAccountDidChange___block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)entityDescription
{
  persistentStoreCoordinator = [(_KSTextReplacementLegacyStore *)self persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entities = [managedObjectModel entities];
  lastObject = [entities lastObject];

  return lastObject;
}

- (void)insertEntryWithValue:(id)value
{
  valueCopy = value;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  managedObjectContext = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54___KSTextReplacementLegacyStore_insertEntryWithValue___block_invoke;
  v9[3] = &unk_2797F71B8;
  v10 = managedObjectContext;
  v11 = valueCopy;
  v7 = valueCopy;
  v8 = managedObjectContext;
  [v8 performBlockAndWait:v9];
}

- (BOOL)save
{
  persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];

  if (persistentStore)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    managedObjectContext = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37___KSTextReplacementLegacyStore_save__block_invoke;
    v7[3] = &unk_2797F70F0;
    v5 = managedObjectContext;
    v8 = v5;
    v9 = &v10;
    [v5 performBlockAndWait:v7];
    LOBYTE(persistentStore) = *(v11 + 24);

    _Block_object_dispose(&v10, 8);
  }

  return persistentStore & 1;
}

- (id)entriesMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  managedObjectContext = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74___KSTextReplacementLegacyStore_entriesMatchingPredicate_sortDescriptors___block_invoke;
  v15[3] = &unk_2797F73F0;
  v15[4] = self;
  v10 = predicateCopy;
  v16 = v10;
  v11 = descriptorsCopy;
  v17 = v11;
  v19 = &v20;
  v12 = managedObjectContext;
  v18 = v12;
  [v12 performWithOptions:4 andBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (void)persistentStoreDidImportUbiquitousContentChanges:(id)changes
{
  changesCopy = changes;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82___KSTextReplacementLegacyStore_persistentStoreDidImportUbiquitousContentChanges___block_invoke;
  v7[3] = &unk_2797F71B8;
  v7[4] = self;
  v8 = changesCopy;
  v6 = changesCopy;
  dispatch_async(workQueue, v7);
}

- (id)mergeShortcutsFromContext:(id)context
{
  v62[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  NSLog(&cfstr_MergingShortcu.isa);
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entities = [managedObjectModel entities];
  lastObject = [entities lastObject];

  v11 = MEMORY[0x277CBE428];
  name = [lastObject name];
  v13 = [v11 fetchRequestWithEntityName:name];

  propertiesByName = [lastObject propertiesByName];
  v15 = [propertiesByName objectForKey:@"shortcut"];

  propertiesByName2 = [lastObject propertiesByName];
  v17 = [propertiesByName2 objectForKey:@"phrase"];

  v62[0] = v15;
  v62[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  [v13 setPropertiesToFetch:v18];

  v61[0] = v15;
  v61[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  [v13 setPropertiesToGroupBy:v19];

  [v13 setResultType:2];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__4;
  v58 = __Block_byref_object_dispose__4;
  v59 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__4;
  v52[4] = __Block_byref_object_dispose__4;
  v53 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke;
  v47[3] = &unk_2797F7418;
  v50 = v52;
  v20 = contextCopy;
  v48 = v20;
  v21 = v13;
  v49 = v21;
  v51 = &v54;
  [v20 performBlockAndWait:v47];
  if (v55[5])
  {
    NSLog(&cfstr_ErrorFetchingS.isa);
    v22 = v55[5];
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    managedObjectContext = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_2;
    v37[3] = &unk_2797F7468;
    v40 = v52;
    v24 = managedObjectContext;
    v38 = v24;
    objc_copyWeak(&v42, &location);
    v39 = v20;
    v41 = &v43;
    [v39 performBlockAndWait:v37];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_4;
    v30 = &unk_2797F7490;
    v32 = v35;
    v33 = &v43;
    v25 = v24;
    v31 = v25;
    v34 = &v54;
    [v25 performBlockAndWait:&v27];
    NSLog(&cfstr_CompletedMerge.isa, v44[3], v27, v28, v29, v30);
    v22 = v55[5];

    _Block_object_dispose(v35, 8);
    objc_destroyWeak(&v42);

    _Block_object_dispose(&v43, 8);
  }

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);

  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v6);

  return v22;
}

- (BOOL)_shouldMergeShortcut:(id)shortcut phrase:(id)phrase intoContext:(id)context
{
  shortcutCopy = shortcut;
  phraseCopy = phrase;
  v10 = MEMORY[0x277CBE428];
  contextCopy = context;
  entityDescription = [(_KSTextReplacementLegacyStore *)self entityDescription];
  name = [entityDescription name];
  v14 = [v10 fetchRequestWithEntityName:name];

  phraseCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"shortcut == %@ && phrase == %@", shortcutCopy, phraseCopy];
  [v14 setPredicate:phraseCopy];
  [v14 setFetchLimit:1];
  [v14 setResultType:1];
  v22 = 0;
  v16 = [contextCopy executeFetchRequest:v14 error:&v22];

  v17 = v22;
  v18 = v17;
  if (v17)
  {
    NSLog(&cfstr_ErrorWhileFetc.isa, v17);
  }

  v19 = [v16 count] == 0;
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  NSLog(&cfstr_ShouldMergeSho.isa, shortcutCopy, phraseCopy, v20);

  LOBYTE(v20) = [v16 count] == 0;
  return v20;
}

- (BOOL)_mergeShortcut:(id)shortcut phrase:(id)phrase fromContext:(id)context
{
  v39[1] = *MEMORY[0x277D85DE8];
  shortcutCopy = shortcut;
  phraseCopy = phrase;
  contextCopy = context;
  NSLog(&cfstr_MergeShortcut.isa, shortcutCopy, phraseCopy);
  context = objc_autoreleasePoolPush();
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entities = [managedObjectModel entities];
  lastObject = [entities lastObject];

  v15 = MEMORY[0x277CBE428];
  v35 = lastObject;
  name = [lastObject name];
  v17 = [v15 fetchRequestWithEntityName:name];

  v37 = phraseCopy;
  phraseCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"shortcut == %@ && phrase == %@", shortcutCopy, phraseCopy];
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0 selector:sel_compare_];
  v39[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];

  [v17 setPredicate:phraseCopy];
  [v17 setSortDescriptors:v20];
  [v17 setFetchLimit:1];
  v38 = 0;
  v21 = [contextCopy executeFetchRequest:v17 error:&v38];
  v22 = v38;
  v23 = v22;
  if (v22)
  {
    NSLog(&cfstr_ErrorFetchingS_0.isa, v22);
    v24 = 0;
  }

  else
  {
    selfCopy = self;
    firstObject = [v21 firstObject];
    v24 = firstObject != 0;
    if (firstObject)
    {
      v32 = objc_alloc(MEMORY[0x277CBE438]);
      [(_KSTextReplacementLegacyStore *)selfCopy entityDescription];
      v27 = v34 = shortcutCopy;
      managedObjectContext = [(_KSTextReplacementLegacyStore *)selfCopy managedObjectContext];
      v29 = [v32 initWithEntity:v27 insertIntoManagedObjectContext:managedObjectContext];
      v33 = contextCopy;
      v30 = v29;

      shortcutCopy = v34;
      [v30 _copyAttributeValuesFromObject:firstObject];

      contextCopy = v33;
    }
  }

  objc_autoreleasePoolPop(context);
  if (!v24)
  {
    NSLog(&cfstr_UnableToMigrat.isa);
  }

  return v24;
}

- (BOOL)migrateEntriesFromStoreAtURL:(id)l error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v9 = [persistentStore URL];
  v10 = [lCopy isEqual:v9];

  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_AttemptingShor.isa, lCopy);
    v12 = objc_alloc(MEMORY[0x277CBE450]);
    managedObjectModelURL = [(_KSTextReplacementLegacyStore *)self managedObjectModelURL];
    v14 = [v12 initWithContentsOfURL:managedObjectModelURL];

    v15 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v14];
    v16 = *MEMORY[0x277CBE2E8];
    v17 = *MEMORY[0x277CBE2B0];
    v27 = *MEMORY[0x277CBE2B0];
    v28[0] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v19 = [v15 addPersistentStoreWithType:v16 configuration:0 URL:lCopy options:v18 error:error];

    v20 = *error;
    if (v19)
    {
      if ([v20 code] != 257)
      {
        goto LABEL_8;
      }
    }

    else
    {
      localizedDescription = [v20 localizedDescription];
      NSLog(&cfstr_CouldNotOpenSt.isa, lCopy, localizedDescription);

      if ([*error code] != 257)
      {
        LOBYTE(v11) = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    NSLog(&cfstr_LooksLikeWeTri.isa, lCopy);
    NSLog(&cfstr_TryingAgainWit.isa);
    v25 = v17;
    v26 = MEMORY[0x277CBEC28];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v11 = [v15 addPersistentStoreWithType:v16 configuration:0 URL:lCopy options:v22 error:error];

    if (!v11)
    {
      localizedDescription2 = [*error localizedDescription];
      NSLog(&cfstr_StillCouldNotO.isa, lCopy, localizedDescription2);
      goto LABEL_11;
    }

LABEL_8:
    LOBYTE(v11) = 1;
    localizedDescription2 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    [localizedDescription2 setPersistentStoreCoordinator:v15];
    *error = [(_KSTextReplacementLegacyStore *)self mergeShortcutsFromContext:localizedDescription2];
    NSLog(&cfstr_ShortcutMerge.isa, @"success", lCopy);
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v11) = 0;
LABEL_13:

  return v11;
}

- (void)retirePersistentStoreAtURL:(id)l
{
  v28[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v6 = [persistentStore URL];
  v7 = [lCopy isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v9 = KSCategory(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[_KSTextReplacementLegacyStore retirePersistentStoreAtURL:]";
      v23 = 2112;
      v24 = lCopy;
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  Retiring store at %@", buf, 0x16u);
    }

    v10 = objc_alloc(MEMORY[0x277CBE450]);
    managedObjectModelURL = [(_KSTextReplacementLegacyStore *)self managedObjectModelURL];
    v12 = [v10 initWithContentsOfURL:managedObjectModelURL];

    v13 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v12];
    v27 = *MEMORY[0x277CCA1B0];
    v28[0] = *MEMORY[0x277CCA1A0];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = *MEMORY[0x277CBE2E8];
    v20 = 0;
    v16 = [v13 destroyPersistentStoreAtURL:lCopy withType:v15 options:v14 error:&v20];
    v17 = v20;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      v19 = KSCategory(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v22 = "[_KSTextReplacementLegacyStore retirePersistentStoreAtURL:]";
        v23 = 2112;
        v24 = lCopy;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_2557E2000, v19, OS_LOG_TYPE_INFO, "%s  Could not retire store at %@: %@", buf, 0x20u);
      }
    }
  }
}

- (id)storeURLForMergeAfterUbiquityIdentityChangeFromToken:(id)token toToken:(id)toToken withLastKnownToken:(id)knownToken shouldDeleteFirst:(BOOL *)first
{
  tokenCopy = token;
  toTokenCopy = toToken;
  knownTokenCopy = knownToken;
  v13 = knownTokenCopy;
  if (tokenCopy || !toTokenCopy)
  {
    v14 = 0;
    if (tokenCopy && !toTokenCopy)
    {
      if (first)
      {
        *first = 1;
      }

      NSLog(&cfstr_UbiquityContai_1.isa);
      goto LABEL_11;
    }
  }

  else
  {
    if (!knownTokenCopy || ([toTokenCopy isEqual:knownTokenCopy] & 1) != 0)
    {
      NSLog(&cfstr_UbiquityContai.isa);
LABEL_11:
      v15 = MEMORY[0x277CBE4D8];
      baseURL = [(_KSTextReplacementLegacyStore *)self baseURL];
      v14 = [v15 ubiquityStoreURLForStoreURL:baseURL ubiquityIdentityToken:tokenCopy ubiquityName:@"UserDictionary"];

      goto LABEL_13;
    }

    NSLog(&cfstr_UbiquityContai_0.isa);
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (BOOL)mergeEntriesForUbiquityIdentityChangeFromURL:(id)l firstDelete:(BOOL)delete
{
  deleteCopy = delete;
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (deleteCopy)
  {
    [(_KSTextReplacementLegacyStore *)self removeAllEntries];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if ((v9 & 1) == 0)
  {
    v14 = KSCategory(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[_KSTextReplacementLegacyStore mergeEntriesForUbiquityIdentityChangeFromURL:firstDelete:]";
      v23 = 2112;
      v24 = lCopy;
      _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  file to merge does not exist: %@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_9;
  }

  v20 = 0;
  v11 = [(_KSTextReplacementLegacyStore *)self migrateEntriesFromStoreAtURL:lCopy error:&v20];
  v12 = v20;
  if (!v11)
  {
LABEL_9:
    NSLog(&cfstr_FailedMergeAft.isa);
    managedObjectContext = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90___KSTextReplacementLegacyStore_mergeEntriesForUbiquityIdentityChangeFromURL_firstDelete___block_invoke;
    v18[3] = &unk_2797F6310;
    v19 = managedObjectContext;
    v16 = managedObjectContext;
    [v16 performBlockAndWait:v18];

    v13 = 0;
    goto LABEL_10;
  }

  NSLog(&cfstr_MergeSuccessfu.isa);
  v13 = 1;
LABEL_10:

  return v13;
}

- (id)currentStoreIndentity
{
  persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v3 = [persistentStore URL];

  pathComponents = [v3 pathComponents];
  v5 = [pathComponents indexOfObject:@"CoreDataUbiquitySupport"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || [pathComponents count] <= (v5 + 1))
  {
    v9 = 0;
  }

  else
  {
    v6 = [pathComponents objectAtIndex:?];
    v7 = [pathComponents indexOfObject:@"UserDictionary"];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || [pathComponents count] <= (v7 + 1))
    {
      v8 = &stru_286796E30;
    }

    else
    {
      v8 = [pathComponents objectAtIndex:?];
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v8];
  }

  return v9;
}

- (BOOL)mergeEntriesFromAllStoresIncludeLocalVariations:(BOOL)variations
{
  v57 = *MEMORY[0x277D85DE8];
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];
  v7 = [persistentStore URL];

  pathComponents = [v7 pathComponents];
  v9 = [pathComponents indexOfObject:@"CoreDataUbiquitySupport"];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9, v11 = v9 + 1, [pathComponents count] <= (v9 + 1)))
  {
    v16 = 1;
    goto LABEL_37;
  }

  v12 = [pathComponents subarrayWithRange:{0, v10}];
  v13 = [pathComponents objectAtIndex:v11];
  v14 = CFPreferencesCopyAppValue(@"UserDictionaryLocalPeerIdentityCurrent", @"com.apple.Preferences");
  v15 = [v13 isEqualToString:v14];
  if (!variations && v15)
  {
    v16 = 1;
    goto LABEL_36;
  }

  v44 = v15;
  v39 = v14;
  v40 = v13;
  v41 = v12;
  v42 = pathComponents;
  v17 = [MEMORY[0x277CCACA8] pathWithComponents:v12];
  v18 = [_KSUtilities findAllDbsInDirectory:v17];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (!v20)
  {
    v16 = 1;
    goto LABEL_30;
  }

  v21 = v20;
  v22 = *v47;
  v43 = *MEMORY[0x277CBE2C8];
  v16 = 1;
  do
  {
    v23 = 0;
    do
    {
      if (*v47 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v46 + 1) + 8 * v23);
      path = [v7 path];
      v26 = [path isEqualToString:v24];

      if ((v26 & 1) == 0)
      {
        v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
        v45 = 0;
        v28 = [(_KSTextReplacementLegacyStore *)self migrateEntriesFromStoreAtURL:v27 error:&v45];
        v29 = v45;

        v31 = KSCategory(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v51 = "[_KSTextReplacementLegacyStore mergeEntriesFromAllStoresIncludeLocalVariations:]";
          v52 = 2112;
          v53 = v24;
          v54 = 2112;
          v55 = v29;
          _os_log_impl(&dword_2557E2000, v31, OS_LOG_TYPE_INFO, "%s  merged entries from db: %@, error: %@", buf, 0x20u);
        }

        if (v28 || [v29 code] == 134080)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          domain = [v29 domain];
          v34 = domain != v43;

          if (((v34 | v44) & 1) == 0)
          {
LABEL_18:
            v32 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
            [(_KSTextReplacementLegacyStore *)self retirePersistentStoreAtURL:v32];
          }
        }

        if (v29)
        {
          v16 = 0;
        }

        else
        {
          v16 = v28;
        }
      }

      ++v23;
    }

    while (v21 != v23);
    v35 = [v19 countByEnumeratingWithState:&v46 objects:v56 count:16];
    v21 = v35;
  }

  while (v35);
LABEL_30:

  v13 = v40;
  if ((v44 & 1) == 0)
  {
    if (v16)
    {
      v36 = v40;
    }

    else
    {
      v36 = 0;
    }

    [(_KSTextReplacementLegacyStore *)self didMergeEntriesForOtherLocalPeers:v36];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

  v12 = v41;
  pathComponents = v42;
  v14 = v39;
LABEL_36:

LABEL_37:
  return v16 & 1;
}

- (void)didMergeEntriesForOtherLocalPeers:(id)peers
{
  peersCopy = peers;
  NSLog(&cfstr_SavingObserved.isa, @"com.apple.Preferences");
  CFPreferencesSetAppValue(@"UserDictionaryLocalPeerIdentityCurrent", peersCopy, @"com.apple.Preferences");

  CFPreferencesAppSynchronize(@"com.apple.Preferences");
}

- (BOOL)mergeEntriesForUbiquityIdentityChangeIfNecessary
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = CFPreferencesCopyAppValue(@"UserDictionaryUbiquityIdentityTokenLastKnown", @"com.apple.Preferences");
  v5 = CFPreferencesCopyAppValue(@"UserDictionaryUbiquityIdentityTokenCurrent", @"com.apple.Preferences");
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  ubiquityIdentityToken = [defaultManager ubiquityIdentityToken];

  v11 = 0;
  v8 = [(_KSTextReplacementLegacyStore *)self storeURLForMergeAfterUbiquityIdentityChangeFromToken:v5 toToken:ubiquityIdentityToken withLastKnownToken:v4 shouldDeleteFirst:&v11];
  if (v8)
  {
    v9 = [(_KSTextReplacementLegacyStore *)self mergeEntriesForUbiquityIdentityChangeFromURL:v8 firstDelete:v11];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  if (ubiquityIdentityToken != v5 && ([ubiquityIdentityToken isEqual:v5] & 1) == 0)
  {
    [(_KSTextReplacementLegacyStore *)self didMergeEntriesForNewUbiquityIdentity:ubiquityIdentityToken];
  }

LABEL_8:

  return v9;
}

- (void)didMergeEntriesForNewUbiquityIdentity:(id)identity
{
  value = identity;
  NSLog(&cfstr_SavingObserved_0.isa, @"com.apple.Preferences");
  CFPreferencesSetAppValue(@"UserDictionaryUbiquityIdentityTokenCurrent", value, @"com.apple.Preferences");
  if (value)
  {
    CFPreferencesSetAppValue(@"UserDictionaryUbiquityIdentityTokenLastKnown", value, @"com.apple.Preferences");
  }

  CFPreferencesAppSynchronize(@"com.apple.Preferences");
}

- (void)performMaintenanceIfNecessary
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(_KSTextReplacementLegacyStore *)self save];
  if ([(_KSTextReplacementLegacyStore *)self needsMaintenance])
  {
    managedObjectContext = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62___KSTextReplacementLegacyStore_performMaintenanceIfNecessary__block_invoke;
    v10[3] = &unk_2797F6310;
    v5 = managedObjectContext;
    v11 = v5;
    [v5 performBlockAndWait:v10];
    managedObjectContext2 = [(_KSTextReplacementLegacyStore *)self managedObjectContext];
    [(_KSTextReplacementLegacyStore *)self detectAndCleanDuplicatesWithContext:managedObjectContext2];

    [(_KSTextReplacementLegacyStore *)self didMaintenance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62___KSTextReplacementLegacyStore_performMaintenanceIfNecessary__block_invoke_2;
    v8[3] = &unk_2797F6310;
    v9 = v5;
    v7 = v5;
    [v7 performBlockAndWait:v8];
  }
}

- (BOOL)needsMaintenance
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(_KSTextReplacementLegacyStore *)self loadMaintenancePreferencesIfNecessary];
  if ([(_KSTextReplacementLegacyStore *)self forceMaintenance])
  {
    return 1;
  }

  lastMaintenanceDate = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];
  if (!lastMaintenanceDate)
  {
    return 1;
  }

  v5 = lastMaintenanceDate;
  lastMaintenanceDate2 = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];
  [lastMaintenanceDate2 timeIntervalSinceNow];
  v8 = v7;

  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  return v8 > 1209600.0 || [(_KSTextReplacementLegacyStore *)self importedSinceMaintenance]> 20;
}

- (void)loadMaintenancePreferencesIfNecessary
{
  lastMaintenanceDate = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];

  if (!lastMaintenanceDate)
  {
    v6 = CFPreferencesCopyAppValue(@"UserDictionaryLastMaintenanceDate", @"com.apple.Preferences");
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_KSTextReplacementLegacyStore *)self setLastMaintenanceDate:v6];
      }
    }

    lastMaintenanceDate2 = [(_KSTextReplacementLegacyStore *)self lastMaintenanceDate];

    if (!lastMaintenanceDate2)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      [(_KSTextReplacementLegacyStore *)self setLastMaintenanceDate:distantPast];
    }

    [(_KSTextReplacementLegacyStore *)self setImportedSinceMaintenance:CFPreferencesGetAppIntegerValue(@"UserDictionaryImportedSinceMaintenance", @"com.apple.Preferences", 0)];
  }
}

- (void)didMaintenance
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(_KSTextReplacementLegacyStore *)self setForceMaintenance:0];
  value = objc_alloc_init(MEMORY[0x277CBEAA8]);
  [(_KSTextReplacementLegacyStore *)self setLastMaintenanceDate:value];
  CFPreferencesSetAppValue(@"UserDictionaryLastMaintenanceDate", value, @"com.apple.Preferences");
  [(_KSTextReplacementLegacyStore *)self setImportedSinceMaintenance:0];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[_KSTextReplacementLegacyStore importedSinceMaintenance](self, "importedSinceMaintenance")}];
  CFPreferencesSetAppValue(@"UserDictionaryImportedSinceMaintenance", v4, @"com.apple.Preferences");

  CFPreferencesAppSynchronize(@"com.apple.Preferences");
}

- (BOOL)detectAndCleanDuplicatesWithContext:(id)context
{
  v42[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  NSLog(&cfstr_DetectAndClean.isa);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__4;
  v34[4] = __Block_byref_object_dispose__4;
  v35 = 0;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CBE428];
  entityDescription = [(_KSTextReplacementLegacyStore *)self entityDescription];
  name = [entityDescription name];
  v9 = [v6 fetchRequestWithEntityName:name];

  [v9 setIncludesPendingChanges:0];
  v10 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"count:(shortcut)"];
  v11 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v11 setName:@"count"];
  [v11 setExpression:v10];
  [v11 setExpressionResultType:300];
  entityDescription2 = [(_KSTextReplacementLegacyStore *)self entityDescription];
  propertiesByName = [entityDescription2 propertiesByName];
  v14 = [propertiesByName objectForKey:@"shortcut"];

  entityDescription3 = [(_KSTextReplacementLegacyStore *)self entityDescription];
  propertiesByName2 = [entityDescription3 propertiesByName];
  v17 = [propertiesByName2 objectForKey:@"phrase"];

  v42[0] = v14;
  v42[1] = v17;
  v42[2] = v11;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
  [v9 setPropertiesToFetch:v18];

  v41[0] = v14;
  v41[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  [v9 setPropertiesToGroupBy:v19];

  [v9 setResultType:2];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__4;
  v31[4] = __Block_byref_object_dispose__4;
  v32 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69___KSTextReplacementLegacyStore_detectAndCleanDuplicatesWithContext___block_invoke;
  v23[3] = &unk_2797F74B8;
  v26 = v31;
  v20 = contextCopy;
  v24 = v20;
  v21 = v9;
  v25 = v21;
  v27 = v34;
  v28 = &v36;
  objc_copyWeak(&v30, &location);
  v29 = v40;
  [v20 performBlockAndWait:v23];
  LOBYTE(v19) = *(v37 + 24);
  objc_destroyWeak(&v30);

  _Block_object_dispose(v31, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v40, 8);

  return v19 & 1;
}

- (void)_deleteDuplicatesOfShortcut:(id)shortcut phrase:(id)phrase count:(int64_t)count withContext:(id)context
{
  v41[1] = *MEMORY[0x277D85DE8];
  shortcutCopy = shortcut;
  phraseCopy = phrase;
  v12 = shortcutCopy;
  v13 = phraseCopy;
  contextCopy = context;
  v38 = v13;
  NSLog(&cfstr_FoundDuplicate.isa, v12, v13, count);
  v15 = 0;
  countCopy = count;
  selfCopy = self;
  selfCopy2 = self;
  v37 = v12;
  do
  {
    v18 = objc_autoreleasePoolPush();
    [contextCopy setMergePolicy:*MEMORY[0x277CBE1C8]];
    v19 = MEMORY[0x277CBE428];
    entityDescription = [(_KSTextReplacementLegacyStore *)selfCopy entityDescription];
    name = [entityDescription name];
    v22 = [v19 fetchRequestWithEntityName:name];

    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"shortcut == %@ && phrase == %@", v12, v38];
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0 selector:sel_compare_];
    v41[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

    [v22 setPredicate:v23];
    [v22 setSortDescriptors:v25];
    [v22 setFetchBatchSize:1000];
    [v22 setFetchLimit:10000];
    [v22 setResultType:1];
    v40 = 0;
    v26 = [contextCopy executeFetchRequest:v22 error:&v40];
    v27 = v40;
    if (v27)
    {
      v28 = v27;
      NSLog(&cfstr_ErrorWhileFetc_0.isa, v27);
    }

    else
    {
      if ([v26 count] >= 2)
      {
        v29 = 1;
        do
        {
          v30 = [v26 objectAtIndex:v29];
          v31 = [contextCopy objectWithID:v30];
          [contextCopy deleteObject:v31];

          ++v29;
        }

        while (v29 < [v26 count]);
      }

      v39 = 0;
      v32 = [contextCopy save:&v39];
      v33 = v39;
      v28 = v33;
      if ((v32 & 1) != 0 || !v33)
      {
        [contextCopy reset];
      }

      else
      {
        NSLog(&cfstr_ErrorWhileDele.isa, v33);
        userInfo = [v28 userInfo];
        NSLog(&cfstr_ErrorUserinfo.isa, userInfo);
      }

      selfCopy = selfCopy2;
      v12 = v37;
    }

    objc_autoreleasePoolPop(v18);
  }

  while (v15++ != countCopy / 0x2710);
}

+ (id)legacyImportFilePaths
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[_KSUtilities keyboardDirectory];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"ja", @"zh-Pinyin", @"zh-Zhuyin", @"latin", 0}];
    v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [@"SerializedUserWords-" stringByAppendingString:*(*(&v15 + 1) + 8 * i)];
          v10 = [v2 stringByAppendingPathComponent:v9];

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v12 = [defaultManager fileExistsAtPath:v10];

          if (v12)
          {
            [v14 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)legacyImportWordKeyPairsFromFiles:(id)files
{
  v17 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = filesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:{*(*(&v12 + 1) + 8 * i), v12}];
        if (v10)
        {
          [array addObjectsFromArray:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)importLegacyEntries
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  legacyImportFilePaths = [objc_opt_class() legacyImportFilePaths];
  if ([legacyImportFilePaths count])
  {
    v5 = [objc_opt_class() legacyImportWordKeyPairsFromFiles:legacyImportFilePaths];
    v6 = [v5 count];
    if ((v6 & 1) == 0)
    {
      persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];

      if (persistentStore)
      {
        if (v6)
        {
          for (i = 0; i < v6; i += 2)
          {
            v9 = objc_alloc_init(_KSTIUserDictionaryEntryValue);
            v10 = [v5 objectAtIndex:i];
            [(_KSTIUserDictionaryEntryValue *)v9 setPhrase:v10];

            v11 = [v5 objectAtIndex:i + 1];
            [(_KSTIUserDictionaryEntryValue *)v9 setShortcut:v11];

            [(_KSTextReplacementLegacyStore *)self insertEntryWithValue:v9];
          }
        }

        if ([(_KSTextReplacementLegacyStore *)self save])
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v23 = legacyImportFilePaths;
          v13 = legacyImportFilePaths;
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v25 + 1) + 8 * j);
                if ([defaultManager fileExistsAtPath:v18])
                {
                  v24 = 0;
                  v19 = [defaultManager removeItemAtPath:v18 error:&v24];
                  v20 = v24;
                  v21 = v20;
                  if ((v19 & 1) == 0)
                  {
                    NSLog(&cfstr_S.isa, "[_KSTextReplacementLegacyStore importLegacyEntries]", v20);
                  }
                }

                else
                {
                  v21 = 0;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
            }

            while (v15);
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

          legacyImportFilePaths = v23;
        }
      }
    }
  }
}

+ (id)legacyStorePath
{
  v2 = +[_KSUtilities keyboardDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"UserDictionary.sqlite"];

  return v3;
}

- (void)migrateTellurideData
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[_KSUtilities userDictionaryWordKeyPairsFilePathLegacy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v4];
    if (!v7)
    {
      NSLog(&cfstr_CouldnTReadLeg.isa, v4);
LABEL_21:

      goto LABEL_22;
    }

    NSLog(&cfstr_PerformingMigr.isa, v4);
    legacyStorePath = [objc_opt_class() legacyStorePath];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager2 fileExistsAtPath:legacyStorePath])
    {
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v27 = 0;
      v11 = [defaultManager3 removeItemAtPath:legacyStorePath error:&v27];
      v12 = v27;

      if ((v11 & 1) == 0)
      {
        NSLog(&cfstr_CouldnTRemoveL.isa, legacyStorePath, v12);
LABEL_20:

        goto LABEL_21;
      }

      v13 = v12;
    }

    else
    {

      v13 = 0;
    }

    v14 = [v7 count];
    if (!v14 || (v15 = v14, (v14 & 1) != 0))
    {
LABEL_14:
      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = v13;
      v24 = [defaultManager4 removeItemAtPath:v4 error:&v26];
      v12 = v26;

      if ((v24 & 1) == 0)
      {
        NSLog(&cfstr_CouldnTRemoveL_0.isa, v4, v12);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];
    }

    else
    {
      for (i = 0; i < v15; i += 2)
      {
        persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];

        if (!persistentStore)
        {
          v12 = v13;
          goto LABEL_20;
        }

        v18 = objc_alloc_init(_KSTIUserDictionaryEntryValue);
        v19 = [v7 objectAtIndex:i];
        [(_KSTIUserDictionaryEntryValue *)v18 setPhrase:v19];

        v20 = [v7 objectAtIndex:i + 1];
        [(_KSTIUserDictionaryEntryValue *)v18 setShortcut:v20];

        [(_KSTextReplacementLegacyStore *)self insertEntryWithValue:v18];
        shortcut = [(_KSTIUserDictionaryEntryValue *)v18 shortcut];
        phrase = [(_KSTIUserDictionaryEntryValue *)v18 phrase];
        NSLog(&cfstr_AddedShortcutF.isa, shortcut, phrase);
      }

      if ([(_KSTextReplacementLegacyStore *)self save])
      {
        goto LABEL_14;
      }

      NSLog(&cfstr_CouldnTSaveWor.isa, v13);
      v12 = v13;
    }

    goto LABEL_20;
  }

LABEL_22:
}

- (void)migrateSundanceData
{
  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = +[_KSTextReplacementLegacyStore legacyStorePath];
  v6 = [defaultManager fileExistsAtPath:v5];

  if (v6)
  {
    v7 = +[_KSTextReplacementLegacyStore legacyStorePath];
    persistentStore = [(_KSTextReplacementLegacyStore *)self persistentStore];

    if (persistentStore)
    {
      NSLog(&cfstr_PerformingMigr_0.isa, v7);
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
      v16 = 0;
      v10 = [(_KSTextReplacementLegacyStore *)self migrateEntriesFromStoreAtURL:v9 error:&v16];
      v11 = v16;

      if (v10)
      {
        NSLog(&cfstr_RemovingLegacy.isa, v7);

        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = 0;
        v13 = [defaultManager2 removeItemAtPath:v7 error:&v15];
        v11 = v15;

        if ((v13 & 1) == 0)
        {
          NSLog(&cfstr_CouldnTRemoveL.isa, v7, v11);
        }

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];
      }
    }
  }
}

- (void)runLegacyMigration
{
  [(_KSTextReplacementLegacyStore *)self importLegacyEntries];
  [(_KSTextReplacementLegacyStore *)self migrateTellurideData];

  [(_KSTextReplacementLegacyStore *)self migrateSundanceData];
}

+ (id)basePersistentStoreURL
{
  if (basePersistentStoreURL_onceToken != -1)
  {
    +[_KSTextReplacementLegacyStore basePersistentStoreURL];
  }

  v3 = basePersistentStoreURL_baseURL;

  return v3;
}

+ (id)cachedStorePath
{
  v2 = +[_KSUtilities keyboardDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"textReplacements.cache"];

  return v3;
}

- (void)persistentStoreCoordinatorStoresWillChange:(id)change
{
  v12 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = KSCategory(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresWillChange:]";
    _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  >>> persistentStoreCoordinatorStoresWillChange", buf, 0xCu);
  }

  workQueue = [(_KSTextReplacementLegacyStore *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(_KSTextReplacementLegacyStore *)selfCopy suspendedForAccountChange])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    [(_KSTextReplacementLegacyStore *)selfCopy setSuspendedForAccountChange:1];
    objc_sync_exit(selfCopy);

    workQueue2 = [(_KSTextReplacementLegacyStore *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresWillChange___block_invoke;
    block[3] = &unk_2797F6310;
    block[4] = selfCopy;
    dispatch_sync(workQueue2, block);
  }
}

- (void)persistentStoreCoordinatorStoresDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = KSCategory(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]";
    _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  >>> persistentStoreCoordinatorStoresDidChange", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(_KSTextReplacementLegacyStore *)selfCopy suspendedForAccountChange])
  {
    [(_KSTextReplacementLegacyStore *)selfCopy setSuspendedForAccountChange:0];
    objc_sync_exit(selfCopy);

    workQueue = [(_KSTextReplacementLegacyStore *)selfCopy workQueue];
    dispatch_assert_queue_not_V2(workQueue);

    workQueue2 = [(_KSTextReplacementLegacyStore *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresDidChange___block_invoke;
    block[3] = &unk_2797F6310;
    block[4] = selfCopy;
    dispatch_async(workQueue2, block);

    v10 = KSCategory(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]";
      _os_log_impl(&dword_2557E2000, v10, OS_LOG_TYPE_INFO, "%s  Resuming user dictionary after account change.", buf, 0xCu);
    }

    workQueue3 = [(_KSTextReplacementLegacyStore *)selfCopy workQueue];
    dispatch_resume(workQueue3);
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

@end