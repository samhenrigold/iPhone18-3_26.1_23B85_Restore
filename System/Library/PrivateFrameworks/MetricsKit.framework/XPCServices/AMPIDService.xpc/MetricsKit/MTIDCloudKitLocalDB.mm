@interface MTIDCloudKitLocalDB
- (BOOL)deleteIfExists:(id)exists error:(id *)error;
- (BOOL)deleteRecordWithID:(id)d error:(id *)error;
- (BOOL)fileExists:(id)exists;
- (BOOL)setUserRecordIDName:(id)name;
- (BOOL)writeData:(id)data forName:(id)name error:(id *)error;
- (BOOL)writeRecord:(id)record error:(id *)error;
- (MTIDCloudKitLocalDB)initWithContainerIdentifier:(id)identifier recordType:(id)type recordZoneID:(id)d;
- (MTIDCloudKitLocalDBDelegate)delegate;
- (id)allRecords;
- (id)dataForName:(id)name error:(id *)error;
- (id)decodeRecordFromData:(id)data recordID:(id)d isSynchronized:(BOOL)synchronized;
- (id)encodeRecord:(id)record;
- (id)pendingRecordIDs;
- (id)recordWithID:(id)d error:(id *)error;
- (id)syncStatusCode;
- (id)userRecordIDName;
- (void)clearData;
- (void)setNeedsFetchRecords:(BOOL)records;
- (void)setSyncStatusCode:(id)code;
@end

@implementation MTIDCloudKitLocalDB

- (MTIDCloudKitLocalDB)initWithContainerIdentifier:(id)identifier recordType:(id)type recordZoneID:(id)d
{
  identifierCopy = identifier;
  typeCopy = type;
  dCopy = d;
  v38.receiver = self;
  v38.super_class = MTIDCloudKitLocalDB;
  v11 = [(MTIDCloudKitLocalDB *)&v38 init];
  v12 = v11;
  if (v11)
  {
    [(MTIDCloudKitLocalDB *)v11 setRecordType:typeCopy];
    [(MTIDCloudKitLocalDB *)v12 setRecordZoneID:dCopy];
    v13 = +[NSFileManager defaultManager];
    v14 = +[MTFrameworkEnvironment sharedEnvironment];
    localDataPath = [v14 localDataPath];

    v16 = [NSURL fileURLWithPath:localDataPath];
    v17 = [v16 URLByAppendingPathComponent:@"MetricsIdentifiers"];

    v18 = [v17 URLByAppendingPathComponent:identifierCopy];

    if (v18)
    {
      v37 = 0;
      v19 = [v13 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v37];
      v20 = v37;
      v21 = v20;
      if (v19)
      {
LABEL_7:
        [(MTIDCloudKitLocalDB *)v12 setPathURL:v18];

        goto LABEL_8;
      }

      v35 = v20;
      v36 = 0;
      path = [v18 path];
      v23 = [v13 fileExistsAtPath:path isDirectory:&v36];
      v24 = v36;

      if (v23 && (v24 & 1) != 0)
      {
        v21 = v35;
        goto LABEL_7;
      }

      v30 = MTMetricsKitOSLog(v25);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v35;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "MetricsKit: Error: %@", buf, 0xCu);
      }

      path2 = [v18 path];
      v32 = [NSString stringWithFormat:@"Application doesn't have write access to %@", path2];
      userInfo = [v35 userInfo];
      v28 = [NSException exceptionWithName:@"MTIDCloudKitLocalDB" reason:v32 userInfo:userInfo];
      v34 = v28;
    }

    else
    {
      v27 = [NSString stringWithFormat:@"MTFrameworkEnvironment.sharedEnvironment.localDataPath is not valid: %@", localDataPath];
      v28 = [NSException exceptionWithName:@"MTIDCloudKitLocalDB" reason:v27 userInfo:0];
      v29 = v28;
    }

    objc_exception_throw(v28);
  }

LABEL_8:

  return v12;
}

- (id)dataForName:(id)name error:(id *)error
{
  nameCopy = name;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [pathURL URLByAppendingPathComponent:nameCopy];

  v16 = 0;
  v9 = [NSData dataWithContentsOfURL:v8 options:0 error:&v16];
  v10 = v16;
  v11 = v10;
  if (error && !v9)
  {
    domain = [v10 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v11 code];

      if (code == 260)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v14 = v11;
    *error = v11;
  }

LABEL_8:

  return v9;
}

- (BOOL)writeData:(id)data forName:(id)name error:(id *)error
{
  dataCopy = data;
  nameCopy = name;
  if (dataCopy)
  {
    pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
    v11 = [pathURL URLByAppendingPathComponent:nameCopy];

    v12 = [dataCopy writeToURL:v11 options:1 error:error];
    nameCopy = v11;
  }

  else
  {
    v12 = [(MTIDCloudKitLocalDB *)self deleteIfExists:nameCopy error:error];
  }

  return v12;
}

- (BOOL)fileExists:(id)exists
{
  existsCopy = exists;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v6 = [pathURL URLByAppendingPathComponent:existsCopy];

  v7 = +[NSFileManager defaultManager];
  path = [v6 path];
  v9 = [v7 fileExistsAtPath:path];

  return v9;
}

- (BOOL)deleteIfExists:(id)exists error:(id *)error
{
  existsCopy = exists;
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v8 = [pathURL URLByAppendingPathComponent:existsCopy];

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 removeItemAtURL:v8 error:&v16];
  v11 = v16;
  domain = [v11 domain];
  if ([domain isEqualToString:NSCocoaErrorDomain])
  {
    v13 = [v11 code] == 4;

    v10 |= v13;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v10 & 1) == 0)
  {
    v14 = v11;
    *error = v11;
  }

LABEL_7:

  return v10 & 1;
}

- (id)encodeRecord:(id)record
{
  recordCopy = record;
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v4];
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  encodedData = [v4 encodedData];
  [v5 encodeObject:encodedData forKey:@"systemFields"];

  v7 = [recordCopy objectForKeyedSubscript:@"namespace"];
  [v5 encodeObject:v7 forKey:@"namespace"];

  v8 = [recordCopy objectForKeyedSubscript:@"secretKey"];
  [v5 encodeObject:v8 forKey:@"secretKey"];

  v9 = [recordCopy objectForKeyedSubscript:@"expiration"];
  [v5 encodeObject:v9 forKey:@"expiration"];

  mt_secretValue = [recordCopy mt_secretValue];

  [v5 encodeObject:mt_secretValue forKey:@"secretValue"];
  encodedData2 = [v5 encodedData];

  return encodedData2;
}

- (id)decodeRecordFromData:(id)data recordID:(id)d isSynchronized:(BOOL)synchronized
{
  synchronizedCopy = synchronized;
  dCopy = d;
  dataCopy = data;
  v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:0];

  [v10 setRequiresSecureCoding:1];
  v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"systemFields"];
  if (v11)
  {
    v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v11 error:0];
    [v12 setRequiresSecureCoding:1];
    v13 = [[CKRecord alloc] initWithCoder:v12];

    if (v13)
    {
      recordType = [v13 recordType];
      recordType2 = [(MTIDCloudKitLocalDB *)self recordType];
      v16 = [recordType isEqualToString:recordType2];

      if (v16)
      {
        goto LABEL_6;
      }
    }

    if (dCopy)
    {
LABEL_5:
      v17 = [CKRecord alloc];
      recordType3 = [(MTIDCloudKitLocalDB *)self recordType];
      v19 = [v17 initWithRecordType:recordType3 recordID:dCopy];

      synchronizedCopy = 0;
      v13 = v19;
LABEL_6:
      v20 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
      [v13 setObject:v20 forKeyedSubscript:@"namespace"];

      v21 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"secretKey"];
      [v13 setObject:v21 forKeyedSubscript:@"secretKey"];

      v22 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
      [v13 setObject:v22 forKeyedSubscript:@"expiration"];

      v23 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"secretValue"];
      [v13 mt_setSecretValue:v23];

      [v13 mt_setSynchronized:synchronizedCopy];
      v13 = v13;
      v24 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (dCopy)
    {
      goto LABEL_5;
    }
  }

  v24 = 0;
LABEL_9:

  return v24;
}

- (id)userRecordIDName
{
  v8 = 0;
  v2 = [(MTIDCloudKitLocalDB *)self dataForName:@"UserRecordID" error:&v8];
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = MTMetricsKitOSLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to load user record ID with error %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [[NSString alloc] initWithData:v2 encoding:4];
LABEL_8:

  return v6;
}

- (BOOL)setUserRecordIDName:(id)name
{
  nameCopy = name;
  userRecordIDName = [(MTIDCloudKitLocalDB *)self userRecordIDName];
  if (userRecordIDName == nameCopy || (v6 = [nameCopy isEqual:userRecordIDName], (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v8 = MTMetricsKitOSLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MetricsKit: CloudKit user has changed", buf, 2u);
    }

    [(MTIDCloudKitLocalDB *)self clearData];
    if (nameCopy)
    {
      [(MTIDCloudKitLocalDB *)self setNeedsFetchRecords:1];
    }

    v9 = [nameCopy dataUsingEncoding:4];
    v15 = 0;
    v10 = [(MTIDCloudKitLocalDB *)self writeData:v9 forName:@"UserRecordID" error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v13 = MTMetricsKitOSLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write user record ID with error %@", buf, 0xCu);
      }
    }

    [(MTIDCloudKitLocalDB *)self setZoneCreated:0];

    v7 = 1;
  }

  return v7;
}

- (void)setNeedsFetchRecords:(BOOL)records
{
  if (records)
  {
    v4 = [@"1" dataUsingEncoding:4];
    v9 = 0;
    [(MTIDCloudKitLocalDB *)self writeData:v4 forName:@"NeedsFetch" error:&v9];
    v5 = v9;

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    [(MTIDCloudKitLocalDB *)self deleteIfExists:@"NeedsFetch" error:&v8];
    v6 = v8;
    v5 = v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = MTMetricsKitOSLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write fetch file with error %@", buf, 0xCu);
  }

LABEL_8:
}

- (id)syncStatusCode
{
  v8 = 0;
  v2 = [(MTIDCloudKitLocalDB *)self dataForName:@"SyncEngineStatus" error:&v8];
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = MTMetricsKitOSLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to load sync engine status with error %@", buf, 0xCu);
    }

    v6 = 0;
  }

  else if (v2)
  {
    v6 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  else
  {
    v6 = @"Starting";
  }

  return v6;
}

- (void)setSyncStatusCode:(id)code
{
  v4 = [code dataUsingEncoding:4];
  v9 = 0;
  v5 = [(MTIDCloudKitLocalDB *)self writeData:v4 forName:@"SyncEngineStatus" error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v8 = MTMetricsKitOSLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to write sync engine status with error %@", buf, 0xCu);
    }
  }
}

- (BOOL)writeRecord:(id)record error:(id *)error
{
  recordCopy = record;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recordID = [recordCopy recordID];
  mt_syncingFileName = [recordID mt_syncingFileName];

  mt_isSynchronized = [recordCopy mt_isSynchronized];
  if (!mt_isSynchronized)
  {
    v17 = MTMetricsKitOSLog(mt_isSynchronized);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      v20 = [recordCopy objectForKeyedSubscript:@"namespace"];
      v26 = 138412546;
      v27 = recordName;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving unsynchronized record with ID %@ for namespace %@", &v26, 0x16u);
    }

    recordID3 = [recordCopy recordID];
    mt_syncedFileName = [recordID3 mt_syncedFileName];
    v23 = [(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncedFileName error:error];

    if (v23)
    {
      goto LABEL_9;
    }

LABEL_11:
    LOBYTE(error) = 0;
    goto LABEL_12;
  }

  v11 = MTMetricsKitOSLog(mt_isSynchronized);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    recordID4 = [recordCopy recordID];
    recordName2 = [recordID4 recordName];
    v14 = [recordCopy objectForKeyedSubscript:@"namespace"];
    v26 = 138412546;
    v27 = recordName2;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MetricsKit: Saving synchronized record with ID %@ for namespace %@", &v26, 0x16u);
  }

  if (![(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncingFileName error:error])
  {
    goto LABEL_11;
  }

  recordID5 = [recordCopy recordID];
  mt_syncedFileName2 = [recordID5 mt_syncedFileName];

  mt_syncingFileName = mt_syncedFileName2;
LABEL_9:
  v24 = [(MTIDCloudKitLocalDB *)selfCopy encodeRecord:recordCopy];
  LODWORD(error) = [(MTIDCloudKitLocalDB *)selfCopy writeData:v24 forName:mt_syncingFileName error:error];

  if (error)
  {
    error = [(MTIDCloudKitLocalDB *)selfCopy delegate];
    [error cloudKitLocalDB:selfCopy didChangeRecord:recordCopy];

    LOBYTE(error) = 1;
  }

LABEL_12:

  objc_sync_exit(selfCopy);
  return error;
}

- (id)recordWithID:(id)d error:(id *)error
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mt_syncedFileName = [dCopy mt_syncedFileName];
  v9 = [(MTIDCloudKitLocalDB *)selfCopy fileExists:mt_syncedFileName];
  if (!v9)
  {
    mt_syncingFileName = [dCopy mt_syncingFileName];

    mt_syncedFileName = mt_syncingFileName;
  }

  v11 = [(MTIDCloudKitLocalDB *)selfCopy dataForName:mt_syncedFileName error:error];
  if (v11)
  {
    v12 = [(MTIDCloudKitLocalDB *)selfCopy decodeRecordFromData:v11 recordID:dCopy isSynchronized:v9];
    if (!v12)
    {
      v18 = 0;
      v13 = [(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncedFileName error:&v18];
      v14 = v18;
      v15 = v14;
      if ((v13 & 1) == 0)
      {
        v16 = MTMetricsKitOSLog(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = mt_syncedFileName;
          v21 = 2112;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete corrupted data file %@ error %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)deleteRecordWithID:(id)d error:(id *)error
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mt_syncingFileName = [dCopy mt_syncingFileName];
  if ([(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncingFileName error:error])
  {
    mt_syncedFileName = [dCopy mt_syncedFileName];
    v10 = [(MTIDCloudKitLocalDB *)selfCopy deleteIfExists:mt_syncedFileName error:error];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);
  return v10;
}

- (id)pendingRecordIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[NSFileManager defaultManager];
  v4 = +[NSMutableArray array];
  v5 = +[CKRecordID mt_syncingFileExtension];
  pathURL = [(MTIDCloudKitLocalDB *)selfCopy pathURL];
  path = [pathURL path];
  v8 = [v3 enumeratorAtPath:path];
  nextObject = 0;
LABEL_2:

  v10 = nextObject;
  while (1)
  {
    nextObject = [v8 nextObject];

    if (!nextObject)
    {
      break;
    }

    v10 = nextObject;
    if ([nextObject hasSuffix:v5])
    {
      pathURL = [nextObject substringToIndex:{objc_msgSend(nextObject, "length") - objc_msgSend(v5, "length")}];
      v11 = [CKRecordID alloc];
      path = [(MTIDCloudKitLocalDB *)selfCopy recordZoneID];
      v12 = [v11 initWithRecordName:pathURL zoneID:path];
      [v4 addObject:v12];

      goto LABEL_2;
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)clearData
{
  v3 = MTMetricsKitOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "MetricsKit: Clearing local CloudKit record cache", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[NSFileManager defaultManager];
  pathURL = [(MTIDCloudKitLocalDB *)selfCopy pathURL];
  v7 = [v5 enumeratorAtURL:pathURL includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = 0;
  *&v9 = 138412546;
  v16 = v9;
  while (1)
  {
    nextObject = [v7 nextObject];

    if (!nextObject)
    {
      break;
    }

    v17 = 0;
    v11 = [v5 removeItemAtURL:nextObject error:&v17];
    v12 = v17;
    v13 = v12;
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v15 = MTMetricsKitOSLog(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = v16;
        v19 = nextObject;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to remove local record data %@ with error %@", buf, 0x16u);
      }
    }

    v8 = nextObject;
  }

  objc_sync_exit(selfCopy);
}

- (id)allRecords
{
  v3 = +[NSFileManager defaultManager];
  pathURL = [(MTIDCloudKitLocalDB *)self pathURL];
  v5 = [v3 enumeratorAtURL:pathURL includingPropertiesForKeys:0 options:1 errorHandler:0];

  v6 = +[NSMutableArray array];
  nextObject = [v5 nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    do
    {
      v9 = [NSData dataWithContentsOfURL:v8 options:0 error:0];
      if (v9)
      {
        path = [v8 path];
        v11 = +[CKRecordID mt_syncedFileExtension];
        v12 = -[MTIDCloudKitLocalDB decodeRecordFromData:recordID:isSynchronized:](self, "decodeRecordFromData:recordID:isSynchronized:", v9, 0, [path hasSuffix:v11]);

        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      nextObject2 = [v5 nextObject];

      v8 = nextObject2;
    }

    while (nextObject2);
  }

  return v6;
}

- (MTIDCloudKitLocalDBDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end