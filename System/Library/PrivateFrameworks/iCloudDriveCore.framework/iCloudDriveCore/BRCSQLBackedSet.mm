@interface BRCSQLBackedSet
+ (id)_databaseRootDirectory;
+ (id)createSetOfClass:(Class)class withSQLType:(id)type error:(id *)error;
+ (id)createStringsSetWithError:(id *)error;
+ (void)clearTempDatabases;
- (BOOL)_createSchemaForSQLType:(id)type error:(id *)error;
- (BOOL)addObject:(id)object error:(id *)error;
- (id)initArrayOfClass:(Class)class withSQLType:(id)type error:(id *)error;
- (void)_closeDB;
- (void)dealloc;
- (void)enumerateObjectsWithSortOrder:(unint64_t)order usingBlock:(id)block;
@end

@implementation BRCSQLBackedSet

+ (id)createStringsSetWithError:(id *)error
{
  v4 = objc_opt_class();

  return [BRCSQLBackedSet createSetOfClass:v4 withSQLType:@"text" error:error];
}

+ (id)createSetOfClass:(Class)class withSQLType:(id)type error:(id *)error
{
  typeCopy = type;
  v8 = [[BRCSQLBackedSet alloc] initArrayOfClass:class withSQLType:typeCopy error:error];

  return v8;
}

+ (void)clearTempDatabases
{
  v3 = +[BRCSQLBackedSet _databaseRootDirectory];
  path = [v3 path];
  BRCRemoveFolder(path, 0, 1, 0);
}

+ (id)_databaseRootDirectory
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:*MEMORY[0x277CFAC00]])
  {
    cloudDocsAppSupportURL = [MEMORY[0x277CFAE38] cloudDocsAppSupportURL];
    [cloudDocsAppSupportURL URLByAppendingPathComponent:@"session/tmp"];
  }

  else
  {
    cloudDocsAppSupportURL = [MEMORY[0x277CCAA00] defaultManager];
    [cloudDocsAppSupportURL temporaryDirectory];
  }
  v5 = ;

  return v5;
}

- (id)initArrayOfClass:(Class)class withSQLType:(id)type error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v49.receiver = self;
  v49.super_class = BRCSQLBackedSet;
  v9 = [(BRCSQLBackedSet *)&v49 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_class = class;
    v9->_count = 0;
    objc_initWeak(&location, v9);
    v11 = [BRCPQLConnection alloc];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke;
    v46[3] = &unk_2784FF828;
    objc_copyWeak(&v47, &location);
    v12 = [(BRCPQLConnection *)v11 initWithLabel:@"BRCSQLBackedSet" dbCorruptionHandler:v46];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_23;
    v44[3] = &unk_2785019D8;
    objc_copyWeak(&v45, &location);
    [(BRCPQLConnection *)v12 setSqliteErrorHandler:v44];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_25;
    v42[3] = &unk_2785019D8;
    objc_copyWeak(&v43, &location);
    [(BRCPQLConnection *)v12 setAutoRollbackHandler:v42];
    v13 = +[BRCSQLBackedSet _databaseRootDirectory];
    v14 = objc_opt_new();
    uUIDString = [v14 UUIDString];
    v16 = [v13 URLByAppendingPathComponent:uUIDString];
    v17 = p_isa[2];
    p_isa[2] = v16;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v19 = p_isa[2];
    v41 = 0;
    LOBYTE(uUIDString) = [defaultManager createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v41];
    v20 = v41;

    if ((uUIDString & 1) == 0)
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, 0x90u))
      {
        v37 = p_isa[2];
        *buf = 138412802;
        v51 = v37;
        v52 = 2112;
        v53 = v20;
        v54 = 2112;
        v55 = v29;
        _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] Failed creating root folder for DB: %@. %@%@", buf, 0x20u);
      }

      v31 = v20;
      if (v31)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, 0x90u))
        {
          v38 = "(passed to caller)";
          *buf = 136315906;
          v51 = "[BRCSQLBackedSet initArrayOfClass:withSQLType:error:]";
          v52 = 2080;
          if (!error)
          {
            v38 = "(ignored by caller)";
          }

          v53 = v38;
          v54 = 2112;
          v55 = v31;
          v56 = 2112;
          v57 = v32;
          _os_log_error_impl(&dword_223E7A000, v33, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v34 = v31;
        *error = v31;
      }

      objc_destroyWeak(&v43);
      objc_destroyWeak(&v45);
      objc_destroyWeak(&v47);

      objc_destroyWeak(&location);
      goto LABEL_22;
    }

    v21 = [p_isa[2] URLByAppendingPathComponent:@"db.db"];
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [BRCSQLBackedSet initArrayOfClass:withSQLType:error:];
    }

    v40 = v20;
    [(BRCPQLConnection *)v12 openAtURL:v21 withFlags:3145734 error:&v40];
    v24 = v40;

    if (v24)
    {
      v25 = v24;
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        v39 = "(passed to caller)";
        *buf = 136315906;
        v51 = "[BRCSQLBackedSet initArrayOfClass:withSQLType:error:]";
        v52 = 2080;
        if (!error)
        {
          v39 = "(ignored by caller)";
        }

        v53 = v39;
        v54 = 2112;
        v55 = v25;
        v56 = 2112;
        v57 = v26;
        _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      if (error)
      {
        v28 = v25;
        *error = v25;
      }

      goto LABEL_21;
    }

    objc_storeStrong(p_isa + 1, v12);
    if (![p_isa _createSchemaForSQLType:typeCopy error:error])
    {
LABEL_21:

      objc_destroyWeak(&v43);
      objc_destroyWeak(&v45);
      objc_destroyWeak(&v47);

      objc_destroyWeak(&location);
LABEL_22:
      v35 = 0;
      goto LABEL_23;
    }

    [(BRCPQLConnection *)v12 setSynchronousMode:1];
    [(BRCPQLConnection *)v12 useSerialQueue];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);

    objc_destroyWeak(&location);
  }

  v35 = p_isa;
LABEL_23:

  return v35;
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, 0x90u))
  {
    __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted];
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_23(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, 0x90u))
  {
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] sqlite error handler called - %@ (%@)%@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted];
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_25(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, 0x90u))
  {
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] Auto rollback handler called - %@ (%@)%@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dbBecameCorrupted];
}

- (void)_closeDB
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_db;
  v4 = selfCopy->_dbRootFolder;
  db = selfCopy->_db;
  selfCopy->_db = 0;

  dbRootFolder = selfCopy->_dbRootFolder;
  selfCopy->_dbRootFolder = 0;

  objc_sync_exit(selfCopy);
  if (v3)
  {
    serialQueue = [(BRCPQLConnection *)v3 serialQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__BRCSQLBackedSet__closeDB__block_invoke;
    v8[3] = &unk_2784FF478;
    v9 = v3;
    v10 = v4;
    dispatch_async(serialQueue, v8);
  }
}

void __27__BRCSQLBackedSet__closeDB__block_invoke(uint64_t a1)
{
  [*(a1 + 32) close:0];
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__BRCSQLBackedSet__closeDB__block_invoke_2;
  block[3] = &unk_2784FF450;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __27__BRCSQLBackedSet__closeDB__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) path];
  BRCRemoveFolder(v1, 0, 0, 0);
}

- (void)dealloc
{
  [(BRCSQLBackedSet *)self _closeDB];
  v3.receiver = self;
  v3.super_class = BRCSQLBackedSet;
  [(BRCSQLBackedSet *)&v3 dealloc];
}

- (BOOL)_createSchemaForSQLType:(id)type error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D82C18];
  typeCopy = type;
  typeCopy2 = type;
  uTF8String = [typeCopy2 UTF8String];
  v11 = [typeCopy2 lengthOfBytesUsingEncoding:4];

  v12 = [v7 rawInjection:uTF8String length:v11];
  db = self->_db;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __49__BRCSQLBackedSet__createSchemaForSQLType_error___block_invoke;
  v22[3] = &unk_2784FFA48;
  v14 = v12;
  v23 = v14;
  v15 = [(BRCPQLConnection *)db performWithFlags:8 action:v22];
  if (v15)
  {
    lastError = 0;
  }

  else
  {
    lastError = [(BRCPQLConnection *)self->_db lastError];
    if (lastError)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v21 = "(passed to caller)";
        *buf = 136315906;
        v25 = "[BRCSQLBackedSet _createSchemaForSQLType:error:]";
        v26 = 2080;
        if (!error)
        {
          v21 = "(ignored by caller)";
        }

        v27 = v21;
        v28 = 2112;
        v29 = lastError;
        v30 = 2112;
        v31 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }
  }

  if (error)
  {
    v19 = lastError;
    *error = lastError;
  }

  return v15;
}

- (BOOL)addObject:(id)object error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = objectCopy;
  if (objectCopy)
  {
    db = self->_db;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __35__BRCSQLBackedSet_addObject_error___block_invoke;
    v19 = &unk_278500FA8;
    v20 = objectCopy;
    selfCopy = self;
    v9 = 1;
    LOBYTE(db) = [(BRCPQLConnection *)db performWithFlags:1 action:&v16];

    if (db)
    {
      goto LABEL_14;
    }

    v10 = [(BRCPQLConnection *)self->_db lastError:v16];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v13 = "(passed to caller)";
        *buf = 136315906;
        v23 = "[BRCSQLBackedSet addObject:error:]";
        v24 = 2080;
        if (!error)
        {
          v13 = "(ignored by caller)";
        }

LABEL_17:
        v25 = v13;
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v11;
        _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"object" value:0];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v13 = "(passed to caller)";
        *buf = 136315906;
        v23 = "[BRCSQLBackedSet addObject:error:]";
        v24 = 2080;
        if (!error)
        {
          v13 = "(ignored by caller)";
        }

        goto LABEL_17;
      }

LABEL_10:
    }
  }

  if (error)
  {
    v14 = v10;
    *error = v10;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

uint64_t __35__BRCSQLBackedSet_addObject_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 execute:{@"INSERT OR IGNORE INTO array_items (item) VALUES (%@)", v3}];
  v6 = [v4 changes];

  *(*(a1 + 40) + 32) += v6;
  return v5;
}

- (void)enumerateObjectsWithSortOrder:(unint64_t)order usingBlock:(id)block
{
  blockCopy = block;
  v7 = [[BRCPQLInjectionObjectsEnumerationSortOrder alloc] initWithSortOrder:order];
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__BRCSQLBackedSet_enumerateObjectsWithSortOrder_usingBlock___block_invoke;
  v11[3] = &unk_278501A00;
  v11[4] = self;
  v12 = v7;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = v7;
  [(BRCPQLConnection *)db performWithFlags:1 action:v11];
}

uint64_t __60__BRCSQLBackedSet_enumerateObjectsWithSortOrder_usingBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 8) fetch:{@"SELECT item FROM array_items %@", a1[5]}];
  while ([v4 next])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v4 objectOfClass:*(a1[4] + 24) atIndex:0];
    (*(a1[6] + 16))();

    objc_autoreleasePoolPop(v5);
  }

  [v4 close];

  return 1;
}

- (void)initArrayOfClass:withSQLType:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Opening db at: %@%@", v1, 0x16u);
}

void __54__BRCSQLBackedSet_initArrayOfClass_withSQLType_error___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] db corruption handler called: %@%@", v1, 0x16u);
}

@end