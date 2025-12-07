@interface GEOSQLiteDB
- (BOOL)_waitForAllTransactionExternalResources;
- (BOOL)setup;
- (int64_t)lastInsertRowID;
@end

@implementation GEOSQLiteDB

- (BOOL)setup
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_db)
  {
    v3 = 1;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_18660C000, log, OS_LOG_TYPE_INFO, "Opening database file for %p.", buf, 0xCu);
    }

    v5 = atomic_load(&self->_didTearDown);
    if (v5)
    {
      v6 = self->_log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18660C000, v6, OS_LOG_TYPE_ERROR, "DB can not be accessed once tearDown has been called.", buf, 2u);
      }

      v7 = *MEMORY[0x1E695E618];
      v13 = v7;
      v14 = @"Database was torn down.";
      defaultCenter2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

      v9 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-17 userInfo:defaultCenter2];
      lastError = self->_lastError;
      self->_lastError = v9;
    }

    else
    {
      if (![(GEOSQLiteDB *)self _openAndConfigureWithRetryIfCorrupt])
      {
        v3 = 0;
        return v3 & 1;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__debug_unlockDB_ name:GEOUnlockSQLiteDBNotificationName object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__debug_lockDB_ name:GEOLockSQLiteDBNotificationName object:0];
    }

    v3 = v5 ^ 1;
  }

  return v3 & 1;
}

- (BOOL)_waitForAllTransactionExternalResources
{
    ;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  externalFilesQueue = self->_externalFilesQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__GEOSQLiteDB_ExternalFile___waitForAllTransactionExternalResources__block_invoke;
  v6[3] = &unk_1E7071448;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(externalFilesQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return (v4 & 1) == 0;
}

uint64_t __68__GEOSQLiteDB_ExternalFile___waitForAllTransactionExternalResources__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 139);
  *(*(result + 32) + 139) = 0;
  return result;
}

- (int64_t)lastInsertRowID
{
  sqliteDB = [(GEOSQLiteDB *)self sqliteDB];

  return sqlite3_last_insert_rowid(sqliteDB);
}

@end