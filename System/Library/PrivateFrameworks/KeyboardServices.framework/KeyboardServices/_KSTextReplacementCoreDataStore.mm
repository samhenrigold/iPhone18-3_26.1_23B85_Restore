@interface _KSTextReplacementCoreDataStore
+ (id)localCloudEntryFromMocObject:(id)object;
- (BOOL)deleteTextReplacementsFromLocalStoreWithNames:(id)names excludeSavesToCloud:(BOOL)cloud;
- (BOOL)deleteTextReplacementsWithPredicate:(id)predicate;
- (BOOL)didMakeInitialPull;
- (BOOL)markDeletesForTextReplacementEntries:(id)entries;
- (BOOL)recordTextReplacementEntries:(id)entries;
- (NSManagedObjectContext)managedObjectContext;
- (NSManagedObjectModel)managedObjectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (_KSTextReplacementCoreDataStore)init;
- (_KSTextReplacementCoreDataStore)initWithDirectoryPath:(id)path;
- (id)fetchTextReplacementEntry:(id)entry context:(id)context;
- (id)fetchTextReplacementWithUniqueName:(id)name context:(id)context;
- (id)getCKFetchToken;
- (id)persistentStore;
- (id)queryEntriesWithPredicate:(id)predicate limit:(unint64_t)limit;
- (id)queryManagedObjectsWithPredicate:(id)predicate limit:(unint64_t)limit;
- (id)syncStateEntryShouldSave:(BOOL)save fetchToken:(id)token;
- (id)textReplacementEntriesWithLimit:(unint64_t)limit;
- (unint64_t)countEntriesWithPredicate:(id)predicate;
- (void)cleanup;
- (void)dealloc;
- (void)fetchAndMergeTextReplacementEntry:(id)entry context:(id)context;
@end

@implementation _KSTextReplacementCoreDataStore

- (BOOL)didMakeInitialPull
{
  selfCopy = self;
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53___KSTextReplacementCoreDataStore_didMakeInitialPull__block_invoke;
  v5[3] = &unk_2797F70F0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return selfCopy;
}

- (NSManagedObjectContext)managedObjectContext
{
  dispatch_assert_queue_not_V2(self->_queueMOC);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queueMOC = self->_queueMOC;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___KSTextReplacementCoreDataStore_managedObjectContext__block_invoke;
  v6[3] = &unk_2797F70F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queueMOC, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  dispatch_assert_queue_not_V2(self->_queuePSC);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queuePSC = self->_queuePSC;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61___KSTextReplacementCoreDataStore_persistentStoreCoordinator__block_invoke;
  v6[3] = &unk_2797F70F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queuePSC, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSManagedObjectModel)managedObjectModel
{
  managedObjectModel = self->_managedObjectModel;
  if (managedObjectModel)
  {
    v3 = managedObjectModel;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:dataModelName withExtension:@"mom"];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v6];
      v8 = self->_managedObjectModel;
      self->_managedObjectModel = v7;
    }

    v3 = self->_managedObjectModel;
  }

  return v3;
}

- (_KSTextReplacementCoreDataStore)init
{
  v3 = +[_KSUtilities unitTestDirectoryPath];
  v4 = [(_KSTextReplacementCoreDataStore *)self initWithDirectoryPath:v3];

  return v4;
}

- (_KSTextReplacementCoreDataStore)initWithDirectoryPath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = _KSTextReplacementCoreDataStore;
  v6 = [(_KSTextReplacementCoreDataStore *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.keyboardServices.cdStore.queueMOC", v7);
    queueMOC = v6->_queueMOC;
    v6->_queueMOC = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.keyboardServices.cdStore.queuePSC", v10);
    queuePSC = v6->_queuePSC;
    v6->_queuePSC = v11;

    objc_storeStrong(&v6->_directoryPath, path);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_cleanup name:@"_KSTRShouldCleanupResources" object:0];
  }

  return v6;
}

- (void)cleanup
{
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  managedObjectContext2 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42___KSTextReplacementCoreDataStore_cleanup__block_invoke;
  v6[3] = &unk_2797F6310;
  v7 = managedObjectContext;
  v5 = managedObjectContext;
  [managedObjectContext2 performBlockAndWait:v6];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSTextReplacementCoreDataStore;
  [(_KSTextReplacementCoreDataStore *)&v4 dealloc];
}

- (id)persistentStore
{
  persistentStoreCoordinator = [(_KSTextReplacementCoreDataStore *)self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  return firstObject;
}

- (BOOL)recordTextReplacementEntries:(id)entries
{
  v26 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = objc_autoreleasePoolPush();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = entriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
        [(_KSTextReplacementCoreDataStore *)self fetchAndMergeTextReplacementEntry:v10 context:managedObjectContext];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  persistentStore = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (persistentStore)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__2;
    v19[4] = __Block_byref_object_dispose__2;
    v20 = 0;
    managedObjectContext2 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64___KSTextReplacementCoreDataStore_recordTextReplacementEntries___block_invoke;
    v16[3] = &unk_2797F70F0;
    v14 = managedObjectContext2;
    v17 = v14;
    v18 = v19;
    [v14 performBlockAndWait:v16];

    _Block_object_dispose(v19, 8);
  }

  objc_autoreleasePoolPop(v5);

  return persistentStore != 0;
}

- (void)fetchAndMergeTextReplacementEntry:(id)entry context:(id)context
{
  entryCopy = entry;
  contextCopy = context;
  objc_initWeak(&location, self);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__2;
  v13[4] = __Block_byref_object_dispose__2;
  v14 = 0;
  if (entryCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77___KSTextReplacementCoreDataStore_fetchAndMergeTextReplacementEntry_context___block_invoke;
    v8[3] = &unk_2797F7118;
    objc_copyWeak(&v12, &location);
    v9 = entryCopy;
    v10 = contextCopy;
    v11 = v13;
    [v10 performWithOptions:4 andBlock:v8];

    objc_destroyWeak(&v12);
  }

  _Block_object_dispose(v13, 8);

  objc_destroyWeak(&location);
}

- (id)fetchTextReplacementEntry:(id)entry context:(id)context
{
  entryCopy = entry;
  v6 = entryCopy;
  if (entryCopy)
  {
    v7 = MEMORY[0x277CCAC30];
    shortcut = [entryCopy shortcut];
    phrase = [v6 phrase];
    v10 = [v7 predicateWithFormat:@"shortcut == %@ AND phrase == %@ ", shortcut, phrase];

    v11 = [(_KSTextReplacementCoreDataStore *)self queryManagedObjectsWithPredicate:v10 limit:0x7FFFFFFFLL];
  }

  else
  {
    v12 = KSCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_KSTextReplacementCoreDataStore fetchTextReplacementEntry:v12 context:?];
    }

    v11 = 0;
  }

  return v11;
}

- (id)fetchTextReplacementWithUniqueName:(id)name context:(id)context
{
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"uniqueName == %@", context, name];
  v6 = [(_KSTextReplacementCoreDataStore *)self queryManagedObjectsWithPredicate:name limit:0x7FFFFFFFLL];

  return v6;
}

- (BOOL)markDeletesForTextReplacementEntries:(id)entries
{
  entriesCopy = entries;
  v5 = objc_autoreleasePoolPush();
  persistentStore = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (persistentStore)
  {
    v7 = [entriesCopy count];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [entriesCopy objectAtIndexedSubscript:i];
        [v10 setWasDeleted:1];
        timestamp = [v10 timestamp];

        if (!timestamp)
        {
          date = [MEMORY[0x277CBEAA8] date];
          [v10 setTimestamp:date];
        }
      }
    }

    [(_KSTextReplacementCoreDataStore *)self recordTextReplacementEntries:entriesCopy];
  }

  objc_autoreleasePoolPop(v5);

  return persistentStore != 0;
}

- (BOOL)deleteTextReplacementsFromLocalStoreWithNames:(id)names excludeSavesToCloud:(BOOL)cloud
{
  v28 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  context = objc_autoreleasePoolPush();
  persistentStore = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (persistentStore)
  {
    objc_initWeak(&location, self);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = namesCopy;
    v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke;
          v19[3] = &unk_2797F6CD8;
          objc_copyWeak(&v20, &location);
          cloudCopy = cloud;
          v19[4] = v9;
          [managedObjectContext performWithOptions:4 andBlock:v19];

          objc_destroyWeak(&v20);
        }

        v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    managedObjectContext2 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke_70;
    v17[3] = &unk_2797F7140;
    objc_copyWeak(&v18, &location);
    [managedObjectContext2 performBlockAndWait:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(context);
  }

  else
  {
    objc_autoreleasePoolPop(context);
  }

  return persistentStore != 0;
}

- (BOOL)deleteTextReplacementsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_autoreleasePoolPush();
  persistentStore = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (persistentStore)
  {
    objc_initWeak(&location, self);
    managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71___KSTextReplacementCoreDataStore_deleteTextReplacementsWithPredicate___block_invoke;
    v9[3] = &unk_2797F7168;
    v10 = @"TextReplacementEntry";
    objc_copyWeak(v12, &location);
    v12[1] = 0;
    v11 = predicateCopy;
    [managedObjectContext performWithOptions:4 andBlock:v9];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  objc_autoreleasePoolPop(v5);

  return persistentStore != 0;
}

- (id)textReplacementEntriesWithLimit:(unint64_t)limit
{
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67___KSTextReplacementCoreDataStore_textReplacementEntriesWithLimit___block_invoke;
  v11[3] = &unk_2797F7168;
  v11[4] = self;
  v13[1] = limit;
  objc_copyWeak(v13, &location);
  v7 = array;
  v12 = v7;
  [managedObjectContext performWithOptions:4 andBlock:v11];

  v8 = v12;
  v9 = v7;

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

- (unint64_t)countEntriesWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61___KSTextReplacementCoreDataStore_countEntriesWithPredicate___block_invoke;
  v9[3] = &unk_2797F7190;
  objc_copyWeak(&v12, &location);
  v6 = predicateCopy;
  v10 = v6;
  v11 = &v13;
  [managedObjectContext performWithOptions:4 andBlock:v9];

  v7 = v14[3];
  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);
  objc_destroyWeak(&location);

  return v7;
}

- (id)queryEntriesWithPredicate:(id)predicate limit:(unint64_t)limit
{
  v5 = [(_KSTextReplacementCoreDataStore *)self queryManagedObjectsWithPredicate:predicate limit:limit];
  array = [MEMORY[0x277CBEB18] array];
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67___KSTextReplacementCoreDataStore_queryEntriesWithPredicate_limit___block_invoke;
  v13[3] = &unk_2797F71B8;
  v14 = v5;
  v8 = array;
  v15 = v8;
  v9 = v5;
  [managedObjectContext performBlockAndWait:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)queryManagedObjectsWithPredicate:(id)predicate limit:(unint64_t)limit
{
  predicateCopy = predicate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x277CBEA60] array];
  objc_initWeak(&location, self);
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74___KSTextReplacementCoreDataStore_queryManagedObjectsWithPredicate_limit___block_invoke;
  v11[3] = &unk_2797F71E0;
  objc_copyWeak(v14, &location);
  v8 = predicateCopy;
  v14[1] = limit;
  v12 = v8;
  v13 = &v16;
  [managedObjectContext performWithOptions:4 andBlock:v11];

  v9 = v17[5];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);

  return v9;
}

+ (id)localCloudEntryFromMocObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(_KSTextReplacementEntry);
  phrase = [objectCopy phrase];
  [(_KSTextReplacementEntry *)v4 setPhrase:phrase];

  shortcut = [objectCopy shortcut];
  [(_KSTextReplacementEntry *)v4 setShortcut:shortcut];

  phrase2 = [(_KSTextReplacementEntry *)v4 phrase];

  if (!phrase2)
  {
    [(_KSTextReplacementEntry *)v4 setPhrase:&stru_286796E30];
  }

  shortcut2 = [(_KSTextReplacementEntry *)v4 shortcut];

  if (!shortcut2)
  {
    phrase3 = [(_KSTextReplacementEntry *)v4 phrase];
    [(_KSTextReplacementEntry *)v4 setShortcut:phrase3];
  }

  timestamp = [objectCopy timestamp];
  [(_KSTextReplacementEntry *)v4 setTimestamp:timestamp];

  remoteRecordInfo = [objectCopy remoteRecordInfo];
  [(_KSTextReplacementEntry *)v4 setCloudData:remoteRecordInfo];

  -[_KSTextReplacementEntry setNeedsSaveToCloud:](v4, "setNeedsSaveToCloud:", [objectCopy needsSaveToCloud]);
  -[_KSTextReplacementEntry setWasDeleted:](v4, "setWasDeleted:", [objectCopy wasDeleted]);
  uniqueName = [objectCopy uniqueName];
  v13 = [uniqueName length];

  if (v13)
  {
    uniqueName2 = [objectCopy uniqueName];
    [(_KSTextReplacementEntry *)v4 setCloudID:uniqueName2];
  }

  return v4;
}

- (id)getCKFetchToken
{
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50___KSTextReplacementCoreDataStore_getCKFetchToken__block_invoke;
  v6[3] = &unk_2797F70F0;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)syncStateEntryShouldSave:(BOOL)save fetchToken:(id)token
{
  tokenCopy = token;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  objc_initWeak(&location, self);
  managedObjectContext = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71___KSTextReplacementCoreDataStore_syncStateEntryShouldSave_fetchToken___block_invoke;
  v11[3] = &unk_2797F7208;
  objc_copyWeak(&v14, &location);
  v13 = &v17;
  saveCopy = save;
  v8 = tokenCopy;
  v12 = v8;
  [managedObjectContext performBlockAndWait:v11];

  v9 = v18[5];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v17, 8);

  return v9;
}

- (void)fetchTextReplacementEntry:(os_log_t)log context:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[_KSTextReplacementCoreDataStore fetchTextReplacementEntry:context:]";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  >>> entry is nil, returning", &v1, 0xCu);
}

@end