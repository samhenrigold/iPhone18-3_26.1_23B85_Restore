@interface SCWDatabaseJSONStore
+ (id)preferredFileURLForSchema:(id)schema parentDirectoryURL:(id)l;
- (BOOL)_reloadIfNeededFromFileURL:(id)l;
- (BOOL)flushToDiskWithTimeout:(double)timeout;
- (SCWDatabaseJSONStore)initWithSchema:(id)schema fileURL:(id)l allowedCommandClasses:(id)classes;
- (SCWDatabaseJSONStore)initWithSchema:(id)schema parentDirectoryURL:(id)l allowedCommandClasses:(id)classes;
- (id)_decodeCodableObjectOfClass:(Class)class from:(id)from error:(id *)error;
- (id)_decodeCodableObjectOfClasses:(id)classes from:(id)from error:(id *)error;
- (id)_encodeCodableObject:(id)object;
- (id)zoneStoreForSchema:(id)schema;
- (void)_applyCloudBackupEnabledPropertyToStoreURL;
- (void)_listenForChangesToFileURL:(id)l;
- (void)_loadFromFileURL:(id)l;
- (void)_saveIfNeededToFileURL:(id)l;
- (void)_saveToFileURL:(id)l;
- (void)addObserver:(id)observer;
- (void)operationThrottlerPerformOperation:(id)operation;
- (void)readWithAccessor:(id)accessor;
- (void)readZone:(id)zone withAccessor:(id)accessor;
- (void)reloadWithAccessor:(id)accessor;
- (void)removeObserver:(id)observer;
- (void)savePresentedItemChangesWithCompletionHandler:(id)handler;
- (void)writeWithAccessor:(id)accessor;
- (void)writeZone:(id)zone withAccessor:(id)accessor;
@end

@implementation SCWDatabaseJSONStore

- (void)_applyCloudBackupEnabledPropertyToStoreURL
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = @"disable";
  v4 = 134218498;
  selfCopy = self;
  v6 = 2114;
  if (a2)
  {
    v3 = @"enable";
  }

  v7 = v3;
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%p failed to %{public}@ cloud backup for JSON database store: %{public}@", &v4, 0x20u);
}

+ (id)preferredFileURLForSchema:(id)schema parentDirectoryURL:(id)l
{
  v5 = MEMORY[0x1E696AEC0];
  lCopy = l;
  schemaCopy = schema;
  name = [schemaCopy name];
  environment = [schemaCopy environment];

  v10 = @"sandbox";
  if (environment == 1)
  {
    v10 = @"production";
  }

  v11 = [v5 stringWithFormat:@"%@-%@-dbstore.json", name, v10];

  v12 = [lCopy URLByAppendingPathComponent:v11];

  return v12;
}

- (SCWDatabaseJSONStore)initWithSchema:(id)schema fileURL:(id)l allowedCommandClasses:(id)classes
{
  v52 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  lCopy = l;
  classesCopy = classes;
  v50.receiver = self;
  v50.super_class = SCWDatabaseJSONStore;
  v12 = [(SCWDatabaseJSONStore *)&v50 init];
  v13 = v12;
  if (v12)
  {
    v45 = lCopy;
    objc_storeStrong(&v12->_storeURL, l);
    objc_storeStrong(&v13->_databaseSchema, schema);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zoneStoresByName = v13->_zoneStoresByName;
    v13->_zoneStoresByName = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    foreignZoneDictsByName = v13->_foreignZoneDictsByName;
    v13->_foreignZoneDictsByName = v16;

    v18 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v13->_observers;
    v13->_observers = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("SCWDatabaseJSONStore.access", v20);
    accessQueue = v13->_accessQueue;
    v13->_accessQueue = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_BACKGROUND, 0);
    v25 = dispatch_queue_create("SCWDatabaseJSONStore.work", v24);
    workQueue = v13->_workQueue;
    v13->_workQueue = v25;

    v27 = [[SCWOperationThrottler alloc] initWithDelegate:v13 updateQueue:v13->_workQueue];
    saveThrottler = v13->_saveThrottler;
    v13->_saveThrottler = v27;

    v29 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:v13];
    fileCoordinator = v13->_fileCoordinator;
    v13->_fileCoordinator = v29;

    objc_storeStrong(&v13->_presentedItemURL, v13->_storeURL);
    v31 = objc_opt_new();
    presentedItemOperationQueue = v13->_presentedItemOperationQueue;
    v13->_presentedItemOperationQueue = v31;

    [(NSOperationQueue *)v13->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
    if ([classesCopy count])
    {
      [MEMORY[0x1E695DFD8] setWithArray:classesCopy];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    }
    v33 = ;
    allowedCommandClasses = v13->_allowedCommandClasses;
    v13->_allowedCommandClasses = v33;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    zoneSchemas = [schemaCopy zoneSchemas];
    v36 = [zoneSchemas countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v47;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v47 != v38)
          {
            objc_enumerationMutation(zoneSchemas);
          }

          v40 = *(*(&v46 + 1) + 8 * i);
          v41 = [[SCWZoneJSONStore alloc] initWithZoneSchema:v40 serverRecords:0 lastSyncDate:0 lastDirtyDate:0 serverChangeToken:0 pendingCommands:0];
          zoneStoresByName = [(SCWDatabaseJSONStore *)v13 zoneStoresByName];
          zoneName = [v40 zoneName];
          [zoneStoresByName setObject:v41 forKeyedSubscript:zoneName];
        }

        v37 = [zoneSchemas countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v37);
    }

    [(SCWDatabaseJSONStore *)v13 _listenForChangesToFileURL:v13->_storeURL];
    lCopy = v45;
  }

  return v13;
}

- (SCWDatabaseJSONStore)initWithSchema:(id)schema parentDirectoryURL:(id)l allowedCommandClasses:(id)classes
{
  classesCopy = classes;
  lCopy = l;
  schemaCopy = schema;
  v11 = [objc_opt_class() preferredFileURLForSchema:schemaCopy parentDirectoryURL:lCopy];

  v12 = [(SCWDatabaseJSONStore *)self initWithSchema:schemaCopy fileURL:v11 allowedCommandClasses:classesCopy];
  return v12;
}

- (id)zoneStoreForSchema:(id)schema
{
  schemaCopy = schema;
  zoneStoresByName = [(SCWDatabaseJSONStore *)self zoneStoresByName];
  zoneName = [schemaCopy zoneName];

  v7 = [zoneStoresByName objectForKeyedSubscript:zoneName];

  return v7;
}

- (void)readWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  accessQueue = [(SCWDatabaseJSONStore *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke;
  block[3] = &unk_1E85E33A8;
  block[4] = self;
  v6 = accessorCopy;
  v14 = v6;
  v15 = &v16;
  dispatch_sync(accessQueue, block);

  if ((v17[3] & 1) == 0)
  {
    fileCoordinator = [(SCWDatabaseJSONStore *)self fileCoordinator];
    storeURL = [(SCWDatabaseJSONStore *)self storeURL];
    v12 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_2;
    v10[3] = &unk_1E85E33F8;
    v10[4] = self;
    v11 = v6;
    [fileCoordinator coordinateReadingItemAtURL:storeURL options:0 error:&v12 byAccessor:v10];
    v9 = v12;
  }

  _Block_object_dispose(&v16, 8);
}

void *__41__SCWDatabaseJSONStore_readWithAccessor___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) loadedFromDisk];
  if (result)
  {
    result = (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_3;
  block[3] = &unk_1E85E33D0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __41__SCWDatabaseJSONStore_readWithAccessor___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)writeWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  fileCoordinator = [(SCWDatabaseJSONStore *)self fileCoordinator];
  storeURL = [(SCWDatabaseJSONStore *)self storeURL];
  v11 = accessorCopy;
  v12 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke;
  v10[3] = &unk_1E85E33F8;
  v10[4] = self;
  v7 = accessorCopy;
  [fileCoordinator coordinateReadingItemAtURL:storeURL options:0 error:&v12 byAccessor:v10];
  v8 = v12;

  saveThrottler = [(SCWDatabaseJSONStore *)self saveThrottler];
  [saveThrottler tickle];
}

void __42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke_2;
  block[3] = &unk_1E85E33D0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

void *__42__SCWDatabaseJSONStore_writeWithAccessor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  result = [*(a1 + 32) havePendingChanges];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHavePendingChanges:1];
    v3 = MEMORY[0x1E696ABF8];
    v4 = *(a1 + 32);

    return [v3 addFilePresenter:v4];
  }

  return result;
}

- (void)reloadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  fileCoordinator = [(SCWDatabaseJSONStore *)self fileCoordinator];
  storeURL = [(SCWDatabaseJSONStore *)self storeURL];
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke;
  v9[3] = &unk_1E85E33F8;
  v9[4] = self;
  v10 = accessorCopy;
  v7 = accessorCopy;
  [fileCoordinator coordinateReadingItemAtURL:storeURL options:0 error:&v11 byAccessor:v9];
  v8 = v11;
}

void __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke_2;
  block[3] = &unk_1E85E33D0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_sync(v4, block);
}

uint64_t __43__SCWDatabaseJSONStore_reloadWithAccessor___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _reloadIfNeededFromFileURL:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)readZone:(id)zone withAccessor:(id)accessor
{
  zoneCopy = zone;
  accessorCopy = accessor;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__SCWDatabaseJSONStore_readZone_withAccessor___block_invoke;
  v10[3] = &unk_1E85E3420;
  v11 = zoneCopy;
  v12 = accessorCopy;
  v10[4] = self;
  v8 = zoneCopy;
  v9 = accessorCopy;
  [(SCWDatabaseJSONStore *)self readWithAccessor:v10];
}

void __46__SCWDatabaseJSONStore_readZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)writeZone:(id)zone withAccessor:(id)accessor
{
  zoneCopy = zone;
  accessorCopy = accessor;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SCWDatabaseJSONStore_writeZone_withAccessor___block_invoke;
  v10[3] = &unk_1E85E3420;
  v11 = zoneCopy;
  v12 = accessorCopy;
  v10[4] = self;
  v8 = zoneCopy;
  v9 = accessorCopy;
  [(SCWDatabaseJSONStore *)self writeWithAccessor:v10];
}

void __47__SCWDatabaseJSONStore_writeZone_withAccessor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) zoneStoreForSchema:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SCWDatabaseJSONStore *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SCWDatabaseJSONStore *)self observers];
  [observers removeObject:observerCopy];
}

- (void)operationThrottlerPerformOperation:(id)operation
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk", &v5, 0xCu);
  }

  storeURL = [(SCWDatabaseJSONStore *)self storeURL];
  [(SCWDatabaseJSONStore *)self _saveIfNeededToFileURL:storeURL];
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)handler
{
  v8 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p JSON store will flush changes to disk for another reader", &v6, 0xCu);
  }

  storeURL = [(SCWDatabaseJSONStore *)self storeURL];
  [(SCWDatabaseJSONStore *)self _saveIfNeededToFileURL:storeURL];

  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)flushToDiskWithTimeout:(double)timeout
{
  storeURL = [(SCWDatabaseJSONStore *)self storeURL];
  [(SCWDatabaseJSONStore *)self _saveIfNeededToFileURL:storeURL];

  return 1;
}

- (void)_saveToFileURL:(id)l
{
  v84 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v59 = objc_opt_new();
  array = [MEMORY[0x1E695DF70] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  foreignZoneDictsByName = [(SCWDatabaseJSONStore *)self foreignZoneDictsByName];
  allValues = [foreignZoneDictsByName allValues];

  v7 = [allValues countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v77;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v77 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [array addObject:*(*(&v76 + 1) + 8 * i)];
      }

      v8 = [allValues countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v8);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  zoneStoresByName = [(SCWDatabaseJSONStore *)self zoneStoresByName];
  allValues2 = [zoneStoresByName allValues];

  obj = allValues2;
  v60 = [allValues2 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v60)
  {
    v57 = *v73;
    v58 = array;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v73 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v72 + 1) + 8 * j);
        array2 = [MEMORY[0x1E695DF70] array];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        serverRecords = [v14 serverRecords];
        v17 = [serverRecords countByEnumeratingWithState:&v68 objects:v81 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v69;
          do
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v69 != v19)
              {
                objc_enumerationMutation(serverRecords);
              }

              v21 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:*(*(&v68 + 1) + 8 * k)];
              [array2 addObject:v21];
            }

            v18 = [serverRecords countByEnumeratingWithState:&v68 objects:v81 count:16];
          }

          while (v18);
        }

        array3 = [MEMORY[0x1E695DF70] array];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        pendingCommands = [v14 pendingCommands];
        v24 = [pendingCommands countByEnumeratingWithState:&v64 objects:v80 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v65;
          do
          {
            for (m = 0; m != v25; ++m)
            {
              if (*v65 != v26)
              {
                objc_enumerationMutation(pendingCommands);
              }

              v28 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:*(*(&v64 + 1) + 8 * m)];
              [array3 addObject:v28];
            }

            v25 = [pendingCommands countByEnumeratingWithState:&v64 objects:v80 count:16];
          }

          while (v25);
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        zoneSchema = [v14 zoneSchema];
        zoneName = [zoneSchema zoneName];
        [dictionary setObject:zoneName forKeyedSubscript:@"name"];

        [dictionary setObject:array2 forKeyedSubscript:@"serverRecords"];
        [dictionary setObject:array3 forKeyedSubscript:@"pendingCommands"];
        lastSyncDate = [v14 lastSyncDate];
        v33 = [v59 stringFromDate:lastSyncDate];
        [dictionary setObject:v33 forKeyedSubscript:@"lastSyncDate"];

        lastDirtyDate = [v14 lastDirtyDate];
        v35 = [v59 stringFromDate:lastDirtyDate];
        [dictionary setObject:v35 forKeyedSubscript:@"lastDirtyDate"];

        serverChangeToken = [v14 serverChangeToken];
        v37 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:serverChangeToken];
        [dictionary setObject:v37 forKeyedSubscript:@"serverChangeToken"];

        v38 = MEMORY[0x1E696AD98];
        zoneSchema2 = [v14 zoneSchema];
        v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(zoneSchema2, "version")}];
        [dictionary setObject:v40 forKeyedSubscript:@"schemaVersion"];

        array = v58;
        [v58 addObject:dictionary];
      }

      v60 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v60);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  lastSyncDate2 = [(SCWDatabaseJSONStore *)self lastSyncDate];
  v43 = [v59 stringFromDate:lastSyncDate2];
  [dictionary2 setObject:v43 forKeyedSubscript:@"lastSyncDate"];

  lastDirtyDate2 = [(SCWDatabaseJSONStore *)self lastDirtyDate];
  v45 = [v59 stringFromDate:lastDirtyDate2];
  [dictionary2 setObject:v45 forKeyedSubscript:@"lastDirtyDate"];

  serverChangeToken2 = [(SCWDatabaseJSONStore *)self serverChangeToken];
  v47 = [(SCWDatabaseJSONStore *)self _encodeCodableObject:serverChangeToken2];
  [dictionary2 setObject:v47 forKeyedSubscript:@"serverChangeToken"];

  [dictionary2 setObject:array forKeyedSubscript:@"zones"];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary3 setObject:dictionary2 forKeyedSubscript:@"database"];
  v63 = 0;
  v49 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary3 options:0 error:&v63];
  v50 = v63;
  if (v49)
  {
    v51 = array;
    v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v49 encoding:4];
    v62 = v50;
    v53 = [v52 writeToURL:lCopy atomically:1 encoding:4 error:&v62];
    v54 = v62;

    if (v53)
    {
      value = arc4random_uniform(0xFFFFFFFE) + 1;
      setxattr([lCopy fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
      [(SCWDatabaseJSONStore *)self setLastKnownStoreChangeTag:value];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SCWDatabaseJSONStore _saveToFileURL:];
    }

    array = v51;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SCWDatabaseJSONStore _saveToFileURL:];
    }

    v54 = v50;
  }

  [(SCWDatabaseJSONStore *)self _applyCloudBackupEnabledPropertyToStoreURL];
  ++self->_diskWriteCount;
}

- (void)_saveIfNeededToFileURL:(id)l
{
  fileCoordinator = [(SCWDatabaseJSONStore *)self fileCoordinator];
  storeURL = [(SCWDatabaseJSONStore *)self storeURL];
  v7[4] = self;
  v8 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke;
  v7[3] = &unk_1E85E3470;
  [fileCoordinator coordinateWritingItemAtURL:storeURL options:4 error:&v8 byAccessor:v7];
  v6 = v8;
}

void __47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke_2;
  v6[3] = &unk_1E85E3448;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, v6);
}

void *__47__SCWDatabaseJSONStore__saveIfNeededToFileURL___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) havePendingChanges];
  if (result)
  {
    [*(a1 + 32) _saveToFileURL:*(a1 + 40)];
    [*(a1 + 32) setHavePendingChanges:0];
    v3 = MEMORY[0x1E696ABF8];
    v4 = *(a1 + 32);

    return [v3 removeFilePresenter:v4];
  }

  return result;
}

- (void)_loadFromFileURL:(id)l
{
  v114 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v72 = objc_opt_new();
  v68 = lCopy;
  v69 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:lCopy encoding:4 error:0];
  if (v69)
  {
    v5 = [v69 dataUsingEncoding:4];
    v101 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v101];
    v7 = v101;
    v8 = v7;
    if (v6)
    {
      v80 = v7;
      v82 = v5;
      v9 = [v6 objectForKeyedSubscript:@"database"];
      v10 = [v9 objectForKeyedSubscript:@"lastSyncDate"];
      v11 = [v72 dateFromString:v10];
      lastSyncDate = self->_lastSyncDate;
      self->_lastSyncDate = v11;

      v13 = [v9 objectForKeyedSubscript:@"lastDirtyDate"];
      v14 = [v72 dateFromString:v13];
      lastDirtyDate = self->_lastDirtyDate;
      self->_lastDirtyDate = v14;

      v16 = objc_opt_class();
      v17 = [v9 objectForKeyedSubscript:@"serverChangeToken"];
      v18 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClass:v16 from:v17 error:0];
      serverChangeToken = self->_serverChangeToken;
      self->_serverChangeToken = v18;

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v20 = [v9 objectForKeyedSubscript:@"zones"];
      v21 = [v20 countByEnumeratingWithState:&v97 objects:v113 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v98;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v98 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v97 + 1) + 8 * i);
            v26 = [v25 objectForKeyedSubscript:@"name"];
            [dictionary setObject:v25 forKeyedSubscript:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v97 objects:v113 count:16];
        }

        while (v22);
      }

      v8 = v80;
      v5 = v82;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SCWDatabaseJSONStore _loadFromFileURL:];
    }
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [dictionary allKeys];
  v74 = [obj countByEnumeratingWithState:&v93 objects:v112 count:16];
  if (v74)
  {
    v73 = *v94;
    v27 = 0x1E695D000uLL;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v94 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v93 + 1) + 8 * j);
        v30 = [dictionary objectForKeyedSubscript:v29];
        zoneStoresByName = [(SCWDatabaseJSONStore *)self zoneStoresByName];
        v81 = v29;
        v32 = [zoneStoresByName objectForKeyedSubscript:v29];

        if (v32)
        {
          v77 = j;
          array = [*(v27 + 3952) array];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v79 = v30;
          v34 = [v30 objectForKeyedSubscript:@"serverRecords"];
          v35 = [v34 countByEnumeratingWithState:&v89 objects:v111 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v90;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v90 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v89 + 1) + 8 * k);
                v40 = objc_opt_class();
                v88 = 0;
                v41 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClass:v40 from:v39 error:&v88];
                v42 = v88;
                if (v41)
                {
                  [array addObject:v41];
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  selfCopy4 = self;
                  v104 = 2114;
                  v105 = v42;
                  _os_log_error_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%p failed to decode server record with error: %{public}@", buf, 0x16u);
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v89 objects:v111 count:16];
            }

            while (v36);
          }

          array2 = [*(v27 + 3952) array];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v44 = [v79 objectForKeyedSubscript:@"pendingCommands"];
          v45 = [v44 countByEnumeratingWithState:&v84 objects:v110 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v85;
            do
            {
              for (m = 0; m != v46; ++m)
              {
                if (*v85 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v84 + 1) + 8 * m);
                allowedCommandClasses = [(SCWDatabaseJSONStore *)self allowedCommandClasses];
                v83 = 0;
                v51 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClasses:allowedCommandClasses from:v49 error:&v83];
                v52 = v83;

                if (v51)
                {
                  [array2 addObject:v51];
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  selfCopy4 = self;
                  v104 = 2114;
                  v105 = v52;
                  _os_log_error_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%p failed to decode command with error: %{public}@", buf, 0x16u);
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v84 objects:v110 count:16];
            }

            while (v46);
          }

          v53 = [v79 objectForKeyedSubscript:@"lastSyncDate"];
          v76 = [v72 dateFromString:v53];

          v54 = [v79 objectForKeyedSubscript:@"lastDirtyDate"];
          v55 = [v72 dateFromString:v54];

          v56 = objc_opt_class();
          v57 = [v79 objectForKeyedSubscript:@"serverChangeToken"];
          v58 = [(SCWDatabaseJSONStore *)self _decodeCodableObjectOfClass:v56 from:v57 error:0];

          v59 = [v79 objectForKeyedSubscript:@"schemaVersion"];
          databaseSchema = [(SCWDatabaseJSONStore *)self databaseSchema];
          v61 = [databaseSchema schemaForZoneName:v81];

          version = [v61 version];
          v75 = v59;
          if (version <= [v59 unsignedIntegerValue])
          {
            v65 = v76;
            j = v77;
          }

          else
          {
            j = v77;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              zoneName = [v61 zoneName];
              unsignedIntegerValue = [v59 unsignedIntegerValue];
              version2 = [v61 version];
              *buf = 134218754;
              selfCopy4 = self;
              v104 = 2114;
              v105 = zoneName;
              v106 = 2048;
              v107 = unsignedIntegerValue;
              v108 = 2048;
              v109 = version2;
              _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p discarding sync state for zone %{public}@ due to version mismatch, persisted=%lu, current=%lu", buf, 0x2Au);
            }

            v55 = 0;
            v58 = 0;
            v65 = 0;
          }

          v66 = [[SCWZoneJSONStore alloc] initWithZoneSchema:v61 serverRecords:array lastSyncDate:v65 lastDirtyDate:v55 serverChangeToken:v58 pendingCommands:array2];
          zoneStoresByName2 = [(SCWDatabaseJSONStore *)self zoneStoresByName];
          [zoneStoresByName2 setObject:v66 forKeyedSubscript:v81];

          v27 = 0x1E695D000;
          v30 = v79;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy4 = self;
            v104 = 2114;
            v105 = v81;
            _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p preserving unknown zone %{public}@", buf, 0x16u);
          }

          array = [(SCWDatabaseJSONStore *)self foreignZoneDictsByName];
          [array setObject:v30 forKeyedSubscript:v81];
        }
      }

      v74 = [obj countByEnumeratingWithState:&v93 objects:v112 count:16];
    }

    while (v74);
  }

  ++self->_diskReadCount;
}

- (BOOL)_reloadIfNeededFromFileURL:(id)l
{
  lCopy = l;
  if ([lCopy checkResourceIsReachableAndReturnError:0])
  {
    value = 0;
    getxattr([lCopy fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
    v5 = value;
    lastKnownStoreChangeTag = [(SCWDatabaseJSONStore *)self lastKnownStoreChangeTag];
    v7 = v5 == lastKnownStoreChangeTag;
    v8 = v5 != lastKnownStoreChangeTag;
    if (!v7)
    {
      [(SCWDatabaseJSONStore *)self _loadFromFileURL:lCopy];
      [(SCWDatabaseJSONStore *)self setLastKnownStoreChangeTag:value];
    }
  }

  else
  {
    v8 = 0;
  }

  [(SCWDatabaseJSONStore *)self setLoadedFromDisk:1];

  return v8;
}

- (void)_listenForChangesToFileURL:(id)l
{
  lCopy = l;
  path = [lCopy path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v7 = open([stringByDeletingLastPathComponent fileSystemRepresentation], 0x8000);

  workQueue = [(SCWDatabaseJSONStore *)self workQueue];
  v9 = dispatch_source_create(MEMORY[0x1E69E9728], v7, 0xEuLL, workQueue);
  [(SCWDatabaseJSONStore *)self setChangeListenerSource:v9];

  changeListenerSource = [(SCWDatabaseJSONStore *)self changeListenerSource];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke;
  handler[3] = &unk_1E85E3448;
  handler[4] = self;
  v17 = lCopy;
  v11 = lCopy;
  dispatch_source_set_event_handler(changeListenerSource, handler);

  changeListenerSource2 = [(SCWDatabaseJSONStore *)self changeListenerSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke_60;
  v14[3] = &__block_descriptor_36_e5_v8__0l;
  v15 = v7;
  dispatch_source_set_cancel_handler(changeListenerSource2, v14);

  changeListenerSource3 = [(SCWDatabaseJSONStore *)self changeListenerSource];
  dispatch_resume(changeListenerSource3);
}

void __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke_2;
  block[3] = &unk_1E85E3498;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v15 = v3;
  v16 = v4;
  v17 = &v18;
  dispatch_sync(v2, block);

  if (*(v19 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 134217984;
      v24 = v5;
      _os_log_impl(&dword_1DAA3F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%p JSON store will notify of external changes from another writer", buf, 0xCu);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [*(a1 + 32) observers];
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v22 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * v9++) storeCoordinatorDiscoveredExternalChanges:*(a1 + 32)];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v22 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(&v18, 8);
}

void *__51__SCWDatabaseJSONStore__listenForChangesToFileURL___block_invoke_2(uint64_t a1)
{
  value = 0;
  getxattr([*(a1 + 32) fileSystemRepresentation], "com.apple.stocks.jsonStoreChangeTag", &value, 4uLL, 0, 0);
  v2 = value;
  result = [*(a1 + 40) lastKnownStoreChangeTag];
  *(*(*(a1 + 48) + 8) + 24) = v2 != result;
  return result;
}

- (id)_encodeCodableObject:(id)object
{
  v3 = &stru_1F5693E68;
  if (object)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v9];
    v5 = [v4 base64EncodedStringWithOptions:0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_1F5693E68;
    }

    v3 = v7;
  }

  return v3;
}

- (id)_decodeCodableObjectOfClass:(Class)class from:(id)from error:(id *)error
{
  fromCopy = from;
  if ([fromCopy length])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:fromCopy options:0];
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:class fromData:v8 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_decodeCodableObjectOfClasses:(id)classes from:(id)from error:(id *)error
{
  classesCopy = classes;
  fromCopy = from;
  if ([fromCopy length])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:fromCopy options:0];
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:classesCopy fromData:v9 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end