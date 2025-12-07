@interface ULPersistenceManager
+ (id)defaultModelsDirectory;
- (BOOL)_destroyStore;
- (BOOL)_disconnectFromStore;
- (BOOL)_isMainDatabase;
- (BOOL)_isStoreConnected;
- (BOOL)connectToStore;
- (BOOL)destroyStore;
- (BOOL)disconnectFromStore;
- (BOOL)isMainDatabase;
- (BOOL)isStoreConnected;
- (ULPersistenceManager)init;
- (ULPersistenceManager)initWithModelsDirectory:(id)directory storesDirectory:(id)storesDirectory managedObjectModel:(id)model useWal:(BOOL)wal;
- (id)_getDefaultStoresDirectory;
- (id)_getDefaultStoresDirectoryPathForCurrentPlatform;
- (id)_getLocalStoreURL;
- (id)createManagedObjectContext;
- (id)getLocalStoreURL;
- (void)_deleteDatabaseFilesAtPath:(id)path;
- (void)_handleCorruptedDatabase:(id)database;
- (void)_handleDatabaseError:(id)error;
- (void)handleDatabaseError:(id)error;
@end

@implementation ULPersistenceManager

void *__40__ULPersistenceManager_isStoreConnected__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isStoreConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isStoreConnected
{
  selfCopy = self;
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue2 = [(ULPersistenceManager *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ULPersistenceManager_isStoreConnected__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (BOOL)_isStoreConnected
{
  persistentStoreCoordinator = [(ULPersistenceManager *)self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  v4 = [persistentStores count] != 0;

  return v4;
}

- (ULPersistenceManager)init
{
  v3 = +[ULPersistenceManager defaultModelsDirectory];
  _getDefaultStoresDirectory = [(ULPersistenceManager *)self _getDefaultStoresDirectory];
  v5 = [(ULPersistenceManager *)self initWithModelsDirectory:v3 storesDirectory:_getDefaultStoresDirectory useWal:1];

  return v5;
}

- (ULPersistenceManager)initWithModelsDirectory:(id)directory storesDirectory:(id)storesDirectory managedObjectModel:(id)model useWal:(BOOL)wal
{
  walCopy = wal;
  v56 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  storesDirectoryCopy = storesDirectory;
  modelCopy = model;
  if (![directoryCopy isFileURL] || !objc_msgSend(storesDirectoryCopy, "isFileURL"))
  {
    goto LABEL_19;
  }

  v48.receiver = self;
  v48.super_class = ULPersistenceManager;
  self = [(ULPersistenceManager *)&v48 init];
  if (self)
  {
    v13 = MEMORY[0x277CBEBC0];
    path = [directoryCopy path];
    v15 = [v13 fileURLWithPath:path isDirectory:1];
    [(ULPersistenceManager *)self setModelsDirectory:v15];

    v16 = MEMORY[0x277CBEBC0];
    path2 = [storesDirectoryCopy path];
    v18 = [v16 fileURLWithPath:path2 isDirectory:1];
    [(ULPersistenceManager *)self setStoresDirectory:v18];

    [(ULPersistenceManager *)self setUseWal:walCopy];
    [(ULPersistenceManager *)self _enableConcurrencyDebug];
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
    }

    v19 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      storesDirectory = [(ULPersistenceManager *)self storesDirectory];
      path3 = [storesDirectory path];
      modelsDirectory = [(ULPersistenceManager *)self modelsDirectory];
      path4 = [modelsDirectory path];
      *buf = 68289539;
      *v51 = 0;
      *&v51[4] = 2082;
      *&v51[6] = "";
      v52 = 2113;
      v53 = path3;
      v54 = 2113;
      v55 = path4;
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Initializing database, store directory:%{private, location:escape_only}@, model directory:%{private, location:escape_only}@}", buf, 0x26u);
    }

    defaultManager = [(objc_class *)getSAPathManagerClass() defaultManager];
    storesDirectory2 = [(ULPersistenceManager *)self storesDirectory];
    path5 = [storesDirectory2 path];

    SAPathInfoClass = getSAPathInfoClass();
    v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:path5];
    v30 = [(objc_class *)SAPathInfoClass pathInfoWithURL:v29];
    v49 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke;
    v47[3] = &unk_2798D4B60;
    v47[4] = path5;
    [defaultManager registerPaths:v31 forBundleID:@"com.apple.milod" completionHandler:v47];

    if (modelCopy)
    {
      [(ULPersistenceManager *)self setManagedObjectModel:modelCopy];
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277CBE450]);
      modelsDirectory2 = [(ULPersistenceManager *)self modelsDirectory];
      v34 = [v32 initWithContentsOfURL:modelsDirectory2];
      [(ULPersistenceManager *)self setManagedObjectModel:v34];
    }

    managedObjectModel = [(ULPersistenceManager *)self managedObjectModel];

    if (managedObjectModel)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
      }

      v36 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        managedObjectModel2 = [(ULPersistenceManager *)self managedObjectModel];
        versionIdentifiers = [managedObjectModel2 versionIdentifiers];
        *buf = 138412290;
        *v51 = versionIdentifiers;
        _os_log_impl(&dword_258FE9000, v37, OS_LOG_TYPE_DEFAULT, "Loaded ManagedObjectModel Version: %@", buf, 0xCu);
      }

      v40 = objc_alloc(MEMORY[0x277CBE4D8]);
      managedObjectModel3 = [(ULPersistenceManager *)self managedObjectModel];
      v42 = [v40 initWithManagedObjectModel:managedObjectModel3];
      [(ULPersistenceManager *)self setPersistentStoreCoordinator:v42];

      v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v44 = dispatch_queue_create("com.apple.milod.ULPersistenceManager", v43);
      [(ULPersistenceManager *)self setQueue:v44];

      goto LABEL_17;
    }

LABEL_19:
    selfCopy = 0;
    goto LABEL_20;
  }

LABEL_17:
  self = self;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

void __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v3;
      v6 = "Failed to set space attribution for %@. Error: %@";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
LABEL_10:
      _os_log_impl(&dword_258FE9000, v7, v8, v6, &v12, v9);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      v6 = "Set space attribution for %@";
      v7 = v10;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 12;
      goto LABEL_10;
    }
  }
}

- (BOOL)connectToStore
{
  selfCopy = self;
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  queue2 = [(ULPersistenceManager *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__ULPersistenceManager_connectToStore__block_invoke;
  v6[3] = &unk_2798D4B88;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void __38__ULPersistenceManager_connectToStore__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _isStoreConnected] & 1) == 0)
  {
    v2 = [*(a1 + 32) _getLocalStoreURL];
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [v2 path];
      *buf = 68289283;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2113;
      v19 = v5;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Connecting to store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v6 = -[ULPersistenceStore initWithURL:useWal:]([ULPersistenceStore alloc], "initWithURL:useWal:", v2, [*(a1 + 32) useWal]);
    [*(a1 + 32) setPersistenceStore:v6];

    v7 = [*(a1 + 32) persistenceStore];
    v8 = [*(a1 + 32) persistentStoreCoordinator];
    v13 = 0;
    v9 = [v7 loadWithCoordinator:v8 error:&v13];
    v10 = v13;
    *(*(*(a1 + 40) + 8) + 24) = v9;

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 67109120;
      v15 = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "Connect to store result: %d", buf, 8u);
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) _handleDatabaseError:v10];
    }
  }
}

- (BOOL)_disconnectFromStore
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(ULPersistenceManager *)self _isStoreConnected])
  {
    persistentStoreCoordinator = [(ULPersistenceManager *)self persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [firstObject URL];
      path = [v8 path];
      *buf = 68289283;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      *&v20[14] = 2113;
      *&v20[16] = path;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Disconnecting from store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    persistentStoreCoordinator2 = [(ULPersistenceManager *)self persistentStoreCoordinator];
    v18 = 0;
    [persistentStoreCoordinator2 removePersistentStore:firstObject error:&v18];
    v11 = v18;

    if (v11)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [firstObject URL];
        *buf = 138412546;
        *v20 = v14;
        *&v20[8] = 2112;
        *&v20[10] = v11;
        _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "Failed to disconnect from store %@ with error %@", buf, 0x16u);
      }
    }

    v15 = ![(ULPersistenceManager *)self _isStoreConnected];
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v20 = v15;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "Disconnect from store result: %d", buf, 8u);
    }
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (BOOL)disconnectFromStore
{
  selfCopy = self;
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  queue2 = [(ULPersistenceManager *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__ULPersistenceManager_disconnectFromStore__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void *__43__ULPersistenceManager_disconnectFromStore__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _disconnectFromStore];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)createManagedObjectContext
{
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__29;
  v12 = __Block_byref_object_dispose__29;
  v13 = 0;
  queue2 = [(ULPersistenceManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ULPersistenceManager_createManagedObjectContext__block_invoke;
  v7[3] = &unk_2798D4B88;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void *__50__ULPersistenceManager_createManagedObjectContext__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isStoreConnected];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [MEMORY[0x277CBE460] errorMergePolicy];
    [*(*(*(a1 + 40) + 8) + 40) setMergePolicy:v6];

    v7 = [*(a1 + 32) persistentStoreCoordinator];
    [*(*(*(a1 + 40) + 8) + 40) setPersistentStoreCoordinator:v7];

    v8 = [MEMORY[0x277CCAC38] processInfo];
    v9 = [v8 processName];
    [*(*(*(a1 + 40) + 8) + 40) setName:v9];

    v10 = [*(*(*(a1 + 40) + 8) + 40) name];
    [*(*(*(a1 + 40) + 8) + 40) setTransactionAuthor:v10];

    v11 = *(*(*(a1 + 40) + 8) + 40);

    return [v11 setUndoManager:0];
  }

  return result;
}

+ (id)defaultModelsDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  uLFrameworkBundle = [MEMORY[0x277CCA8D8] ULFrameworkBundle];
  v4 = [uLFrameworkBundle pathForResource:@"milo" ofType:@"momd"];
  v5 = [v2 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)_getDefaultStoresDirectoryPathForCurrentPlatform
{
  userLibraryDirectoryPath = [MEMORY[0x277CCAA00] userLibraryDirectoryPath];
  v3 = userLibraryDirectoryPath;
  if (userLibraryDirectoryPath)
  {
    v4 = [userLibraryDirectoryPath stringByAppendingPathComponent:@"com.apple.milod"];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "Failed to resolve Cache Directory in User Space", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_getDefaultStoresDirectory
{
  v17 = *MEMORY[0x277D85DE8];
  _getDefaultStoresDirectoryPathForCurrentPlatform = [(ULPersistenceManager *)self _getDefaultStoresDirectoryPathForCurrentPlatform];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:_getDefaultStoresDirectoryPathForCurrentPlatform];

  if ((v4 & 1) != 0 || (([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v12 = 0, v6 = objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", _getDefaultStoresDirectoryPathForCurrentPlatform, 1, 0, &v12), v7 = v12, v5, v6) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:_getDefaultStoresDirectoryPathForCurrentPlatform isDirectory:1];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = _getDefaultStoresDirectoryPathForCurrentPlatform;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Failed to create %@, error, %@", buf, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_getLocalStoreURL
{
  storesDirectory = [(ULPersistenceManager *)self storesDirectory];
  v3 = +[ULPersistenceManager defaultLocalStoreFilename];
  v4 = [storesDirectory URLByAppendingPathComponent:v3];

  return v4;
}

- (id)getLocalStoreURL
{
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__29;
  v12 = __Block_byref_object_dispose__29;
  v13 = 0;
  queue2 = [(ULPersistenceManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ULPersistenceManager_getLocalStoreURL__block_invoke;
  v7[3] = &unk_2798D4BB0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__ULPersistenceManager_getLocalStoreURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getLocalStoreURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_isMainDatabase
{
  _getDefaultStoresDirectory = [(ULPersistenceManager *)self _getDefaultStoresDirectory];
  v4 = +[ULPersistenceManager defaultLocalStoreFilename];
  v5 = [_getDefaultStoresDirectory URLByAppendingPathComponent:v4];

  _getLocalStoreURL = [(ULPersistenceManager *)self _getLocalStoreURL];
  LOBYTE(_getDefaultStoresDirectory) = [_getLocalStoreURL isEqual:v5];

  return _getDefaultStoresDirectory;
}

- (BOOL)isMainDatabase
{
  selfCopy = self;
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue2 = [(ULPersistenceManager *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__ULPersistenceManager_isMainDatabase__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void *__38__ULPersistenceManager_isMainDatabase__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isMainDatabase];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)destroyStore
{
  selfCopy = self;
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue2 = [(ULPersistenceManager *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ULPersistenceManager_destroyStore__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(queue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void *__36__ULPersistenceManager_destroyStore__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _destroyStore];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_destroyStore
{
  v30 = *MEMORY[0x277D85DE8];
  persistenceStore = [(ULPersistenceManager *)self persistenceStore];
  storeDescription = [persistenceStore storeDescription];

  if (onceToken_MicroLocation_Default != -1)
  {
    __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = [storeDescription URL];
    path = [v7 path];
    *buf = 68289283;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2113;
    v29 = path;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Destroying local store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v10 = v9;
    v11 = [storeDescription URL];
    path2 = [v11 path];
    *buf = 68289283;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2113;
    v29 = path2;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Destroying local store", "{msg%{public}.0s:Destroying local store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if ([(ULPersistenceManager *)self _disconnectFromStore])
  {
    v13 = objc_alloc(MEMORY[0x277CBE4D8]);
    managedObjectModel = [(ULPersistenceManager *)self managedObjectModel];
    v15 = [v13 initWithManagedObjectModel:managedObjectModel];

    v16 = [storeDescription URL];
    type = [storeDescription type];
    options = [storeDescription options];
    v24 = 0;
    v19 = [v15 destroyPersistentStoreAtURL:v16 withType:type options:options error:&v24];
    v20 = v24;

    if ((v19 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
      }

      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = v20;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Destroy store failed with error, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
      }

      v22 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289282;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = v20;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Destroy store failed with error", "{msg%{public}.0s:Destroy store failed with error, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)handleDatabaseError:(id)error
{
  errorCopy = error;
  queue = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULPersistenceManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ULPersistenceManager_handleDatabaseError___block_invoke;
  v8[3] = &unk_2798D4280;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_sync(queue2, v8);
}

- (void)_handleDatabaseError:(id)error
{
  errorCopy = error;
  _isMainDatabase = [(ULPersistenceManager *)self _isMainDatabase];
  v5 = errorCopy;
  if (_isMainDatabase)
  {
    domain = [errorCopy domain];
    v7 = *MEMORY[0x277CBE2C8];
    v8 = [domain isEqualToString:*MEMORY[0x277CBE2C8]];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    }

    else
    {
      userInfo = [errorCopy userInfo];
      v9 = [userInfo objectForKeyedSubscript:v7];
    }

    intValue = [v9 intValue];
    if (intValue == 26 || intValue == 11)
    {
      [(ULPersistenceManager *)self _handleCorruptedDatabase:errorCopy];
      [(ULPersistenceManager *)self _exitProcessWithFailureCode];
    }

    v5 = errorCopy;
  }
}

- (void)_handleCorruptedDatabase:(id)database
{
  v20 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  _getLocalStoreURL = [(ULPersistenceManager *)self _getLocalStoreURL];
  if (onceToken_MicroLocation_Default != -1)
  {
    __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    v7 = v6;
    path = [_getLocalStoreURL path];
    v12 = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = databaseCopy;
    v18 = 2113;
    v19 = path;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Sqlite returned error indicating database corruption. deleting database and exiting, error:%{public, location:escape_only}@, store path:%{private, location:escape_only}@}", &v12, 0x26u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v10 = v9;
    path2 = [_getLocalStoreURL path];
    v12 = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = databaseCopy;
    v18 = 2113;
    v19 = path2;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sqlite returned error indicating database corruption. deleting database and exiting", "{msg%{public}.0s:Sqlite returned error indicating database corruption. deleting database and exiting, error:%{public, location:escape_only}@, store path:%{private, location:escape_only}@}", &v12, 0x26u);
  }

  if ([(ULPersistenceManager *)self _disconnectFromStore]&& ![(ULPersistenceManager *)self _destroyStore])
  {
    [(ULPersistenceManager *)self _deleteDatabaseFilesAtPath:_getLocalStoreURL];
  }
}

- (void)_deleteDatabaseFilesAtPath:(id)path
{
  v38[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [pathCopy path];
  v38[0] = path;
  path2 = [pathCopy path];
  v7 = [path2 stringByAppendingString:@"-wal"];
  v38[1] = v7;
  v23 = pathCopy;
  path3 = [pathCopy path];
  v9 = [path3 stringByAppendingString:@"-shm"];
  v38[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2113;
    v34 = v10;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Deleting store files, store files:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        if ([defaultManager fileExistsAtPath:v18])
        {
          v24 = v15;
          v19 = [defaultManager removeItemAtPath:v18 error:&v24];
          v20 = v24;

          if ((v19 & 1) == 0)
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
            }

            v21 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
            {
              *buf = 68289539;
              v30 = 0;
              v31 = 2082;
              v32 = "";
              v33 = 2113;
              v34 = v18;
              v35 = 2114;
              v36 = v20;
              _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to delete file, filePath:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
            }

            if (onceToken_MicroLocation_Default != -1)
            {
              [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
            }

            v22 = logObject_MicroLocation_Default;
            if (os_signpost_enabled(logObject_MicroLocation_Default))
            {
              *buf = 68289539;
              v30 = 0;
              v31 = 2082;
              v32 = "";
              v33 = 2113;
              v34 = v18;
              v35 = 2114;
              v36 = v20;
              _os_signpost_emit_with_name_impl(&dword_258FE9000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to delete file", "{msg%{public}.0s:Failed to delete file, filePath:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
            }
          }

          v15 = v20;
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }
}

@end