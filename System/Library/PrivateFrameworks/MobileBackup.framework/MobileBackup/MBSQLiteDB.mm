@interface MBSQLiteDB
- (BOOL)_invalidate:(id *)_invalidate;
- (BOOL)_openWithFlags:(int)flags usePQLBatching:(BOOL)batching error:(id *)error;
- (BOOL)_removeDatabaseAtPath:(id)path error:(id *)error;
- (BOOL)close:(id *)close;
- (BOOL)executeStatements:(id)statements error:(id *)error;
- (BOOL)executeWithError:(id *)error sql:(id)sql;
- (BOOL)groupInTransaction:(id *)transaction transaction:(id)a4;
- (BOOL)performWithConnection:(id *)connection accessor:(id)accessor;
- (MBSQLiteDB)initWithPath:(id)path readOnly:(BOOL)only shouldDeleteOnFailureToOpen:(BOOL)open usePQLBatching:(BOOL)batching schemaCurrentVersion:(int)version schemaMinDatabaseVersionForUpgrade:(int)upgrade error:(id *)error schemaUpgrades:(id)self0;
- (id)_invalidatedError;
- (id)_makePQLConnectionWithFlags:(int)flags usePQLBatching:(BOOL)batching error:(id *)error;
- (id)_openPQLConnectionWithFlags:(int)flags error:(id *)error;
- (id)fetchObjectOfClass:(Class)class error:(id *)error sql:(id)sql;
- (id)fetchSQL:(id)l;
- (id)openReadOnlyInstance:(Class)instance error:(id *)error;
- (unint64_t)fetchCountWithError:(id *)error sql:(id)sql;
- (void)_perform:(id)_perform;
- (void)_removeCorruptDatabaseWithError:(id)error;
- (void)_removeCorruptDatabaseWithError:(id)error completion:(id)completion;
- (void)dealloc;
@end

@implementation MBSQLiteDB

- (MBSQLiteDB)initWithPath:(id)path readOnly:(BOOL)only shouldDeleteOnFailureToOpen:(BOOL)open usePQLBatching:(BOOL)batching schemaCurrentVersion:(int)version schemaMinDatabaseVersionForUpgrade:(int)upgrade error:(id *)error schemaUpgrades:(id)self0
{
  pathCopy = path;
  upgradesCopy = upgrades;
  v48.receiver = self;
  v48.super_class = MBSQLiteDB;
  v18 = [(MBSQLiteDB *)&v48 init];
  if (!v18)
  {
    v28 = 0;
LABEL_9:
    v28 = v28;
    v30 = v28;
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [pathCopy copy];
  path = v19->_path;
  v19->_path = v20;

  v19->_shouldDeleteOnFailureToOpen = open;
  v19->_schemaCurrentVersion = version;
  v19->_schemaMinDatabaseVersionForUpgrade = upgrade;
  objc_storeStrong(&v19->_schemaUpgrades, upgrades);
  v22 = objc_opt_class();
  Name = class_getName(v22);
  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_create(Name, v24);
  sharedQueue = v19->_sharedQueue;
  v19->_sharedQueue = v25;

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100199DF4;
  v42 = sub_100199E04;
  v43 = 0;
  v27 = v19->_sharedQueue;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100199E0C;
  v32[3] = &unk_1003C0790;
  onlyCopy = only;
  v34 = &v44;
  v28 = v19;
  batchingCopy = batching;
  v33 = v28;
  v35 = &v38;
  dispatch_sync(v27, v32);
  v29 = *(v45 + 24);
  if ((v29 & 1) == 0)
  {
    if (error)
    {
      *error = v39[5];
    }

    v28 = 0;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  if (v29)
  {
    goto LABEL_9;
  }

  v30 = 0;
LABEL_10:

  return v30;
}

- (id)openReadOnlyInstance:(Class)instance error:(id *)error
{
  v4 = [[instance alloc] initWithPath:self->_path readOnly:1 shouldDeleteOnFailureToOpen:self->_shouldDeleteOnFailureToOpen usePQLBatching:0 schemaCurrentVersion:self->_schemaCurrentVersion schemaMinDatabaseVersionForUpgrade:self->_schemaMinDatabaseVersionForUpgrade error:error schemaUpgrades:0];

  return v4;
}

- (BOOL)close:(id *)close
{
  dispatch_assert_queue_not_V2(self->_sharedQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100199DF4;
  v17 = sub_100199E04;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  sharedQueue = self->_sharedQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A0F4;
  block[3] = &unk_1003BD340;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v13;
  dispatch_sync(sharedQueue, block);
  v6 = *(v10 + 24);
  if (close && (v10[3] & 1) == 0)
  {
    *close = v14[5];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

- (BOOL)_invalidate:(id *)_invalidate
{
  dispatch_assert_queue_V2(self->_sharedQueue);
  pdb = self->_pdb;
  if (pdb)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100199DF4;
    v29 = sub_100199E04;
    v30 = pdb;
    v6 = self->_pdb;
    self->_pdb = 0;

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100199DF4;
    v23 = sub_100199E04;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Invalidating cache connection %p", buf, 0xCu);
      _MBLog(@"I ", "Invalidating cache connection %p", self);
    }

    serialQueue = [v26[5] serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019A4A0;
    block[3] = &unk_1003C07B8;
    block[4] = &v25;
    block[5] = &v15;
    block[6] = &v19;
    dispatch_sync(serialQueue, block);

    if ((v16[3] & 1) == 0)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v26[5];
        v11 = v20[5];
        *buf = 134218242;
        selfCopy = v10;
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to close the PQL connection %p: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to close the PQL connection %p: %@", v26[5], v20[5]);
      }

      if (_invalidate)
      {
        *_invalidate = v20[5];
      }
    }

    v12 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)dealloc
{
  pdb = self->_pdb;
  if (pdb)
  {
    v4 = pdb;
    v5 = self->_pdb;
    self->_pdb = 0;

    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      *buf = 138412290;
      v14 = path;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Database (%@) was not closed before dealloc", buf, 0xCu);
      _MBLog(@"E ", "Database (%@) was not closed before dealloc", self->_path);
    }

    serialQueue = [(PQLConnection *)v4 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10019A73C;
    block[3] = &unk_1003BC0B0;
    v12 = v4;
    v9 = v4;
    dispatch_async(serialQueue, block);
  }

  v10.receiver = self;
  v10.super_class = MBSQLiteDB;
  [(MBSQLiteDB *)&v10 dealloc];
}

- (void)_removeCorruptDatabaseWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  sharedQueue = self->_sharedQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019A80C;
  block[3] = &unk_1003BD9D8;
  block[4] = self;
  v12 = errorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = errorCopy;
  dispatch_async(sharedQueue, block);
}

- (void)_removeCorruptDatabaseWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 151, "error");
  }

  v5 = errorCopy;
  dispatch_assert_queue_V2(self->_sharedQueue);
  path = [(MBSQLiteDB *)self path];
  if (!path)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 154, "path");
  }

  v7 = path;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v35 = v7;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The database at %@ is corrupted and will be removed: %@", buf, 0x16u);
    _MBLog(@"E ", "The database at %@ is corrupted and will be removed: %@", v7, v5);
  }

  if (!MBIsInternalInstall())
  {
    v31 = 0;
    v29 = [(MBSQLiteDB *)self _removeDatabaseAtPath:v7 error:&v31];
    v20 = v31;
    if (v29)
    {
LABEL_23:

      goto LABEL_24;
    }

    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = v7;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to delete the database at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to delete the database at %@: %@", v7, v20);
    }

LABEL_22:

    goto LABEL_23;
  }

  stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
  if (!stringByDeletingLastPathComponent)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 161, "dir");
  }

  v10 = stringByDeletingLastPathComponent;
  lastPathComponent = [(NSString *)self->_path lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v13 = [NSString stringWithFormat:@"%@_corrupted.db", stringByDeletingPathExtension];
  v14 = [v10 stringByAppendingPathComponent:v13];

  if (!v14)
  {
    __assert_rtn("[MBSQLiteDB _removeCorruptDatabaseWithError:]", "MBSQLiteDB.m", 163, "destinationPath");
  }

  v33 = 0;
  v15 = [MBSQLiteFileHandle copySQLiteFileAtPath:v7 toPath:v14 error:&v33];
  v16 = v33;
  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = v7;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to SQLite copy the database at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to SQLite copy the database at %@: %@", v7, v16);
    }
  }

  v18 = +[NSFileManager defaultManager];
  v32 = 0;
  v19 = [v18 mb_moveAsideAndMarkPurgeableDBFilesAtPath:v7 error:&v32];
  v20 = v32;

  if ((v19 & 1) == 0)
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = v7;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to move aside the database at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to move aside the database at %@: %@", v7, v20);
    }

    goto LABEL_22;
  }

  domain = [v5 domain];
  v22 = [domain isEqualToString:PQLSqliteErrorDomain];

  if (!v22)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v35 = v5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Removed database, error: %@", buf, 0xCu);
      _MBLog(@"F ", "Removed database, error: %@", v5);
    }

    goto LABEL_23;
  }

  if ([v5 code]!= 13)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      code = [v5 code];
      extendedSqliteCode = [v5 extendedSqliteCode];
      v25 = [v5 description];
      *buf = 134218498;
      v35 = code;
      v36 = 2048;
      v37 = extendedSqliteCode;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Removed database, code:%ld, extendedCode:%ld, description:%@", buf, 0x20u);

      code2 = [v5 code];
      extendedSqliteCode2 = [v5 extendedSqliteCode];
      v28 = [v5 description];
      _MBLog(@"F ", "Removed database, code:%ld, extendedCode:%ld, description:%@", code2, extendedSqliteCode2, v28);
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (BOOL)_openWithFlags:(int)flags usePQLBatching:(BOOL)batching error:(id *)error
{
  batchingCopy = batching;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v7 = self->_path;
  v8 = 0;
  v9 = 0;
  flagsCopy = flags;
  v10 = flags & 1;
  v11 = 1;
  v34 = PQLSqliteErrorDomain;
  while (1)
  {
    v12 = v11;

    if (v10)
    {
      v13 = 0;
    }

    else
    {
      stringByDeletingLastPathComponent = [(NSString *)v7 stringByDeletingLastPathComponent];
      v15 = +[NSFileManager defaultManager];
      v42[0] = NSFileOwnerAccountName;
      v42[1] = NSFileGroupOwnerAccountName;
      v43[0] = @"mobile";
      v43[1] = @"mobile";
      v16 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
      v39 = 0;
      v17 = [v15 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v16 error:&v39];
      v13 = v39;

      if ((v17 & 1) == 0)
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          path = self->_path;
          *buf = 138412546;
          *v41 = path;
          *&v41[8] = 2112;
          *&v41[10] = v13;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create the directory at %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to create the directory at %@: %@", self->_path, v13);
        }

        v8 = v13;
        goto LABEL_37;
      }
    }

    v38 = v13;
    v18 = [(MBSQLiteDB *)self _makePQLConnectionWithFlags:flagsCopy usePQLBatching:batchingCopy error:&v38];
    v8 = v38;

    if (v18 || v10)
    {
      break;
    }

    domain = [v8 domain];
    if ([domain isEqualToString:v34])
    {
      v21 = [v8 code] == 13;

      if (v21)
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v41 = 30;
          *&v41[4] = 2114;
          *&v41[6] = v8;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Sleeping for %d seconds: %{public}@", buf, 0x12u);
          _MBLog(@"E ", "Sleeping for %d seconds: %{public}@", 30, v8);
        }

        sleep(0x1Eu);
        goto LABEL_37;
      }
    }

    else
    {
    }

    if (self->_shouldDeleteOnFailureToOpen)
    {
      v37 = 0;
      v22 = [(MBSQLiteDB *)self _removeDatabaseAtPath:v7 error:&v37];
      v23 = v37;
      if ((v22 & 1) == 0)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109634;
          *v41 = v9;
          *&v41[4] = 2112;
          *&v41[6] = v7;
          *&v41[14] = 2112;
          *&v41[16] = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to remove the DB on attempt %d opening at %@: %@", buf, 0x1Cu);
          _MBLog(@"E ", "Failed to remove the DB on attempt %d opening at %@: %@", v9, v7, v23);
        }
      }
    }

    else
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v41 = v9;
        *&v41[4] = 2112;
        *&v41[6] = v7;
        *&v41[14] = 2112;
        *&v41[16] = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Not deleting DB on attempt %d opening at %@: %@", buf, 0x1Cu);
        _MBLog(@"E ", "Not deleting DB on attempt %d opening at %@: %@", v9, v7, v8);
      }
    }

    if (!v8)
    {
      __assert_rtn("[MBSQLiteDB _openWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 240, "localError");
    }

    v11 = 0;
    v9 = 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (!v18)
  {
LABEL_37:
    if (!v8)
    {
      __assert_rtn("[MBSQLiteDB _openWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 248, "localError");
    }

LABEL_38:
    if (error)
    {
      v31 = v8;
      v18 = 0;
      *error = v8;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_41;
  }

  self->_readOnly = v10;
  objc_storeStrong(&self->_pdb, v18);
  v25 = MBGetDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    if (v10)
    {
      v26 = "o";
    }

    else
    {
      v26 = "w";
    }

    *v41 = v26;
    *&v41[8] = 2112;
    *&v41[10] = v18;
    *&v41[18] = 2112;
    *&v41[20] = v7;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Opened r/%s PQL connection %@ at path %@", buf, 0x20u);
    _MBLog(@"Db", "Opened r/%s PQL connection %@ at path %@", v26, v18, v7);
  }

LABEL_41:
  return v18 != 0;
}

- (id)_makePQLConnectionWithFlags:(int)flags usePQLBatching:(BOOL)batching error:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBSQLiteDB _makePQLConnectionWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 257, "error");
  }

  batchingCopy = batching;
  v7 = *&flags;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v9 = [(MBSQLiteDB *)self _openPQLConnectionWithFlags:v7 error:error];
  if (!v9)
  {
    goto LABEL_32;
  }

  schemaMinDatabaseVersionForUpgrade = [(MBSQLiteDB *)self schemaMinDatabaseVersionForUpgrade];
  if (schemaMinDatabaseVersionForUpgrade > [(MBSQLiteDB *)self schemaCurrentVersion])
  {
    __assert_rtn("[MBSQLiteDB _makePQLConnectionWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 264, "self.schemaMinDatabaseVersionForUpgrade <= self.schemaCurrentVersion");
  }

  userVersion = [v9 userVersion];
  unsignedIntValue = [userVersion unsignedIntValue];

  if ((unsignedIntValue & 0x80000000) == 0 && unsignedIntValue < [(MBSQLiteDB *)self schemaMinDatabaseVersionForUpgrade])
  {
    if (v7)
    {
      [v9 close:0];
      [MBError errorWithCode:1 format:@"Can't upgrade RO database"];
      *error = v13 = 0;
      goto LABEL_33;
    }

    v14 = [v9 url];
    path = [v14 path];

    if (!path)
    {
      __assert_rtn("[MBSQLiteDB _makePQLConnectionWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 275, "path");
    }

    dbHandle = [v9 dbHandle];
    if (!dbHandle)
    {
      __assert_rtn("[MBSQLiteDB _makePQLConnectionWithFlags:usePQLBatching:error:]", "MBSQLiteDB.m", 277, "dbHandle");
    }

    v17 = dbHandle;
    v41 = 61;
    v18 = sqlite3_file_control(dbHandle, 0, 101, &v41);
    if (v18)
    {
      v19 = v18;
      v20 = sqlite3_extended_errcode(v17);
      v21 = [NSString stringWithUTF8String:sqlite3_errmsg(v17)];
      v22 = [NSError errorWithSqliteCode:v20 andMessage:v21];
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v43 = path;
        v44 = 1024;
        *v45 = v19;
        *&v45[4] = 2112;
        *&v45[6] = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to truncate the database at %@: %d: %@", buf, 0x1Cu);
        _MBLog(@"E ", "Failed to truncate the database at %@: %d: %@", path, v19, v22);
      }

      [v9 close:0];
      if (!self->_shouldDeleteOnFailureToOpen)
      {
        v38 = v22;
        *error = v22;
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v43 = path;
          v44 = 2112;
          *v45 = v22;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Not deleting DB while creating SQLite connection at %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Not deleting DB while creating SQLite connection at %@: %@", path, v22);
        }

        goto LABEL_30;
      }

      v40 = 0;
      v24 = [(MBSQLiteDB *)self _removeDatabaseAtPath:path error:&v40];
      v25 = v40;
      v9 = v25;
      if ((v24 & 1) == 0)
      {
        v46[0] = v22;
        v46[1] = v25;
        v26 = [NSArray arrayWithObjects:v46 count:2];
        *error = [MBError errorWithErrors:v26];

        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v43 = path;
          v44 = 2112;
          *v45 = v22;
          *&v45[8] = 2112;
          *&v45[10] = v9;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to remove the database while creating SQLite connection at %@: %@, remove error: %@", buf, 0x20u);
          _MBLog(@"E ", "Failed to remove the database while creating SQLite connection at %@: %@, remove error: %@", path, v22, v9);
        }

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        schemaMinDatabaseVersionForUpgrade2 = [(MBSQLiteDB *)self schemaMinDatabaseVersionForUpgrade];
        *buf = 138412802;
        v43 = path;
        v44 = 1024;
        *v45 = unsignedIntValue;
        *&v45[4] = 1024;
        *&v45[6] = schemaMinDatabaseVersionForUpgrade2;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Truncated the database at %@, databaseVersion:%d, minDatabaseVersionForUpgrade:%d", buf, 0x18u);
        _MBLog(@"Df", "Truncated the database at %@, databaseVersion:%d, minDatabaseVersionForUpgrade:%d", path, unsignedIntValue, [(MBSQLiteDB *)self schemaMinDatabaseVersionForUpgrade]);
      }

      [v9 close:0];
      v22 = 0;
    }

    v30 = [(MBSQLiteDB *)self _openPQLConnectionWithFlags:v7 error:error];
    if (!v30)
    {
LABEL_31:

      v9 = 0;
LABEL_32:
      v13 = 0;
      goto LABEL_33;
    }

    v9 = v30;
    [v30 setUserVersion:0];
  }

  schemaUpgrades = self->_schemaUpgrades;
  if (schemaUpgrades && ![v9 performSchemaUpgrades:schemaUpgrades isReadOnly:v7 & 1 error:error])
  {
    goto LABEL_32;
  }

  if (batchingCopy)
  {
    v32 = +[MBBehaviorOptions sharedOptions];
    [v32 sqlBatchTime];
    v34 = v33;

    v35 = +[MBBehaviorOptions sharedOptions];
    sqlBatchCount = [v35 sqlBatchCount];

    [v9 useBatchingWithDelay:sqlBatchCount changeCount:v34];
  }

  [v9 useSerialQueue];
  serialQueue = [v9 serialQueue];
  dispatch_queue_set_specific(serialQueue, self, self, 0);

  v9 = v9;
  v13 = v9;
LABEL_33:

  return v13;
}

- (id)_openPQLConnectionWithFlags:(int)flags error:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBSQLiteDB _openPQLConnectionWithFlags:error:]", "MBSQLiteDB.m", 334, "error");
  }

  v5 = *&flags;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v7 = self->_path;
  if (!v7)
  {
    __assert_rtn("[MBSQLiteDB _openPQLConnectionWithFlags:error:]", "MBSQLiteDB.m", 339, "path");
  }

  v8 = v7;
  v9 = [NSURL fileURLWithPath:v7];
  if (!v9)
  {
    __assert_rtn("[MBSQLiteDB _openPQLConnectionWithFlags:error:]", "MBSQLiteDB.m", 341, "url");
  }

  v10 = v9;
  objc_initWeak(&location, self);
  v11 = objc_alloc_init(PQLConnection);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10019BE44;
  v31[3] = &unk_1003C0800;
  objc_copyWeak(&v33, &location);
  v12 = v8;
  v32 = v12;
  [v11 setSqliteErrorHandler:v31];
  sqliteErrorHandler = [v11 sqliteErrorHandler];
  [v11 setAutoRollbackHandler:sqliteErrorHandler];

  v14 = [NSString alloc];
  v15 = objc_opt_class();
  v16 = [v14 initWithFormat:@"%s-%p", class_getName(v15), self];
  [v11 setLabel:v16];

  v17 = +[MBBehaviorOptions sharedOptions];
  [v11 setTraced:{objc_msgSend(v17, "sqlTrace")}];

  [v11 setCrashIfUsedAfterClose:1];
  [v11 setStatementCacheMaxCount:30];
  v30 = 0;
  v18 = [v11 openAtURL:v10 withFlags:v5 error:&v30];
  v19 = v30;
  v20 = v19;
  if ((v18 & 1) == 0)
  {
    if (!v19)
    {
      v21 = "localError";
      v22 = 396;
      goto LABEL_28;
    }

    if ((v5 & 1) == 0 || [v19 code] != 14 || (objc_msgSend(v20, "domain"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", PQLSqliteErrorDomain), v23, !v24))
    {

LABEL_19:
      v28 = v20;
      v11 = 0;
      *error = v20;
      goto LABEL_20;
    }

    path = [(MBSQLiteDB *)self path];
    v26 = [MBError errorWithCode:4 error:v20 format:@"Can't find the database: %@", path];

    v20 = v26;
LABEL_18:

    if (v20)
    {
      goto LABEL_19;
    }

    v21 = "pdb || localError";
    v22 = 411;
LABEL_28:
    __assert_rtn("[MBSQLiteDB _openPQLConnectionWithFlags:error:]", "MBSQLiteDB.m", v22, v21);
  }

  if ((v5 & 1) == 0 && ([v11 setupPragmas] & 1) == 0)
  {
    lastError = [v11 lastError];

    v20 = lastError;
    if (!lastError)
    {
      v20 = [MBError errorWithCode:1 format:@"setupPragmas failed"];
    }

    [v11 close:0];
    goto LABEL_18;
  }

  if (!v11)
  {
    v21 = "pdb";
    v22 = 407;
    goto LABEL_28;
  }

LABEL_20:

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  return v11;
}

- (BOOL)_removeDatabaseAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[MBSQLiteDB _removeDatabaseAtPath:error:]", "MBSQLiteDB.m", 418, "path");
  }

  if (!error)
  {
    __assert_rtn("[MBSQLiteDB _removeDatabaseAtPath:error:]", "MBSQLiteDB.m", 419, "error");
  }

  v7 = pathCopy;
  dispatch_assert_queue_V2(self->_sharedQueue);
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Deleting DB at %@", buf, 0xCu);
    _MBLog(@"E ", "Deleting DB at %@", v7);
  }

  v9 = +[NSFileManager defaultManager];
  if ([v9 fileExistsAtPath:v7])
  {
    v37 = 0;
    v10 = [v9 removeItemAtPath:v7 error:&v37];
    v11 = v37;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      if ([v11 code] != 4 || (objc_msgSend(v12, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", NSCocoaErrorDomain), v13, (v14 & 1) == 0))
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v40 = v7;
          v41 = 2112;
          v42 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to delete %@: %@", v7, v12);
        }

        v16 = v12;
        v17 = 0;
        *error = v12;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  MBSQLiteJournalSuffixes();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v36 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    errorCopy = error;
    v21 = *v34;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v7 stringByAppendingString:*(*(&v33 + 1) + 8 * i)];

        if ([v9 fileExistsAtPath:v23])
        {
          v32 = 0;
          v24 = [v9 removeItemAtPath:v23 error:&v32];
          v25 = v32;
          v12 = v25;
          if ((v24 & 1) == 0)
          {
            if ([v25 code] != 4 || (objc_msgSend(v12, "domain"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", NSCocoaErrorDomain), v26, (v27 & 1) == 0))
            {
              v28 = MBGetDefaultLog();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v40 = v23;
                v41 = 2112;
                v42 = v12;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
                _MBLog(@"E ", "Failed to delete %@: %@", v23, v12);
              }

              v29 = v12;
              *errorCopy = v12;

              v17 = 0;
              goto LABEL_30;
            }
          }
        }

        else
        {
          v12 = 0;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_30:

LABEL_31:
  return v17;
}

- (BOOL)performWithConnection:(id *)connection accessor:(id)accessor
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100199DF4;
  v17 = sub_100199E04;
  v18 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019C6F8;
  v8[3] = &unk_1003C0828;
  selfCopy = self;
  v11 = &v13;
  v12 = &v19;
  accessorCopy = accessor;
  v10 = accessorCopy;
  [(MBSQLiteDB *)selfCopy _perform:v8];
  if (connection && (v20[3] & 1) == 0)
  {
    *connection = v14[5];
  }

  v6 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v6;
}

- (void)_perform:(id)_perform
{
  block = _perform;
  specific = dispatch_get_specific(self);
  serialQueue = [(PQLConnection *)self->_pdb serialQueue];
  v6 = serialQueue;
  if (specific == self)
  {
    dispatch_assert_queue_V2(serialQueue);

    v7 = objc_autoreleasePoolPush();
    block[2]();
  }

  else
  {
    dispatch_assert_queue_not_V2(serialQueue);

    v7 = objc_autoreleasePoolPush();
    serialQueue2 = [(PQLConnection *)self->_pdb serialQueue];
    dispatch_sync(serialQueue2, block);
  }

  objc_autoreleasePoolPop(v7);
}

- (BOOL)groupInTransaction:(id *)transaction transaction:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019C920;
  v8[3] = &unk_1003C0850;
  v9 = a4;
  v6 = v9;
  LOBYTE(transaction) = [(MBSQLiteDB *)self performWithConnection:transaction accessor:v8];

  return transaction;
}

- (id)_invalidatedError
{
  path = self->_path;
  v3 = objc_opt_class();
  return [MBError errorWithCode:16 path:path format:@"%s database is closed", class_getName(v3)];
}

- (BOOL)executeWithError:(id *)error sql:(id)sql
{
  v11 = &v12;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019CA38;
  v8[3] = &unk_1003C0878;
  sqlCopy = sql;
  v10 = &v11;
  v6 = sqlCopy;
  LOBYTE(error) = [(MBSQLiteDB *)self performWithConnection:error accessor:v8];

  return error;
}

- (id)fetchObjectOfClass:(Class)class error:(id *)error sql:(id)sql
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100199DF4;
  v21 = sub_100199E04;
  v22 = 0;
  v16 = &v24;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019CBF4;
  v11[3] = &unk_1003C08A0;
  v13 = &v17;
  classCopy = class;
  sqlCopy = sql;
  v12 = sqlCopy;
  v15 = &v16;
  if ([(MBSQLiteDB *)self performWithConnection:error accessor:v11])
  {
    v8 = v18[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (unint64_t)fetchCountWithError:(id *)error sql:(id)sql
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100199DF4;
  v22 = sub_100199E04;
  v23 = 0;
  v17 = &v24;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10019CDEC;
  v13 = &unk_1003C08C8;
  v15 = &v18;
  sqlCopy = sql;
  v14 = sqlCopy;
  v16 = &v17;
  if ([(MBSQLiteDB *)self performWithConnection:error accessor:&v10]&& (v7 = v19[5]) != 0)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v18, 8);
  return unsignedIntegerValue;
}

- (BOOL)executeStatements:(id)statements error:(id *)error
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019CF3C;
  v8[3] = &unk_1003C08F0;
  statementsCopy = statements;
  v6 = statementsCopy;
  LOBYTE(error) = [(MBSQLiteDB *)self performWithConnection:error accessor:v8];

  return error;
}

- (id)fetchSQL:(id)l
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100199DF4;
  v21 = sub_100199E04;
  v22 = 0;
  v15 = 0;
  v16 = &v24;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019D0C8;
  v11[3] = &unk_1003C08C8;
  v13 = &v17;
  lCopy = l;
  v12 = lCopy;
  v14 = &v16;
  v5 = [(MBSQLiteDB *)self performWithConnection:&v15 accessor:v11];
  v6 = v15;
  if ((v5 & 1) == 0)
  {
    v7 = v18[5];
    v18[5] = 0;
  }

  v8 = [MBSQLiteResultSet alloc];
  v9 = [(MBSQLiteResultSet *)v8 _initWithDatabase:self creationError:v6 resultSet:v18[5]];

  _Block_object_dispose(&v17, 8);

  return v9;
}

@end