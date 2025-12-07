@interface TRIDatabase
- (BOOL)dropTableWithName:(id)name transaction:(id)transaction;
- (BOOL)migrateToVersion:(unsigned int)version;
- (TRIDatabase)initWithPaths:(id)paths databasePath:(id)path storageManagement:(id)management performMigrations:(BOOL)migrations;
- (TRIDatabase)initWithPaths:(id)paths storageManagement:(id)management;
- (_PASDBTransactionCompletion_)readTransactionWithFailableBlock:(id)block;
- (_PASDBTransactionCompletion_)writeTransactionWithFailableBlock:(id)block;
- (id)createTempTableContainingRowsFromQuery:(id)query bind:(id)bind namePrefix:(id)prefix transaction:(id)transaction;
- (id)initInMemoryAndPerformMigrations:(BOOL)migrations;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version;
- (unsigned)migration_addTaskCapability;
- (unsigned)migration_conditionallyRemoveBMLTFactorPackInfo;
- (unsigned)migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments;
- (unsigned)migration_dropShadowEvaluationDatabase;
- (void)_disableQueryPlanLogging;
- (void)_enableQueryPlanLogging;
- (void)_updateQueryPlanLogging;
- (void)closePermanently;
@end

@implementation TRIDatabase

- (TRIDatabase)initWithPaths:(id)paths storageManagement:(id)management
{
  pathsCopy = paths;
  managementCopy = management;
  if (!pathsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"paths"}];
  }

  v9 = objc_autoreleasePoolPush();
  databaseDir = [pathsCopy databaseDir];
  v11 = [databaseDir stringByAppendingPathComponent:@"triald.db"];

  objc_autoreleasePoolPop(v9);
  v12 = [(TRIDatabase *)self initWithPaths:pathsCopy databasePath:v11 storageManagement:managementCopy performMigrations:1];

  return v12;
}

- (id)initInMemoryAndPerformMigrations:(BOOL)migrations
{
  migrationsCopy = migrations;
  v6 = objc_autoreleasePoolPush();
  v7 = [@"triald.db" stringByAppendingPathExtension:@"testing"];
  objc_autoreleasePoolPop(v6);
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:63 description:{@"Error adding extension on %@", @"triald.db"}];
  }

  v8 = [MEMORY[0x277D42630] randomlyNamedInMemoryPathWithBaseName:v7];
  v9 = objc_opt_new();
  v10 = [(TRIDatabase *)self initWithPaths:0 databasePath:v8 storageManagement:v9 performMigrations:migrationsCopy];

  return v10;
}

- (TRIDatabase)initWithPaths:(id)paths databasePath:(id)path storageManagement:(id)management performMigrations:(BOOL)migrations
{
  migrationsCopy = migrations;
  v69 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  pathCopy = path;
  managementCopy = management;
  v14 = managementCopy;
  if (pathCopy)
  {
    if (managementCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"databasePath"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"storageManagement"}];

LABEL_3:
  v58.receiver = self;
  v58.super_class = TRIDatabase;
  v15 = [(TRIDatabase *)&v58 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_paths, paths);
    objc_storeStrong(&v16->_storageManagement, management);
    objc_storeStrong(&v16->_databasePath, path);
    if (([MEMORY[0x277D42630] isInMemoryPath:v16->_databasePath] & 1) == 0 && objc_msgSend(MEMORY[0x277D42598], "isClassCLocked"))
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Device has never been unlocked prior to db initialization.", &buf, 2u);
      }

      goto LABEL_39;
    }

    if (([MEMORY[0x277D42630] isInMemoryPath:v16->_databasePath] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "fileExistsAtPath:", v16->_databasePath), v18, (v19 & 1) == 0))
    {
      if (([MEMORY[0x277D42630] isInMemoryPath:v16->_databasePath] & 1) == 0)
      {
        stringByDeletingLastPathComponent = [(NSString *)v16->_databasePath stringByDeletingLastPathComponent];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v23 = MEMORY[0x277D42630];
    databasePath = v16->_databasePath;
    v25 = [[TRISqliteErrorHandler alloc] initWithStorageManagement:v16->_storageManagement];
    v57 = 0;
    v26 = [v23 sqliteDatabaseWithFilename:databasePath contentProtection:3 errorHandler:v25 error:&v57];
    v27 = v57;
    db = v16->_db;
    v16->_db = v26;

    if (!v16->_db)
    {
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v27;
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to instantiate new database handle: %{public}@", &buf, 0xCu);
      }

      goto LABEL_38;
    }

    *&v66 = 0;
    *(&v66 + 1) = &v66;
    v67 = 0x2020000000;
    v68 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__18;
    v64 = __Block_byref_object_dispose__18;
    v65 = 0;
    v29 = v16->_db;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __78__TRIDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke;
    v56[3] = &unk_279DE1648;
    v56[4] = &v66;
    v56[5] = &buf;
    [(_PASSqliteDatabase *)v29 prepAndRunQuery:@"CREATE TABLE IF NOT EXISTS integrityCheck (inconsequential STRING)" onPrep:0 onRow:0 onError:v56];
    if (*(*(&v66 + 1) + 24) == 1)
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v48 = *(*(&buf + 1) + 40);
        *v59 = 138412290;
        v60 = v48;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Encountered corrupt db (%@), attempting to reinitialize", v59, 0xCu);
      }

      v31 = MEMORY[0x277D42630];
      filename = [(_PASSqliteDatabase *)v16->_db filename];
      [v31 truncateDatabaseAtPath:filename];

      [(_PASSqliteDatabase *)v16->_db closePermanently];
      [(TRIStorageManagementProtocol *)v16->_storageManagement requestTrialStorageResetOnNextLaunch];
      _Block_object_dispose(&buf, 8);

      _Block_object_dispose(&v66, 8);
LABEL_38:

LABEL_39:
      v43 = 0;
      goto LABEL_40;
    }

    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v66, 8);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__18;
    v64 = __Block_byref_object_dispose__18;
    v65 = 0;
    v34 = v16->_db;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __78__TRIDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke_58;
    v55[3] = &unk_279DDF778;
    v55[4] = &buf;
    if (([(_PASSqliteDatabase *)v34 prepAndRunNonDataQueries:&unk_287FC4F60 onError:v55]& 1) == 0)
    {
      v44 = TRILogCategory_Server();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        v49 = *(*(&buf + 1) + 40);
        LODWORD(v66) = 138543362;
        *(&v66 + 4) = v49;
        _os_log_fault_impl(&dword_26F567000, v44, OS_LOG_TYPE_FAULT, "Failed to run initial database pragmas: %{public}@", &v66, 0xCu);
      }

      [(_PASSqliteDatabase *)v16->_db closePermanently];
      v45 = v16->_db;
      v16->_db = 0;

      if (v20 && ([MEMORY[0x277D42630] isInMemoryPath:v16->_databasePath] & 1) == 0)
      {
        [MEMORY[0x277D42630] truncateDatabaseAtPath:v16->_databasePath];
      }

      _Block_object_dispose(&buf, 8);

      goto LABEL_38;
    }

    _Block_object_dispose(&buf, 8);

    if (v20)
    {
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v16->_databasePath;
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v36;
        _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Created new database: %{public}@", &buf, 0xCu);
      }
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    defaults = v16->_defaults;
    v16->_defaults = standardUserDefaults;

    v39 = objc_opt_new();
    kvoHandler = v16->_kvoHandler;
    v16->_kvoHandler = v39;

    atomic_store(0, &v16->_isQueryPlanLoggingEnabled);
    objc_initWeak(&buf, v16);
    v41 = v16->_kvoHandler;
    v42 = v16->_defaults;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __78__TRIDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke_61;
    v53[3] = &unk_279DE1670;
    objc_copyWeak(&v54, &buf);
    [(_PASKVOHandler *)v41 reactAfterChangesToKeyPath:@"queryPlanLoggingEnabled" ofObject:v42 usingBlock:v53];
    [(TRIDatabase *)v16 _updateQueryPlanLogging];
    if (migrationsCopy && ![(TRIDatabase *)v16 migrateToVersion:*MEMORY[0x277D426A0]])
    {
      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v66) = 0;
        _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "TRIDatabase: migrations failed", &v66, 2u);
      }

      objc_destroyWeak(&v54);
      objc_destroyWeak(&buf);

      goto LABEL_39;
    }

    objc_destroyWeak(&v54);
    objc_destroyWeak(&buf);
  }

  v43 = v16;
LABEL_40:

  return v43;
}

uint64_t __78__TRIDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  return *MEMORY[0x277D42698];
}

void __78__TRIDatabase_initWithPaths_databasePath_storageManagement_performMigrations___block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateQueryPlanLogging];
}

- (_PASDBTransactionCompletion_)readTransactionWithFailableBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v6.var0 = [MEMORY[0x277D42640] readTransactionWithHandle:self->_db failableBlock:blockCopy];

  return v6;
}

- (_PASDBTransactionCompletion_)writeTransactionWithFailableBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v6.var0 = [MEMORY[0x277D42640] writeTransactionWithHandle:self->_db failableBlock:blockCopy];

  return v6;
}

uint64_t __21__TRIDatabase_vacuum__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_fault_impl(&dword_26F567000, v3, OS_LOG_TYPE_FAULT, "TRIDatabase incremental vacuum failed: %{public}@", &v5, 0xCu);
  }

  return *MEMORY[0x277D42698];
}

- (id)createTempTableContainingRowsFromQuery:(id)query bind:(id)bind namePrefix:(id)prefix transaction:(id)transaction
{
  v32 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  bindCopy = bind;
  prefixCopy = prefix;
  transactionCopy = transaction;
  v15 = transactionCopy;
  if (queryCopy)
  {
    if (transactionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

LABEL_3:
  v16 = [(__CFString *)prefixCopy length];
  v17 = @"temp";
  if (v16)
  {
    v17 = prefixCopy;
  }

  v18 = v17;

  arc4random_buf(__buf, 0x10uLL);
  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:__buf length:16 freeWhenDone:0];
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  triHexlify = [v19 triHexlify];
  v22 = [v20 initWithFormat:@"%@_%@", v18, triHexlify];

  v23 = [v15 db];
  queryCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CREATE TEMP TABLE %@ AS %@;", v22, queryCopy];
  v25 = [(TRIDatabase *)self generalErrorHandlerWithOutError:0];
  LODWORD(triHexlify) = [v23 prepAndRunQuery:queryCopy onPrep:bindCopy onRow:0 onError:v25];

  if (triHexlify)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v26;
}

- (BOOL)dropTableWithName:(id)name transaction:(id)transaction
{
  nameCopy = name;
  transactionCopy = transaction;
  v9 = transactionCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

    goto LABEL_3;
  }

  if (!transactionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %@;", nameCopy];
  v11 = [v9 db];
  v12 = [(TRIDatabase *)self generalErrorHandlerWithOutError:0];
  v13 = [v11 prepAndRunQuery:nameCopy onPrep:0 onRow:0 onError:v12];

  return v13;
}

- (void)closePermanently
{
  [(_PASSqliteDatabase *)self->_db closePermanently];
  kvoHandler = self->_kvoHandler;
  self->_kvoHandler = 0;
}

- (void)_updateQueryPlanLogging
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"queryPlanLoggingEnabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    [(TRIDatabase *)self _enableQueryPlanLogging];
  }

  else
  {
    [(TRIDatabase *)self _disableQueryPlanLogging];
  }
}

- (void)_enableQueryPlanLogging
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  paths = self->_paths;
  if (paths)
  {
    logDir = [(TRIPaths *)paths logDir];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:logDir withIntermediateDirectories:1 attributes:0 error:0];

    v7 = objc_opt_new();
    [v7 setFormatOptions:51];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_opt_new();
    v10 = [v7 stringFromDate:v9];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v12 = [v8 initWithFormat:@"explainQueryPlan-%@-pid_%d-handle_%p.log", v10, objc_msgSend(processInfo, "processIdentifier"), self->_db];

    v13 = [logDir stringByAppendingPathComponent:v12];
    LODWORD(processInfo) = [(_PASSqliteDatabase *)self->_db enableQueryPlanLoggingWithPath:v13];
    v14 = TRILogCategory_Server();
    v15 = v14;
    if (processInfo)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "TRIDatabase: generating EXPLAIN QUERY PLAN log at %{public}@", buf, 0xCu);
      }

      atomic_store(1u, &self->_isQueryPlanLoggingEnabled);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v13;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "TRIDatabase: unable to generate EXPLAIN QUERY PLAN log at %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    logDir = TRILogCategory_Server();
    if (os_log_type_enabled(logDir, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, logDir, OS_LOG_TYPE_ERROR, "Can't enable query plan logging, TRIPaths not available", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_disableQueryPlanLogging
{
  v7 = *MEMORY[0x277D85DE8];
  [(_PASSqliteDatabase *)self->_db disableQueryPlanLogging];
  if (atomic_exchange(&self->_isQueryPlanLoggingEnabled, 0))
  {
    v3 = TRILogCategory_Server();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      db = self->_db;
      v5 = 134217984;
      v6 = db;
      _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "TRIDatabase: disable EXPLAIN QUERY PLAN log for handle %p", &v5, 0xCu);
    }
  }
}

- (BOOL)migrateToVersion:(unsigned int)version
{
  v3 = *&version;
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "TRIDatabase now performing migration.", buf, 2u);
  }

  v7 = objc_alloc(MEMORY[0x277D42588]);
  v21[0] = self;
  v8 = 1;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v10 = [v7 initWithMigrationObjects:v9];

  v11 = [v10 migrateDatabasesToVersion:v3];
  v12 = v11;
  if (v11 > 2)
  {
    if ((v11 - 4) >= 3)
    {
      if (v11 == 3)
      {
        v13 = TRILogCategory_Server();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v14 = "TRIDatabase has a future schema version, cannot use database. (DID YOU DOWNGRADE YOUR OS WITHOUT AN ERASE-INSTALL??? THAT IS NOT SUPPORTED!!!)";
LABEL_23:
          _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

LABEL_19:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDatabase.m" lineNumber:329 description:{@"Unhandled migration result: %u", v12}];

      goto LABEL_20;
    }

LABEL_11:
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v20 = v12;
      _os_log_fault_impl(&dword_26F567000, v15, OS_LOG_TYPE_FAULT, "TRIDatabase got an unexpected and unrecoverable migration result of %u. Database is considered corrupt and Trial storage will be reset on next launch.", buf, 8u);
    }

    if ([(TRIStorageManagementProtocol *)self->_storageManagement requestTrialStorageResetOnNextLaunch])
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "TRIDatabase issuing triald exit request.", buf, 2u);
      }

      xpc_transaction_exit_clean();
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "TRIDatabase could not perform migrations (device locked?), try again later.";
      goto LABEL_23;
    }

LABEL_18:

LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

LABEL_21:

  return v8;
}

- (id)migrations
{
  v49[25] = *MEMORY[0x277D85DE8];
  v48[0] = &unk_287FC47F8;
  v47[0] = @" CREATE TABLE experiments(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     experimentId TEXT NOT NULL,     deploymentId INTEGER NOT NULL,     type INTEGER NOT NULL,     status INTEGER NOT NULL,     startSecondsFromEpoch REAL,     endSecondsFromEpoch REAL,     treatmentId TEXT,     artifact BLOB NOT NULL,     UNIQUE (experimentId, deploymentId),     CHECK (startSecondsFromEpoch IS NULL         OR endSecondsFromEpoch IS NULL         OR startSecondsFromEpoch < endSecondsFromEpoch));";
  v47[1] = @" CREATE TABLE namespaces(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     experiments_rowid INTEGER NOT NULL,     name TEXT NOT NULL,     compatibilityVersion INTEGER NOT NULL,     treatmentPath TEXT,     UNIQUE (experiments_rowid, name),     FOREIGN KEY (experiments_rowid) REFERENCES experiments (rowid));";
  v47[2] = @" CREATE TABLE dynamicNamespaces(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     name TEXT NOT NULL,     teamId TEXT NOT NULL,     appContainerId TEXT NOT NULL,     appContainerType INTEGER NOT NULL,     cloudKitContainerId INTEGER NOT NULL,     compatibilityVersion INTEGER NOT NULL,     defaultsFileURL TEXT,     hasFetched INTEGER NOT NULL DEFAULT 0,     UNIQUE (name));";
  v47[3] = @" CREATE INDEX     ix_dynamicNamespaces_teamId_cloudKitContainerId ON     dynamicNamespaces (teamId, cloudKitContainerId);";
  v47[4] = @" CREATE TABLE kvstore(    key TEXT PRIMARY KEY,     bytes BLOB NOT NULL) WITHOUT ROWID;";
  v47[5] = @" CREATE TABLE tasks(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     taskType INTEGER NOT NULL,     serializedTask BLOB NOT NULL,     startSecondsFromEpoch REAL,     hash INTEGER NOT NULL);";
  v47[6] = @" CREATE INDEX ix_tasks_hash ON tasks (hash);";
  v47[7] = @" CREATE TABLE taskTags(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     taskId INTEGER NOT NULL,     tag TEXT NOT NULL,     UNIQUE (taskId, tag),     FOREIGN KEY (taskId) REFERENCES tasks (rowid));";
  v47[8] = @" CREATE INDEX ix_taskTags_tag ON taskTags (tag);";
  v47[9] = @" CREATE TABLE taskDependencies(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     taskId INTEGER NOT NULL,     dependentTaskId INTEGER NOT NULL,     UNIQUE (taskId, dependentTaskId),     FOREIGN KEY (taskId) REFERENCES tasks (rowid),     FOREIGN KEY (dependentTaskId) REFERENCES tasks (rowid));";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:10];
  v49[0] = v25;
  v48[1] = &unk_287FC4810;
  v46 = @" CREATE TABLE contentReferences(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     contentId TEXT NOT NULL,     refCount INTEGER NOT NULL,     UNIQUE (contentId));";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v49[1] = v24;
  v48[2] = &unk_287FC4828;
  v45[0] = @" ALTER TABLE experiments ADD COLUMN     deploymentEnvironment INTEGER NOT NULL DEFAULT 0;";
  v45[1] = @" CREATE TABLE experimentHistory(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     eventSecondsFromEpoch REAL NOT NULL,     eventType INTEGER NOT NULL,     deploymentEnvironment INTEGER NOT NULL,     experimentId TEXT NOT NULL,     deploymentId INTEGER NOT NULL,     treatmentId TEXT NOT NULL);";
  v45[2] = @" CREATE TABLE experimentHistoryNamespaces(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     experimentHistory_rowid INTEGER NOT NULL,     name TEXT NOT NULL,     compatibilityVersion INTEGER NOT NULL,     UNIQUE (experimentHistory_rowid, name),     FOREIGN KEY (experimentHistory_rowid) REFERENCES experimentHistory (rowid));";
  v45[3] = @" CREATE INDEX ix_experimentHistory_eventSecondsFromEpoch ON experimentHistory(eventSecondsFromEpoch);";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  v49[2] = v23;
  v48[3] = &unk_287FC4840;
  v44 = @" CREATE TABLE activationEvents(    experimentId TEXT NOT NULL,     treatmentId TEXT NOT NULL,     deploymentId INTEGER NOT NULL,     osBuild TEXT NOT NULL,     languageCode TEXT NOT NULL,     regionCode TEXT NOT NULL,     UNIQUE (experimentId, treatmentId, deploymentId));";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v49[3] = v22;
  v48[4] = &unk_287FC4858;
  v43[0] = @" CREATE TABLE rolloutsV2(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     rolloutId TEXT NOT NULL,     deploymentId INTEGER NOT NULL,     status INTEGER NOT NULL,     isShadow INTEGER NOT NULL,     activeFactorPackSetId TEXT,     targetedFactorPackSetId TEXT,     artifact BLOB NOT NULL,     UNIQUE (rolloutId, deploymentId));";
  v43[1] = @" CREATE TABLE rolloutV2Namespaces(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     rolloutsV2_rowid INTEGER NOT NULL,     name TEXT NOT NULL,     UNIQUE (rolloutsV2_rowid, name),     FOREIGN KEY (rolloutsV2_rowid) REFERENCES rolloutsV2 (rowid));";
  v43[2] = @" CREATE INDEX ix_rolloutV2Namespaces_name ON rolloutV2Namespaces(name);";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  v49[4] = v21;
  v48[5] = &unk_287FC4870;
  v42 = @" CREATE TABLE mlRuntimeEvaluationStatusHistory(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     evaluationId TEXT NOT NULL,     eventSecondsFromEpoch REAL NOT NULL,     serializedMLRuntimeEvaluation BLOB NOT NULL,     serializedEvaluationStatus BLOB NOT NULL,     UNIQUE(evaluationId));";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v49[5] = v20;
  v48[6] = &unk_287FC4888;
  v41[0] = @" CREATE INDEX ix_rolloutsV2_activeFactorPackSetId ON rolloutsV2(activeFactorPackSetId);";
  v41[1] = @" CREATE INDEX ix_rolloutsV2_targetedFactorPackSetId ON rolloutsV2(targetedFactorPackSetId);";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v49[6] = v19;
  v48[7] = &unk_287FC48A0;
  v40 = @" ALTER TABLE experiments ADD COLUMN     isShadow INTEGER NOT NULL DEFAULT 0;";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v49[7] = v18;
  v48[8] = &unk_287FC48B8;
  v39 = @" ALTER TABLE rolloutsV2 ADD COLUMN     rampId TEXT;";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v49[8] = v17;
  v48[9] = &unk_287FC48D0;
  v38[0] = @" ALTER TABLE rolloutsV2 ADD COLUMN     activeTargetingRuleIndex INTEGER;";
  v38[1] = @" ALTER TABLE rolloutsV2 ADD COLUMN     targetedTargetingRuleIndex INTEGER;";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v49[9] = v16;
  v48[10] = &unk_287FC48E8;
  v37[0] = @" ALTER TABLE rolloutsV2 ADD COLUMN     respectRefCount INTEGER NOT NULL DEFAULT 1;";
  v37[1] = @" UPDATE rolloutsV2 SET respectRefCount = 0;";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v49[10] = v15;
  v48[11] = &unk_287FC4900;
  v36 = @" ALTER TABLE experiments ADD COLUMN     isManuallyTargeted INTEGER NOT NULL DEFAULT 0;";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v49[11] = v14;
  v48[12] = &unk_287FC4918;
  v35[0] = @" ALTER TABLE tasks ADD COLUMN     capabilities INTEGER NOT NULL DEFAULT 0;";
  v35[1] = @"migration_addTaskCapability";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v49[12] = v13;
  v48[13] = &unk_287FC4930;
  v34[0] = @" ALTER TABLE activationEvents ADD COLUMN     carrierBundleId TEXT NOT NULL DEFAULT '';";
  v34[1] = @" ALTER TABLE activationEvents ADD COLUMN     carrierCountryCode TEXT NOT NULL DEFAULT '';";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v49[13] = v2;
  v48[14] = &unk_287FC4948;
  v33[0] = @" ALTER TABLE activationEvents ADD COLUMN     diagnosticsUsageEnabled INTEGER NOT NULL DEFAULT 0;";
  v33[1] = @" ALTER TABLE activationEvents ADD COLUMN     hasAne INTEGER NOT NULL DEFAULT 0;";
  v33[2] = @" ALTER TABLE activationEvents ADD COLUMN     aneVersion TEXT NOT NULL DEFAULT '';";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v49[14] = v3;
  v48[15] = &unk_287FC4960;
  v32 = @" CREATE TABLE backgroundMlTasks(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     backgroundMlTaskId TEXT NOT NULL,     deploymentId INTEGER NOT NULL,     pluginId TEXT NOT NULL,     status INTEGER NOT NULL,     endSecondsFromEpoch REAL,     artifact BLOB,     UNIQUE (backgroundMlTaskId, deploymentId));";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v49[15] = v4;
  v48[16] = &unk_287FC4978;
  v31 = @" CREATE TABLE backgroundMlTaskHistory(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     eventSecondsFromEpoch REAL NOT NULL,     eventType INTEGER NOT NULL,     backgroundMlTaskId TEXT NOT NULL,     deploymentId INTEGER NOT NULL);";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v49[16] = v5;
  v49[17] = &unk_287FC4F90;
  v48[17] = &unk_287FC4990;
  v48[18] = &unk_287FC49A8;
  v30[0] = @" CREATE TABLE rolloutHistory(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     eventLogTime REAL NOT NULL,     eventType INTEGER NOT NULL,     rolloutId TEXT NOT NULL,     deploymentId INTEGER,     rampId TEXT,     factorPackSetId TEXT);";
  v30[1] = @" CREATE TABLE rolloutHistoryNamespaces(    rowid INTEGER PRIMARY KEY AUTOINCREMENT,     rolloutHistory_rowid INTEGER NOT NULL,     name TEXT NOT NULL,     UNIQUE (rolloutHistory_rowid, name),     FOREIGN KEY (rolloutHistory_rowid) REFERENCES rolloutHistory (rowid));";
  v30[2] = @" CREATE INDEX ix_rolloutHistory_eventSecondsFromEpoch ON rolloutHistory(eventLogTime);";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v49[18] = v6;
  v48[19] = &unk_287FC49C0;
  v29 = @" ALTER TABLE backgroundMlTaskHistory ADD COLUMN     factorPackSetId TEXT;";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v49[19] = v7;
  v48[20] = &unk_287FC49D8;
  v28 = @" ALTER TABLE experiments ADD COLUMN     factorPackSetId TEXT;";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v49[20] = v8;
  v48[21] = &unk_287FC49F0;
  v27 = @" ALTER TABLE experimentHistory ADD COLUMN     errorOrDeactivationReason TEXT;";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v49[21] = v9;
  v48[22] = &unk_287FC4A08;
  v26 = @" ALTER TABLE experiments ADD COLUMN     experimentType INTEGER NOT NULL DEFAULT 0;";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v49[22] = v10;
  v49[23] = &unk_287FC4FA8;
  v48[23] = &unk_287FC4A20;
  v48[24] = &unk_287FC4A38;
  v49[24] = &unk_287FC4FC0;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:25];

  return v11;
}

- (unsigned)migration_addTaskCapability
{
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "TRIDatabase calling migration_addTaskCapability", buf, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  db = self->_db;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__TRIDatabase_migration_addTaskCapability__block_invoke;
  v11[3] = &unk_279DE1698;
  v12 = v5;
  v13 = a2;
  v11[4] = self;
  v7 = v5;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@" SELECT * FROM tasks;" onPrep:0 onRow:v11 onError:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__TRIDatabase_migration_addTaskCapability__block_invoke_329;
  v9[3] = &unk_279DE16C0;
  v9[4] = self;
  v10 = @" UPDATE tasks  SET capabilities = :capabilities  WHERE rowid = :rowid ";
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  return 4;
}

uint64_t __42__TRIDatabase_migration_addTaskCapability__block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnName:"rowid" table:0];
  if (!v4)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIDatabase.m" lineNumber:621 description:@"read NULL rowid from PRIMARY KEY column"];
  }

  v5 = [v3 getInt64ForColumnName:"taskType" table:0];
  v6 = [v3 getNSDataForColumnName:"serializedTask" table:0];

  if (!v6)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIDatabase.m" lineNumber:624 description:@"read NULL serializedTask from NOT NULL column"];
  }

  v7 = +[TRITaskSupport sharedInstance];
  v8 = [v7 taskClassForTaskType:v5];

  if (v8)
  {
    v9 = [v8 parseFromData:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 requiredCapabilities];
      v12 = a1[5];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      [v12 setObject:v13 forKey:v4];
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failure deserializing task", v20, 2u);
      }
    }

    v15 = *MEMORY[0x277D42690];
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67109120;
      v20[1] = v5;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failure deserializing task of unsupported type %d", v20, 8u);
    }

    v15 = *MEMORY[0x277D42690];
  }

  return v15;
}

void __42__TRIDatabase_migration_addTaskCapability__block_invoke_329(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__TRIDatabase_migration_addTaskCapability__block_invoke_2;
  v11[3] = &unk_279DDFB20;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 prepAndRunQuery:v7 onPrep:v11 onRow:0 onError:0];
}

void __42__TRIDatabase_migration_addTaskCapability__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":rowid" toInt64:{objc_msgSend(v3, "longLongValue")}];
  [v4 bindNamedParam:":capabilities" toInt64:{objc_msgSend(*(a1 + 40), "unsignedLongLongValue")}];
}

- (unsigned)migration_dropShadowEvaluationDatabase
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "TRIDatabase calling migration_dropShadowEvaluationDatabase for database version 24", buf, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DROP TABLE IF EXISTS mlRuntimeEvaluationStatusHistory;" onPrep:0 onRow:0 onError:&__block_literal_global_338];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "TRIDatabase migration_dropShadowEvaluationDatabase dropped the mlRuntimeEvaluationStatusHistory table for database version 24", v6, 2u);
  }

  return 4;
}

uint64_t __53__TRIDatabase_migration_dropShadowEvaluationDatabase__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = TRILogCategory_Server();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26F567000, v2, OS_LOG_TYPE_ERROR, "TRIDatabase encountered error while dropping the mlRuntimeEvaluationStatusHistory table upon migration to DB version 24", v4, 2u);
    }
  }

  return *MEMORY[0x277D42698];
}

- (unsigned)migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "TRIDatabase calling migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments for database version 25", buf, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DROP TABLE IF EXISTS backgroundMlTasks;" onPrep:0 onRow:0 onError:&__block_literal_global_346];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "TRIDatabase migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments dropped the backgroundMlTasks table for database version 25", v16, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DROP TABLE IF EXISTS backgroundMlTaskHistory;" onPrep:0 onRow:0 onError:&__block_literal_global_349];
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "TRIDatabase migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments dropped the backgroundMlTaskHistory table for database version 25", v15, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DELETE FROM rolloutsV2 WHERE isShadow=1;" onPrep:0 onRow:0 onError:&__block_literal_global_358];
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "TRIDatabase migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments dropped the shadow evaluation entries from the rolloutsV2 table for database version 25", v14, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"DELETE FROM experiments WHERE isShadow=1;" onPrep:0 onRow:0 onError:&__block_literal_global_361];
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "TRIDatabase migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments dropped the shadow evaluation entries from the experiments table for database version 25", v13, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"ALTER TABLE rolloutsV2 DROP COLUMN isShadow;" onPrep:0 onRow:0 onError:&__block_literal_global_370];
  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "TRIDatabase migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments dropped the shadow evaluation column from the rolloutsV2 table for database version 25", v12, 2u);
  }

  [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@"ALTER TABLE experiments DROP COLUMN isShadow;" onPrep:0 onRow:0 onError:&__block_literal_global_373];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "TRIDatabase migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments dropped the shadow evaluation column from the experiments table for database version 25", v11, 2u);
  }

  return 4;
}

uint64_t __83__TRIDatabase_migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = TRILogCategory_Server();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26F567000, v2, OS_LOG_TYPE_ERROR, "TRIDatabase encountered error while dropping the backgroundMlTasks table upon migration to DB version 25", v4, 2u);
    }
  }

  return *MEMORY[0x277D42698];
}

uint64_t __83__TRIDatabase_migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments__block_invoke_347(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = TRILogCategory_Server();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26F567000, v2, OS_LOG_TYPE_ERROR, "TRIDatabase encountered error while dropping the backgroundMlTaskHistory table upon migration to DB version 25", v4, 2u);
    }
  }

  return *MEMORY[0x277D42698];
}

uint64_t __83__TRIDatabase_migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments__block_invoke_356(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = TRILogCategory_Server();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26F567000, v2, OS_LOG_TYPE_ERROR, "TRIDatabase encountered error while dropping the shadow evaluation entries from the rolloutsV2 table upon migration to DB version 25", v4, 2u);
    }
  }

  return *MEMORY[0x277D42698];
}

uint64_t __83__TRIDatabase_migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments__block_invoke_359(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = TRILogCategory_Server();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26F567000, v2, OS_LOG_TYPE_ERROR, "TRIDatabase encountered error while dropping the shadow evaluation entries from the experiments table upon migration to DB version 25", v4, 2u);
    }
  }

  return *MEMORY[0x277D42698];
}

uint64_t __83__TRIDatabase_migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments__block_invoke_368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = TRILogCategory_Server();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26F567000, v2, OS_LOG_TYPE_ERROR, "TRIDatabase encountered error while dropping the shadow evaluation column from the rolloutsV2 table upon migration to DB version 25", v4, 2u);
    }
  }

  return *MEMORY[0x277D42698];
}

uint64_t __83__TRIDatabase_migration_dropBMLTDatabasesAndShadowEvaluationRolloutsAndExperiments__block_invoke_371(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = TRILogCategory_Server();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26F567000, v2, OS_LOG_TYPE_ERROR, "TRIDatabase encountered error while dropping the shadow evaluation column from the experiments table upon migration to DB version 25", v4, 2u);
    }
  }

  return *MEMORY[0x277D42698];
}

- (unsigned)migration_conditionallyRemoveBMLTFactorPackInfo
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "TRIDatabase calling migration_condtionallyRemoveBMLTFactorPackInfo", buf, 2u);
  }

  if (([(_PASSqliteDatabase *)self->_db hasColumnOnTable:@"backgroundMlTasks" named:@"activeFactorPackSetId"]& 1) == 0)
  {
    [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@" ALTER TABLE backgroundMlTasks ADD COLUMN     activeFactorPackSetId TEXT;" onPrep:0 onRow:0 onError:0];
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Adding activeFactorPackSetId column to backgroundMlTasks", v12, 2u);
    }
  }

  if (([(_PASSqliteDatabase *)self->_db hasColumnOnTable:@"backgroundMlTasks" named:@"activeTargetingRuleIndex"]& 1) == 0)
  {
    [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@" ALTER TABLE backgroundMlTasks ADD COLUMN     activeTargetingRuleIndex INTEGER;" onPrep:0 onRow:0 onError:0];
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Adding activeTargetingRuleIndex column to backgroundMlTasks", v11, 2u);
    }
  }

  if (([(_PASSqliteDatabase *)self->_db hasColumnOnTable:@"backgroundMlTasks" named:@"targetedFactorPackSetId"]& 1) == 0)
  {
    [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@" ALTER TABLE backgroundMlTasks ADD COLUMN     targetedFactorPackSetId TEXT;" onPrep:0 onRow:0 onError:0];
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Adding targetedFactorPackSetId column to backgroundMlTasks", v10, 2u);
    }
  }

  if (([(_PASSqliteDatabase *)self->_db hasColumnOnTable:@"backgroundMlTasks" named:@"targetedTargetingRuleIndex"]& 1) == 0)
  {
    [(_PASSqliteDatabase *)self->_db prepAndRunQuery:@" ALTER TABLE backgroundMlTasks ADD COLUMN     targetedTargetingRuleIndex INTEGER;" onPrep:0 onRow:0 onError:0];
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Adding targetedTargetingRuleIndex column to backgroundMlTasks", v9, 2u);
    }
  }

  return 4;
}

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version
{
  if (version)
  {
    *version = 0;
  }

  return MEMORY[0x277CBEBF8];
}

@end