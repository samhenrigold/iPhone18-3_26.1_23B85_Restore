@interface CallDBMetaInfo
- (BOOL)validateInfo:(BOOL)info;
- (CallDBMetaInfo)initWithURL:(id)l;
- (int64_t)readDatabaseVersion:(BOOL)version;
- (void)reset;
- (void)writeDatabaseVersion:(int64_t)version isTemp:(BOOL)temp;
@end

@implementation CallDBMetaInfo

- (CallDBMetaInfo)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = CallDBMetaInfo;
  v5 = [(CallDBMetaInfo *)&v9 init];
  if (v5)
  {
    v6 = [lCopy URLByAppendingPathComponent:@"com.apple.callhistory.databaseInfo.plist"];
    dbInfoPrefFile = v5->_dbInfoPrefFile;
    v5->_dbInfoPrefFile = v6;
  }

  return v5;
}

- (int64_t)readDatabaseVersion:(BOOL)version
{
  versionCopy = version;
  v4 = MEMORY[0x1E695DF20];
  dbInfoPrefFile = [(CallDBMetaInfo *)self dbInfoPrefFile];
  v6 = [v4 dictionaryWithContentsOfURL:dbInfoPrefFile];

  if (v6)
  {
    if (versionCopy)
    {
      v7 = @"DatabaseVersionTemp";
    }

    else
    {
      v7 = @"DatabaseVersionPerm";
    }

    v8 = [v6 objectForKey:v7];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)writeDatabaseVersion:(int64_t)version isTemp:(BOOL)temp
{
  tempCopy = temp;
  v7 = MEMORY[0x1E695DF20];
  dbInfoPrefFile = [(CallDBMetaInfo *)self dbInfoPrefFile];
  v9 = [v7 dictionaryWithContentsOfURL:dbInfoPrefFile];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  if (tempCopy)
  {
    v12 = @"DatabaseVersionTemp";
  }

  else
  {
    v12 = @"DatabaseVersionPerm";
  }

  [v10 setObject:v11 forKey:v12];
  dbInfoPrefFile2 = [(CallDBMetaInfo *)self dbInfoPrefFile];
  v14 = [v10 writeToURL:dbInfoPrefFile2 atomically:1];

  if ((v14 & 1) == 0)
  {
    v15 = +[CHLogServer sharedInstance];
    v16 = [v15 logHandleForDomain:"CHDBMetaInfoDomain"];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CallDBMetaInfo *)v16 writeDatabaseVersion:v17 isTemp:v18, v19, v20, v21, v22, v23];
    }
  }
}

- (BOOL)validateInfo:(BOOL)info
{
  infoCopy = info;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  p_dbInfoPrefFile = &self->_dbInfoPrefFile;
  path = [(NSURL *)self->_dbInfoPrefFile path];
  v8 = [defaultManager isReadableFileAtPath:path];

  if (v8)
  {
    return [(CallDBMetaInfo *)self readDatabaseVersion:infoCopy]== 42;
  }

  v10 = +[CHLogServer sharedInstance];
  v11 = [v10 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CallDBMetaInfo *)p_dbInfoPrefFile validateInfo:v11, v12, v13, v14, v15, v16, v17];
  }

  return 0;
}

- (void)reset
{
  v3 = MEMORY[0x1E695DF20];
  dbInfoPrefFile = [(CallDBMetaInfo *)self dbInfoPrefFile];
  v5 = [v3 dictionaryWithContentsOfURL:dbInfoPrefFile];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    [v6 removeObjectForKey:@"DatabaseVersionTemp"];
    [v6 removeObjectForKey:@"DatabaseVersionPerm"];
    dbInfoPrefFile2 = [(CallDBMetaInfo *)self dbInfoPrefFile];
    v8 = [v6 writeToURL:dbInfoPrefFile2 atomically:1];

    if ((v8 & 1) == 0)
    {
      v9 = +[CHLogServer sharedInstance];
      v10 = [v9 logHandleForDomain:"CHDBMetaInfoDomain"];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CallDBMetaInfo *)v10 writeDatabaseVersion:v11 isTemp:v12, v13, v14, v15, v16, v17];
      }
    }
  }
}

- (void)writeDatabaseVersion:(uint64_t)a3 isTemp:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = @"com.apple.callhistory.databaseInfo.plist";
  OUTLINED_FUNCTION_0_1(&dword_1C3E90000, a1, a3, "Failed to synchronize preference domain: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)validateInfo:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_1(&dword_1C3E90000, a2, a3, "File at path: %{public}@ is not readable", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end