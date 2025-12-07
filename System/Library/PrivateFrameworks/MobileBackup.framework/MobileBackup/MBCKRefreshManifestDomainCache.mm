@interface MBCKRefreshManifestDomainCache
- (BOOL)_addReferences:(id)references forManifest:(id)manifest isPlaceholder:(BOOL)placeholder error:(id *)error;
- (BOOL)close:(id *)close;
- (MBCKRefreshManifestDomainCache)initWithCacheDirPath:(id)path error:(id *)error;
- (id)domainNameForFileRecord:(id)record error:(id *)error;
- (void)dealloc;
- (void)dumpContentsToLog;
@end

@implementation MBCKRefreshManifestDomainCache

- (MBCKRefreshManifestDomainCache)initWithCacheDirPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache initWithCacheDirPath:error:]", "MBCKRefreshManifestDomainCache.m", 38, "cacheDirPath");
  }

  if (!error)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache initWithCacheDirPath:error:]", "MBCKRefreshManifestDomainCache.m", 39, "error");
  }

  v7 = pathCopy;
  v8 = [pathCopy stringByAppendingPathComponent:@"cloudkit_cache_refresh_temp.db"];
  v20.receiver = self;
  v20.super_class = MBCKRefreshManifestDomainCache;
  v9 = [(MBCKRefreshManifestDomainCache *)&v20 init];
  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=domaincache= Opening: %@", buf, 0xCu);
      _MBLog(@"I ", "=domaincache= Opening: %@", v8);
    }

    v11 = [[MBSQLiteDB alloc] initWithPath:v8 readOnly:0 shouldDeleteOnFailureToOpen:1 usePQLBatching:0 schemaCurrentVersion:1 schemaMinDatabaseVersionForUpgrade:0 error:error schemaUpgrades:0];
    database = v9->_database;
    v9->_database = v11;

    if (v9->_database)
    {
      v21[0] = @"CREATE TEMPORARY TABLE IF NOT EXISTS PendingFileIDToManifestID (referenceID TEXT PRIMARY KEY, manifestID TEXT NOT NULL);";
      v21[1] = @"CREATE TEMPORARY TABLE IF NOT EXISTS PendingPlaceholderIDToManifestID (referenceID TEXT PRIMARY KEY, manifestID TEXT NOT NULL);";
      v21[2] = @"CREATE TEMPORARY TABLE IF NOT EXISTS PendingManifestIDToDomainName (manifestID TEXT PRIMARY KEY, domainName TEXT NOT NULL);";
      v13 = [NSArray arrayWithObjects:v21 count:3];
      v14 = [(MBSQLiteDB *)v9->_database executeStatements:v13 error:error];
      v15 = MBGetDefaultLog();
      p_super = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "=domaincache= Opened: %@", buf, 0xCu);
          _MBLog(@"I ", "=domaincache= Opened: %@", v8);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = *error;
        *buf = 138412290;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "=domaincache= Failed to create temporary tables: %@", buf, 0xCu);
        _MBLog(@"E ", "=domaincache= Failed to create temporary tables: %@", *error);
      }

      p_super = &v9->super;
    }

    else
    {
      p_super = MBGetDefaultLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v17 = *error;
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "=domaincache= Failed to initialize: %@", buf, 0xCu);
        _MBLog(@"E ", "=domaincache= Failed to initialize: %@", *error);
      }

      v13 = v9;
    }

    v9 = 0;
LABEL_17:
  }

  return v9;
}

- (void)dealloc
{
  if (self->_database)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      path = [(MBSQLiteDB *)self->_database path];
      *buf = 138412290;
      v8 = path;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=domaincache= Database (%@) was not closed before dealloc", buf, 0xCu);

      path2 = [(MBSQLiteDB *)self->_database path];
      _MBLog(@"E ", "=domaincache= Database (%@) was not closed before dealloc", path2);
    }
  }

  v6.receiver = self;
  v6.super_class = MBCKRefreshManifestDomainCache;
  [(MBCKRefreshManifestDomainCache *)&v6 dealloc];
}

- (BOOL)close:(id *)close
{
  if (!self->_database)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache close:]", "MBCKRefreshManifestDomainCache.m", 98, "_database");
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    path = [(MBSQLiteDB *)self->_database path];
    *buf = 138412290;
    v13 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "=domaincache= Closing: %@", buf, 0xCu);

    path2 = [(MBSQLiteDB *)self->_database path];
    _MBLog(@"I ", "=domaincache= Closing: %@", path2);
  }

  v8 = [(MBSQLiteDB *)self->_database close:close];
  if (v8)
  {
    path3 = [(MBSQLiteDB *)self->_database path];
    [MBSQLiteFileHandle removeAllSQLiteFilesAtPath:path3];

    database = self->_database;
    self->_database = 0;
  }

  return v8;
}

- (BOOL)_addReferences:(id)references forManifest:(id)manifest isPlaceholder:(BOOL)placeholder error:(id *)error
{
  referencesCopy = references;
  manifestCopy = manifest;
  if (!self->_database)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache _addReferences:forManifest:isPlaceholder:error:]", "MBCKRefreshManifestDomainCache.m", 118, "_database");
  }

  v12 = manifestCopy;
  if (!manifestCopy)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache _addReferences:forManifest:isPlaceholder:error:]", "MBCKRefreshManifestDomainCache.m", 119, "manifest");
  }

  if (!error)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache _addReferences:forManifest:isPlaceholder:error:]", "MBCKRefreshManifestDomainCache.m", 120, "error");
  }

  manifestID = [manifestCopy manifestID];
  if (!manifestID)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache _addReferences:forManifest:isPlaceholder:error:]", "MBCKRefreshManifestDomainCache.m", 123, "manifestID");
  }

  v14 = manifestID;
  database = self->_database;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000EA408;
  v21[3] = &unk_1003BE538;
  v22 = v12;
  v23 = manifestID;
  v24 = referencesCopy;
  placeholderCopy = placeholder;
  v16 = referencesCopy;
  v17 = v14;
  v18 = v12;
  v19 = [(MBSQLiteDB *)database performWithConnection:error accessor:v21];

  return v19;
}

- (id)domainNameForFileRecord:(id)record error:(id *)error
{
  recordCopy = record;
  if (!self->_database)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache domainNameForFileRecord:error:]", "MBCKRefreshManifestDomainCache.m", 159, "_database");
  }

  if (!error)
  {
    __assert_rtn("[MBCKRefreshManifestDomainCache domainNameForFileRecord:error:]", "MBCKRefreshManifestDomainCache.m", 160, "error");
  }

  v7 = recordCopy;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  v10 = [MBCKFile fileIDFromRecordName:recordName];
  v11 = [(MBSQLiteDB *)self->_database fetchObjectOfClass:objc_opt_class() error:error sql:@"SELECT domainName FROM PendingManifestIDToDomainName WHERE manifestID IN (SELECT manifestID FROM PendingFileIDToManifestID WHERE referenceID = %@) LIMIT 1", v10];
  v12 = v11;
  if (*error)
  {
    v13 = 0;
  }

  else if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [(MBSQLiteDB *)self->_database fetchObjectOfClass:objc_opt_class() error:error sql:@"SELECT domainName FROM PendingManifestIDToDomainName WHERE manifestID IN (SELECT manifestID FROM PendingPlaceholderIDToManifestID WHERE referenceID = %@) LIMIT 1", v10];
    v15 = v14;
    if (*error)
    {
      v13 = 0;
    }

    else if (v14)
    {
      v16 = [MBDomain containerIDWithName:v14];
      if (!v16)
      {
        __assert_rtn("[MBCKRefreshManifestDomainCache domainNameForFileRecord:error:]", "MBCKRefreshManifestDomainCache.m", 193, "baseContainerID");
      }

      v17 = v16;
      v18 = [MBDomain placeholderNameWithAppID:v16];
      if (!v18)
      {
        __assert_rtn("[MBCKRefreshManifestDomainCache domainNameForFileRecord:error:]", "MBCKRefreshManifestDomainCache.m", 195, "placeholderDomainName");
      }

      v13 = v18;
    }

    else
    {
      if ((atomic_exchange(&self->_alreadyDumped._Value, 1u) & 1) == 0)
      {
        [(MBCKRefreshManifestDomainCache *)self dumpContentsToLog];
      }

      [MBError errorWithCode:1 format:@"No file record or pending file domain record found with fileID = %@", v10];
      *error = v13 = 0;
    }
  }

  return v13;
}

- (void)dumpContentsToLog
{
  v3 = [(MBSQLiteDB *)self->_database fetchSQL:@"SELECT referenceID, manifestID FROM PendingFileIDToManifestID"];
  v14 = 0;
  [v3 enumerateWithError:&v14 block:&stru_1003BE578];
  v4 = v14;

  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=domaincache= FileToManifest Error: %@", buf, 0xCu);
      _MBLog(@"E ", "=domaincache= FileToManifest Error: %@", v4);
    }
  }

  v6 = [(MBSQLiteDB *)self->_database fetchSQL:@"SELECT referenceID, manifestID FROM PendingPlaceholderIDToManifestID"];
  v13 = v4;
  [v6 enumerateWithError:&v13 block:&stru_1003BE598];
  v7 = v13;

  if (v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=domaincache= PlaceholderToManifest Error: %@", buf, 0xCu);
      _MBLog(@"E ", "=domaincache= PlaceholderToManifest Error: %@", v7);
    }
  }

  v9 = [(MBSQLiteDB *)self->_database fetchSQL:@"SELECT manifestID, domainName FROM PendingManifestIDToDomainName"];
  v12 = v7;
  [v9 enumerateWithError:&v12 block:&stru_1003BE5B8];
  v10 = v12;

  if (v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=domaincache= ManifestToDomainName Error: %@", buf, 0xCu);
      _MBLog(@"E ", "=domaincache= ManifestToDomainName Error: %@", v10);
    }
  }
}

@end