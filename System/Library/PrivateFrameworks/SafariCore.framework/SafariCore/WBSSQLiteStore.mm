@interface WBSSQLiteStore
- (BOOL)_acquireDatabaseCoordinationLockForDatabaseURL:(id)l;
- (BOOL)_confirmDatabaseIntegrityIsOK;
- (WBSSQLiteStore)initWithURL:(id)l protectionType:(int64_t)type;
- (WBSSQLiteStoreDelegate)delegate;
- (id)_databaseCoordinationLockURLForDatabaseURL:(id)l;
- (int)_migrateToCurrentSchemaVersionIfNecessary;
- (int)_setDatabaseSchemaVersion:(int)version;
- (void)_closeDatabase;
- (void)_confirmDatabaseIntegrityIsOK;
- (void)_handleOpenFailureWithStatus:(int64_t)status completionHandler:(id)handler;
- (void)_openDatabase:(id)database createIfNeeded:(BOOL)needed checkIntegrity:(BOOL)integrity completionHandler:(id)handler;
- (void)_releaseDatabaseCoordinationLock;
- (void)closeWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)openAndCheckIntegrity:(BOOL)integrity createIfNeeded:(BOOL)needed fallBackToMemoryStoreIfError:(BOOL)error lockingPolicy:(int64_t)policy completionHandler:(id)handler;
- (void)savePendingChangesBeforeTermination;
@end

@implementation WBSSQLiteStore

- (BOOL)_confirmDatabaseIntegrityIsOK
{
  v9 = *MEMORY[0x1E69E9840];
  checkIntegrity = [(WBSSQLiteDatabase *)self->_database checkIntegrity];
  v4 = checkIntegrity;
  if (checkIntegrity)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(checkIntegrity, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [v4 safari_privacyPreservingDescription];
      [(WBSSQLiteStore *)safari_privacyPreservingDescription _confirmDatabaseIntegrityIsOK];
    }
  }

  return v4 == 0;
}

- (int)_migrateToCurrentSchemaVersionIfNecessary
{
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  nextObject = [v3 nextObject];
  v5 = [nextObject intAtIndex:0];

  statement = [v3 statement];
  [statement invalidate];

  _currentSchemaVersion = [(WBSSQLiteStore *)self _currentSchemaVersion];
  if (v5 < _currentSchemaVersion)
  {
    if (!v5)
    {
      if ([(WBSSQLiteStore *)self _createFreshDatabaseSchema]!= 101)
      {
        v5 = 0;
        goto LABEL_14;
      }

      v5 = 1;
      [(WBSSQLiteStore *)self _setDatabaseSchemaVersion:1];
    }

    if (_currentSchemaVersion <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = _currentSchemaVersion;
    }

    while (v8 != v5)
    {
      if ([(WBSSQLiteStore *)self _migrateToSchemaVersion:(v5 + 1)]!= 101)
      {
        goto LABEL_12;
      }

      [(WBSSQLiteStore *)self _setDatabaseSchemaVersion:++v5];
    }

    v5 = v8;
LABEL_12:
    if (v5 >= _currentSchemaVersion)
    {
      v5 = _currentSchemaVersion;
    }
  }

LABEL_14:

  return v5;
}

- (WBSSQLiteStore)initWithURL:(id)l protectionType:(int64_t)type
{
  lCopy = l;
  v19.receiver = self;
  v19.super_class = WBSSQLiteStore;
  v8 = [(WBSSQLiteStore *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseURL, l);
    v9->_protectionType = type;
    v9->_databaseCoordinationLockFileDescriptor = -1;
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"com.apple.SafariShared.%@.%p", v13, v9];
    v15 = dispatch_queue_create([v14 UTF8String], v10);
    databaseQueue = v9->_databaseQueue;
    v9->_databaseQueue = v15;

    v17 = v9;
  }

  return v9;
}

- (void)dealloc
{
  if ([(WBSSQLiteStore *)self _isDatabaseLocked])
  {
    [(WBSSQLiteStore *)self _releaseDatabaseCoordinationLock];
  }

  v3.receiver = self;
  v3.super_class = WBSSQLiteStore;
  [(WBSSQLiteStore *)&v3 dealloc];
}

- (void)openAndCheckIntegrity:(BOOL)integrity createIfNeeded:(BOOL)needed fallBackToMemoryStoreIfError:(BOOL)error lockingPolicy:(int64_t)policy completionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__WBSSQLiteStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke;
  v15[3] = &unk_1E7CF5238;
  v16 = handlerCopy;
  policyCopy = policy;
  errorCopy = error;
  neededCopy = needed;
  integrityCopy = integrity;
  v15[4] = self;
  v14 = handlerCopy;
  dispatch_async(databaseQueue, v15);
}

void __116__WBSSQLiteStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 48);
  *(*(a1 + 32) + 28) = *(a1 + 56);
  v1 = *(a1 + 32);
  v2 = v1[4];
  v3 = *(a1 + 57);
  v4 = *(a1 + 58);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __116__WBSSQLiteStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7CF5210;
  v6 = *(a1 + 40);
  [v1 _openDatabase:v2 createIfNeeded:v3 checkIntegrity:v4 completionHandler:v5];
}

- (void)_openDatabase:(id)database createIfNeeded:(BOOL)needed checkIntegrity:(BOOL)integrity completionHandler:(id)handler
{
  integrityCopy = integrity;
  neededCopy = needed;
  location[3] = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  handlerCopy = handler;
  v13 = [[WBSSQLiteDatabase alloc] initWithURL:databaseCopy queue:self->_databaseQueue];
  database = self->_database;
  self->_database = v13;

  objc_storeStrong(&self->_databaseURL, database);
  v15 = self->_database;
  if (neededCopy)
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  protectionType = self->_protectionType;
  v46 = 0;
  v18 = [(WBSSQLiteDatabase *)v15 openWithAccessType:v16 protectionType:protectionType vfs:0 error:&v46];
  v19 = v46;
  v21 = v19;
  if (!v18)
  {
    v30 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(v19, v20);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [v21 safari_privacyPreservingDescription];
      [WBSSQLiteStore _openDatabase:databaseCopy createIfNeeded:safari_privacyPreservingDescription checkIntegrity:location completionHandler:?];
    }

    v32 = 1;
    goto LABEL_23;
  }

  if (self->_databaseLockingPolicy == 1)
  {
    v22 = [(WBSSQLiteStore *)self _acquireDatabaseCoordinationLockForDatabaseURL:databaseCopy];
    if ((v22 & 1) == 0)
    {
      v36 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(v22, v23);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [WBSSQLiteStore _openDatabase:databaseCopy createIfNeeded:v36 checkIntegrity:? completionHandler:?];
      }

      v32 = 2;
LABEL_23:
      [(WBSSQLiteStore *)self _handleOpenFailureWithStatus:v32 completionHandler:handlerCopy];
      goto LABEL_24;
    }
  }

  if (integrityCopy && ![(WBSSQLiteStore *)self _confirmDatabaseIntegrityIsOK])
  {
    objc_initWeak(location, self);
    [(WBSSQLiteStore *)self _closeDatabase];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v38 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__WBSSQLiteStore__openDatabase_createIfNeeded_checkIntegrity_completionHandler___block_invoke;
      block[3] = &unk_1E7CF52B0;
      objc_copyWeak(&v44, location);
      v41 = WeakRetained;
      v42 = databaseCopy;
      v45 = neededCopy;
      v43 = handlerCopy;
      dispatch_async(v38, block);

      objc_destroyWeak(&v44);
    }

    else
    {
      [(WBSSQLiteStore *)self _handleOpenFailureWithStatus:3 completionHandler:handlerCopy];
    }

    objc_destroyWeak(location);
  }

  else
  {
    v24 = self->_database;
    v39 = v21;
    v25 = [(WBSSQLiteDatabase *)v24 enableWAL:&v39];
    v26 = v39;

    if (v25)
    {
      SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON");
      if ([(WBSSQLiteStore *)self _migrateToCurrentSchemaVersionIfNecessary])
      {
        v29 = 0;
      }

      else
      {
        v29 = 3;
      }

      v21 = v26;
      (*(handlerCopy + 2))(handlerCopy, v29);
    }

    else
    {
      v33 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(v27, v28);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        lastPathComponent = [databaseCopy lastPathComponent];
        safari_privacyPreservingDescription2 = [v26 safari_privacyPreservingDescription];
        [WBSSQLiteStore _openDatabase:lastPathComponent createIfNeeded:safari_privacyPreservingDescription2 checkIntegrity:location completionHandler:?];
      }

      v21 = v26;
      [(WBSSQLiteStore *)self _handleOpenFailureWithStatus:3 completionHandler:handlerCopy];
    }
  }

LABEL_24:
}

void __80__WBSSQLiteStore__openDatabase_createIfNeeded_checkIntegrity_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __80__WBSSQLiteStore__openDatabase_createIfNeeded_checkIntegrity_completionHandler___block_invoke_2;
    v4[3] = &unk_1E7CF5288;
    objc_copyWeak(&v7, (a1 + 56));
    v5 = *(a1 + 40);
    v8 = *(a1 + 64);
    v6 = *(a1 + 48);
    [v3 sqliteStoreDidFailDatabaseIntegrityCheck:WeakRetained completionHandler:v4];

    objc_destroyWeak(&v7);
  }
}

void __80__WBSSQLiteStore__openDatabase_createIfNeeded_checkIntegrity_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained databaseQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__WBSSQLiteStore__openDatabase_createIfNeeded_checkIntegrity_completionHandler___block_invoke_3;
    v5[3] = &unk_1E7CF5260;
    v5[4] = v3;
    v6 = *(a1 + 32);
    v8 = *(a1 + 56);
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

- (void)_handleOpenFailureWithStatus:(int64_t)status completionHandler:(id)handler
{
  handlerCopy = handler;
  _closeDatabase = [(WBSSQLiteStore *)self _closeDatabase];
  if (self->_fallBackToMemoryStoreIfError)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(_closeDatabase, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WBSSQLiteStore _handleOpenFailureWithStatus:v9 completionHandler:?];
    }

    v10 = +[WBSSQLiteDatabase inMemoryDatabaseURL];
    [(WBSSQLiteStore *)self _openDatabase:v10 createIfNeeded:1 checkIntegrity:0 completionHandler:handlerCopy];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sqliteStoreDidFallBackToInMemoryStore:self];
  }

  else
  {
    handlerCopy[2](handlerCopy, status);
  }
}

- (void)closeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__WBSSQLiteStore_closeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF09E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

uint64_t __45__WBSSQLiteStore_closeWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _closeDatabase];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)savePendingChangesBeforeTermination
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSSQLiteStore_savePendingChangesBeforeTermination__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

- (void)_closeDatabase
{
  if ([(WBSSQLiteStore *)self isOpen])
  {
    [(WBSSQLiteStore *)self _databaseWillClose];
    if ([(WBSSQLiteStore *)self _isDatabaseLocked])
    {
      [(WBSSQLiteStore *)self _releaseDatabaseCoordinationLock];
    }

    [(WBSSQLiteDatabase *)self->_database close];
    database = self->_database;
    self->_database = 0;
  }
}

- (int)_setDatabaseSchemaVersion:(int)version
{
  v14 = *MEMORY[0x1E69E9840];
  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", *&version];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      lastPathComponent = [(NSURL *)self->_databaseURL lastPathComponent];
      [(WBSSQLiteStore *)lastPathComponent _setDatabaseSchemaVersion:v13, version];
    }
  }

  return v7;
}

- (id)_databaseCoordinationLockURLForDatabaseURL:(id)l
{
  v3 = MEMORY[0x1E695DFF8];
  absoluteString = [(NSURL *)self->_databaseURL absoluteString];
  v5 = [absoluteString stringByAppendingString:@"-lock"];
  v6 = [v3 URLWithString:v5];

  return v6;
}

- (BOOL)_acquireDatabaseCoordinationLockForDatabaseURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = +[WBSSQLiteDatabase inMemoryDatabaseURL];
  v6 = [lCopy isEqual:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(WBSSQLiteStore *)self _databaseCoordinationLockURLForDatabaseURL:lCopy];
    fileSystemRepresentation = [v8 fileSystemRepresentation];

    self->_databaseCoordinationLockFileDescriptor = open(fileSystemRepresentation, 512, 438);
    _isDatabaseLocked = [(WBSSQLiteStore *)self _isDatabaseLocked];
    if (_isDatabaseLocked)
    {
      value = -1;
      v12 = fsetxattr(self->_databaseCoordinationLockFileDescriptor, "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
      if (v12 == -1)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __error();
          [WBSSQLiteStore _acquireDatabaseCoordinationLockForDatabaseURL:];
        }
      }

      v15 = flock(self->_databaseCoordinationLockFileDescriptor, 6);
      v7 = v15 != -1;
      if (v15 == -1)
      {
        v16 = close(self->_databaseCoordinationLockFileDescriptor);
        self->_databaseCoordinationLockFileDescriptor = -1;
        v18 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __error();
          [WBSSQLiteStore _acquireDatabaseCoordinationLockForDatabaseURL:];
        }
      }
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXSQLiteStore(_isDatabaseLocked, v11);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __error();
        [WBSSQLiteStore _acquireDatabaseCoordinationLockForDatabaseURL:];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (void)_releaseDatabaseCoordinationLock
{
  v3 = *self;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Failed to close database coordination lock: %{errno}d", buf, 8u);
}

- (WBSSQLiteStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_openDatabase:(uint64_t)a3 createIfNeeded:checkIntegrity:completionHandler:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8081e-34);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_openDatabase:(uint64_t)a1 createIfNeeded:(NSObject *)a2 checkIntegrity:completionHandler:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Failed to acquire exclusive access to database at %{private}@.", &v2, 0xCu);
}

- (void)_openDatabase:(uint64_t)a3 createIfNeeded:checkIntegrity:completionHandler:.cold.3(void *a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8081e-34);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_confirmDatabaseIntegrityIsOK
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Failed database integrity check: %{public}@", buf, 0xCu);
}

- (void)_setDatabaseSchemaVersion:(int)a3 .cold.1(void *a1, uint64_t a2, int a3)
{
  *a2 = 67109378;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2114;
  *(a2 + 10) = a1;
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)_acquireDatabaseCoordinationLockForDatabaseURL:.cold.1()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_11(v0, 4.8151e-34, v1, v2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)_acquireDatabaseCoordinationLockForDatabaseURL:.cold.2()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_11(v0, 4.8151e-34, v1, v2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)_acquireDatabaseCoordinationLockForDatabaseURL:.cold.3()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_11(v0, 4.8151e-34, v1, v2);
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end