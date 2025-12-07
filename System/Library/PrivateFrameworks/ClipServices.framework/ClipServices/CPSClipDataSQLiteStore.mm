@interface CPSClipDataSQLiteStore
+ (CPSClipDataSQLiteStore)defaultStore;
- (BOOL)_checkDatabaseIntegrity;
- (BOOL)_insertAppClipRecord:(id)record;
- (BOOL)_insertOrReplaceEntryPointRecord:(id)record;
- (BOOL)_updateAppClipRecord:(id)record;
- (CPSClipDataSQLiteStore)initWithDatabaseURL:(id)l;
- (int)_createClipEntryPointsTable;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToCurrentSchemaVersionIfNeeded;
- (int)_migrateToSchemaVersion:(int)version;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (int)_migrateToSchemaVersion_4;
- (int)_migrateToSchemaVersion_5;
- (int)_migrateToSchemaVersion_6;
- (int)_migrateToSchemaVersion_7;
- (int)_migrateToSchemeVersion_8;
- (int)_schemaVersion;
- (int)_setDatabaseSchemaVersion:(int)version;
- (void)_closeDatabase;
- (void)_createClipEntryPointsTable;
- (void)_createFreshDatabaseSchema;
- (void)_migrateToSchemaVersion_2;
- (void)_migrateToSchemaVersion_4;
- (void)_migrateToSchemaVersion_5;
- (void)_migrateToSchemaVersion_6;
- (void)_migrateToSchemaVersion_7;
- (void)_migrateToSchemeVersion_8;
- (void)_openDatabaseAndCheckIntegrity:(BOOL)integrity;
- (void)getAppClipRecordWithBundleID:(id)d completion:(id)completion;
- (void)getEntryPointRecordWithWebClipIdentifier:(id)identifier completion:(id)completion;
- (void)removeRecordWithBundleID:(id)d;
- (void)saveAppClipRecord:(id)record completion:(id)completion;
- (void)saveClipEntryPointRecord:(id)record completion:(id)completion;
@end

@implementation CPSClipDataSQLiteStore

+ (CPSClipDataSQLiteStore)defaultStore
{
  if (+[CPSClipDataSQLiteStore defaultStore]::onceToken != -1)
  {
    +[CPSClipDataSQLiteStore defaultStore];
  }

  v3 = +[CPSClipDataSQLiteStore defaultStore]::store;

  return v3;
}

void __38__CPSClipDataSQLiteStore_defaultStore__block_invoke()
{
  v0 = [CPSClipDataSQLiteStore alloc];
  v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/com.apple.ClipServices.clipserviced/"];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v2 fileExistsAtPath:v1] & 1) == 0)
  {
    [v2 _web_createDirectoryAtPathWithIntermediateDirectories:v1 attributes:0];
  }

  v3 = MEMORY[0x277CBEBC0];
  v4 = [v1 stringByAppendingPathComponent:@"ClipData.db"];
  v5 = [v4 stringByResolvingSymlinksInPath];
  v8 = [v3 fileURLWithPath:v5 isDirectory:0];

  v6 = [(CPSClipDataSQLiteStore *)v0 initWithDatabaseURL:v8];
  v7 = +[CPSClipDataSQLiteStore defaultStore]::store;
  +[CPSClipDataSQLiteStore defaultStore]::store = v6;
}

- (CPSClipDataSQLiteStore)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v22.receiver = self;
  v22.super_class = CPSClipDataSQLiteStore;
  v5 = [(CPSClipDataSQLiteStore *)&v22 init];
  if (v5)
  {
    if (lCopy)
    {
      inMemoryDatabaseURL = lCopy;
    }

    else
    {
      inMemoryDatabaseURL = [MEMORY[0x277D49B00] inMemoryDatabaseURL];
    }

    databaseURL = v5->_databaseURL;
    v5->_databaseURL = inMemoryDatabaseURL;

    v9 = dispatch_queue_create("com.apple.ClipService.CPSClipDataSQLiteStore", 0);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v9;

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v11 = v5->_databaseQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__CPSClipDataSQLiteStore_initWithDatabaseURL___block_invoke;
    v15[3] = &unk_278DCF1E8;
    v12 = v5;
    v16 = v12;
    v17 = &v18;
    dispatch_sync(v11, v15);
    if (*(v19 + 24))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v7 = v13;

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *__46__CPSClipDataSQLiteStore_initWithDatabaseURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseAndCheckIntegrity:0];
  result = [*(a1 + 32) _isDatabaseOpen];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_checkDatabaseIntegrity
{
  v2 = [(WBSSQLiteDatabase *)self->_database fetchQuery:@"PRAGMA integrity_check(1)"];
  nextObject = [v2 nextObject];
  v4 = [nextObject stringAtIndex:0];
  statement = [v2 statement];
  [statement invalidate];

  if (!nextObject)
  {
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _checkDatabaseIntegrity];
    }

    goto LABEL_8;
  }

  v8 = [v4 isEqualToString:@"ok"];
  if ((v8 & 1) == 0)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _checkDatabaseIntegrity];
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

- (void)_openDatabaseAndCheckIntegrity:(BOOL)integrity
{
  integrityCopy = integrity;
  v5 = [objc_alloc(MEMORY[0x277D49B00]) initWithURL:self->_databaseURL queue:self->_databaseQueue];
  database = self->_database;
  self->_database = v5;

  v7 = [(WBSSQLiteDatabase *)self->_database openWithAccessType:3 error:0];
  if (v7)
  {
    if (integrityCopy && ![(CPSClipDataSQLiteStore *)self _checkDatabaseIntegrity])
    {

      goto LABEL_17;
    }

    v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA journal_mode = WAL");
    if (v9 != 100)
    {
      v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CPSClipDataSQLiteStore _openDatabaseAndCheckIntegrity:];
      }
    }

    SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON");
    _migrateToCurrentSchemaVersionIfNeeded = [(CPSClipDataSQLiteStore *)self _migrateToCurrentSchemaVersionIfNeeded];
    if (_migrateToCurrentSchemaVersionIfNeeded != 8)
    {
      v14 = _migrateToCurrentSchemaVersionIfNeeded;
      v15 = CPS_LOG_CHANNEL_PREFIXClipServices(_migrateToCurrentSchemaVersionIfNeeded, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CPSClipDataSQLiteStore *)&self->_databaseURL _openDatabaseAndCheckIntegrity:v14, v15];
      }

LABEL_17:
      [(CPSClipDataSQLiteStore *)self _closeDatabase];
    }
  }

  else
  {
    v16 = CPS_LOG_CHANNEL_PREFIXClipServices(v7, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _openDatabaseAndCheckIntegrity:];
    }

    v17 = self->_database;
    self->_database = 0;
  }
}

- (void)_closeDatabase
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (int)_schemaVersion
{
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  nextObject = [v2 nextObject];
  v4 = [nextObject intAtIndex:0];

  statement = [v2 statement];
  [statement invalidate];

  return v4;
}

- (int)_setDatabaseSchemaVersion:(int)version
{
  v19 = *MEMORY[0x277D85DE8];
  database = self->_database;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %d", *&version];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      lastErrorMessage = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 67109634;
      versionCopy = version;
      v15 = 2114;
      v16 = lastErrorMessage;
      v17 = 1024;
      v18 = v7;
      _os_log_error_impl(&dword_2436ED000, v10, OS_LOG_TYPE_ERROR, "Failed to set the database schema version to %d: %{public}@ (%d)", buf, 0x18u);
    }
  }

  return v7;
}

- (int)_migrateToCurrentSchemaVersionIfNeeded
{
  _schemaVersion = [(CPSClipDataSQLiteStore *)self _schemaVersion];
  v4 = _schemaVersion;
  if (_schemaVersion <= 7)
  {
    if (_schemaVersion)
    {
      v5 = _schemaVersion + 1;
      while (v5 != 9)
      {
        v6 = [(CPSClipDataSQLiteStore *)self _migrateToSchemaVersion:v5];
        v5 = (v5 + 1);
        if (v6 != 101)
        {
          return v4;
        }
      }
    }

    else if ([(CPSClipDataSQLiteStore *)self _createFreshDatabaseSchema]!= 101)
    {
      return 0;
    }

    v4 = 8;
    [(CPSClipDataSQLiteStore *)self _setDatabaseSchemaVersion:8];
  }

  return v4;
}

- (int)_createFreshDatabaseSchema
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE app_clips (id INTEGER PRIMARY KEY AUTOINCREMENT,bundle_id TEXT NOT NULL UNIQUE,user_notification_consent INTEGER DEFAULT NULL,location_confirmation_consent INTEGER DEFAULT NULL,allows_location_confirmation_after_launch BOOL DEFAULT 0,last_user_notification_request_time REAL DEFAULT NULL,last_version_check_time REAL DEFAULT NULL,last_install_time REAL DEFAULT NULL,parent_app_name TEXT DEFAULT NULL,parent_app_caption TEXT DEFAULT NULL,parent_app_store_url TEXT DEFAULT NULL)");
  if (v3 == 101)
  {
    v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE INDEX app_clips__bundle_id ON app_clips (bundle_id)");
    if (v5 != 101)
    {
      v7 = CPS_LOG_CHANNEL_PREFIXClipServices(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _createFreshDatabaseSchema];
      }
    }

    return [(CPSClipDataSQLiteStore *)self _createClipEntryPointsTable];
  }

  else
  {
    v8 = v3;
    v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _createFreshDatabaseSchema];
    }
  }

  return v8;
}

- (int)_createClipEntryPointsTable
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE clip_entry_points (id INTEGER PRIMARY KEY AUTOINCREMENT,app_clip_bundle_id TEXT DEFAULT NULL,web_clip_id TEXT NOT NULL UNIQUE,last_abr_fetch_time REAL DEFAULT 0,FOREIGN KEY(app_clip_bundle_id) REFERENCES app_clips(bundle_id) ON DELETE CASCADE ON UPDATE CASCADE)");
  v5 = v3;
  if (v3 != 101)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _createClipEntryPointsTable];
    }
  }

  return v5;
}

- (int)_migrateToSchemaVersion:(int)version
{
  v3 = *&version;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__CPSClipDataSQLiteStore__migrateToSchemaVersion___block_invoke;
  v18[3] = &unk_278DCF210;
  v18[4] = self;
  v5 = MEMORY[0x245D3D5F0](v18, a2);
  v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION");
  v8 = v6;
  if (v6 != 101)
  {
    v9 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _migrateToSchemaVersion:];
    }

    goto LABEL_28;
  }

  if (v3 > 4)
  {
    if (v3 < 8)
    {
      goto LABEL_14;
    }

    if (v3 == 8)
    {
      _migrateToSchemeVersion = [(CPSClipDataSQLiteStore *)self _migrateToSchemeVersion];
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (v3 > 2)
  {
    goto LABEL_14;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
LABEL_14:
      _migrateToSchemeVersion = [(CPSClipDataSQLiteStore *)self _migrateToSchemaVersion];
LABEL_15:
      v8 = _migrateToSchemeVersion;
      if (_migrateToSchemeVersion == 101)
      {
        goto LABEL_16;
      }

LABEL_25:
      v16 = CPS_LOG_CHANNEL_PREFIXClipServices(_migrateToSchemeVersion, v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CPSClipDataSQLiteStore _migrateToSchemaVersion:];
      }

      goto LABEL_27;
    }

LABEL_22:
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
    _migrateToSchemeVersion = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (_migrateToSchemeVersion)
    {
      [CPSClipDataSQLiteStore _migrateToSchemaVersion:];
    }

    v8 = 1;
    goto LABEL_25;
  }

LABEL_16:
  v8 = [(CPSClipDataSQLiteStore *)self _setDatabaseSchemaVersion:v3];
  if (v8 != 101)
  {
LABEL_27:
    v5[2](v5);
    goto LABEL_28;
  }

  v12 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION");
  v8 = v12;
  if (v12 != 101)
  {
    v14 = CPS_LOG_CHANNEL_PREFIXClipServices(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CPSClipDataSQLiteStore _migrateToSchemaVersion:];
    }

    goto LABEL_27;
  }

LABEL_28:

  return v8;
}

void __50__CPSClipDataSQLiteStore__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  v1 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 16), 0, @"ROLLBACK TRANSACTION");
  if (v1 != 101)
  {
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices(v1, v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__CPSClipDataSQLiteStore__migrateToSchemaVersion___block_invoke_cold_1();
    }
  }
}

- (int)_migrateToSchemaVersion_2
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN parent_app_name TEXT DEFAULT NULL");
  if (v3 != 101)
  {
    v7 = v3;
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_2];
    }

    goto LABEL_7;
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN parent_app_caption TEXT DEFAULT NULL");
  v7 = v5;
  if (v5 != 101)
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_2];
    }

LABEL_7:
  }

  return v7;
}

- (int)_migrateToSchemaVersion_3
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE clip_entry_points (id INTEGER PRIMARY KEY AUTOINCREMENT,app_clip_bundle_id TEXT DEFAULT NULL REFERENCES app_clips(bundle_id) ON DELETE SET NULL,web_clip_id TEXT NOT NULL UNIQUE,last_abr_fetch_time REAL DEFAULT 0)");
  v5 = v3;
  if (v3 != 101)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _createClipEntryPointsTable];
    }
  }

  return v5;
}

- (int)_migrateToSchemaVersion_4
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN location_confirmation_consent BOOL DEFAULT 0");
  v5 = v3;
  if (v3 != 101)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_4];
    }
  }

  return v5;
}

- (int)_migrateToSchemaVersion_5
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN parent_app_store_url TEXT DEFAULT NULL");
  v5 = v3;
  if (v3 != 101)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_5];
    }
  }

  return v5;
}

- (int)_migrateToSchemaVersion_6
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE app_clips ADD COLUMN allows_location_confirmation_after_launch BOOL DEFAULT 0");
  v5 = v3;
  if (v3 != 101)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_6];
    }
  }

  return v5;
}

- (int)_migrateToSchemaVersion_7
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"UPDATE app_clips SET user_notification_consent = NULL, location_confirmation_consent = NULL");
  v5 = v3;
  if (v3 != 101)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemaVersion_7];
    }
  }

  return v5;
}

- (int)_migrateToSchemeVersion_8
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE clip_entry_points RENAME TO clip_entry_points_old");
  if (v3 != 101)
  {
    _createClipEntryPointsTable = v3;
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _migrateToSchemeVersion_8];
    }

    goto LABEL_12;
  }

  _createClipEntryPointsTable = [(CPSClipDataSQLiteStore *)self _createClipEntryPointsTable];
  if (_createClipEntryPointsTable == 101)
  {
    v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"INSERT INTO clip_entry_points (id, app_clip_bundle_id, web_clip_id, last_abr_fetch_time)SELECT clip_entry_points_old.id, clip_entry_points_old.app_clip_bundle_id, clip_entry_points_old.web_clip_id, clip_entry_points_old.last_abr_fetch_time FROM clip_entry_points_old");
    if (v6 != 101)
    {
      v8 = CPS_LOG_CHANNEL_PREFIXClipServices(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _migrateToSchemeVersion_8];
      }
    }

    v9 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DROP TABLE clip_entry_points_old");
    _createClipEntryPointsTable = v9;
    if (v9 != 101)
    {
      v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _migrateToSchemeVersion_8];
      }

LABEL_12:
    }
  }

  return _createClipEntryPointsTable;
}

- (void)saveAppClipRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  bundleID = [recordCopy bundleID];
  v9 = [bundleID length];

  if (v9)
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CPSClipDataSQLiteStore_saveAppClipRecord_completion___block_invoke;
    block[3] = &unk_278DCF238;
    block[4] = self;
    v15 = recordCopy;
    v16 = completionCopy;
    dispatch_async(databaseQueue, block);
  }

  else
  {
    v13 = CPS_LOG_CHANNEL_PREFIXClipServices(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2436ED000, v13, OS_LOG_TYPE_DEFAULT, "Not saving app clip record because bundle ID is nil", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __55__CPSClipDataSQLiteStore_saveAppClipRecord_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _updateAppClipRecord:*(a1 + 40)];
  v3 = [*(a1 + 40) fullApplicationName];
  v4 = [v3 cps_privacyPreservingDescription];

  if (v2)
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_DEFAULT, "Successfully updated existing app clip record with full app named %{public}@", &v13, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) _insertAppClipRecord:*(a1 + 40)];
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"Failed to insert";
      if (v8)
      {
        v11 = @"Successfully inserted";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_DEFAULT, "%@ new app clip record with full app named %{public}@", &v13, 0x16u);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v8);
  }
}

- (BOOL)_updateAppClipRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:self->_database query:{@"UPDATE app_clips SET user_notification_consent = ?, location_confirmation_consent = ?, allows_location_confirmation_after_launch = ?, last_user_notification_request_time = ?, last_version_check_time = ?, last_install_time = ?, parent_app_name = ?, parent_app_caption = ?, parent_app_store_url = ? WHERE bundle_id = ?"}];
    userNotificationGranted = [recordCopy userNotificationGranted];

    if (userNotificationGranted)
    {
      userNotificationGranted2 = [recordCopy userNotificationGranted];
      [v5 bindInt64:objc_msgSend(userNotificationGranted2 atParameterIndex:{"BOOLValue"), 1}];
    }

    else
    {
      [v5 bindNullAtParameterIndex:1];
    }

    locationConfirmationGranted = [recordCopy locationConfirmationGranted];

    if (locationConfirmationGranted)
    {
      locationConfirmationGranted2 = [recordCopy locationConfirmationGranted];
      [v5 bindInt64:objc_msgSend(locationConfirmationGranted2 atParameterIndex:{"BOOLValue"), 2}];
    }

    else
    {
      [v5 bindNullAtParameterIndex:2];
    }

    [v5 bindInt64:objc_msgSend(recordCopy atParameterIndex:{"locationConfirmationState"), 3}];
    [recordCopy lastProxCardLaunchTime];
    [v5 bindDouble:4 atParameterIndex:?];
    [recordCopy lastVersionCheckTime];
    [v5 bindDouble:5 atParameterIndex:?];
    [recordCopy lastInstallTime];
    [v5 bindDouble:6 atParameterIndex:?];
    fullApplicationName = [recordCopy fullApplicationName];
    [v5 bindString:fullApplicationName atParameterIndex:7];

    fullApplicationCaption = [recordCopy fullApplicationCaption];
    [v5 bindString:fullApplicationCaption atParameterIndex:8];

    fullApplicationStoreURL = [recordCopy fullApplicationStoreURL];
    absoluteString = [fullApplicationStoreURL absoluteString];
    [v5 bindString:absoluteString atParameterIndex:9];

    bundleID = [recordCopy bundleID];
    [v5 bindString:bundleID atParameterIndex:10];

    execute = [v5 execute];
    v18 = execute;
    if (execute != 101)
    {
      v19 = CPS_LOG_CHANNEL_PREFIXClipServices(execute, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [CPSClipDataSQLiteStore _updateAppClipRecord:];
      }
    }

    [v5 invalidate];
    v8 = v18 == 101 && [(WBSSQLiteDatabase *)self->_database changedRowCount]!= 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_insertAppClipRecord:(id)record
{
  recordCopy = record;
  v5 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:self->_database query:{@"INSERT INTO app_clips (bundle_id, user_notification_consent, location_confirmation_consent, allows_location_confirmation_after_launch, last_user_notification_request_time, last_version_check_time, last_install_time, parent_app_name, parent_app_caption, parent_app_store_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];
  bundleID = [recordCopy bundleID];
  [v5 bindString:bundleID atParameterIndex:1];

  userNotificationGranted = [recordCopy userNotificationGranted];

  if (userNotificationGranted)
  {
    userNotificationGranted2 = [recordCopy userNotificationGranted];
    [v5 bindInt64:objc_msgSend(userNotificationGranted2 atParameterIndex:{"BOOLValue"), 2}];
  }

  else
  {
    [v5 bindNullAtParameterIndex:2];
  }

  locationConfirmationGranted = [recordCopy locationConfirmationGranted];

  if (locationConfirmationGranted)
  {
    locationConfirmationGranted2 = [recordCopy locationConfirmationGranted];
    [v5 bindInt64:objc_msgSend(locationConfirmationGranted2 atParameterIndex:{"BOOLValue"), 3}];
  }

  else
  {
    [v5 bindNullAtParameterIndex:3];
  }

  [v5 bindInt64:objc_msgSend(recordCopy atParameterIndex:{"locationConfirmationState"), 4}];
  [recordCopy lastProxCardLaunchTime];
  [v5 bindDouble:5 atParameterIndex:?];
  [recordCopy lastVersionCheckTime];
  [v5 bindDouble:6 atParameterIndex:?];
  [recordCopy lastInstallTime];
  [v5 bindDouble:7 atParameterIndex:?];
  fullApplicationName = [recordCopy fullApplicationName];
  [v5 bindString:fullApplicationName atParameterIndex:8];

  fullApplicationCaption = [recordCopy fullApplicationCaption];
  [v5 bindString:fullApplicationCaption atParameterIndex:9];

  fullApplicationStoreURL = [recordCopy fullApplicationStoreURL];
  absoluteString = [fullApplicationStoreURL absoluteString];
  [v5 bindString:absoluteString atParameterIndex:10];

  execute = [v5 execute];
  v17 = execute;
  if (execute != 101)
  {
    v18 = CPS_LOG_CHANNEL_PREFIXClipServices(execute, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _insertAppClipRecord:];
    }
  }

  [v5 invalidate];
  v19 = v17 == 101 && [(WBSSQLiteDatabase *)self->_database changedRowCount]!= 0;

  return v19;
}

- (void)getAppClipRecordWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CPSClipDataSQLiteStore_getAppClipRecordWithBundleID_completion___block_invoke;
  block[3] = &unk_278DCF238;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(databaseQueue, block);
}

void __66__CPSClipDataSQLiteStore_getAppClipRecordWithBundleID_completion___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(a1[4] + 16), @"SELECT user_notification_consent, location_confirmation_consent, allows_location_confirmation_after_launch, last_user_notification_request_time, last_version_check_time, last_install_time, parent_app_name, parent_app_caption, parent_app_store_url FROM app_clips WHERE bundle_id = ?", a1 + 5);
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v17 = 138739971;
    v18 = v5;
    _os_log_impl(&dword_2436ED000, v4, OS_LOG_TYPE_DEFAULT, "Getting app clip record with bundle ID %{sensitive}@", &v17, 0xCu);
  }

  v7 = [v2 nextObject];
  if (v7)
  {
    v8 = [[CPSAppClipRecord alloc] initWithSQLiteRow:v7 bundleID:a1[5]];
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CPSAppClipRecord *)v8 fullApplicationName];
      v12 = [v11 cps_privacyPreservingDescription];
      v13 = [(CPSAppClipRecord *)v8 fullApplicationCaption];
      v14 = [v13 cps_privacyPreservingDescription];
      v17 = 138740483;
      v18 = v8;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_DEFAULT, "Retrieved app clip record %{sensitive}@, name is %{public}@, caption is %{public}@", &v17, 0x20u);
    }
  }

  else
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices(0, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __66__CPSClipDataSQLiteStore_getAppClipRecordWithBundleID_completion___block_invoke_cold_1();
    }

    v8 = 0;
  }

  v16 = [v2 statement];
  [v16 invalidate];

  (*(a1[6] + 16))();
}

- (void)saveClipEntryPointRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CPSClipDataSQLiteStore_saveClipEntryPointRecord_completion___block_invoke;
  block[3] = &unk_278DCF238;
  block[4] = self;
  v12 = recordCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = recordCopy;
  dispatch_async(databaseQueue, block);
}

uint64_t __62__CPSClipDataSQLiteStore_saveClipEntryPointRecord_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _insertOrReplaceEntryPointRecord:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_insertOrReplaceEntryPointRecord:(id)record
{
  v14[3] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:self->_database query:{@"INSERT OR REPLACE INTO clip_entry_points (app_clip_bundle_id, web_clip_id, last_abr_fetch_time) VALUES (?, ?, ?)"}];
  appClipBundleID = [recordCopy appClipBundleID];
  webClipIdentifier = [recordCopy webClipIdentifier];
  [recordCopy lastABRFetchTime];
  v14[0] = v6;
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},NSString * {__strong},double>(v5, &appClipBundleID, &webClipIdentifier, v14);

  execute = [v5 execute];
  v9 = execute;
  if (execute != 101)
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices(execute, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [CPSClipDataSQLiteStore _insertOrReplaceEntryPointRecord:];
    }
  }

  [v5 invalidate];

  return v9 == 101;
}

- (void)getEntryPointRecordWithWebClipIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CPSClipDataSQLiteStore_getEntryPointRecordWithWebClipIdentifier_completion___block_invoke;
  block[3] = &unk_278DCF238;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(databaseQueue, block);
}

void __78__CPSClipDataSQLiteStore_getEntryPointRecordWithWebClipIdentifier_completion___block_invoke(void *a1)
{
  v5 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(a1[4] + 16), @"SELECT app_clip_bundle_id, web_clip_id, last_abr_fetch_time FROM clip_entry_points WHERE web_clip_id = ?", a1 + 5);
  v2 = [v5 nextObject];
  if (v2)
  {
    v3 = [[CPSClipEntryPointRecord alloc] initWithSQLiteRow:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v5 statement];
  [v4 invalidate];

  (*(a1[6] + 16))();
}

- (void)removeRecordWithBundleID:(id)d
{
  dCopy = d;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke;
  v7[3] = &unk_278DCF260;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(databaseQueue, v7);
}

void __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D49B08]) initWithDatabase:*(*(a1 + 32) + 16) query:@"DELETE FROM app_clips WHERE bundle_id = ?"];
  [v2 bindString:*(a1 + 40) atParameterIndex:1];
  v3 = [v2 execute];
  if (v3 != 101)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [*(*(a1 + 32) + 16) lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke_cold_1();
    }
  }

  [v2 invalidate];
}

- (void)_openDatabaseAndCheckIntegrity:(os_log_t)log .cold.3(uint64_t *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4[0] = 67109634;
  v4[1] = a2;
  v5 = 1024;
  v6 = 8;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_2436ED000, log, OS_LOG_TYPE_ERROR, "CPSClip Data SQLite schema version (%d) does not match our supported schema version (%d) in store at %{public}@", v4, 0x18u);
}

- (void)_createFreshDatabaseSchema
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to create the index for table: %{public}@ (%d)", v4, v5);
}

- (void)_createClipEntryPointsTable
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to create clip_entry_points table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion:.cold.4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_migrateToSchemaVersion_2
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add parent_app_caption column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_4
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add location_confirmation_consent column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_5
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add parent_app_store_url column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_6
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to add allows_location_confirmation_after_launch column to app_clips table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_7
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to set user_notification_consent and location_confirmation_consent to NULL: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemeVersion_8
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to drop clip_entry_points_old table: %{public}@ (%d)", v4, v5);
}

- (void)_updateAppClipRecord:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to update a clip record in the app_clips table: %@ (%d)", v4, v5);
}

- (void)_insertAppClipRecord:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to insert a clip data into the app_clips table: %@ (%d)", v4, v5);
}

- (void)_insertOrReplaceEntryPointRecord:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to save entry point into the clip_entry_points table: %@ (%d)", v4, v5);
}

void __51__CPSClipDataSQLiteStore_removeRecordWithBundleID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_4(&dword_2436ED000, "Failed to remove a row from the app_clips table: %@ (%d)", v4, v5);
}

@end