@interface MBFileListDB
+ (id)_fileMetadataForPath:(id)path fetchXattrs:(BOOL)xattrs db:(id)db error:(id *)error;
+ (id)openDatabaseIn:(id)in commitID:(id)d domainName:(id)name error:(id *)error;
+ (id)openOrCreateDatabaseIn:(id)in commitID:(id)d domainName:(id)name error:(id *)error;
- (BOOL)_adjustInodesForVolumeTransition:(id *)transition;
- (BOOL)_fetchPropertyValue:(id *)value forKey:(id)key error:(id *)error;
- (BOOL)_fetchVolumeUUID:(id *)d error:(id *)error;
- (BOOL)_markAllFilesAsDeleted:(id *)deleted;
- (BOOL)_markInProgressVolumeTransition:(id *)transition;
- (BOOL)_openOrCreateWithError:(id *)error;
- (BOOL)_openWithError:(id *)error;
- (BOOL)_removeHardLinkedFilesForVolumeTransition:(id *)transition;
- (BOOL)_setVolumeUUID:(id)d error:(id *)error;
- (BOOL)_truncateDeletedFiles:(id *)files;
- (BOOL)beginTranscriptionForVolumeUUID:(id)d error:(id *)error;
- (BOOL)canReuseAssetsAcrossVolumeTransition:(BOOL *)transition isResuming:(BOOL *)resuming error:(id *)error;
- (BOOL)close:(id *)close;
- (BOOL)computeAssetRecordIDChecksumWithPrefix:(id)prefix checksum:(int64_t *)checksum error:(id *)error;
- (BOOL)enumerateAssetRecordIdSuffixForNonEmptyFiles:(id *)files block:(id)block;
- (BOOL)enumerateFileMetadataWithError:(id *)error block:(id)block;
- (BOOL)enumerateFilesWithDomain:(id)domain error:(id *)error block:(id)block;
- (BOOL)enumerateSymlinkTargets:(id *)targets block:(id)block;
- (BOOL)fetchAssetMetdataWithInode:(unint64_t)inode genCount:(unsigned int)count outAssetMetadata:(id *)metadata error:(id *)error;
- (BOOL)fetchEncryptionKeyForInode:(unint64_t)inode outEncryptionKey:(id *)key error:(id *)error;
- (BOOL)fetchFileListStats:(id *)stats error:(id *)error;
- (BOOL)finishTranscription:(id *)transcription;
- (BOOL)isTransitioningVolumes;
- (BOOL)markAllFilesAsDeleted:(id *)deleted;
- (BOOL)markFileAsPresent:(id)present error:(id *)error;
- (BOOL)setFileMetadata:(id)metadata forPath:(id)path error:(id *)error;
- (id)_initWithPath:(id)path domainName:(id)name;
- (id)_initializeDatabaseAt:(id)at withFlags:(int)flags error:(id *)error;
- (id)description;
- (id)fileMetadataForPath:(id)path fetchXattrs:(BOOL)xattrs error:(id *)error;
- (void)dealloc;
@end

@implementation MBFileListDB

+ (id)openDatabaseIn:(id)in commitID:(id)d domainName:(id)name error:(id *)error
{
  inCopy = in;
  dCopy = d;
  nameCopy = name;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = MBFileListDBPath(inCopy, dCopy, nameCopy);
  v15 = [[MBFileListDB alloc] _initWithPath:v14 domainName:nameCopy];
  if ([v15 _openWithError:error])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = CFAbsoluteTimeGetCurrent();
  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v17 - Current;
    *buf = 138412546;
    selfCopy = self;
    v23 = 2048;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Opened %@ in %.3fs", buf, 0x16u);
    _MBLog(@"I ", "Opened %@ in %.3fs", self, *&v19);
  }

  return v16;
}

+ (id)openOrCreateDatabaseIn:(id)in commitID:(id)d domainName:(id)name error:(id *)error
{
  inCopy = in;
  dCopy = d;
  nameCopy = name;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = MBFileListDBPath(inCopy, dCopy, nameCopy);
  v15 = [[MBFileListDB alloc] _initWithPath:v14 domainName:nameCopy];
  v29 = 0;
  v16 = [v15 _openOrCreateWithError:&v29];
  v17 = v29;
  v18 = v17;
  if (v16)
  {
LABEL_2:
    v19 = v15;
    goto LABEL_14;
  }

  domain = [v17 domain];
  if ([domain isEqualToString:PQLSqliteErrorDomain])
  {
    if ([v18 code] == 11)
    {

      goto LABEL_10;
    }

    v22 = [v18 code] == 26;

    if (v22)
    {
LABEL_10:
      [v15 close:0];
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        selfCopy = v14;
        v32 = 2112;
        v33 = *&v18;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Invalid FileList database at %@, deleting it and trying again: %@", buf, 0x16u);
        _MBLog(@"F ", "Invalid FileList database at %@, deleting it and trying again: %@", v14, v18);
      }

      v24 = v14;
      unlink([v14 fileSystemRepresentation]);
      if ([v15 _openOrCreateWithError:error])
      {
        goto LABEL_2;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (error)
  {
    v21 = v18;
    v19 = 0;
    *error = v18;
    goto LABEL_14;
  }

LABEL_13:
  v19 = 0;
LABEL_14:

  v25 = CFAbsoluteTimeGetCurrent();
  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = v25 - Current;
    *buf = 138412546;
    selfCopy = self;
    v32 = 2048;
    v33 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Opened/created %@ in %.3fs", buf, 0x16u);
    _MBLog(@"I ", "Opened/created %@ in %.3fs", self, *&v27);
  }

  return v19;
}

- (id)_initWithPath:(id)path domainName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = MBFileListDB;
  v9 = [(MBFileListDB *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, path);
    objc_storeStrong(&v10->_domainName, name);
    db = v10->_db;
    v10->_db = 0;
  }

  return v10;
}

- (BOOL)_openWithError:(id *)error
{
  v5 = +[NSFileManager defaultManager];
  path = [(MBFileListDB *)self path];
  v7 = [v5 fileExistsAtPath:path];

  if (v7)
  {
    path2 = [(MBFileListDB *)self path];
    v9 = [(MBFileListDB *)self _initializeDatabaseAt:path2 withFlags:2 error:error];
    db = self->_db;
    self->_db = v9;

    return self->_db != 0;
  }

  else
  {
    if (error)
    {
      path3 = [(MBFileListDB *)self path];
      *error = [MBError errorWithCode:4 path:path3 format:@"Database not found"];
    }

    return 0;
  }
}

- (BOOL)_openOrCreateWithError:(id *)error
{
  path = [(MBFileListDB *)self path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  v7 = +[NSFileManager defaultManager];
  v15[0] = NSFileOwnerAccountName;
  v15[1] = NSFileGroupOwnerAccountName;
  v16[0] = @"mobile";
  v16[1] = @"mobile";
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v9 = [v7 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v8 error:error];

  if (v9)
  {
    path2 = [(MBFileListDB *)self path];
    v11 = [(MBFileListDB *)self _initializeDatabaseAt:path2 withFlags:6 error:error];
    db = self->_db;
    self->_db = v11;

    v13 = self->_db != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_initializeDatabaseAt:(id)at withFlags:(int)flags error:(id *)error
{
  v6 = *&flags;
  atCopy = at;
  if (!atCopy)
  {
    __assert_rtn("[MBFileListDB _initializeDatabaseAt:withFlags:error:]", "MBFileListDB.m", 151, "path");
  }

  v9 = atCopy;
  v10 = [NSURL fileURLWithPath:atCopy];
  v11 = objc_opt_new();
  if ([v11 openAtURL:v10 withFlags:v6 error:error])
  {
    v28 = v10;
    errorCopy = error;
    v36 = @"CREATE TABLE IF NOT EXISTS FileMetadata (relativePath TEXT NOT NULL PRIMARY KEY, inode INTEGER NOT NULL, size INTEGER NOT NULL, birth INTEGER NOT NULL, modified INTEGER NOT NULL, statusChanged INTEGER NOT NULL, userID INTEGER NOT NULL, groupID INTEGER NOT NULL, mode INTEGER NOT NULL, flags INTEGER NOT NULL, protectionClass INTEGER NOT NULL, xattrs BLOB);";
    v27 = [NSArray arrayWithObjects:&v36 count:1];
    v26 = [MBPQLSchemaUpgrade upgradeWithVersion:1 shouldVacuum:0 statements:v27];
    v37[0] = v26;
    v35[0] = @"CREATE INDEX IF NOT EXISTS FileMetadataInodeIndex ON FileMetadata (inode);";
    v35[1] = @"CREATE TABLE IF NOT EXISTS SymlinkTargets (inode INTEGER NOT NULL PRIMARY KEY, targetPath TEXT NOT NULL);";
    v25 = [NSArray arrayWithObjects:v35 count:2];
    v12 = [MBPQLSchemaUpgrade upgradeWithVersion:2 shouldVacuum:0 statements:v25];
    v37[1] = v12;
    v34[0] = @"CREATE TABLE IF NOT EXISTS Assets (inode INTEGER NOT NULL PRIMARY KEY, genCount INTEGER NOT NULL, recordIDSuffix TEXT, assetType INTEGER NOT NULL, compressionMethod INTEGER NOT NULL, encryptionKey BLOB, assetSignature BLOB, assetSize INTEGER NOT NULL);";
    v34[1] = @"CREATE INDEX IF NOT EXISTS AssetSignatureIsNull ON Assets (assetSignature) WHERE assetSignature IS NULL";
    v13 = [NSArray arrayWithObjects:v34 count:2];
    v14 = [MBPQLSchemaUpgrade upgradeWithVersion:3 shouldVacuum:0 statements:v13];
    v37[2] = v14;
    v33 = @"CREATE TABLE IF NOT EXISTS Properties(key TEXT NOT NULL PRIMARY KEY, value BLOB);";
    v15 = [NSArray arrayWithObjects:&v33 count:1];
    v16 = [MBPQLSchemaUpgrade upgradeWithVersion:4 shouldVacuum:0 statements:v15];
    v37[3] = v16;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001FD23C;
    v30[3] = &unk_1003C08F0;
    v30[4] = self;
    v17 = [MBPQLSchemaUpgrade upgradeWithVersion:5 shouldVacuum:0 upgradeBlock:v30];
    v37[4] = v17;
    v18 = [NSArray arrayWithObjects:v37 count:5];
    v19 = [v11 performSchemaUpgrades:v18 isReadOnly:0 error:errorCopy];

    if (!v19)
    {
      v20 = 0;
      goto LABEL_7;
    }

    if ([v11 setupPragmas])
    {
      [v11 setAutoRollbackHandler:&stru_1003C1768];
      v20 = v11;
LABEL_7:
      v10 = v28;
      goto LABEL_14;
    }

    v10 = v28;
    if (errorCopy)
    {
      *errorCopy = [v11 lastError];
    }

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      lastError = [v11 lastError];
      *buf = 138412290;
      v32 = lastError;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to setup pragmas: %@", buf, 0xCu);

      lastError2 = [v11 lastError];
      _MBLog(@"E ", "Failed to setup pragmas: %@", lastError2);
    }
  }

  v20 = 0;
LABEL_14:

  return v20;
}

- (void)dealloc
{
  if (self->_db)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      path = self->_path;
      *buf = 138412290;
      v7 = path;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Database (%@) was not closed before dealloc", buf, 0xCu);
      _MBLog(@"E ", "Database (%@) was not closed before dealloc", self->_path);
    }
  }

  [(MBFileListDB *)self close:0];
  v5.receiver = self;
  v5.super_class = MBFileListDB;
  [(MBFileListDB *)&v5 dealloc];
}

- (BOOL)close:(id *)close
{
  v5 = self->_db;
  if (v5)
  {
    db = self->_db;
    self->_db = 0;

    Current = CFAbsoluteTimeGetCurrent();
    v16 = 0;
    v8 = [(PQLConnection *)v5 close:&v16];
    v9 = v16;
    if ((v8 & 1) == 0)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v19 = 2112;
        v20 = *&v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to close %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to close %@: %@", self, v9);
      }

      if (close)
      {
        v11 = v9;
        *close = v9;
      }
    }

    v12 = CFAbsoluteTimeGetCurrent();
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v12 - Current;
      *buf = 138412546;
      selfCopy2 = self;
      v19 = 2048;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Closed %@ in %.3fs", buf, 0x16u);
      _MBLog(@"I ", "Closed %@ in %.3fs", self, *&v14);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_fetchPropertyValue:(id *)value forKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = [(MBFileListDB *)self db];
  LOBYTE(error) = [v9 fetchObjectOfClass:objc_opt_class() outObject:value error:error sql:{@"SELECT value FROM Properties WHERE key = %@", keyCopy}];

  return error;
}

+ (id)_fileMetadataForPath:(id)path fetchXattrs:(BOOL)xattrs db:(id)db error:(id *)error
{
  xattrsCopy = xattrs;
  pathCopy = path;
  dbCopy = db;
  v11 = dbCopy;
  if (xattrsCopy)
  {
    v12 = @"SELECT FileMetadata.inode, FileMetadata.size, FileMetadata.birth, FileMetadata.modified, FileMetadata.statusChanged, FileMetadata.userID, FileMetadata.groupID, FileMetadata.mode, FileMetadata.flags, FileMetadata.protectionClass, FileMetadata.xattrs, Assets.genCount, recordIDSuffix, encryptionKey, compressionMethod, assetType, assetSize, assetSignature FROM FileMetadata LEFT JOIN Assets ON FileMetadata.inode = Assets.inode WHERE relativePath = %@;";
  }

  else
  {
    v12 = @"SELECT FileMetadata.inode, FileMetadata.size, FileMetadata.birth, FileMetadata.modified, FileMetadata.statusChanged, FileMetadata.userID, FileMetadata.groupID, FileMetadata.mode, FileMetadata.flags, FileMetadata.protectionClass, IIF(FileMetadata.xattrs IS NULL, 0, 1), Assets.genCount, recordIDSuffix, encryptionKey, compressionMethod, assetType, assetSize, assetSignature FROM FileMetadata LEFT JOIN Assets ON FileMetadata.inode = Assets.inode WHERE relativePath = %@;";
  }

  v13 = [dbCopy fetch:{v12, pathCopy}];
  if ([v13 next])
  {
    v29 = 0;
    v28 = 0;
    v27 = 0u;
    memset(v26, 0, sizeof(v26));
    [v13 getNode:v26 fromIndex:&v29];
    if (xattrsCopy)
    {
      v14 = [v13 xattrsFromIndex:&v29];
      HIBYTE(v28) = HIBYTE(v28) & 0xFB | (4 * (v14 != 0));
    }

    else
    {
      v14 = 0;
      if ([v13 BOOLAtIndex:v29])
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      HIBYTE(v28) = HIBYTE(v28) & 0xFB | v19;
      ++v29;
    }

    v20 = WORD2(v28) & 0xF000;
    if (v20 == 40960)
    {
      v25 = 0;
      v23 = [v11 fetchObjectOfClass:objc_opt_class() outObject:&v25 error:error sql:{@"SELECT targetPath FROM SymlinkTargets WHERE inode = %llu", v27}];
      v22 = v25;
      v21 = 0;
      v18 = 0;
      if (!v23)
      {
        goto LABEL_21;
      }
    }

    else if (v20 == 0x8000)
    {
      ++v29;
      DWORD2(v27) = [v13 intAtIndex:?];
      v21 = [v13 assetMetadataFromIndex:&v29];
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v21 = 0;
    }

    v18 = [MBFileMetadata fileMetadataFromNode:v26 xattrs:v14 linkTarget:v22 assetMetadata:v21 error:error];

LABEL_21:
    goto LABEL_22;
  }

  lastError = [v11 lastError];
  excludingNotFound = [lastError excludingNotFound];

  if (error)
  {
    v17 = excludingNotFound;
    *error = excludingNotFound;
  }

  v18 = 0;
LABEL_22:

  return v18;
}

- (BOOL)fetchAssetMetdataWithInode:(unint64_t)inode genCount:(unsigned int)count outAssetMetadata:(id *)metadata error:(id *)error
{
  v8 = *&count;
  v11 = self->_db;
  if (!v11)
  {
    __assert_rtn("[MBFileListDB fetchAssetMetdataWithInode:genCount:outAssetMetadata:error:]", "MBFileListDB.m", 324, "db");
  }

  if (!metadata)
  {
    __assert_rtn("[MBFileListDB fetchAssetMetdataWithInode:genCount:outAssetMetadata:error:]", "MBFileListDB.m", 325, "outAssetMetadata");
  }

  v12 = v11;
  v13 = [(PQLConnection *)self->_db fetch:@"SELECT recordIDSuffix, encryptionKey, compressionMethod, assetType, assetSize, assetSignature FROM Assets WHERE inode = %llu AND genCount = %d", inode, v8];
  if ([v13 next])
  {
    v19 = 0;
    *metadata = [v13 assetMetadataFromIndex:&v19];
    v14 = 1;
  }

  else
  {
    lastError = [(PQLConnection *)v12 lastError];
    excludingNotFound = [lastError excludingNotFound];

    v14 = excludingNotFound == 0;
    if (excludingNotFound)
    {
      if (error)
      {
        v17 = excludingNotFound;
        *error = excludingNotFound;
      }
    }

    else
    {
      *metadata = 0;
    }
  }

  return v14;
}

- (BOOL)fetchEncryptionKeyForInode:(unint64_t)inode outEncryptionKey:(id *)key error:(id *)error
{
  v9 = self->_db;
  if (!v9)
  {
    __assert_rtn("[MBFileListDB fetchEncryptionKeyForInode:outEncryptionKey:error:]", "MBFileListDB.m", 347, "db");
  }

  if (!key)
  {
    __assert_rtn("[MBFileListDB fetchEncryptionKeyForInode:outEncryptionKey:error:]", "MBFileListDB.m", 348, "outEncryptionKey");
  }

  v10 = v9;
  inode = [(PQLConnection *)self->_db fetch:@"SELECT encryptionKey FROM Assets WHERE inode = %llu", inode];
  if ([inode next])
  {
    *key = [inode dataAtIndex:0];
    v12 = 1;
  }

  else
  {
    lastError = [(PQLConnection *)v10 lastError];
    excludingNotFound = [lastError excludingNotFound];

    v12 = excludingNotFound == 0;
    if (excludingNotFound)
    {
      if (error)
      {
        v15 = excludingNotFound;
        *error = excludingNotFound;
      }
    }

    else
    {
      *key = 0;
    }
  }

  return v12;
}

- (id)fileMetadataForPath:(id)path fetchXattrs:(BOOL)xattrs error:(id *)error
{
  pathCopy = path;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1001FDE30;
  v21 = sub_1001FDE40;
  v22 = 0;
  db = self->_db;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001FDE48;
  v13[3] = &unk_1003C1790;
  v15 = &v17;
  v13[4] = self;
  v10 = pathCopy;
  v14 = v10;
  xattrsCopy = xattrs;
  LODWORD(error) = [(PQLConnection *)db groupInTransaction:error transaction:v13];

  if (error)
  {
    v11 = v18[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)_fetchVolumeUUID:(id *)d error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1001FDE30;
  v14 = sub_1001FDE40;
  v15 = 0;
  v6 = [(PQLConnection *)self->_db fetch:@"SELECT value FROM Properties WHERE key = %@", @"volumeUUID"];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001FE000;
  v9[3] = &unk_1003C17B8;
  v9[4] = &v10;
  v7 = [v6 enumerateWithError:error block:v9];
  if (v7)
  {
    *d = v11[5];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)_markInProgressVolumeTransition:(id *)transition
{
  v10 = 1;
  v5 = [NSData dataWithBytes:&v10 length:1];
  v6 = [(MBFileListDB *)self _setPropertyValue:v5 forKey:@"volumeTransitionIsInProgress" error:transition];
  if (v6)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      domainName = self->_domainName;
      *buf = 138412290;
      v12 = domainName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Marked in progress volume transition for %@", buf, 0xCu);
      _MBLog(@"Df", "Marked in progress volume transition for %@", self->_domainName);
    }
  }

  return v6;
}

- (BOOL)_setVolumeUUID:(id)d error:(id *)error
{
  dCopy = d;
  if ([(MBFileListDB *)self _clearInProgressVolumeTransition:error]&& [(PQLConnection *)self->_db executeWithError:error sql:@"INSERT OR REPLACE INTO Properties (key, value) VALUES (%@, %@)", @"volumeUUID", dCopy])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      domainName = self->_domainName;
      *buf = 138412546;
      v12 = domainName;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updated backupVolumeUUID for %@ to %@", buf, 0x16u);
      _MBLog(@"Df", "Updated backupVolumeUUID for %@ to %@", self->_domainName, dCopy);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)canReuseAssetsAcrossVolumeTransition:(BOOL *)transition isResuming:(BOOL *)resuming error:(id *)error
{
  if (!transition)
  {
    __assert_rtn("[MBFileListDB canReuseAssetsAcrossVolumeTransition:isResuming:error:]", "MBFileListDB.m", 419, "outCanReuseAssets");
  }

  if (!resuming)
  {
    __assert_rtn("[MBFileListDB canReuseAssetsAcrossVolumeTransition:isResuming:error:]", "MBFileListDB.m", 420, "outIsResuming");
  }

  v22 = 0;
  v9 = [(MBFileListDB *)self _fetchPropertyValue:&v22 forKey:@"volumeTransitionIsInProgress" error:?];
  v10 = v22;
  v11 = v10;
  if (!v9)
  {
    goto LABEL_12;
  }

  if (!v10)
  {
    v18 = [(MBFileListDB *)self db];
    v19 = [v18 fetchCountWithError:error sql:{@"SELECT COUNT(*) FROM FileMetadata WHERE (inode & %llu) != 0", 0x8000000000000000}];

    if (!v19)
    {
      v13 = 0;
      v16 = 1;
      goto LABEL_9;
    }

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = MBGetDefaultLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 0;
        goto LABEL_8;
      }

      domainName = [(MBFileListDB *)self domainName];
      *buf = 138412546;
      v24 = domainName;
      v25 = 2048;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Cannot perform volume transition for %@ - found %llu unsupported inodes", buf, 0x16u);

      domainName2 = [(MBFileListDB *)self domainName];
      _MBLog(@"I ", "Cannot perform volume transition for %@ - found %llu unsupported inodes", domainName2, v19);
      v13 = 0;
      goto LABEL_7;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v12 = MBGetDefaultLog();
  v13 = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    domainName3 = [(MBFileListDB *)self domainName];
    *buf = 138412290;
    v24 = domainName3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Can perform volume transition for %@ - in progress marker detected", buf, 0xCu);

    domainName2 = [(MBFileListDB *)self domainName];
    _MBLog(@"I ", "Can perform volume transition for %@ - in progress marker detected", domainName2);
LABEL_7:
  }

LABEL_8:

  v16 = v13;
LABEL_9:
  *resuming = v13;
  *transition = v16;
  v17 = 1;
LABEL_13:

  return v17;
}

- (BOOL)_removeHardLinkedFilesForVolumeTransition:(id *)transition
{
  if (![(PQLConnection *)self->_db executeWithError:transition sql:@"CREATE TEMPORARY TABLE IF NOT EXISTS HardlinkedInodes (inode INTEGER NOT NULL PRIMARY KEY) "]|| ![(PQLConnection *)self->_db executeWithError:transition sql:@"INSERT OR REPLACE INTO HardlinkedInodes (inode) SELECT inode FROM FileMetadata GROUP BY inode HAVING COUNT(*) > 1"]|| ![(PQLConnection *)self->_db executeWithError:transition sql:@"DELETE FROM Assets WHERE inode IN (SELECT inode FROM HardlinkedInodes)"]|| ![(PQLConnection *)self->_db executeWithError:transition sql:@"DELETE FROM SymlinkTargets WHERE inode IN (SELECT inode FROM HardlinkedInodes)"]|| ![(PQLConnection *)self->_db executeWithError:transition sql:@"DELETE FROM FileMetadata WHERE inode IN (SELECT inode FROM HardlinkedInodes)"])
  {
    return 0;
  }

  db = self->_db;

  return [(PQLConnection *)db executeWithError:transition sql:@"DROP TABLE IF EXISTS HardlinkedInodes"];
}

- (BOOL)_adjustInodesForVolumeTransition:(id *)transition
{
  if (![(PQLConnection *)self->_db executeWithError:transition sql:@"UPDATE FileMetadata SET inode = (inode | %llu)", 0x8000000000000000]|| ![(PQLConnection *)self->_db executeWithError:transition sql:@"UPDATE Assets SET inode = (inode | %llu)", 0x8000000000000000]|| ![(PQLConnection *)self->_db executeWithError:transition sql:@"UPDATE SymlinkTargets SET inode = (inode | %llu)", 0x8000000000000000]|| ![(MBFileListDB *)self _removeHardLinkedFilesForVolumeTransition:transition])
  {
    return 0;
  }

  return [(MBFileListDB *)self _markInProgressVolumeTransition:transition];
}

- (BOOL)beginTranscriptionForVolumeUUID:(id)d error:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("[MBFileListDB beginTranscriptionForVolumeUUID:error:]", "MBFileListDB.m", 502, "volumeUUID");
  }

  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FE798;
  v11[3] = &unk_1003C17E0;
  v11[4] = self;
  v12 = dCopy;
  v8 = dCopy;
  v9 = [(PQLConnection *)db groupInTransaction:error transaction:v11];

  return v9;
}

- (BOOL)isTransitioningVolumes
{
  volumeUUIDToUpdateAfterTranscription = [(MBFileListDB *)self volumeUUIDToUpdateAfterTranscription];
  v3 = volumeUUIDToUpdateAfterTranscription != 0;

  return v3;
}

- (BOOL)_markAllFilesAsDeleted:(id *)deleted
{
  v5 = [(PQLConnection *)self->_db executeWithError:deleted sql:@"CREATE TEMPORARY TABLE MetadataToDelete (relativePath PRIMARY KEY);"];
  if (v5)
  {
    db = self->_db;

    LOBYTE(v5) = [(PQLConnection *)db executeWithError:deleted sql:@"INSERT OR IGNORE INTO MetadataToDelete (relativePath) SELECT relativePath FROM FileMetadata;"];
  }

  return v5;
}

- (BOOL)markAllFilesAsDeleted:(id *)deleted
{
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FEBAC;
  v5[3] = &unk_1003C08F0;
  v5[4] = self;
  return [(PQLConnection *)db groupInTransaction:deleted transaction:v5];
}

- (BOOL)markFileAsPresent:(id)present error:(id *)error
{
  v6 = self->_db;
  present = [(PQLConnection *)v6 execute:@"DELETE FROM MetadataToDelete WHERE relativePath = %@;", present];
  v8 = present;
  if (error && (present & 1) == 0)
  {
    *error = [(PQLConnection *)v6 lastError];
  }

  return v8;
}

- (BOOL)setFileMetadata:(id)metadata forPath:(id)path error:(id *)error
{
  metadataCopy = metadata;
  pathCopy = path;
  db = self->_db;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FECFC;
  v14[3] = &unk_1003C17E0;
  v15 = metadataCopy;
  v16 = pathCopy;
  v11 = pathCopy;
  v12 = metadataCopy;
  LOBYTE(error) = [(PQLConnection *)db groupInTransaction:error transaction:v14];

  return error;
}

- (BOOL)_truncateDeletedFiles:(id *)files
{
  if ([(PQLConnection *)self->_db executeWithError:files sql:@"DELETE FROM FileMetadata WHERE relativePath IN (SELECT relativePath FROM MetadataToDelete);"]&& [(PQLConnection *)self->_db executeWithError:files sql:@"DELETE FROM SymlinkTargets WHERE inode NOT IN(SELECT inode FROM FileMetadata WHERE (mode & %d) == %d)", 61440, 40960])
  {
    return [(PQLConnection *)self->_db executeWithError:files sql:@"DELETE FROM Assets WHERE inode NOT IN(SELECT inode FROM FileMetadata WHERE (mode & %d) == %d)", 61440, 0x8000];
  }

  else
  {
    return 0;
  }
}

- (BOOL)finishTranscription:(id *)transcription
{
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001FF13C;
  v5[3] = &unk_1003C08F0;
  v5[4] = self;
  return [(PQLConnection *)db groupInTransaction:transcription transaction:v5];
}

- (BOOL)enumerateSymlinkTargets:(id *)targets block:(id)block
{
  blockCopy = block;
  v7 = [(PQLConnection *)self->_db fetch:@"SELECT inode, targetPath FROM SymlinkTargets;"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001FF28C;
  v10[3] = &unk_1003BE658;
  v11 = blockCopy;
  v8 = blockCopy;
  LOBYTE(targets) = [v7 enumerateWithError:targets block:v10];

  return targets;
}

- (BOOL)enumerateFilesWithDomain:(id)domain error:(id *)error block:(id)block
{
  domainCopy = domain;
  blockCopy = block;
  v10 = [(PQLConnection *)self->_db fetch:@"SELECT inode, size, birth, modified, statusChanged, userID, groupID, mode, flags, protectionClass, xattrs, relativePath FROM FileMetadata;"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FF3F4;
  v14[3] = &unk_1003C1808;
  v15 = domainCopy;
  v16 = blockCopy;
  v11 = blockCopy;
  v12 = domainCopy;
  LOBYTE(error) = [v10 enumerateWithError:error block:v14];

  return error;
}

- (BOOL)enumerateFileMetadataWithError:(id *)error block:(id)block
{
  blockCopy = block;
  v7 = self->_db;
  v8 = [(PQLConnection *)v7 fetch:@"SELECT relativePath FROM FileMetadata ORDER BY relativePath ASC"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001FF558;
  v12[3] = &unk_1003C1830;
  v12[4] = self;
  v13 = v7;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = v7;
  LOBYTE(error) = [v8 enumerateWithError:error block:v12];

  return error;
}

- (BOOL)enumerateAssetRecordIdSuffixForNonEmptyFiles:(id *)files block:(id)block
{
  blockCopy = block;
  v7 = self->_db;
  v8 = [(PQLConnection *)v7 fetch:@"SELECT recordIDSuffix FROM FileMetadata INNER JOIN Assets ON FileMetadata.inode = Assets.inode WHERE assetType != %llu", 4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FF6C4;
  v11[3] = &unk_1003BE658;
  v12 = blockCopy;
  v9 = blockCopy;
  LOBYTE(files) = [v8 enumerateWithError:files block:v11];

  return files;
}

- (BOOL)computeAssetRecordIDChecksumWithPrefix:(id)prefix checksum:(int64_t *)checksum error:(id *)error
{
  prefixCopy = prefix;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [(PQLConnection *)self->_db fetch:@"SELECT recordIDSuffix FROM Assets WHERE assetType != %llu", 4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001FF85C;
  v15[3] = &unk_1003C1858;
  v10 = prefixCopy;
  v16 = v10;
  v17 = &v18;
  v11 = [v9 enumerateWithError:error block:v15];
  v12 = v11;
  if (checksum)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    *checksum = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (BOOL)fetchFileListStats:(id *)stats error:(id *)error
{
  if (!stats)
  {
    return 1;
  }

  stats->var4 = 0;
  *&stats->var0 = 0u;
  *&stats->var2 = 0u;
  db = self->_db;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001FF97C;
  v6[3] = &unk_1003C1898;
  v6[4] = stats;
  return [(PQLConnection *)db groupInTransaction:error transaction:v6];
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  path = [(MBFileListDB *)self path];
  v6 = [NSString stringWithFormat:@"<%s: %p path=%@>", Name, self, path];;

  return v6;
}

@end