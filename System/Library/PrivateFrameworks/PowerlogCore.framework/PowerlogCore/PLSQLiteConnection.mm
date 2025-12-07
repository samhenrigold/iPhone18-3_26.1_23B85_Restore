@interface PLSQLiteConnection
+ (double)periodicIntegrityCheckInterval;
+ (id)masterTableForTable:(id)table andType:(id)type;
+ (id)sharedSQLiteConnection;
+ (id)tableHasTimestampColumn;
+ (id)tableHasTimestampColumnSem;
+ (id)versionForTable:(id)table;
+ (void)removeAdditionalFiles:(id)files;
+ (void)removeDBAtFilePath:(id)path;
- (BOOL)attachDB:(id)b withName:(id)name;
- (BOOL)checkEmptyMasterTable:(id)table;
- (BOOL)commonInitProcessWithFilePath:(id)path withCacheSize:(int64_t)size;
- (BOOL)copyDatabase:(id)database;
- (BOOL)copyDatabaseToPath:(id)path;
- (BOOL)copyDatabaseToPath:(id)path fromDate:(id)date toDate:(id)toDate withTableFilters:(id)filters vacuumDB:(BOOL)b;
- (BOOL)copyDatabaseToPath:(id)path fromDate:(id)date toDate:(id)toDate withTableFilters:(id)filters vacuumDB:(BOOL)b withCacheSize:(int64_t)size;
- (BOOL)copyTable:(id)table fromConnection:(id)connection withDBName:(id)name withProperties:(id)properties andAttach:(BOOL)attach;
- (BOOL)copyTable:(id)table fromDBName:(id)name withProperties:(id)properties;
- (BOOL)detachDB:(id)b;
- (BOOL)isIncrementalVacuumEnabled;
- (BOOL)mergeDataFromOtherDBFile:(id)file;
- (BOOL)openCurrentFile;
- (BOOL)openCurrentFileWithCacheSize:(int64_t)size withFlags:(id)flags;
- (BOOL)passesIntegrityCheck;
- (BOOL)tableExistsForTableName:(id)name;
- (BOOL)tableHasTimestampColumn:(id)column;
- (BOOL)truncateDB;
- (OS_dispatch_queue)workQueue;
- (PLSQLiteConnection)init;
- (PLSQLiteConnection)initWithFilePath:(id)path withCacheSize:(int64_t)size;
- (PLSQLiteConnection)initWithFilePath:(id)path withCacheSize:(int64_t)size withFlags:(id)flags;
- (double)schemaVersionForTable:(id)table;
- (id)cachedStatementForMetadataInsert;
- (id)entriesForKey:(id)key withProperties:(id)properties;
- (id)entriesForKey:(id)key withQuery:(id)query;
- (id)getIntegrityCheckCriteria;
- (id)performQuery:(id)query;
- (id)performQuery:(id)query returnValue:(int *)value returnResult:(BOOL)result;
- (id)performStatement:(id)statement;
- (id)sortedSqlFormatedColumnNamesForTableInsert:(id)insert;
- (id)sqlFormatedColumnNamesForTableInsert:(id)insert;
- (id)sqlFormatedColumnNamesForTableSelect:(id)select withSystemOffset:(double)offset;
- (id)sqlPropertiesAsString:(id)string;
- (id)tableInfo:(id)info;
- (id)versionHashForTable:(id)table;
- (int)bindEntry:(id)entry toPreparedStatement:(id)statement atBindPosition:(int)position;
- (int)getCacheSpillValue;
- (int)rowCountForTable:(id)table;
- (int)rowCountForTableName:(id)name;
- (int64_t)writeEntry:(id)entry;
- (void)beginTransaction;
- (void)buildColumnInsert:(id *)insert andValueInsert:(id *)valueInsert forEntry:(id)entry;
- (void)clearTableHasTimestampColumnCache;
- (void)closeConnection;
- (void)createCompositeIndexOnTable:(id)table forColumns:(id)columns;
- (void)createIndexOnTable:(id)table forColumn:(id)column;
- (void)createTableName:(id)name withColumns:(id)columns;
- (void)dealloc;
- (void)deleteAllEntriesForKey:(id)key withFilters:(id)filters;
- (void)deleteArrayEntriesForKey:(id)key withRowID:(int64_t)d;
- (void)deleteDynamicEntriesForKey:(id)key withRowID:(int64_t)d;
- (void)deleteEntryForKey:(id)key withRowID:(int64_t)d;
- (void)displaySchema:(id)schema;
- (void)dropTable:(id)table;
- (void)dropTables:(id)tables;
- (void)endTransaction;
- (void)enumerateAllTablesWithBlock:(id)block;
- (void)enumerateTablesWithBlock:(id)block;
- (void)freeMetadataState;
- (void)fullVacuum;
- (void)hashEntryKeyKeys:(id)keys;
- (void)loadArrayValuesIntoEntry:(id)entry;
- (void)loadDynamicValuesIntoEntry:(id)entry;
- (void)moveDatabaseToPath:(id)path;
- (void)printDBStatusString;
- (void)removeEmptyOldTables;
- (void)removeIDIndexes;
- (void)removeTableNameFromMergeDB:(id)b;
- (void)runTrimQuery:(id)query;
- (void)scheduleIntegrityCheck;
- (void)setAllNullValuesForEntryKey:(id)key forKey:(id)forKey toValue:(id)value withFilters:(id)filters;
- (void)setJournalMode:(signed __int16)mode;
- (void)setSchemaVersion:(double)version forTableName:(id)name;
- (void)setVersionHash:(id)hash forTableName:(id)name;
- (void)trimAllTablesFromDate:(id)date toDate:(id)toDate withTableFilters:(id)filters;
- (void)trimTable:(id)table fromDate:(id)date withFilter:(id)filter withTrimLimit:(int64_t)limit;
- (void)updateEntry:(id)entry;
- (void)vacuum;
- (void)writeArrayEntries:(id)entries;
- (void)writeDynamicEntries:(id)entries;
- (void)writeDynamicEntriesToPPS:(id)s;
- (void)writeMetadata:(id)metadata forFKID:(id)d build:(id)build name:(id)name version:(double)version;
@end

@implementation PLSQLiteConnection

- (void)beginTransaction
{
  transactionLock = [(PLSQLiteConnection *)self transactionLock];
  objc_sync_enter(transactionLock);
  if (![(PLSQLiteConnection *)self isTransactionInProgress])
  {
    v4 = [(PLSQLiteConnection *)self performQuery:@"BEGIN TRANSACTION;"];
  }

  [(PLSQLiteConnection *)self setTransactionInProgress:[(PLSQLiteConnection *)self transactionInProgress]+ 1];
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__PLSQLiteConnection_beginTransaction__block_invoke;
    block[3] = &unk_1E8519630;
    v14 = @"transactions";
    v15 = v5;
    if (beginTransaction_defaultOnce != -1)
    {
      dispatch_once(&beginTransaction_defaultOnce, block);
    }

    v6 = beginTransaction_classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"beginTransaction counter=%d", -[PLSQLiteConnection transactionInProgress](self, "transactionInProgress")];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection beginTransaction]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1140];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  objc_sync_exit(transactionLock);
}

- (OS_dispatch_queue)workQueue
{
  cachedClassName = [(PLSQLiteConnection *)self cachedClassName];
  v3 = [PLUtilities workQueueForKey:cachedClassName];

  return v3;
}

+ (id)sharedSQLiteConnection
{
  v2 = +[PowerlogCore sharedCore];
  storage = [v2 storage];
  connection = [storage connection];

  return connection;
}

- (void)endTransaction
{
  transactionLock = [(PLSQLiteConnection *)self transactionLock];
  objc_sync_enter(transactionLock);
  if ([(PLSQLiteConnection *)self isTransactionInProgress])
  {
    [(PLSQLiteConnection *)self setTransactionInProgress:[(PLSQLiteConnection *)self transactionInProgress]- 1];
    if (![(PLSQLiteConnection *)self isTransactionInProgress])
    {
      v4 = [(PLSQLiteConnection *)self performQuery:@"END TRANSACTION;"];
    }
  }

  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PLSQLiteConnection_endTransaction__block_invoke;
    block[3] = &unk_1E8519630;
    v14 = @"transactions";
    v15 = v5;
    if (endTransaction_defaultOnce != -1)
    {
      dispatch_once(&endTransaction_defaultOnce, block);
    }

    v6 = endTransaction_classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endTransaction counter=%d", -[PLSQLiteConnection transactionInProgress](self, "transactionInProgress")];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection endTransaction]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1155];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  objc_sync_exit(transactionLock);
}

+ (void)removeAdditionalFiles:(id)files
{
  v3 = MEMORY[0x1E696AC08];
  filesCopy = files;
  defaultManager = [v3 defaultManager];
  v6 = [filesCopy stringByAppendingString:@"-shm"];
  [defaultManager removeItemAtPath:v6 error:0];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [filesCopy stringByAppendingString:@"-wal"];

  [defaultManager2 removeItemAtPath:v7 error:0];
}

+ (void)removeDBAtFilePath:(id)path
{
  pathCopy = path;
  [PLSQLiteConnection removeAdditionalFiles:pathCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtPath:pathCopy error:0];
}

+ (id)tableHasTimestampColumn
{
  if (tableHasTimestampColumn_onceToken != -1)
  {
    +[PLSQLiteConnection tableHasTimestampColumn];
  }

  v3 = tableHasTimestampColumn_tableHasTimestampColumn;

  return v3;
}

uint64_t __45__PLSQLiteConnection_tableHasTimestampColumn__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  tableHasTimestampColumn_tableHasTimestampColumn = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)tableHasTimestampColumnSem
{
  if (tableHasTimestampColumnSem_onceToken != -1)
  {
    +[PLSQLiteConnection tableHasTimestampColumnSem];
  }

  v3 = tableHasTimestampColumnSem_tableHasTimestampColumnSem;

  return v3;
}

uint64_t __48__PLSQLiteConnection_tableHasTimestampColumnSem__block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  tableHasTimestampColumnSem_tableHasTimestampColumnSem = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (PLSQLiteConnection)init
{
  v3 = +[PLUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  v5 = [(PLSQLiteConnection *)self initWithFilePath:v4];

  return v5;
}

- (BOOL)commonInitProcessWithFilePath:(id)path withCacheSize:(int64_t)size
{
  pathCopy = path;
  objc_storeStrong(&self->_filePath, path);
  v8 = objc_opt_new();
  preparedStatements = self->_preparedStatements;
  self->_preparedStatements = v8;

  v10 = objc_opt_new();
  preparedUpdateStatements = self->_preparedUpdateStatements;
  self->_preparedUpdateStatements = v10;

  v12 = objc_opt_new();
  preparedDynamicStatements = self->_preparedDynamicStatements;
  self->_preparedDynamicStatements = v12;

  self->_transactionInProgress = 0;
  transactionLock = self->_transactionLock;
  self->_transactionLock = @"_-transactionLock-_";

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  cachedClassName = self->_cachedClassName;
  self->_cachedClassName = v16;

  self->_cacheSize = size;
  v18 = dispatch_semaphore_create(1);
  dbSem = self->_dbSem;
  self->_dbSem = v18;

  v20 = sqlite3_initialize();
  if (!v20)
  {
    defaultManager7 = +[PLUtilities containerPath];
    v22 = [defaultManager7 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
    if ([pathCopy isEqualToString:v22])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v24 = +[PLUtilities containerPath];
      v25 = [v24 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL"];
      v26 = [defaultManager fileExistsAtPath:v25];

      if (!v26)
      {
        goto LABEL_7;
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = +[PLUtilities containerPath];
      v29 = [v28 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
      [defaultManager2 removeItemAtPath:v29 error:0];

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v31 = +[PLUtilities containerPath];
      v32 = [v31 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL"];
      v33 = +[PLUtilities containerPath];
      v34 = [v33 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
      [defaultManager3 moveItemAtPath:v32 toPath:v34 error:0];

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      v36 = +[PLUtilities containerPath];
      v37 = [v36 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-wal"];
      [defaultManager4 removeItemAtPath:v37 error:0];

      defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
      v39 = +[PLUtilities containerPath];
      v40 = [v39 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL-wal"];
      v41 = +[PLUtilities containerPath];
      v42 = [v41 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-wal"];
      [defaultManager5 moveItemAtPath:v40 toPath:v42 error:0];

      defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
      v44 = +[PLUtilities containerPath];
      v45 = [v44 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-shm"];
      [defaultManager6 removeItemAtPath:v45 error:0];

      defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = +[PLUtilities containerPath];
      v46 = [v22 stringByAppendingString:@"/Library/Logs/CurrentPowerlog.PLSQL-shm"];
      v47 = +[PLUtilities containerPath];
      v48 = [v47 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL-shm"];
      [defaultManager7 moveItemAtPath:v46 toPath:v48 error:0];
    }

    goto LABEL_7;
  }

  fprintf(*MEMORY[0x1E69E9848], "failed to initialize library: %d\n", v20);
LABEL_7:

  return v20 == 0;
}

- (PLSQLiteConnection)initWithFilePath:(id)path withCacheSize:(int64_t)size
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = PLSQLiteConnection;
  v7 = [(PLSQLiteConnection *)&v16 init];
  v8 = v7;
  if (v7)
  {
    if (![(PLSQLiteConnection *)v7 commonInitProcessWithFilePath:pathCopy withCacheSize:size]|| ![(PLSQLiteConnection *)v8 openCurrentFileWithCacheSize:size])
    {
      v11 = 0;
      goto LABEL_11;
    }

    v9 = +[PLUtilities containerPath];
    v10 = [v9 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
    if (![pathCopy isEqualToString:v10] || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd"))
    {
    }

    else
    {
      v13 = +[PLUtilities isPowerexceptionsd];

      if (!v13)
      {
        if ([PLDefaults BOOLForKey:@"RunIntegrityCheck"])
        {
          passesIntegrityCheck = [(PLSQLiteConnection *)v8 passesIntegrityCheck];
          if ((passesIntegrityCheck & 1) == 0)
          {
            v15 = PLLogSQLiteConnection(passesIntegrityCheck);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [PLSQLiteConnection initWithFilePath:withCacheSize:];
            }

            [PLUtilities exitWithReason:1001 connection:v8];
          }
        }

        [(PLSQLiteConnection *)v8 scheduleIntegrityCheck];
      }
    }

    [(PLSQLiteConnection *)v8 setJournalMode:[PLDefaults BOOLForKey:@"DBModeWAL" ifNotSet:1]^ 1];
  }

  v11 = v8;
LABEL_11:

  return v11;
}

- (PLSQLiteConnection)initWithFilePath:(id)path withCacheSize:(int64_t)size withFlags:(id)flags
{
  pathCopy = path;
  flagsCopy = flags;
  v14.receiver = self;
  v14.super_class = PLSQLiteConnection;
  v10 = [(PLSQLiteConnection *)&v14 init];
  v11 = v10;
  if (!v10 || [(PLSQLiteConnection *)v10 commonInitProcessWithFilePath:pathCopy withCacheSize:size]&& [(PLSQLiteConnection *)v11 openCurrentFileWithCacheSize:size withFlags:flagsCopy])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getIntegrityCheckCriteria
{
  array = [MEMORY[0x1E695DF70] array];
  [objc_opt_class() periodicIntegrityCheckInterval];
  v3 = [PLActivityCriterionTime timeCriterionWithInterval:?];
  [array addObject:v3];

  if (![PLPlatform isDisplayClass:0xFFFFFFFFLL])
  {
    v4 = +[PLActivityCriterionEntry displayOffCriterion];
    [array addObject:v4];
  }

  if (+[PLUtilities hasBattery])
  {
    v5 = +[PLActivityCriterionEntry pluggedInCriterion];
    [array addObject:v5];
  }

  return array;
}

- (void)scheduleIntegrityCheck
{
  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

void __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getIntegrityCheckCriteria];
  v3 = +[PLActivityScheduler sharedInstance];
  v4 = [PLActivityCriterionTime timeCriterionWithInterval:2592000.0];
  v5 = dispatch_get_global_queue(-2, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_2;
  v6[3] = &unk_1E851AC48;
  v6[4] = *(a1 + 32);
  [v3 scheduleActivityWithIdentifier:@"com.apple.powerlogd.integrity_check" withCriteria:v2 withMustRunCriterion:v4 withQueue:v5 withInterruptBlock:0 withActivityBlock:v6];
}

void __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (kPLCacheSizeForBackupDatabaseConnection_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLCacheSizeForBackupDatabaseConnection_block_invoke_defaultOnce, block);
    }

    if (kPLCacheSizeForBackupDatabaseConnection_block_invoke_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Periodic integrity_check activity running"];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection scheduleIntegrityCheck]_block_invoke_2"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:218];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14 = os_transaction_create();
  v15 = objc_autoreleasePoolPush();
  v16 = [*(a1 + 32) passesIntegrityCheck];
  if ((v16 & 1) == 0)
  {
    v17 = PLLogSQLiteConnection(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_2_cold_2();
    }

    [PLUtilities exitWithReason:1001 connection:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v15);
  v18 = dispatch_time(0, 60000000000);
  v19 = +[PLUtilities transactionWorkQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_77;
  v21[3] = &unk_1E85190B8;
  v22 = v14;
  v20 = v14;
  dispatch_after(v18, v19, v21);
}

BOOL __44__PLSQLiteConnection_scheduleIntegrityCheck__block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  kPLCacheSizeForBackupDatabaseConnection_block_invoke_classDebugEnabled = result;
  return result;
}

+ (double)periodicIntegrityCheckInterval
{
  if (periodicIntegrityCheckInterval_onceToken != -1)
  {
    +[PLSQLiteConnection periodicIntegrityCheckInterval];
  }

  return *&periodicIntegrityCheckInterval_periodicIntegrityCheckInterval;
}

void *__52__PLSQLiteConnection_periodicIntegrityCheckInterval__block_invoke()
{
  result = [PLDefaults doubleForKey:@"PLSQLiteConnection_periodicIntegrityCheckInterval" ifNotSet:604800.0];
  periodicIntegrityCheckInterval_periodicIntegrityCheckInterval = v1;
  return result;
}

- (BOOL)isIncrementalVacuumEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  dbSem = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  v4 = sqlite3_exec_b();
  v5 = PLLogCommon(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v10 + 24);
    *buf = 67109120;
    v14 = v6;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Incremental Vacuum is %d", buf, 8u);
  }

  dbSem2 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(dbSem2);

  LOBYTE(dbSem2) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return dbSem2;
}

- (int)getCacheSpillValue
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  dbSem = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  v4 = sqlite3_exec_b();
  v5 = PLLogCommon(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v10 + 6);
    *buf = 67109120;
    v14 = v6;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Cache spill is %d", buf, 8u);
  }

  dbSem2 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(dbSem2);

  LODWORD(dbSem2) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return dbSem2;
}

- (void)dealloc
{
  [(PLSQLiteConnection *)self closeConnection];
  v3.receiver = self;
  v3.super_class = PLSQLiteConnection;
  [(PLSQLiteConnection *)&v3 dealloc];
}

- (BOOL)openCurrentFile
{
  cacheSize = [(PLSQLiteConnection *)self cacheSize];

  return [(PLSQLiteConnection *)self openCurrentFileWithCacheSize:cacheSize];
}

- (BOOL)openCurrentFileWithCacheSize:(int64_t)size withFlags:(id)flags
{
  v54 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  v7 = PLLogCommon(flagsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLSQLiteConnection openCurrentFileWithCacheSize:? withFlags:?];
  }

  if ([flagsCopy count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = flagsCopy;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 |= [*(*(&v42 + 1) + 8 * i) intValue];
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 3145734;
  }

  dbSem = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  filePath = [(PLSQLiteConnection *)self filePath];
  v16 = sqlite3_open_v2([filePath UTF8String], &self->_dbConnection, v11, 0);
  v46 = v16;

  dbSem2 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(dbSem2);

  v19 = v16 == 0;
  if (v16)
  {
    v20 = PLLogCommon(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection openCurrentFileWithCacheSize:withFlags:];
    }

    goto LABEL_18;
  }

  if (v11)
  {
    v20 = PLLogCommon(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "done initializing read-only connection";
      v32 = v20;
      v33 = 2;
LABEL_30:
      _os_log_impl(&dword_1D8611000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    }
  }

  else
  {
    filePath2 = [(PLSQLiteConnection *)self filePath];
    [PLUtilities setMobileOwnerForFile:filePath2];

    v24 = PLLogCommon(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v24, OS_LOG_TYPE_DEFAULT, "Configure the page cache", buf, 2u);
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA cache_size = %ld", size];;
    v26 = [(PLSQLiteConnection *)self performQuery:v25 returnValue:&v46 returnResult:0];

    if (v46)
    {
      goto LABEL_27;
    }

    v28 = PLLogCommon(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Configure the cache_spill", buf, 2u);
    }

    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA cache_spill = %ld", 640];;
    v30 = [(PLSQLiteConnection *)self performQuery:v29 returnValue:&v46 returnResult:0];

    if (v46)
    {
      goto LABEL_27;
    }

    getCacheSpillValue = [(PLSQLiteConnection *)self getCacheSpillValue];
    v35 = getCacheSpillValue;
    v36 = PLLogCommon(getCacheSpillValue);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v48 = v46;
      v49 = 2080;
      v50 = 0;
      v51 = 1024;
      v52 = v35;
      _os_log_impl(&dword_1D8611000, v36, OS_LOG_TYPE_DEFAULT, "Tuning cache spill for the db retun value %d and error %s val returned from query %d", buf, 0x18u);
    }

    if (!+[PLUtilities SwitchToIncrementalVacuumEnabled]|| (v37 = [(PLSQLiteConnection *)self isIncrementalVacuumEnabled], (v37 & 1) != 0))
    {
      v19 = 1;
      goto LABEL_19;
    }

    v38 = PLLogCommon(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v38, OS_LOG_TYPE_DEFAULT, "Configure auto_vacuum = 2", buf, 2u);
    }

    v39 = [(PLSQLiteConnection *)self performQuery:@"PRAGMA auto_vacuum = 2;" returnValue:&v46 returnResult:0];
    if (v46)
    {
      goto LABEL_27;
    }

    v40 = PLLogCommon(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v40, OS_LOG_TYPE_DEFAULT, "Invoke VACUUM to ensure the transition to incremental_vacuum mode", buf, 2u);
    }

    v41 = [(PLSQLiteConnection *)self performQuery:@"VACUUM;" returnValue:&v46 returnResult:0];
    if (v46)
    {
LABEL_27:
      v19 = 0;
      goto LABEL_19;
    }

    v20 = PLLogCommon(v41);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v48 = v46;
      v49 = 2080;
      v50 = 0;
      v31 = "Executed vacuum on db to switch to incremental vacuum - %d and %s ";
      v32 = v20;
      v33 = 18;
      goto LABEL_30;
    }
  }

LABEL_18:

LABEL_19:
  return v19;
}

- (void)printDBStatusString
{
  pCur = 0;
  pHiwtr = 0;
  sqlite3_db_status(self->_dbConnection, 0, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LookasideSlots.isa, pCur, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 4, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_SuccessfulLook.isa, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 5, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LookasideSizeF.isa, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 6, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LookasideOomFa.isa, pHiwtr);
  sqlite3_db_status(self->_dbConnection, 1, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_PagerHeapUsage.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 7, &pCur, &pHiwtr, 1);
  NSLog(&cfstr_PageCacheHitsD.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 8, &pCur, &pHiwtr, 1);
  NSLog(&cfstr_PageCacheMisse.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 9, &pCur, &pHiwtr, 1);
  NSLog(&cfstr_PageCacheWrite.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 2, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_SchemaHeapUsag.isa, pCur);
  sqlite3_db_status(self->_dbConnection, 3, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_StatementHeapU.isa, pCur);
  sqlite3_status(0, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_MemoryUsedByte.isa, pCur, pHiwtr);
  sqlite3_status(9, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_OutstandingAll.isa, pCur, pHiwtr);
  sqlite3_status(2, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_PcacheOverflow.isa, pCur, pHiwtr);
  sqlite3_status(4, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_ScratchOverflo.isa, pCur, pHiwtr);
  sqlite3_status(5, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LargestAllocat.isa, pHiwtr);
  sqlite3_status(7, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LargestPcacheA.isa, pHiwtr);
  sqlite3_status(8, &pCur, &pHiwtr, 0);
  NSLog(&cfstr_LargestScratch.isa, pHiwtr);
}

- (BOOL)tableHasTimestampColumn:(id)column
{
  v28 = *MEMORY[0x1E69E9840];
  columnCopy = column;
  tableHasTimestampColumnSem = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_wait(tableHasTimestampColumnSem, 0xFFFFFFFFFFFFFFFFLL);

  tableHasTimestampColumn = [objc_opt_class() tableHasTimestampColumn];
  v7 = [tableHasTimestampColumn objectForKeyedSubscript:columnCopy];

  tableHasTimestampColumnSem2 = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_signal(tableHasTimestampColumnSem2);

  if (v7)
  {
    LOBYTE(v9) = [v7 BOOLValue];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(PLSQLiteConnection *)self tableInfo:columnCopy];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v22 = columnCopy;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          v16 = [v15 isEqualToString:@"timestamp"];

          if (v16)
          {
            v9 = 1;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v9 = 0;
LABEL_13:
      columnCopy = v22;
    }

    else
    {
      v9 = 0;
    }

    tableHasTimestampColumnSem3 = [objc_opt_class() tableHasTimestampColumnSem];
    dispatch_semaphore_wait(tableHasTimestampColumnSem3, 0xFFFFFFFFFFFFFFFFLL);

    v18 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    tableHasTimestampColumn2 = [objc_opt_class() tableHasTimestampColumn];
    [tableHasTimestampColumn2 setObject:v18 forKeyedSubscript:columnCopy];

    tableHasTimestampColumnSem4 = [objc_opt_class() tableHasTimestampColumnSem];
    dispatch_semaphore_signal(tableHasTimestampColumnSem4);
  }

  return v9;
}

- (void)clearTableHasTimestampColumnCache
{
  tableHasTimestampColumnSem = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_wait(tableHasTimestampColumnSem, 0xFFFFFFFFFFFFFFFFLL);

  tableHasTimestampColumn = [objc_opt_class() tableHasTimestampColumn];
  [tableHasTimestampColumn removeAllObjects];

  tableHasTimestampColumnSem2 = [objc_opt_class() tableHasTimestampColumnSem];
  dispatch_semaphore_signal(tableHasTimestampColumnSem2);
}

- (int)rowCountForTable:(id)table
{
  tableCopy = table;
  v5 = @"FK_ID";
  if (([tableCopy containsString:@"_Dynamic"] & 1) == 0 && !objc_msgSend(tableCopy, "containsString:", @"_Array_"))
  {
    v5 = @"ID";
  }

  if ([tableCopy rangeOfString:@"'"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"SELECT count(%@) AS count FROM '%@';";
  }

  else
  {
    v6 = @"SELECT count(%@) AS count FROM %@;";
  }

  tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v5, tableCopy];
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __39__PLSQLiteConnection_rowCountForTable___block_invoke;
    v24 = &unk_1E8519630;
    v25 = @"mergeDBCount";
    v26 = v8;
    if (rowCountForTable__defaultOnce != -1)
    {
      dispatch_once(&rowCountForTable__defaultOnce, &block);
    }

    v9 = rowCountForTable__classDebugEnabled;

    if (v9 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Counting %@ (%@)", tableCopy, tableCopy, block, v22, v23, v24];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection rowCountForTable:]"];
      [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:444];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v16 = [(PLSQLiteConnection *)self performQuery:tableCopy];
  if ([v16 count] == 1)
  {
    v17 = [v16 objectAtIndexedSubscript:0];
    v18 = [v17 objectForKeyedSubscript:@"count"];
    intValue = [v18 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

BOOL __39__PLSQLiteConnection_rowCountForTable___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  rowCountForTable__classDebugEnabled = result;
  return result;
}

- (id)sortedSqlFormatedColumnNamesForTableInsert:(id)insert
{
  v33 = *MEMORY[0x1E69E9840];
  insert = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM pragma_table_info('%@')", insert];
  v5 = [(PLSQLiteConnection *)self performQuery:insert];

  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v13 = [v6 sortedArrayUsingSelector:sel_compare_];
  if (v13)
  {
    v14 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          if (([v20 isEqualToString:@"ID"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"FK_ID") & 1) == 0)
          {
            if ([v14 length])
            {
              [v14 appendString:{@", "}];
            }

            [v14 appendFormat:@"%c%@%c", 39, v20, 39];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    [v14 appendString:@""]);
    v13 = v22;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)sqlFormatedColumnNamesForTableInsert:(id)insert
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PLSQLiteConnection *)self tableInfo:insert];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"name"];
        v11 = [v10 isEqualToString:@"ID"];

        if ((v11 & 1) == 0)
        {
          if ([v4 length])
          {
            [v4 appendString:{@", "}];
          }

          v12 = [v9 objectForKeyedSubscript:@"name"];
          [v4 appendFormat:@"%c%@%c", 39, v12, 39];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)sqlFormatedColumnNamesForTableSelect:(id)select withSystemOffset:(double)offset
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(PLSQLiteConnection *)self tableInfo:select];
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"name"];
        v13 = [v12 isEqualToString:@"ID"];

        if ((v13 & 1) == 0)
        {
          if ([v6 length])
          {
            [v6 appendString:{@", "}];
          }

          v14 = [v11 objectForKeyedSubscript:@"name"];
          v15 = [v14 isEqualToString:@"timestamp"];

          v16 = [v11 objectForKeyedSubscript:@"name"];
          v17 = v16;
          if (v15)
          {
            [v6 appendFormat:@"%c%@%c - %f", 96, v16, 96, *&offset];
          }

          else
          {
            [v6 appendFormat:@"%c%@%c", 96, v16, 96, v19];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)removeTableNameFromMergeDB:(id)b
{
  v4 = MEMORY[0x1E696AEC0];
  bCopy = b;
  bCopy = [v4 stringWithFormat:@"DROP TABLE mergeDB.'%@'", bCopy];
  v7 = [(PLSQLiteConnection *)self performQuery:bCopy];

  bCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM mergeDB.'PLCoreStorage_schemaVersions' WHERE tableName='%@'", bCopy];;

  v8 = [(PLSQLiteConnection *)self performQuery:bCopy2];
}

- (void)enumerateAllTablesWithBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table AND name LIKE PL%% AND name NOT LIKE PLCoreStorage%%;"];
  v19 = v21 = self;
  [(PLSQLiteConnection *)self performQuery:?];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v20 = *v31;
    do
    {
      v7 = 0;
      v23 = v5;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 objectForKeyedSubscript:@"name"];
        if (([v10 containsStringInArray:&unk_1F540B890] & 1) == 0)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table AND name LIKE %@%% AND (name LIKE %%_Array_%% OR name LIKE %%_Dynamic", v10, v10];
          v11 = [(PLSQLiteConnection *)v21 performQuery:?];
          v12 = objc_opt_new();
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            do
            {
              v17 = 0;
              do
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v26 + 1) + 8 * v17) objectForKeyedSubscript:@"name"];
                [v12 addObject:v18];

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v15);
          }

          blockCopy[2](blockCopy, v10, v12);
          v6 = v20;
          v5 = v23;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }
}

- (int)rowCountForTableName:(id)name
{
  nameCopy = name;
  if ([nameCopy rangeOfString:@"'"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"SELECT count(ID) AS count FROM '%@';";
  }

  else
  {
    v5 = @"SELECT count(ID) AS count FROM %@;";
  }

  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v5, nameCopy];

  v7 = [(PLSQLiteConnection *)self performQuery:nameCopy];
  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:@"count"];
    intValue = [v9 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)enumerateTablesWithBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table AND name NOT LIKE PLCoreStorage%% AND name NOT LIKE sqlite%%"];;
  [(PLSQLiteConnection *)self performQuery:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 objectForKeyedSubscript:{@"name", v14}];
        blockCopy[2](blockCopy, v13);

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (BOOL)mergeDataFromOtherDBFile:(id)file
{
  v29 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v5 = fileCopy;
  if (fileCopy)
  {
    v6 = PLLogSQLiteConnection(fileCopy);
    if (os_signpost_enabled(v6))
    {
      *buf = 134349056;
      v28 = [PLFileStats fileSizeAtPath:v5];
      _os_signpost_emit_with_name_impl(&dword_1D8611000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MergeDB", " preUnlockDBSize=%{public, signpost.telemetry:number1}lld enableTelemetry=YES ", buf, 0xCu);
    }

    *buf = 0;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ATTACH DATABASE '%@' AS mergeDB", v5];;
    v8 = [(PLSQLiteConnection *)self performQuery:v7 returnValue:buf returnResult:0];
    v9 = *buf;
    v10 = PLLogCommon(v8);
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection mergeDataFromOtherDBFile:];
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_INFO, "MERGE begins", v26, 2u);
      }

      [(PLSQLiteConnection *)self beginTransaction];
      +[PLUtilities getLastSystemTimeOffset];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247;
      v25[3] = &unk_1E851B048;
      v25[4] = self;
      v25[5] = v14;
      [(PLSQLiteConnection *)self enumerateTablesWithBlock:v25];
      [(PLSQLiteConnection *)self endTransaction];
      *buf = 0;
      v15 = [(PLSQLiteConnection *)self performQuery:@"DETACH DATABASE mergeDB;" returnValue:buf returnResult:0];
      v16 = *buf;
      v17 = PLLogCommon(v15);
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection mergeDataFromOtherDBFile:];
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_INFO, "MERGE Complete", v26, 2u);
      }
    }

    v19 = AnalyticsSendEventLazy();
    v20 = PLLogCommon(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_INFO, "MERGE Deleting pre unlock DB", v26, 2u);
    }

    v21 = PLLogSQLiteConnection([PLSQLiteConnection removeDBAtFilePath:v5]);
    if (os_signpost_enabled(v21))
    {
      *v26 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D8611000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MergeDB", &unk_1D873724F, v26, 2u);
    }

    v23 = PLLogCommon(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_1D8611000, v23, OS_LOG_TYPE_INFO, "MERGE Deleted the pre unlock db", v26, 2u);
    }

    v13 = *buf == 0;
  }

  else
  {
    v12 = PLLogCommon(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection mergeDataFromOtherDBFile:];
    }

    v13 = 0;
  }

  return v13;
}

void __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mergeDB.'%@'", v3];
  v6 = [v4 rowCountForTableName:v5];

  if (v6 < 1)
  {
    v25 = *(a1 + 32);
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE mergeDB.'%@'", v3];
    v27 = [v25 performQuery:v26 returnValue:0 returnResult:0];
  }

  else
  {
    v8 = PLLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v29 = v3;
      *&v29[8] = 1024;
      v30[0] = v6;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_INFO, "MERGE : ****** copying %@ (%d)", buf, 0x12u);
    }

    v9 = [*(a1 + 32) rowCountForTableName:v3];
    v10 = [*(a1 + 32) sqlFormatedColumnNamesForTableInsert:v3];
    v11 = [*(a1 + 32) sqlFormatedColumnNamesForTableSelect:v3 withSystemOffset:*(a1 + 40)];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO '%@'(%@) SELECT %@ FROM mergeDB.'%@'", v3, v10, v11, v3];;
    v13 = PLLogCommon(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_1();
    }

    v14 = [*(a1 + 32) performQuery:v12 returnValue:0 returnResult:0];
    v15 = [*(a1 + 32) rowCountForTableName:v3];
    v16 = v15;
    v17 = PLLogCommon(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v29 = v9;
      *&v29[4] = 1024;
      *&v29[6] = v16;
      LOWORD(v30[0]) = 1024;
      *(v30 + 2) = v6;
      _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_INFO, "MERGE : startCount=%d endCount=%d rowCount=%d", buf, 0x14u);
    }

    if (v9 + v6 != v16)
    {
      v19 = PLLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_2();
      }
    }

    v20 = *(a1 + 32);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE mergeDB.'%@'", v3];
    v22 = [v20 performQuery:v21 returnValue:0 returnResult:0];

    v24 = PLLogCommon(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __47__PLSQLiteConnection_mergeDataFromOtherDBFile___block_invoke_247_cold_3();
    }
  }
}

- (void)trimAllTablesFromDate:(id)date toDate:(id)toDate withTableFilters:(id)filters
{
  v108 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  toDateCopy = toDate;
  filtersCopy = filters;
  v9 = 0x1E8518000uLL;
  v77 = dateCopy;
  if (+[PLDefaults debugEnabled])
  {
    v10 = objc_opt_class();
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke;
    v100[3] = &unk_1E8519630;
    v102 = v10;
    v101 = @"trimming";
    if (trimAllTablesFromDate_toDate_withTableFilters__defaultOnce != -1)
    {
      dispatch_once(&trimAllTablesFromDate_toDate_withTableFilters__defaultOnce, v100);
    }

    v11 = trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled;

    if (v11 == 1)
    {
      toDateCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming from %@ to %@", dateCopy, toDateCopy];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection trimAllTablesFromDate:toDate:withTableFilters:]"];
      [PLCoreStorage logMessage:toDateCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:660];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      dateCopy = v77;
    }
  }

  if (dateCopy || toDateCopy || filtersCopy)
  {
    v18 = [PLDefaults longForKey:@"trimLimit" ifNotSet:1000];
    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table AND name NOT LIKE PLCoreStorage%% AND name NOT LIKE sqlite%%"];;
    [(PLSQLiteConnection *)self performQuery:?];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v99 = 0u;
    v19 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
    if (!v19)
    {
      goto LABEL_72;
    }

    v20 = v19;
    v73 = *v97;
    selfCopy = self;
    v79 = v18;
    while (1)
    {
      v21 = 0;
      v70 = v20;
      do
      {
        if (*v97 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v96 + 1) + 8 * v21);
        context = objc_autoreleasePoolPush();
        if ([*(v9 + 2224) debugEnabled])
        {
          v23 = objc_opt_class();
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_289;
          v93[3] = &unk_1E8519630;
          v94 = @"trimming";
          v95 = v23;
          if (trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_287 != -1)
          {
            dispatch_once(&trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_287, v93);
          }

          v24 = trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_288;

          if (v24 == 1)
          {
            v25 = v21;
            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming table %@", v22];
            v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            lastPathComponent2 = [v27 lastPathComponent];
            v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection trimAllTablesFromDate:toDate:withTableFilters:]"];
            [PLCoreStorage logMessage:v26 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:673];

            v31 = PLLogCommon(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v106 = v26;
              _os_log_debug_impl(&dword_1D8611000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v9 = 0x1E8518000uLL;
            v21 = v25;
          }
        }

        v81 = [v22 objectForKeyedSubscript:@"name"];
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v32 = [&unk_1F540B8A8 countByEnumeratingWithState:&v89 objects:v104 count:16];
        if (!v32)
        {
          v75 = 0;
LABEL_40:
          array = [MEMORY[0x1E695DF70] array];
          if (filtersCopy)
          {
            v42 = [filtersCopy objectForKeyedSubscript:v81];

            if (v42)
            {
              v43 = array;
              v44 = [filtersCopy objectForKeyedSubscript:v81];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              v46 = [filtersCopy objectForKeyedSubscript:v81];
              if (isKindOfClass)
              {
                array = v43;
                [v43 addObjectsFromArray:v46];
                v20 = v70;
                goto LABEL_46;
              }

              objc_opt_class();
              v47 = objc_opt_isKindOfClass();

              array = v43;
              v20 = v70;
              if (v47)
              {
                v46 = [filtersCopy objectForKeyedSubscript:v81];
                [array addObject:v46];
LABEL_46:
              }
            }
          }

          if (![array count])
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }

          v39 = v81;
          if ([(PLSQLiteConnection *)self tableHasTimestampColumn:v81])
          {
            v72 = v21;
            if (toDateCopy && ([v81 isEqualToString:@"PLApplicationAgent_EventNone_AllApps"] & 1) == 0)
            {
              v49 = MEMORY[0x1E696AEC0];
              [toDateCopy timeIntervalSince1970];
              v51 = [v49 stringWithFormat:@"DELETE FROM '%@' WHERE ID IN (SELECT ID FROM '%@' WHERE timestamp>%f limit %ld)", v81, v81, v50, v18];;
              [(PLSQLiteConnection *)self runTrimQuery:v51];

              v39 = v81;
            }

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v71 = array;
            v80 = array;
            v52 = [v80 countByEnumeratingWithState:&v85 objects:v103 count:16];
            if (v52)
            {
              v53 = v52;
              v54 = *v86;
              do
              {
                v55 = 0;
                do
                {
                  if (*v86 != v54)
                  {
                    objc_enumerationMutation(v80);
                  }

                  v56 = *(*(&v85 + 1) + 8 * v55);
                  v57 = objc_autoreleasePoolPush();
                  if ([*(v9 + 2224) debugEnabled])
                  {
                    v58 = objc_opt_class();
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_309;
                    block[3] = &unk_1E8519630;
                    v83 = @"trimming";
                    v84 = v58;
                    if (trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_307 != -1)
                    {
                      dispatch_once(&trimAllTablesFromDate_toDate_withTableFilters__defaultOnce_307, block);
                    }

                    v59 = trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_308;

                    v60 = v59 == 1;
                    v39 = v81;
                    if (v60)
                    {
                      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming filter %@", v56];
                      v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
                      lastPathComponent3 = [v62 lastPathComponent];
                      v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection trimAllTablesFromDate:toDate:withTableFilters:]"];
                      [PLCoreStorage logMessage:v61 fromFile:lastPathComponent3 fromFunction:v64 fromLineNumber:737];

                      v66 = PLLogCommon(v65);
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v106 = v61;
                        _os_log_debug_impl(&dword_1D8611000, v66, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }

                      dateCopy = v77;
                      self = selfCopy;
                      v9 = 0x1E8518000;
                      v18 = v79;
                      v39 = v81;
                    }
                  }

                  [(PLSQLiteConnection *)self trimTable:v39 fromDate:dateCopy withFilter:v56 withTrimLimit:v18];
                  objc_autoreleasePoolPop(v57);
                  ++v55;
                }

                while (v53 != v55);
                v53 = [v80 countByEnumeratingWithState:&v85 objects:v103 count:16];
              }

              while (v53);
            }

            v20 = v70;
            array = v71;
            v21 = v72;
          }

          goto LABEL_70;
        }

        v33 = v32;
        v34 = v21;
        v35 = 0;
        v36 = *v90;
        while (2)
        {
          v37 = 0;
          v38 = v35;
          do
          {
            if (*v90 != v36)
            {
              objc_enumerationMutation(&unk_1F540B8A8);
            }

            v35 = [objc_opt_class() masterTableForTable:v81 andType:*(*(&v89 + 1) + 8 * v37)];

            if (v35 && [v35 length])
            {
              goto LABEL_33;
            }

            ++v37;
            v38 = v35;
          }

          while (v33 != v37);
          v33 = [&unk_1F540B8A8 countByEnumeratingWithState:&v89 objects:v104 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

        if (!v35)
        {
          v75 = 0;
LABEL_39:
          v18 = v79;
          v21 = v34;
          goto LABEL_40;
        }

LABEL_33:
        v75 = v35;
        if (![v35 length])
        {
          goto LABEL_39;
        }

        v18 = v79;
        v21 = v34;
        if ([(PLSQLiteConnection *)self checkEmptyMasterTable:v35])
        {
          v39 = v81;
          [(PLSQLiteConnection *)self dropTable:v81];
        }

        else
        {
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@' WHERE FK_ID < (SELECT MIN(ID) FROM '%@') OR FK_ID > (SELECT MAX(ID) FROM '%@')", v81, v35, v35];;
          [(PLSQLiteConnection *)self runTrimQuery:v40];

          v39 = v81;
        }

LABEL_70:

        objc_autoreleasePoolPop(context);
        ++v21;
      }

      while (v21 != v20);
      v20 = [obj countByEnumeratingWithState:&v96 objects:v107 count:16];
      if (!v20)
      {
LABEL_72:

        break;
      }
    }
  }
}

BOOL __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled = result;
  return result;
}

BOOL __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_289(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_288 = result;
  return result;
}

BOOL __68__PLSQLiteConnection_trimAllTablesFromDate_toDate_withTableFilters___block_invoke_309(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  trimAllTablesFromDate_toDate_withTableFilters__classDebugEnabled_308 = result;
  return result;
}

- (void)runTrimQuery:(id)query
{
  v63 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  context = objc_autoreleasePoolPush();
  v60 = 0;
  v5 = [PLSQLStatement alloc];
  dbConnection = [(PLSQLiteConnection *)self dbConnection];
  dbSem = [(PLSQLiteConnection *)self dbSem];
  v8 = [(PLSQLStatement *)v5 initWithSQLQuery:queryCopy forDatabase:dbConnection withDBSem:dbSem result:&v60];

  v10 = 0x1E8518000uLL;
  v50 = v8;
  if (!v8)
  {
    v9 = +[PLDefaults debugEnabled];
    if (v9)
    {
      queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: query=%@", queryCopy];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
      [PLCoreStorage logMessage:queryCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:750];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = 0;
      v10 = 0x1E8518000uLL;
    }
  }

  if (v60 == 11)
  {
    v17 = PLLogSQLiteConnection(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection runTrimQuery:];
    }

    [PLUtilities exitWithReason:1001 connection:self];
  }

  if (+[PLDefaults debugEnabled])
  {
    v18 = objc_opt_class();
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __35__PLSQLiteConnection_runTrimQuery___block_invoke;
    v57[3] = &unk_1E8519630;
    v58 = @"trimming";
    v59 = v18;
    if (runTrimQuery__defaultOnce != -1)
    {
      dispatch_once(&runTrimQuery__defaultOnce, v57);
    }

    v19 = runTrimQuery__classDebugEnabled;

    if (v19 == 1)
    {
      queryCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimming query: %@", queryCopy];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
      [PLCoreStorage logMessage:queryCopy2 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:758];

      v25 = PLLogCommon(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v50;
      v10 = 0x1E8518000uLL;
    }
  }

  v49 = queryCopy;
  v26 = 0;
  if (v8)
  {
    do
    {
      v27 = objc_autoreleasePoolPush();
      v28 = [(PLSQLiteConnection *)self performStatement:v8];
      v29 = [v28 objectAtIndexedSubscript:0];
      v30 = [v29 objectForKeyedSubscript:@"changes"];
      intValue = [v30 intValue];

      v26 = (v26 + 1);
      if ([*(v10 + 2224) debugEnabled])
      {
        v32 = objc_opt_class();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __35__PLSQLiteConnection_runTrimQuery___block_invoke_325;
        block[3] = &unk_1E8519630;
        v55 = @"trimming";
        v56 = v32;
        if (runTrimQuery__defaultOnce_323 != -1)
        {
          dispatch_once(&runTrimQuery__defaultOnce_323, block);
        }

        v33 = runTrimQuery__classDebugEnabled_324;

        if (v33 == 1)
        {
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"run %d changes=%d", v26, intValue];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
          lastPathComponent3 = [v35 lastPathComponent];
          v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
          [PLCoreStorage logMessage:v34 fromFile:lastPathComponent3 fromFunction:v37 fromLineNumber:767];

          v39 = PLLogCommon(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v62 = v34;
            _os_log_debug_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v8 = v50;
          v10 = 0x1E8518000;
        }
      }

      objc_autoreleasePoolPop(v27);
    }

    while (intValue);
  }

  if ([*(v10 + 2224) debugEnabled])
  {
    v40 = objc_opt_class();
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __35__PLSQLiteConnection_runTrimQuery___block_invoke_331;
    v51[3] = &unk_1E8519630;
    v52 = @"trimming";
    v53 = v40;
    if (runTrimQuery__defaultOnce_329 != -1)
    {
      dispatch_once(&runTrimQuery__defaultOnce_329, v51);
    }

    v41 = runTrimQuery__classDebugEnabled_330;

    if (v41 == 1)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"runs=%d", v26];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent4 = [v43 lastPathComponent];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection runTrimQuery:]"];
      [PLCoreStorage logMessage:v42 fromFile:lastPathComponent4 fromFunction:v45 fromLineNumber:770];

      v47 = PLLogCommon(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v50;
    }
  }

  objc_autoreleasePoolPop(context);
}

BOOL __35__PLSQLiteConnection_runTrimQuery___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  runTrimQuery__classDebugEnabled = result;
  return result;
}

BOOL __35__PLSQLiteConnection_runTrimQuery___block_invoke_325(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  runTrimQuery__classDebugEnabled_324 = result;
  return result;
}

BOOL __35__PLSQLiteConnection_runTrimQuery___block_invoke_331(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  runTrimQuery__classDebugEnabled_330 = result;
  return result;
}

- (void)trimTable:(id)table fromDate:(id)date withFilter:(id)filter withTrimLimit:(int64_t)limit
{
  tableCopy = table;
  dateCopy = date;
  filterCopy = filter;
  if (!filterCopy || ([MEMORY[0x1E695DFB0] null], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == filterCopy))
  {
    v13 = MEMORY[0x1E696AEC0];
    if (dateCopy)
    {
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v14 = 0;
    }

    [v13 stringWithFormat:@"DELETE FROM '%@' WHERE ID IN (SELECT ID FROM '%@' WHERE (timestamp is NULL OR timestamp<%f) limit %ld);", tableCopy, tableCopy, v14, limit];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@' WHERE ID IN (SELECT ID FROM '%@' WHERE (%@) limit %ld);", tableCopy, tableCopy, filterCopy, limit];
  }
  v15 = ;
  [(PLSQLiteConnection *)self runTrimQuery:v15];
}

- (BOOL)checkEmptyMasterTable:(id)table
{
  tableCopy = table;
  if ([tableCopy rangeOfString:@"PLOLD_"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else if ([(PLSQLiteConnection *)self tableExistsForTableName:tableCopy])
    v6 = {;
    v7 = [(PLSQLiteConnection *)self performQuery:v6];
    if ([v7 count] == 1)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [v8 objectForKeyedSubscript:@"rowCount"];
      v5 = [v9 intValue] == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)masterTableForTable:(id)table andType:(id)type
{
  tableCopy = table;
  v6 = [tableCopy rangeOfString:type];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [objc_opt_class() versionForTable:tableCopy];
    v10 = v9;
    if (v9 && [v9 length])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@", v10];
    }

    else
    {
      v11 = &stru_1F539D228;
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = [tableCopy substringToIndex:v8];
    v7 = [v12 stringWithFormat:@"%@%@", v13, v11];
  }

  return v7;
}

+ (id)versionForTable:(id)table
{
  tableCopy = table;
  if ([tableCopy hasPrefix:@"PLOLD_"])
  {
    v4 = [tableCopy tokenizedByString:@"_"];
    lastObject = [v4 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)removeIDIndexes
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v3 = [PLSQLStatement alloc];
  dbConnection = [(PLSQLiteConnection *)self dbConnection];
  dbSem = [(PLSQLiteConnection *)self dbSem];
  v6 = [(PLSQLStatement *)v3 initWithSQLQuery:@"select name from sqlite_master where type='index' and name like 'Index_PL%_ID';" forDatabase:dbConnection withDBSem:dbSem result:&v21];

  if (!v21)
  {
    v16 = v6;
    perform = [(PLSQLStatement *)v6 perform];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [perform countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(perform);
          }

          v12 = MEMORY[0x1E696AEC0];
          v13 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          v14 = [v12 stringWithFormat:@"DROP INDEX IF EXISTS '%@'", v13];;
          v15 = [(PLSQLiteConnection *)self performQuery:v14];
        }

        v9 = [perform countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    v6 = v16;
  }
}

- (void)removeEmptyOldTables
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name LIKE PLOLD_%% AND name NOT LIKE PLCoreStorage%%"];;
  v4 = [(PLSQLiteConnection *)self performQuery:?];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = [v4 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v38)
  {
    v37 = *v44;
    v36 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v43 + 1) + 8 * v5);
        v7 = *(v3 + 3776);
        v9 = v8 = [v6 objectForKeyedSubscript:@"name"];

        v10 = [(PLSQLiteConnection *)self performQuery:v9];
        if ([v10 count] == 1)
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v11 objectForKeyedSubscript:@"rowCount"];
          intValue = [v12 intValue];

          if (!intValue)
          {
            v14 = [v6 objectForKeyedSubscript:@"name"];
            [(PLSQLiteConnection *)self dropTable:v14];
          }

          if (+[PLDefaults debugEnabled])
          {
            v15 = objc_opt_class();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke;
            block[3] = &unk_1E8519630;
            v41 = @"removeEmptyOldTables";
            v42 = v15;
            if (removeEmptyOldTables_defaultOnce != -1)
            {
              dispatch_once(&removeEmptyOldTables_defaultOnce, block);
            }

            v16 = removeEmptyOldTables_classDebugEnabled;

            if (v16 == 1)
            {
              v17 = *(v3 + 3776);
              v18 = [v6 objectForKeyedSubscript:@"name"];
              v19 = [v10 objectAtIndexedSubscript:0];
              [v19 objectForKeyedSubscript:@"rowCount"];
              v21 = v20 = v3;
              v22 = [v17 stringWithFormat:@"oldTable=%@ rowCount=%@", v18, v21];

              v23 = [*(v20 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
              lastPathComponent = [v23 lastPathComponent];
              v25 = [*(v20 + 3776) stringWithUTF8String:"-[PLSQLiteConnection removeEmptyOldTables]"];
              [PLCoreStorage logMessage:v22 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:864];

              v27 = PLLogCommon(v26);
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
LABEL_20:
                v3 = 0x1E696A000;
                v4 = v36;

                goto LABEL_21;
              }

LABEL_23:
              *buf = 138412290;
              v48 = v22;
              _os_log_debug_impl(&dword_1D8611000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              goto LABEL_20;
            }
          }
        }

        else if (+[PLDefaults debugEnabled])
        {
          v28 = objc_opt_class();
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke_379;
          v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v39[4] = v28;
          if (removeEmptyOldTables_defaultOnce_377 != -1)
          {
            dispatch_once(&removeEmptyOldTables_defaultOnce_377, v39);
          }

          if (removeEmptyOldTables_classDebugEnabled_378 == 1)
          {
            v22 = [*(v3 + 3776) stringWithFormat:@"ERROR! wrong results for countQuery: %@ results=%@", v9, v10];
            [*(v3 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            v30 = v29 = v3;
            lastPathComponent2 = [v30 lastPathComponent];
            v32 = [*(v29 + 3776) stringWithUTF8String:"-[PLSQLiteConnection removeEmptyOldTables]"];
            [PLCoreStorage logMessage:v22 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:866];

            v27 = PLLogCommon(v33);
            if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_20;
            }

            goto LABEL_23;
          }
        }

LABEL_21:

        ++v5;
      }

      while (v38 != v5);
      v34 = [v4 countByEnumeratingWithState:&v43 objects:v49 count:16];
      v38 = v34;
    }

    while (v34);
  }
}

BOOL __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  removeEmptyOldTables_classDebugEnabled = result;
  return result;
}

BOOL __42__PLSQLiteConnection_removeEmptyOldTables__block_invoke_379(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  removeEmptyOldTables_classDebugEnabled_378 = result;
  return result;
}

- (void)dropTable:(id)table
{
  v44 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PLSQLiteConnection_dropTable___block_invoke;
    block[3] = &unk_1E8519630;
    v39 = @"dropTable";
    v40 = v5;
    if (dropTable__defaultOnce != -1)
    {
      dispatch_once(&dropTable__defaultOnce, block);
    }

    v6 = dropTable__classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %lu", tableCopy, objc_msgSend(tableCopy, "rangeOfString:", @"%"];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection dropTable:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:875];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([tableCopy rangeOfString:@"%"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = tableCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  }

  else
  {
    v29 = tableCopy;
    tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name LIKE %@ AND name NOT LIKE PLCoreStorage%%", tableCopy];;
    v15 = [(PLSQLiteConnection *)self performQuery:tableCopy];
    v13 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          [v13 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v18);
    }

    tableCopy = v29;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = v13;
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE '%@'", *(*(&v30 + 1) + 8 * j)];;
        v28 = [(PLSQLiteConnection *)self performQuery:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v24);
  }
}

BOOL __32__PLSQLiteConnection_dropTable___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  dropTable__classDebugEnabled = result;
  return result;
}

- (void)dropTables:(id)tables
{
  v14 = *MEMORY[0x1E69E9840];
  tablesCopy = tables;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [tablesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(tablesCopy);
        }

        [(PLSQLiteConnection *)self dropTable:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [tablesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)hashEntryKeyKeys:(id)keys
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke;
  v3[3] = &unk_1E851B070;
  v3[4] = self;
  [keys enumerateKeysAndObjectsUsingBlock:v3];
}

void __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"UPDATE '%@' SET ", a2];
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        [v6 appendString:{@", "}];
      }

      v8 = [v5 objectAtIndexedSubscript:v7];
      [v6 appendFormat:@"%@=''", v8];

      ++v7;
    }

    while ([v5 count] > v7);
  }

  [v6 appendString:@";"];
  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke_2;
    block[3] = &unk_1E8519630;
    v19 = @"HashEntryKeys";
    v20 = v9;
    if (kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_defaultOnce, block);
    }

    v10 = kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_classDebugEnabled;

    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hashUpdateQuery=%@", v6];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection hashEntryKeyKeys:]_block_invoke"];
      [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:912];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v17 = [*(a1 + 32) performQuery:v6];
}

BOOL __39__PLSQLiteConnection_hashEntryKeyKeys___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLCacheSizeForBackupDatabaseConnection_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (id)performStatement:(id)statement
{
  statementCopy = statement;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = objc_opt_new();
  workQueue = [(PLSQLiteConnection *)self workQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PLSQLiteConnection_performStatement___block_invoke;
  v9[3] = &unk_1E85194C8;
  v12 = &v13;
  v6 = statementCopy;
  v10 = v6;
  selfCopy = self;
  [PLUtilities dispatchSyncIfNotCallerQueue:workQueue withBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __39__PLSQLiteConnection_performStatement___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 32) perform];
  [v3 addObjectsFromArray:v4];

  if ([*(a1 + 32) isInsert])
  {
    v5 = [*(a1 + 40) dbSem];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

    v15 = @"insert_rowid";
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_last_insert_rowid(objc_msgSend(*(a1 + 40), "dbConnection"))}];
    v16[0] = v6;
    v7 = MEMORY[0x1E695DF20];
    v8 = v16;
    v9 = &v15;
LABEL_5:
    v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];

    v12 = [*(a1 + 40) dbSem];
    dispatch_semaphore_signal(v12);

    [*(*(*(a1 + 48) + 8) + 40) addObject:v11];
    goto LABEL_6;
  }

  if ([*(a1 + 32) isDelete])
  {
    v10 = [*(a1 + 40) dbSem];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

    v13 = @"changes";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_changes(objc_msgSend(*(a1 + 40), "dbConnection"))}];
    v14 = v6;
    v7 = MEMORY[0x1E695DF20];
    v8 = &v14;
    v9 = &v13;
    goto LABEL_5;
  }

LABEL_6:
  [*(a1 + 32) reset];
  objc_autoreleasePoolPop(v2);
}

- (void)displaySchema:(id)schema
{
  schemaCopy = schema;
  v5 = objc_opt_new();
  [v5 appendFormat:@"pragma table_info('%@')", schemaCopy];

  v6 = [(PLSQLiteConnection *)self performQuery:v5];
  v7 = +[PLDefaults debugEnabled];
  if (v6)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Table info: %@", v6];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection displaySchema:]"];
      [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:990];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fail no query table info query=%@", v5];;
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
    lastPathComponent2 = [v14 lastPathComponent];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection displaySchema:]"];
    [PLCoreStorage logMessage:v8 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:989];

    v13 = PLLogCommon(v17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

LABEL_8:
  }
}

- (id)performQuery:(id)query
{
  queryCopy = query;
  v30 = 0;
  v5 = [PLSQLStatement alloc];
  dbConnection = [(PLSQLiteConnection *)self dbConnection];
  dbSem = [(PLSQLiteConnection *)self dbSem];
  v8 = [(PLSQLStatement *)v5 initWithSQLQuery:queryCopy forDatabase:dbConnection withDBSem:dbSem result:&v30];

  if (!v8)
  {
    v9 = +[PLDefaults debugEnabled];
    if (v9)
    {
      queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: query=%@", queryCopy];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection performQuery:]"];
      [PLCoreStorage logMessage:queryCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:997];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (v30 == 11)
  {
    v16 = PLLogSQLiteConnection(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection performQuery:];
    }

    [PLUtilities exitWithReason:1001 connection:self];
  }

  v17 = [(PLSQLiteConnection *)self performStatement:v8];
  if (+[PLDefaults debugEnabled])
  {
    v18 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PLSQLiteConnection_performQuery___block_invoke;
    block[3] = &unk_1E8519630;
    v28 = @"query";
    v29 = v18;
    if (performQuery__defaultOnce != -1)
    {
      dispatch_once(&performQuery__defaultOnce, block);
    }

    v19 = performQuery__classDebugEnabled;

    if (v19 == 1)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"query=%@\nresult=%@", queryCopy, v17];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection performQuery:]"];
      [PLCoreStorage logMessage:v20 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:1007];

      v25 = PLLogCommon(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return v17;
}

BOOL __35__PLSQLiteConnection_performQuery___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  performQuery__classDebugEnabled = result;
  return result;
}

- (id)performQuery:(id)query returnValue:(int *)value returnResult:(BOOL)result
{
  v23 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  if (result)
  {
    v9 = [(PLSQLiteConnection *)self performQuery:queryCopy];
  }

  else
  {
    errmsg = 0;
    dbSem = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

    v11 = sqlite3_exec(self->_dbConnection, [queryCopy UTF8String], 0, 0, &errmsg);
    v12 = v11;
    if (value)
    {
      *value = v11;
    }

    if (v11)
    {
      v13 = PLLogCommon(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = queryCopy;
        v19 = 1024;
        v20 = v12;
        v21 = 2080;
        v22 = errmsg;
        _os_log_error_impl(&dword_1D8611000, v13, OS_LOG_TYPE_ERROR, "Failed to execute query %@ - %d and %s", buf, 0x1Cu);
      }

      sqlite3_free(errmsg);
    }

    dbSem2 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(dbSem2);

    v9 = 0;
  }

  return v9;
}

- (BOOL)tableExistsForTableName:(id)name
{
  v3 = [(PLSQLiteConnection *)self tableInfo:name];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)tableInfo:(id)info
{
  info = [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma 'main'.table_info('%@')", info];
  v5 = [(PLSQLiteConnection *)self performQuery:info];

  return v5;
}

- (void)setSchemaVersion:(double)version forTableName:(id)name
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  nameCopy = [v6 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", nameCopy];
  v11 = [(PLSQLiteConnection *)self performQuery:nameCopy];

  if ([v11 count])
  {
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO %@ ('%@', '%@') VALUES ('%@', '%f')", @"PLCoreStorage_schemaVersions", @"tableName", @"schemaVersion", nameCopy, *&version];
  }
  v9 = ;

  v10 = [(PLSQLiteConnection *)self performQuery:v9];
}

- (double)schemaVersionForTable:(id)table
{
  table = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", table];
  v5 = [(PLSQLiteConnection *)self performQuery:table];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKey:@"schemaVersion"];
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)setVersionHash:(id)hash forTableName:(id)name
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  hashCopy = hash;
  nameCopy = [v6 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", nameCopy];
  v12 = [(PLSQLiteConnection *)self performQuery:nameCopy];

  if ([v12 count])
  {
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO %@ ('%@', '%@') VALUES ('%@', '%@')", @"PLCoreStorage_schemaVersions", @"tableName", @"schemaVersion", nameCopy, hashCopy];
  }
  v10 = ;

  v11 = [(PLSQLiteConnection *)self performQuery:v10];
}

- (id)versionHashForTable:(id)table
{
  table = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=%@", @"schemaVersion", @"PLCoreStorage_schemaVersions", @"tableName", table];
  v5 = [(PLSQLiteConnection *)self performQuery:table];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKey:@"schemaVersion"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createTableName:(id)name withColumns:(id)columns
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  columnsCopy = columns;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLSQLiteConnection_createTableName_withColumns___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (createTableName_withColumns__defaultOnce != -1)
    {
      dispatch_once(&createTableName_withColumns__defaultOnce, block);
    }

    if (createTableName_withColumns__classDebugEnabled == 1)
    {
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating table: %@", nameCopy];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createTableName:withColumns:]"];
      [PLCoreStorage logMessage:nameCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1094];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = objc_opt_new();
  v33 = nameCopy;
  objc_msgSend(v15, "appendFormat:", @"CREATE TABLE IF NOT EXISTS '%@' ("), nameCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = columnsCopy;
  v16 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 1;
    v19 = *v39;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        if ((v18 & 1) == 0)
        {
          [v15 appendString:{@", "}];
        }

        v22 = [v21 objectForKey:@"column-name"];
        v23 = [v21 objectForKey:@"type"];
        [v15 appendFormat:@"'%@' %@", v22, v23];

        v18 = 0;
      }

      v17 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      v18 = 0;
    }

    while (v17);
  }

  [v15 appendString:@";"]);
  if (+[PLDefaults debugEnabled])
  {
    v24 = objc_opt_class();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __50__PLSQLiteConnection_createTableName_withColumns___block_invoke_474;
    v35[3] = &unk_1E8519630;
    v36 = @"sqlCreate";
    v37 = v24;
    if (createTableName_withColumns__defaultOnce_472 != -1)
    {
      dispatch_once(&createTableName_withColumns__defaultOnce_472, v35);
    }

    v25 = createTableName_withColumns__classDebugEnabled_473;

    if (v25 == 1)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlCreate=%@", v15];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent2 = [v27 lastPathComponent];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createTableName:withColumns:]"];
      [PLCoreStorage logMessage:v26 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:1105];

      v31 = PLLogCommon(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v32 = [(PLSQLiteConnection *)self performQuery:v15];
}

BOOL __50__PLSQLiteConnection_createTableName_withColumns___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  createTableName_withColumns__classDebugEnabled = result;
  return result;
}

BOOL __50__PLSQLiteConnection_createTableName_withColumns___block_invoke_474(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  createTableName_withColumns__classDebugEnabled_473 = result;
  return result;
}

- (void)createIndexOnTable:(id)table forColumn:(id)column
{
  tableCopy = table;
  columnCopy = column;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PLSQLiteConnection_createIndexOnTable_forColumn___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (createIndexOnTable_forColumn__defaultOnce != -1)
    {
      dispatch_once(&createIndexOnTable_forColumn__defaultOnce, block);
    }

    if (createIndexOnTable_forColumn__classDebugEnabled == 1)
    {
      columnCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating Index On: %@.%@", tableCopy, columnCopy];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createIndexOnTable:forColumn:]"];
      [PLCoreStorage logMessage:columnCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1110];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  columnCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE INDEX IF NOT EXISTS Index_%@_%@ ON %@ (%@", tableCopy, columnCopy, tableCopy, columnCopy];
  v16 = [(PLSQLiteConnection *)self performQuery:columnCopy2];
}

BOOL __51__PLSQLiteConnection_createIndexOnTable_forColumn___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  createIndexOnTable_forColumn__classDebugEnabled = result;
  return result;
}

- (void)createCompositeIndexOnTable:(id)table forColumns:(id)columns
{
  v33 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  columnsCopy = columns;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PLSQLiteConnection_createCompositeIndexOnTable_forColumns___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (createCompositeIndexOnTable_forColumns__defaultOnce != -1)
    {
      dispatch_once(&createCompositeIndexOnTable_forColumns__defaultOnce, block);
    }

    if (createCompositeIndexOnTable_forColumns__classDebugEnabled == 1)
    {
      columnsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Creating Index On: %@.%@", tableCopy, columnsCopy];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection createCompositeIndexOnTable:forColumns:]"];
      [PLCoreStorage logMessage:columnsCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1117];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  tableCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"Index_%@_", tableCopy];
  v16 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = columnsCopy;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        [tableCopy appendString:v22];
        [v16 appendFormat:@", %@", v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v19);
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = [v16 substringFromIndex:1];
  v25 = [v23 stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", tableCopy, tableCopy, v24];;

  v26 = [(PLSQLiteConnection *)self performQuery:v25];
}

BOOL __61__PLSQLiteConnection_createCompositeIndexOnTable_forColumns___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  createCompositeIndexOnTable_forColumns__classDebugEnabled = result;
  return result;
}

BOOL __38__PLSQLiteConnection_beginTransaction__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  beginTransaction_classDebugEnabled = result;
  return result;
}

BOOL __36__PLSQLiteConnection_endTransaction__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  endTransaction_classDebugEnabled = result;
  return result;
}

- (void)buildColumnInsert:(id *)insert andValueInsert:(id *)valueInsert forEntry:(id)entry
{
  v37 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  isPPSEnabled = [entryCopy isPPSEnabled];
  definedKeys = [entryCopy definedKeys];
  v7 = [definedKeys mutableCopy];
  v31 = isPPSEnabled;
  if (isPPSEnabled)
  {
    arrayKeys = [entryCopy arrayKeys];
    [v7 addObjectsFromArray:arrayKeys];

    dynamicKeys = [entryCopy dynamicKeys];
    [v7 addObjectsFromArray:dynamicKeys];
  }

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([entryCopy entryID] >= 1)
  {
    [v10 appendString:{@"ID, "}];
    [v11 appendString:{@"?, "}];
  }

  [v10 appendString:@"timestamp"];
  [v11 appendString:@"?"];
  entryDefinition = [entryCopy entryDefinition];
  v13 = [PLEntryDefinition isAggregateForEntryDefinition:entryDefinition];

  if (v13)
  {
    [v10 appendString:{@", timeInterval"}];
    [v11 appendString:{@", ?"}];
  }

  entryDefinition2 = [entryCopy entryDefinition];
  v15 = [PLEntryDefinition overridesEntryDateForEntryDefinition:entryDefinition2];

  if (v15)
  {
    [v10 appendString:{@", timestampLogged"}];
    [v11 appendString:{@", ?"}];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v29 = *v33;
    v30 = entryCopy;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        if (([entryCopy formaterForKey:v19] == 0) | v31 & 1 && objc_msgSend(entryCopy, "staticArraySizeForKey:", v19) >= 1)
        {
          v20 = [entryCopy staticArraySizeForKey:v19];
          if (v20 >= 1)
          {
            v21 = v20;
            v22 = 0;
            do
            {
              if ([v10 length])
              {
                [v10 appendString:{@", "}];
              }

              if ([v11 length])
              {
                [v11 appendString:{@", "}];
              }

              [v10 appendFormat:@"%@_%d", v19, v22];
              [v11 appendFormat:@"?"];
              v22 = (v22 + 1);
            }

            while (v21 != v22);
          }
        }

        else if ([definedKeys containsObject:v19])
        {
          if ([v10 length])
          {
            [v10 appendString:{@", "}];
          }

          if ([v11 length])
          {
            [v11 appendString:{@", "}];
          }

          [v10 appendFormat:@"%@", v19];
          [v11 appendFormat:@"?"];
        }

        entryCopy = v30;
      }

      v17 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  v23 = v10;
  *insert = v10;
  v24 = v11;
  *valueInsert = v11;
}

- (int)bindEntry:(id)entry toPreparedStatement:(id)statement atBindPosition:(int)position
{
  v5 = *&position;
  v91 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  statementCopy = statement;
  isPPSEnabled = [entryCopy isPPSEnabled];
  definedKeys = [entryCopy definedKeys];
  v11 = [definedKeys mutableCopy];
  v85 = isPPSEnabled;
  if (isPPSEnabled)
  {
    arrayKeys = [entryCopy arrayKeys];
    [v11 addObjectsFromArray:arrayKeys];

    dynamicKeys = [entryCopy dynamicKeys];
    [v11 addObjectsFromArray:dynamicKeys];
  }

  if ([entryCopy entryID] >= 1)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(entryCopy, "entryID")}];
    [statementCopy bindValue:v14 withFormater:5 atPosition:v5];

    v5 = (v5 + 1);
  }

  entryDate = [entryCopy entryDate];
  [statementCopy bindValue:entryDate withFormater:2 atPosition:v5];

  v16 = (v5 + 1);
  entryDefinition = [entryCopy entryDefinition];
  LODWORD(entryDate) = [PLEntryDefinition isAggregateForEntryDefinition:entryDefinition];

  if (entryDate)
  {
    v18 = [entryCopy objectForKeyedSubscript:@"timeInterval"];
    [statementCopy bindValue:v18 withFormater:6 atPosition:(v5 + 1)];

    v16 = (v5 + 2);
  }

  entryDefinition2 = [entryCopy entryDefinition];
  v20 = [PLEntryDefinition overridesEntryDateForEntryDefinition:entryDefinition2];

  if (v20)
  {
    v21 = [entryCopy objectForKeyedSubscript:@"timestampLogged"];
    [statementCopy bindValue:v21 withFormater:2 atPosition:v16];

    v22 = (v16 + 1);
  }

  else
  {
    v22 = v16;
  }

  if (![v11 count])
  {
    goto LABEL_67;
  }

  v23 = 0;
  v83 = v11;
  v84 = entryCopy;
  v86 = statementCopy;
  v81 = definedKeys;
  do
  {
    v24 = [v11 objectAtIndexedSubscript:v23];
    v25 = [entryCopy objectForKeyedSubscript:v24];

    v26 = [v11 objectAtIndexedSubscript:v23];
    shortValue = [entryCopy formaterForKey:v26];

    entryKey = [entryCopy entryKey];
    v28 = [v11 objectAtIndexedSubscript:v23];
    v29 = [PLUtilities logModeForEntryKey:entryKey withKey:v28 andValue:v25];

    if (v29 <= 1u)
    {
      if (v29)
      {
        if (v29 != 1)
        {
          goto LABEL_66;
        }

        if (+[PLDefaults debugEnabled])
        {
          v32 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __67__PLSQLiteConnection_bindEntry_toPreparedStatement_atBindPosition___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v32;
          if (bindEntry_toPreparedStatement_atBindPosition__defaultOnce != -1)
          {
            dispatch_once(&bindEntry_toPreparedStatement_atBindPosition__defaultOnce, block);
          }

          if (bindEntry_toPreparedStatement_atBindPosition__classDebugEnabled == 1)
          {
            v33 = v22;
            v34 = MEMORY[0x1E696AEC0];
            entryKey2 = [entryCopy entryKey];
            v36 = [v11 objectAtIndexedSubscript:v23];
            v37 = [v34 stringWithFormat:@"ALLOWLIST DENIED: entry = %@ key = %@ value = %@ withFormatter = %hd", entryKey2, v36, v25, shortValue];

            v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            lastPathComponent = [v38 lastPathComponent];
            v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection bindEntry:toPreparedStatement:atBindPosition:]"];
            [PLCoreStorage logMessage:v37 fromFile:lastPathComponent fromFunction:v40 fromLineNumber:1309];

            v42 = PLLogCommon(v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v90 = v37;
              _os_log_debug_impl(&dword_1D8611000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            entryCopy = v84;
            statementCopy = v86;
            LODWORD(v22) = v33;
          }
        }

        if (shortValue)
        {
          if (!v85)
          {
            goto LABEL_66;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        LODWORD(v43) = v22;
        v44 = [v11 objectAtIndexedSubscript:v23];
        v45 = [entryCopy staticArraySizeForKey:v44];

        if (v45 >= 1)
        {
          v22 = [v11 objectAtIndexedSubscript:v23];
          v46 = v43 + [entryCopy staticArraySizeForKey:v22] - 1;

          LODWORD(v22) = v46;
          statementCopy = v86;
          goto LABEL_66;
        }

LABEL_56:
        statementCopy = v86;
        LODWORD(v22) = v43;
        goto LABEL_66;
      }
    }

    else
    {
      if (v29 == 4)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v25];
        v31 = [PLUtilities hashBundleID:v30];
LABEL_32:
        lastPathComponent2 = v31;

        v25 = v30;
LABEL_33:

        v25 = lastPathComponent2;
        goto LABEL_34;
      }

      if (v29 != 3)
      {
        if (v29 != 2)
        {
          goto LABEL_66;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v25];
        v31 = [PLUtilities hashString:v30];
        goto LABEL_32;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastPathComponent2 = [v25 lastPathComponent];
        goto LABEL_33;
      }
    }

LABEL_34:
    if (shortValue && (!v85 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)) || ([v11 objectAtIndexedSubscript:v23], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(entryCopy, "staticArraySizeForKey:", v48), v48, v49 < 1))
    {
      v43 = v22;
      v67 = [v11 objectAtIndexedSubscript:v23];
      v68 = [definedKeys containsObject:v67];

      if (v68)
      {
        statementCopy = v86;
        LODWORD(v22) = v43;
        [v86 bindValue:v25 withFormater:shortValue atPosition:v43];
        goto LABEL_66;
      }

      goto LABEL_56;
    }

    v50 = [v11 objectAtIndexedSubscript:v23];
    v51 = [entryCopy staticArraySizeForKey:v50];

    if ((v85 & 1) == 0)
    {
      if (![PLValueUtilties isFormater:shortValue validForObject:v25])
      {
        if (+[PLDefaults debugEnabled])
        {
          v69 = v22;
          v70 = MEMORY[0x1E696AEC0];
          v71 = objc_opt_class();
          v72 = [v25 description];
          v73 = v69;
          v74 = [v70 stringWithFormat:@"*** formater does not match object type! (Static Array) ***\nposition=%d formater=%d class=%@ value=%@\n", v69, shortValue, v71, v72];

          v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
          lastPathComponent3 = [v75 lastPathComponent];
          v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection bindEntry:toPreparedStatement:atBindPosition:]"];
          [PLCoreStorage logMessage:v74 fromFile:lastPathComponent3 fromFunction:v77 fromLineNumber:1298];

          v79 = PLLogCommon(v78);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v90 = v74;
            _os_log_debug_impl(&dword_1D8611000, v79, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          entryCopy = v84;
          statementCopy = v86;
          LODWORD(v22) = v73;
        }

        LODWORD(v22) = v22 + v51 - 1;
        goto LABEL_65;
      }

      v52 = [v83 objectAtIndexedSubscript:v23];
      v53 = [entryCopy definitionForKey:v52];
      v54 = [v53 objectForKeyedSubscript:@"TypeArrayValue"];
      shortValue = [v54 shortValue];
    }

    if (v51 < 1)
    {
      goto LABEL_59;
    }

    v55 = 0;
    v56 = v22;
    v57 = 0;
    v82 = v56;
    v58 = v56;
    do
    {
      if ([v25 count] > v55)
      {
        v59 = [v25 objectAtIndexedSubscript:v55];
        [statementCopy bindValue:v59 withFormater:shortValue atPosition:v58 + v55];
LABEL_45:

        goto LABEL_52;
      }

      if ((v57 & 1) == 0 && +[PLDefaults debugEnabled])
      {
        v60 = MEMORY[0x1E696AEC0];
        entryKey3 = [entryCopy entryKey];
        v59 = [v60 stringWithFormat:@"Provided array is too short! entryKey=%@ expectedSize=%d actualSize=%lu bindPosition=%d", entryKey3, v51, objc_msgSend(v25, "count"), v58 + v55];

        v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        lastPathComponent4 = [v62 lastPathComponent];
        v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection bindEntry:toPreparedStatement:atBindPosition:]"];
        [PLCoreStorage logMessage:v59 fromFile:lastPathComponent4 fromFunction:v64 fromLineNumber:1289];

        v66 = PLLogCommon(v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v90 = v59;
          _os_log_debug_impl(&dword_1D8611000, v66, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v57 = 1;
        entryCopy = v84;
        statementCopy = v86;
        goto LABEL_45;
      }

      v57 = 1;
LABEL_52:
      ++v55;
    }

    while (v51 != v55);
    definedKeys = v81;
    LODWORD(v22) = v82 + v55;
LABEL_59:
    LODWORD(v22) = v22 - 1;
LABEL_65:
    v11 = v83;
LABEL_66:

    ++v23;
    v22 = (v22 + 1);
  }

  while ([v11 count] > v23);
LABEL_67:

  return v22;
}

BOOL __67__PLSQLiteConnection_bindEntry_toPreparedStatement_atBindPosition___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  bindEntry_toPreparedStatement_atBindPosition__classDebugEnabled = result;
  return result;
}

- (int64_t)writeEntry:(id)entry
{
  entryCopy = entry;
  entryKey = [entryCopy entryKey];
  v6 = [PLEntryDefinition cacheSQLPrepareStatementForEntryKey:entryKey];

  if (!v6 || (-[PLSQLiteConnection preparedStatements](self, "preparedStatements"), v7 = objc_claimAutoreleasedReturnValue(), objc_sync_enter(v7), -[PLSQLiteConnection preparedStatements](self, "preparedStatements"), v8 = objc_claimAutoreleasedReturnValue(), [entryCopy entryKey], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, objc_sync_exit(v7), v7, !v10))
  {
    v11 = objc_opt_new();
    entryKey2 = [entryCopy entryKey];
    [v11 appendFormat:@"INSERT INTO %@ ", entryKey2];

    v67 = 0;
    v68[0] = 0;
    [(PLSQLiteConnection *)self buildColumnInsert:v68 andValueInsert:&v67 forEntry:entryCopy];
    v13 = v68[0];
    v14 = v67;
    [v11 appendFormat:@" (%@) VALUES (%@);", v13, v14];
    v66 = 0;
    v15 = [PLSQLStatement alloc];
    dbConnection = [(PLSQLiteConnection *)self dbConnection];
    dbSem = [(PLSQLiteConnection *)self dbSem];
    v10 = [(PLSQLStatement *)v15 initWithSQLQuery:v11 forDatabase:dbConnection withDBSem:dbSem result:&v66];

    if (!v10)
    {
      v18 = +[PLDefaults debugEnabled];
      if (v18)
      {
        v59 = v13;
        entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", entryCopy];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        lastPathComponent = [v20 lastPathComponent];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeEntry:]"];
        [PLCoreStorage logMessage:entryCopy fromFile:lastPathComponent fromFunction:v22 fromLineNumber:1347];

        v24 = PLLogCommon(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v25 = MEMORY[0x1E696AEC0];
        entryKey3 = [entryCopy entryKey];
        v27 = [v25 stringWithFormat:@"%@", entryKey3];
        [(PLSQLiteConnection *)self displaySchema:v27];

        v13 = v59;
      }
    }

    if (v66 == 11)
    {
      v28 = PLLogSQLiteConnection(v18);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection writeEntry:];
      }

      [PLUtilities exitWithReason:1001 connection:self];
    }

    if (v10 != 0 && v6)
    {
      preparedStatements = [(PLSQLiteConnection *)self preparedStatements];
      objc_sync_enter(preparedStatements);
      preparedStatements2 = [(PLSQLiteConnection *)self preparedStatements];
      entryKey4 = [entryCopy entryKey];
      [preparedStatements2 setObject:v10 forKeyedSubscript:entryKey4];

      objc_sync_exit(preparedStatements);
    }
  }

  [(PLSQLiteConnection *)self bindEntry:entryCopy toPreparedStatement:v10 atBindPosition:1];
  v32 = [(PLSQLiteConnection *)self performStatement:v10];
  if (+[PLDefaults debugEnabled])
  {
    v33 = MEMORY[0x1E696AEC0];
    entryKey5 = [entryCopy entryKey];
    v35 = [v33 stringWithFormat:@"writeEntry_%@", entryKey5];

    v36 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__PLSQLiteConnection_writeEntry___block_invoke;
    block[3] = &unk_1E8519630;
    v64 = @"writeEntry";
    v65 = v36;
    if (writeEntry__defaultOnce_0 != -1)
    {
      dispatch_once(&writeEntry__defaultOnce_0, block);
    }

    v37 = writeEntry__classDebugEnabled_0;

    if (v37)
    {
      goto LABEL_22;
    }

    v38 = objc_opt_class();
    v39 = v35;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __33__PLSQLiteConnection_writeEntry___block_invoke_2;
    v60[3] = &unk_1E8519630;
    v61 = v39;
    v62 = v38;
    if (writeEntry__defaultOnce_570 != -1)
    {
      dispatch_once(&writeEntry__defaultOnce_570, v60);
    }

    v40 = writeEntry__classDebugEnabled_571;

    if (v40 == 1)
    {
LABEL_22:
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"insert_rowid=%@\nentry=%@\nstatement=%@", v32, entryCopy, v10];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent2 = [v42 lastPathComponent];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeEntry:]"];
      [PLCoreStorage logMessage:v41 fromFile:lastPathComponent2 fromFunction:v44 fromLineNumber:1370];

      v46 = PLLogCommon(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([v32 count])
  {
    v47 = [v32 objectAtIndexedSubscript:0];
    v48 = [v47 objectForKeyedSubscript:@"insert_rowid"];
    longLongValue = [v48 longLongValue];

    if (longLongValue != [entryCopy entryID] && objc_msgSend(entryCopy, "entryID") != 0x8000000000000000)
    {
      v50 = MEMORY[0x1E696AEC0];
      entryKey6 = [entryCopy entryKey];
      entryCopy2 = [v50 stringWithFormat:@"future mismatch! entryKey=%@ entryID=%lld insertID=%lld entry_addr=%p entry=%@", entryKey6, objc_msgSend(entryCopy, "entryID"), longLongValue, entryCopy, entryCopy];

      v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent3 = [v53 lastPathComponent];
      v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeEntry:]"];
      [PLCoreStorage logMessage:entryCopy2 fromFile:lastPathComponent3 fromFunction:v55 fromLineNumber:1376];

      v57 = PLLogCommon(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    [entryCopy setEntryID:longLongValue];
    if ([entryCopy hasDynamicKeys])
    {
      [(PLSQLiteConnection *)self writeDynamicEntries:entryCopy];
    }

    if ([entryCopy hasArrayKeys])
    {
      [(PLSQLiteConnection *)self writeArrayEntries:entryCopy];
    }

    [entryCopy setExistsInDB:1];
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

BOOL __33__PLSQLiteConnection_writeEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeEntry__classDebugEnabled_0 = result;
  return result;
}

BOOL __33__PLSQLiteConnection_writeEntry___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeEntry__classDebugEnabled_571 = result;
  return result;
}

- (void)writeDynamicEntriesToPPS:(id)s
{
  v78 = *MEMORY[0x1E69E9840];
  sCopy = s;
  entryKey = [sCopy entryKey];
  v6 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:entryKey];

  dynamicKeys = [sCopy dynamicKeys];
  v8 = [dynamicKeys sortedArrayUsingSelector:sel_compare_];

  v69 = v8;
  if ([v8 count])
  {
    v9 = MEMORY[0x1E696AEC0];
    entryKey2 = [sCopy entryKey];
    v11 = [v9 stringWithFormat:@"%@_Dynamic", entryKey2];

    v66 = v11;
    v65 = [(PLSQLiteConnection *)self sortedSqlFormatedColumnNamesForTableInsert:v11];
    v12 = objc_opt_new();
    allKeys = [v6 allKeys];
    v14 = [allKeys count];

    if (v14)
    {
      v15 = 0;
      do
      {
        if (v15)
        {
          [v12 appendString:{@", "}];
        }

        [v12 appendString:@"?"];
        ++v15;
        allKeys2 = [v6 allKeys];
        v17 = v12;
        v18 = [allKeys2 count];

        v19 = v18 > v15;
        v12 = v17;
      }

      while (v19);
    }

    [v12 appendString:@""]);
    v20 = objc_opt_new();
    objc_msgSend(v20, "appendFormat:", @"INSERT INTO %@ ('FK_ID',"), v66;
    [v20 appendString:v65];
    [v20 appendString:@" VALUES "];
    v21 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"(?, %@"), v12;
    v22 = [sCopy objectForKeyedSubscript:@"__PPSKVPairs__"];
    v23 = PLLogCommon(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection writeDynamicEntriesToPPS:];
    }

    v25 = PLLogCommon(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection writeDynamicEntriesToPPS:v22];
    }

    if ([v22 count])
    {
      v26 = 0;
      do
      {
        if (v26)
        {
          [v20 appendString:{@", "}];
        }

        [v20 appendString:v21];
        ++v26;
      }

      while ([v22 count] > v26);
    }

    v68 = v22;
    v27 = PLLogCommon([v20 appendString:@""]);;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection writeDynamicEntriesToPPS:];
    }

    v76 = 0;
    v28 = [PLSQLStatement alloc];
    dbConnection = [(PLSQLiteConnection *)self dbConnection];
    dbSem = [(PLSQLiteConnection *)self dbSem];
    v31 = [(PLSQLStatement *)v28 initWithSQLQuery:v20 forDatabase:dbConnection withDBSem:dbSem result:&v76];

    v71 = v31;
    if (v31)
    {
      v33 = v68;
      if (v76 == 11)
      {
        v34 = PLLogSQLiteConnection(v32);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection writeDynamicEntriesToPPS:];
        }

        [PLUtilities exitWithReason:1001 connection:self];
      }

      v62 = v21;
      v63 = v12;
      selfCopy = self;
      [(PLSQLiteConnection *)self beginTransaction];
      if ([v68 count])
      {
        v35 = 0;
        v36 = 1;
        v67 = sCopy;
        do
        {
          v37 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(sCopy, "entryID")}];
          [v71 bindValue:v37 withFormater:5 atPosition:v36];

          v36 = (v36 + 1);
          v70 = v35;
          v38 = [v33 objectAtIndexedSubscript:v35];
          v39 = v69;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v40 = [v39 countByEnumeratingWithState:&v72 objects:v77 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v73;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                v44 = v6;
                if (*v73 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v45 = *(*(&v72 + 1) + 8 * i);
                v46 = [v38 objectForKeyedSubscript:v45];
                v47 = v45;
                v6 = v44;
                [v71 bindValue:v46 withFormater:+[PLEntry dataFormatForMetric:auxiliaryMetrics:](PLEntry atPosition:{"dataFormatForMetric:auxiliaryMetrics:", v47, v44), v36}];
                v36 = (v36 + 1);
              }

              v41 = [v39 countByEnumeratingWithState:&v72 objects:v77 count:16];
            }

            while (v41);
          }

          v35 = v70 + 1;
          v33 = v68;
          sCopy = v67;
        }

        while ([v68 count] > (v70 + 1));
      }

      v48 = [(PLSQLiteConnection *)selfCopy performStatement:v71];
      entryKey4 = v48;
      if ((!v48 || ![v48 count]) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
      {
        v50 = v6;
        v51 = MEMORY[0x1E696AEC0];
        entryKey3 = [sCopy entryKey];
        v53 = [v51 stringWithFormat:@"Empty insert ID: Error while inserting dynamic entry for %@", entryKey3];

        v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        lastPathComponent = [v54 lastPathComponent];
        v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntriesToPPS:]"];
        [PLCoreStorage logMessage:v53 fromFile:lastPathComponent fromFunction:v56 fromLineNumber:1473];

        v58 = PLLogCommon(v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v6 = v50;
        v33 = v68;
      }

      [(PLSQLiteConnection *)selfCopy endTransaction];
      v12 = v63;
      v21 = v62;
    }

    else
    {
      v59 = PLLogCommon(v32);
      v33 = v68;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection writeDynamicEntriesToPPS:];
      }

      v60 = MEMORY[0x1E696AEC0];
      entryKey4 = [sCopy entryKey];
      v61 = [v60 stringWithFormat:@"%@_%@", entryKey4, @"Dynamic"];
      [(PLSQLiteConnection *)self displaySchema:v61];
    }
  }
}

- (void)writeDynamicEntries:(id)entries
{
  v122 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  if (![entriesCopy isPPSEnabled])
  {
    selfCopy = self;
    v102 = entriesCopy;
    entryKey = [entriesCopy entryKey];
    v6 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:entryKey];

    dynamicKeys = [v102 dynamicKeys];
    if (![dynamicKeys count])
    {

LABEL_76:
      entriesCopy = v102;
      goto LABEL_77;
    }

    preparedDynamicStatements = [(PLSQLiteConnection *)self preparedDynamicStatements];
    objc_sync_enter(preparedDynamicStatements);
    preparedDynamicStatements2 = [(PLSQLiteConnection *)self preparedDynamicStatements];
    entryKey2 = [v102 entryKey];
    v10 = [preparedDynamicStatements2 objectForKeyedSubscript:entryKey2];

    objc_sync_exit(preparedDynamicStatements);
    if (v10)
    {
      v103 = v10;
      v11 = [v6 objectForKeyedSubscript:@"key"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v6 objectForKeyedSubscript:@"key"];
        allKeys = [v13 allKeys];
        obj = [allKeys sortedArrayUsingSelector:sel_compare_];

        v15 = [obj count] + 3;
      }

      else
      {
        obj = 0;
        v15 = 4;
      }

      v28 = v102;
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_46;
      }

      v29 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__PLSQLiteConnection_writeDynamicEntries___block_invoke_629;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v29;
      if (writeDynamicEntries__defaultOnce_627 != -1)
      {
        dispatch_once(&writeDynamicEntries__defaultOnce_627, block);
      }

      if (writeDynamicEntries__classDebugEnabled_628 != 1)
      {
        goto LABEL_46;
      }

      v30 = MEMORY[0x1E696AEC0];
      entryKey3 = [v102 entryKey];
      v16 = [v30 stringWithFormat:@"Retrieving dynamic statement for %@, bindposition count = %u", entryKey3, v15];

      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v32 lastPathComponent];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
      [PLCoreStorage logMessage:v16 fromFile:lastPathComponent fromFunction:v34 fromLineNumber:1556];

      v18 = PLLogCommon(v35);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_45:

      v28 = v102;
LABEL_46:
      entryKey4 = [v28 entryKey];
      v104 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:entryKey4];

      [(PLSQLiteConnection *)selfCopy beginTransaction];
      if ([dynamicKeys count])
      {
        v61 = 0;
        do
        {
          v62 = [dynamicKeys objectAtIndexedSubscript:v61];
          v100 = [v102 objectForKeyedSubscript:v62];

          entryKey5 = [v102 entryKey];
          v64 = [dynamicKeys objectAtIndexedSubscript:v61];
          v65 = [PLUtilities shouldLogForEntryKey:entryKey5 withKey:v64 andValue:v100];

          if (v65)
          {
            v66 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v102, "entryID")}];
            [(PLSQLStatement *)v103 bindValue:v66 withFormater:5 atPosition:1];

            v67 = [v104 objectForKeyedSubscript:@"value"];
            v68 = [v67 objectForKeyedSubscript:@"Type"];
            -[PLSQLStatement bindValue:withFormater:atPosition:](v103, "bindValue:withFormater:atPosition:", v100, [v68 shortValue], 2);

            v69 = [v104 objectForKeyedSubscript:@"unit"];

            if (v69)
            {
              v70 = [v104 objectForKeyedSubscript:@"unit"];
              v71 = [v70 objectForKeyedSubscript:@"Unit"];
              v72 = [v104 objectForKeyedSubscript:@"unit"];
              v73 = [v72 objectForKeyedSubscript:@"Type"];
              -[PLSQLStatement bindValue:withFormater:atPosition:](v103, "bindValue:withFormater:atPosition:", v71, [v73 shortValue], 3);

              v74 = 4;
            }

            else
            {
              v74 = 3;
            }

            v75 = [v104 objectForKeyedSubscript:@"key"];
            objc_opt_class();
            v76 = objc_opt_isKindOfClass();

            if (v76)
            {
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v77 = obj;
              v78 = [v77 countByEnumeratingWithState:&v106 objects:v120 count:16];
              if (v78)
              {
                v79 = *v107;
                do
                {
                  for (i = 0; i != v78; ++i)
                  {
                    if (*v107 != v79)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v81 = *(*(&v106 + 1) + 8 * i);
                    lastPathComponent2 = [dynamicKeys objectAtIndexedSubscript:v61];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v83 = [lastPathComponent2 objectForKeyedSubscript:v81];

                      entryKey6 = [v102 entryKey];
                      v85 = [PLUtilities logModeForEntryKey:entryKey6 withKey:v81 andValue:v83];

                      if (v85 == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        lastPathComponent2 = [v83 lastPathComponent];
                      }

                      else
                      {
                        lastPathComponent2 = v83;
                      }
                    }

                    v86 = [v104 objectForKeyedSubscript:@"key"];
                    v87 = [v86 objectForKeyedSubscript:v81];
                    v88 = [v87 objectForKeyedSubscript:@"Type"];
                    -[PLSQLStatement bindValue:withFormater:atPosition:](v103, "bindValue:withFormater:atPosition:", lastPathComponent2, [v88 shortValue], v74);

                    v74 = (v74 + 1);
                  }

                  v78 = [v77 countByEnumeratingWithState:&v106 objects:v120 count:16];
                }

                while (v78);
              }
            }

            else
            {
              v77 = [dynamicKeys objectAtIndexedSubscript:v61];
              [(PLSQLStatement *)v103 bindValue:v77 withFormater:1 atPosition:v74];
            }

            v89 = [(PLSQLiteConnection *)selfCopy performStatement:v103];
            v90 = v89;
            if ((!v89 || ![v89 count]) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
            {
              v91 = MEMORY[0x1E696AEC0];
              entryKey7 = [v102 entryKey];
              v93 = [v91 stringWithFormat:@"Empty insert ID: Error while inserting dynamic entry for %@", entryKey7];

              v94 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
              lastPathComponent3 = [v94 lastPathComponent];
              v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
              [PLCoreStorage logMessage:v93 fromFile:lastPathComponent3 fromFunction:v96 fromLineNumber:1601];

              v98 = PLLogCommon(v97);
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v119 = v93;
                _os_log_debug_impl(&dword_1D8611000, v98, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          ++v61;
        }

        while ([dynamicKeys count] > v61);
      }

      [(PLSQLiteConnection *)selfCopy endTransaction];

      goto LABEL_76;
    }

    v16 = objc_opt_new();
    entryKey8 = [v102 entryKey];
    objc_msgSend(v16, "appendFormat:", @"INSERT INTO %@_%@ (FK_ID, value"), entryKey8, @"Dynamic";

    v18 = objc_opt_new();
    -[NSObject appendString:](v18, "appendString:", @"(?, ?");
    v19 = [v6 objectForKeyedSubscript:@"unit"];

    if (v19)
    {
      [v16 appendString:{@", unit"}];
      [v18 appendString:@", ?"];
    }

    v20 = [v6 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v22 = [v6 objectForKeyedSubscript:@"key"];
      allKeys2 = [v22 allKeys];
      v24 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      obj = v24;
      v25 = [obj countByEnumeratingWithState:&v114 objects:v121 count:16];
      if (v25)
      {
        v26 = *v115;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v115 != v26)
            {
              objc_enumerationMutation(obj);
            }

            [v16 appendFormat:@", %@", *(*(&v114 + 1) + 8 * j)];
            [v18 appendString:@", ?"];
          }

          v25 = [obj countByEnumeratingWithState:&v114 objects:v121 count:16];
        }

        while (v25);
      }
    }

    else
    {
      [v16 appendString:{@", key"}];
      [v18 appendString:@", ?"];
      obj = 0;
    }

    [v18 appendString:@""]);
    [v16 appendString:@" VALUES "]);
    [v16 appendString:v18];
    [v16 appendString:@";"];
    *buf = 0;
    v36 = [PLSQLStatement alloc];
    dbConnection = [(PLSQLiteConnection *)selfCopy dbConnection];
    dbSem = [(PLSQLiteConnection *)selfCopy dbSem];
    v103 = [(PLSQLStatement *)v36 initWithSQLQuery:v16 forDatabase:dbConnection withDBSem:dbSem result:buf];

    if (v103)
    {
      preparedDynamicStatements3 = [(PLSQLiteConnection *)selfCopy preparedDynamicStatements];
      objc_sync_enter(preparedDynamicStatements3);
      preparedDynamicStatements4 = [(PLSQLiteConnection *)selfCopy preparedDynamicStatements];
      entryKey9 = [v102 entryKey];
      [preparedDynamicStatements4 setObject:v103 forKeyedSubscript:entryKey9];

      objc_sync_exit(preparedDynamicStatements3);
    }

    else
    {
      if (!+[PLDefaults debugEnabled])
      {
LABEL_34:
        v50 = +[PLDefaults debugEnabled];
        if (v50)
        {
          v51 = objc_opt_class();
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v111[2] = __42__PLSQLiteConnection_writeDynamicEntries___block_invoke;
          v111[3] = &unk_1E8519630;
          v112 = @"writeDynamic";
          v113 = v51;
          if (writeDynamicEntries__defaultOnce != -1)
          {
            dispatch_once(&writeDynamicEntries__defaultOnce, v111);
          }

          v52 = writeDynamicEntries__classDebugEnabled;

          if (v52)
          {
            v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writeDynamic=%@", v16];
            v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            lastPathComponent4 = [v54 lastPathComponent];
            v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
            [PLCoreStorage logMessage:v53 fromFile:lastPathComponent4 fromFunction:v56 fromLineNumber:1541];

            v58 = PLLogCommon(v57);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }
        }

        if (*buf == 11)
        {
          v59 = PLLogSQLiteConnection(v50);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [PLSQLiteConnection writeDynamicEntries:];
          }

          [PLUtilities exitWithReason:1001 connection:selfCopy];
        }

        goto LABEL_45;
      }

      v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", v102];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent5 = [v43 lastPathComponent];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeDynamicEntries:]"];
      [PLCoreStorage logMessage:v102 fromFile:lastPathComponent5 fromFunction:v45 fromLineNumber:1533];

      v47 = PLLogCommon(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v48 = MEMORY[0x1E696AEC0];
      preparedDynamicStatements3 = [v102 entryKey];
      v49 = [v48 stringWithFormat:@"%@_%@", preparedDynamicStatements3, @"Dynamic"];
      [(PLSQLiteConnection *)selfCopy displaySchema:v49];
    }

    goto LABEL_34;
  }

  [(PLSQLiteConnection *)self writeDynamicEntriesToPPS:entriesCopy];
LABEL_77:
}

BOOL __42__PLSQLiteConnection_writeDynamicEntries___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeDynamicEntries__classDebugEnabled = result;
  return result;
}

BOOL __42__PLSQLiteConnection_writeDynamicEntries___block_invoke_629(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  writeDynamicEntries__classDebugEnabled_628 = result;
  return result;
}

- (void)writeArrayEntries:(id)entries
{
  v76 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  entryKey = [entriesCopy entryKey];
  v54 = [PLEntryDefinition arrayKeyConfigsForEntryKey:entryKey];

  arrayKeys = [entriesCopy arrayKeys];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v6 = [arrayKeys countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0x1E8518000uLL;
    v62 = *v70;
    v55 = arrayKeys;
    do
    {
      v9 = 0;
      v56 = v7;
      do
      {
        if (*v70 != v62)
        {
          objc_enumerationMutation(arrayKeys);
        }

        v10 = *(*(&v69 + 1) + 8 * v9);
        v11 = [entriesCopy objectForKeyedSubscript:v10];
        v12 = *(v8 + 2584);
        entryKey2 = [entriesCopy entryKey];
        LODWORD(v12) = [v12 shouldLogForEntryKey:entryKey2 withKey:v10 andValue:v11];

        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v11 count])
            {
              v59 = v11;
              v14 = v11;
              if ([entriesCopy isPPSEnabled])
              {
                shortValue = [PLEntry dataFormatForMetric:v10 auxiliaryMetrics:v54];
                v16 = v10;
              }

              else
              {
                v17 = [entriesCopy definitionForKey:v10];
                v18 = [v17 objectForKeyedSubscript:@"TypeArrayValue"];
                shortValue = [v18 shortValue];

                v16 = @"value";
              }

              v19 = MEMORY[0x1E696AD60];
              entryKey3 = [entriesCopy entryKey];
              v21 = [v19 stringWithFormat:@"INSERT INTO %@_Array_%@ (FK_ID, %@) VALUES ", entryKey3, v10, v16];

              if (shortValue <= 1)
              {
                v22 = 1;
              }

              else
              {
                v22 = shortValue;
              }

              v57 = v22;
              if ([v14 count])
              {
                v23 = 0;
                do
                {
                  if (v23)
                  {
                    [v21 appendString:{@", "}];
                  }

                  [v21 appendString:{@"(?, ?)"}];
                  ++v23;
                }

                while ([v14 count] > v23);
              }

              v68 = 0;
              v24 = [PLSQLStatement alloc];
              dbConnection = [(PLSQLiteConnection *)self dbConnection];
              dbSem = [(PLSQLiteConnection *)self dbSem];
              v27 = [(PLSQLStatement *)v24 initWithSQLQuery:v21 forDatabase:dbConnection withDBSem:dbSem result:&v68];

              v60 = v16;
              if (!v27)
              {
                v28 = +[PLDefaults debugEnabled];
                if (v28)
                {
                  entriesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", entriesCopy];
                  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
                  lastPathComponent = [v30 lastPathComponent];
                  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeArrayEntries:]"];
                  [PLCoreStorage logMessage:entriesCopy fromFile:lastPathComponent fromFunction:v32 fromLineNumber:1651];

                  v34 = PLLogCommon(v33);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v74 = entriesCopy;
                    _os_log_debug_impl(&dword_1D8611000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v35 = MEMORY[0x1E696AEC0];
                  entryKey4 = [entriesCopy entryKey];
                  v37 = [v35 stringWithFormat:@"%@_Array_%@", entryKey4, v10];
                  [(PLSQLiteConnection *)self displaySchema:v37];
                }
              }

              if (v68 == 11)
              {
                v38 = PLLogSQLiteConnection(v28);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  [(PLSQLiteConnection *)&v66 writeArrayEntries:v67, v38];
                }

                [PLUtilities exitWithReason:1001 connection:self];
              }

              if ([v14 count])
              {
                v39 = 0;
                v40 = 1;
                do
                {
                  v41 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(entriesCopy, "entryID")}];
                  [(PLSQLStatement *)v27 bindValue:v41 withFormater:5 atPosition:v40];

                  v42 = [v14 objectAtIndexedSubscript:v39];
                  [(PLSQLStatement *)v27 bindValue:v42 withFormater:v57 atPosition:(v40 + 1)];

                  ++v39;
                  v40 = (v40 + 2);
                }

                while ([v14 count] > v39);
              }

              v43 = +[PLDefaults debugEnabled];
              v45 = v60;
              selfCopy3 = self;
              v7 = v56;
              v8 = 0x1E8518000;
              if (v43)
              {
                v46 = objc_opt_class();
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __40__PLSQLiteConnection_writeArrayEntries___block_invoke;
                block[3] = &unk_1E8519630;
                v64 = @"writeArray";
                v65 = v46;
                if (writeArrayEntries__defaultOnce != -1)
                {
                  dispatch_once(&writeArrayEntries__defaultOnce, block);
                }

                v47 = writeArrayEntries__classDebugEnabled;

                selfCopy3 = self;
                if (v47 == 1)
                {
                  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlArrayInsert=%@", v21];
                  v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
                  lastPathComponent2 = [v48 lastPathComponent];
                  v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection writeArrayEntries:]"];
                  [PLCoreStorage logMessage:v58 fromFile:lastPathComponent2 fromFunction:v50 fromLineNumber:1670];

                  v52 = PLLogCommon(v51);
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v74 = v58;
                    _os_log_debug_impl(&dword_1D8611000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v45 = v60;
                  selfCopy3 = self;
                  v7 = v56;
                  v8 = 0x1E8518000;
                }
              }

              v53 = [(PLSQLiteConnection *)selfCopy3 performStatement:v27];

              arrayKeys = v55;
              v11 = v59;
            }
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [arrayKeys countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v7);
  }
}

BOOL __40__PLSQLiteConnection_writeArrayEntries___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeArrayEntries__classDebugEnabled = result;
  return result;
}

- (void)updateEntry:(id)entry
{
  v107 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  definedKeys = [entryCopy definedKeys];
  if ([definedKeys count])
  {
    entryKey = [entryCopy entryKey];
    v5 = [PLEntryDefinition cacheSQLPrepareStatementForEntryKey:entryKey];

    v93 = v5;
    if (v5 && (-[PLSQLiteConnection preparedUpdateStatements](self, "preparedUpdateStatements"), v6 = objc_claimAutoreleasedReturnValue(), objc_sync_enter(v6), -[PLSQLiteConnection preparedUpdateStatements](self, "preparedUpdateStatements"), v7 = objc_claimAutoreleasedReturnValue(), [entryCopy entryKey], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, objc_sync_exit(v6), v6, v9))
    {
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_42;
      }

      v10 = objc_opt_class();
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __34__PLSQLiteConnection_updateEntry___block_invoke_668;
      v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v98[4] = v10;
      if (updateEntry__defaultOnce_666 != -1)
      {
        dispatch_once(&updateEntry__defaultOnce_666, v98);
      }

      if (updateEntry__classDebugEnabled_667 != 1)
      {
        goto LABEL_42;
      }

      v11 = MEMORY[0x1E696AEC0];
      entryKey2 = [entryCopy entryKey];
      v13 = [v11 stringWithFormat:@"Reusing cached updated statement for %@", entryKey2];

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
      [PLCoreStorage logMessage:v13 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:1736];

      v18 = PLLogCommon(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    else
    {
      v19 = MEMORY[0x1E696AD60];
      entryKey3 = [entryCopy entryKey];
      v13 = [v19 stringWithFormat:@"UPDATE '%@' SET ", entryKey3];

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v21 = definedKeys;
      v22 = [v21 countByEnumeratingWithState:&v100 objects:v106 count:16];
      if (v22)
      {
        v23 = *v101;
        v24 = 1;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v101 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v100 + 1) + 8 * i);
            if ((v24 & 1) == 0)
            {
              [v13 appendString:{@", "}];
            }

            [v13 appendFormat:@"%@=?", v26];
            v24 = 0;
          }

          v22 = [v21 countByEnumeratingWithState:&v100 objects:v106 count:16];
          v24 = 0;
        }

        while (v22);

        [v13 appendString:{@", "}];
      }

      else
      {
      }

      [v13 appendString:@"timestamp=?"];
      [v13 appendString:@" WHERE ID == ?"];
      *buf = 0;
      v27 = [PLSQLStatement alloc];
      dbConnection = [(PLSQLiteConnection *)self dbConnection];
      dbSem = [(PLSQLiteConnection *)self dbSem];
      v9 = [(PLSQLStatement *)v27 initWithSQLQuery:v13 forDatabase:dbConnection withDBSem:dbSem result:buf];

      if (!v9)
      {
        v30 = +[PLDefaults debugEnabled];
        if (v30)
        {
          entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare statement fail: entry=%@", entryCopy];
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
          lastPathComponent2 = [v32 lastPathComponent];
          v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
          [PLCoreStorage logMessage:entryCopy fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:1713];

          v36 = PLLogCommon(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          entryKey4 = [entryCopy entryKey];
          [(PLSQLiteConnection *)self displaySchema:entryKey4];
        }
      }

      if (*buf == 11)
      {
        v38 = PLLogSQLiteConnection(v30);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection updateEntry:];
        }

        [PLUtilities exitWithReason:1001 connection:self];
      }

      if (!v9)
      {
        v85 = MEMORY[0x1E696AEC0];
        entryKey5 = [entryCopy entryKey];
        v87 = [v85 stringWithFormat:@"ERROR: prepared update statement failed for %@", entryKey5];

        v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        lastPathComponent3 = [v88 lastPathComponent];
        v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
        [PLCoreStorage logMessage:v87 fromFile:lastPathComponent3 fromFunction:v90 fromLineNumber:1732];

        v92 = PLLogCommon(v91);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v9 = 0;
LABEL_74:

        goto LABEL_75;
      }

      if (v93)
      {
        if (+[PLDefaults debugEnabled])
        {
          v39 = objc_opt_class();
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = __34__PLSQLiteConnection_updateEntry___block_invoke;
          v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v99[4] = v39;
          if (updateEntry__defaultOnce != -1)
          {
            dispatch_once(&updateEntry__defaultOnce, v99);
          }

          if (updateEntry__classDebugEnabled == 1)
          {
            v40 = MEMORY[0x1E696AEC0];
            entryKey6 = [entryCopy entryKey];
            v42 = [v40 stringWithFormat:@"Caching update statement for %@", entryKey6];

            v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            lastPathComponent4 = [v43 lastPathComponent];
            v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
            [PLCoreStorage logMessage:v42 fromFile:lastPathComponent4 fromFunction:v45 fromLineNumber:1726];

            v47 = PLLogCommon(v46);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }
        }

        preparedUpdateStatements = [(PLSQLiteConnection *)self preparedUpdateStatements];
        objc_sync_enter(preparedUpdateStatements);
        preparedUpdateStatements2 = [(PLSQLiteConnection *)self preparedUpdateStatements];
        entryKey7 = [entryCopy entryKey];
        [preparedUpdateStatements2 setObject:v9 forKeyedSubscript:entryKey7];

        objc_sync_exit(preparedUpdateStatements);
      }
    }

LABEL_42:
    if ([definedKeys count])
    {
      v51 = 0;
      while (1)
      {
        v52 = [definedKeys objectAtIndexedSubscript:v51];
        v53 = [entryCopy objectForKeyedSubscript:v52];

        v54 = [definedKeys objectAtIndexedSubscript:v51];
        v55 = [entryCopy formaterForKey:v54];

        entryKey8 = [entryCopy entryKey];
        v57 = [definedKeys objectAtIndexedSubscript:v51];
        v58 = [PLUtilities logModeForEntryKey:entryKey8 withKey:v57 andValue:v53];

        if (v58)
        {
          if (v58 == 1)
          {
            if (!+[PLDefaults debugEnabled])
            {
              goto LABEL_64;
            }

            v60 = objc_opt_class();
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __34__PLSQLiteConnection_updateEntry___block_invoke_674;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v60;
            if (updateEntry__defaultOnce_672 != -1)
            {
              dispatch_once(&updateEntry__defaultOnce_672, block);
            }

            if (updateEntry__classDebugEnabled_673 != 1)
            {
              goto LABEL_64;
            }

            v61 = MEMORY[0x1E696AEC0];
            entryKey9 = [entryCopy entryKey];
            v63 = [definedKeys objectAtIndexedSubscript:v51];
            v64 = [v61 stringWithFormat:@"Allowlist denied: entry = %@ key = %@ value = %@ withFormatter = %hd", entryKey9, v63, v53, v55];

            v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            lastPathComponent5 = [v65 lastPathComponent];
            v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
            [PLCoreStorage logMessage:v64 fromFile:lastPathComponent5 fromFunction:v67 fromLineNumber:1756];

            v69 = PLLogCommon(v68);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v105 = v64;
              _os_log_debug_impl(&dword_1D8611000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

LABEL_63:

            goto LABEL_64;
          }

          if (v58 != 3)
          {
            if (!+[PLDefaults debugEnabled])
            {
              goto LABEL_64;
            }

            v70 = objc_opt_class();
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __34__PLSQLiteConnection_updateEntry___block_invoke_680;
            v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v96[4] = v70;
            if (updateEntry__defaultOnce_678 != -1)
            {
              dispatch_once(&updateEntry__defaultOnce_678, v96);
            }

            if (updateEntry__classDebugEnabled_679 != 1)
            {
              goto LABEL_64;
            }

            v71 = MEMORY[0x1E696AEC0];
            entryKey10 = [entryCopy entryKey];
            v73 = [definedKeys objectAtIndexedSubscript:v51];
            v64 = [v71 stringWithFormat:@"Allowlist denied error case: entry = %@ key = %@ value = %@ withFormatter = %hd", entryKey10, v73, v53, v55];

            v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            lastPathComponent6 = [v74 lastPathComponent];
            v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection updateEntry:]"];
            [PLCoreStorage logMessage:v64 fromFile:lastPathComponent6 fromFunction:v76 fromLineNumber:1759];

            v69 = PLLogCommon(v77);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v105 = v64;
              _os_log_debug_impl(&dword_1D8611000, v69, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            lastPathComponent7 = [v53 lastPathComponent];

            v53 = lastPathComponent7;
          }
        }

        [(PLSQLStatement *)v9 bindValue:v53 withFormater:v55 atPosition:(v51 + 1)];
LABEL_64:

        if ([definedKeys count] <= ++v51)
        {
          goto LABEL_67;
        }
      }
    }

    LODWORD(v51) = 0;
LABEL_67:
    v78 = MEMORY[0x1E696AD98];
    entryDate = [entryCopy entryDate];
    [entryDate timeIntervalSince1970];
    v80 = [v78 numberWithDouble:?];
    [(PLSQLStatement *)v9 bindValue:v80 withFormater:6 atPosition:(v51 + 1)];

    v81 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(entryCopy, "entryID")}];
    [(PLSQLStatement *)v9 bindValue:v81 withFormater:5 atPosition:(v51 + 2)];

    v82 = [(PLSQLiteConnection *)self performStatement:v9];
    if ([entryCopy hasArrayKeys])
    {
      entryKey11 = [entryCopy entryKey];
      -[PLSQLiteConnection deleteArrayEntriesForKey:withRowID:](self, "deleteArrayEntriesForKey:withRowID:", entryKey11, [entryCopy entryID]);

      [(PLSQLiteConnection *)self writeArrayEntries:entryCopy];
    }

    if ([entryCopy hasDynamicKeys])
    {
      entryKey12 = [entryCopy entryKey];
      -[PLSQLiteConnection deleteDynamicEntriesForKey:withRowID:](self, "deleteDynamicEntriesForKey:withRowID:", entryKey12, [entryCopy entryID]);

      [(PLSQLiteConnection *)self writeDynamicEntries:entryCopy];
    }

    goto LABEL_74;
  }

LABEL_75:
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled = result;
  return result;
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke_668(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled_667 = result;
  return result;
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke_674(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled_673 = result;
  return result;
}

BOOL __34__PLSQLiteConnection_updateEntry___block_invoke_680(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateEntry__classDebugEnabled_679 = result;
  return result;
}

- (void)deleteEntryForKey:(id)key withRowID:(int64_t)d
{
  keyCopy = key;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@' WHERE ID=%lld", keyCopy, d];;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLSQLiteConnection_deleteEntryForKey_withRowID___block_invoke;
    block[3] = &unk_1E8519630;
    v19 = @"delete";
    v20 = v8;
    if (deleteEntryForKey_withRowID__defaultOnce != -1)
    {
      dispatch_once(&deleteEntryForKey_withRowID__defaultOnce, block);
    }

    v9 = deleteEntryForKey_withRowID__classDebugEnabled;

    if (v9 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v7];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteEntryForKey:withRowID:]"];
      [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:1783];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v16 = [(PLSQLiteConnection *)self performQuery:v7];
  v17 = [PLEntryDefinition definitionForEntryKey:keyCopy];
  if ([PLEntryDefinition hasArrayKeysForEntryDefinition:v17])
  {
    [(PLSQLiteConnection *)self deleteArrayEntriesForKey:keyCopy withRowID:d];
  }

  if ([PLEntryDefinition hasDynamicKeysForEntryDefinition:v17])
  {
    [(PLSQLiteConnection *)self deleteDynamicEntriesForKey:keyCopy withRowID:d];
  }
}

BOOL __50__PLSQLiteConnection_deleteEntryForKey_withRowID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteEntryForKey_withRowID__classDebugEnabled = result;
  return result;
}

- (void)deleteDynamicEntriesForKey:(id)key withRowID:(int64_t)d
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@_%@' WHERE FK_ID=%lld", key, @"Dynamic", d];;
  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PLSQLiteConnection_deleteDynamicEntriesForKey_withRowID___block_invoke;
    block[3] = &unk_1E8519630;
    v16 = @"delete";
    v17 = v6;
    if (deleteDynamicEntriesForKey_withRowID__defaultOnce != -1)
    {
      dispatch_once(&deleteDynamicEntriesForKey_withRowID__defaultOnce, block);
    }

    v7 = deleteDynamicEntriesForKey_withRowID__classDebugEnabled;

    if (v7 == 1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v5];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteDynamicEntriesForKey:withRowID:]"];
      [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:1799];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v14 = [(PLSQLiteConnection *)self performQuery:v5];
}

BOOL __59__PLSQLiteConnection_deleteDynamicEntriesForKey_withRowID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteDynamicEntriesForKey_withRowID__classDebugEnabled = result;
  return result;
}

- (void)deleteArrayEntriesForKey:(id)key withRowID:(int64_t)d
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [PLEntryDefinition definitionForEntryKey:keyCopy];
  v8 = [PLEntryDefinition arrayKeysForEntryDefinition:v7];

  v9 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = *v30;
    v23 = v8;
    v24 = keyCopy;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM '%@_Array_%@' WHERE FK_ID=%lld", keyCopy, *(*(&v29 + 1) + 8 * v11), d];;
        if (+[PLDefaults debugEnabled])
        {
          v13 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __57__PLSQLiteConnection_deleteArrayEntriesForKey_withRowID___block_invoke;
          block[3] = &unk_1E8519630;
          v27 = @"delete";
          v28 = v13;
          if (deleteArrayEntriesForKey_withRowID__defaultOnce != -1)
          {
            dispatch_once(&deleteArrayEntriesForKey_withRowID__defaultOnce, block);
          }

          v14 = deleteArrayEntriesForKey_withRowID__classDebugEnabled;

          if (v14 == 1)
          {
            dCopy = d;
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v12];
            v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
            lastPathComponent = [v17 lastPathComponent];
            v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteArrayEntriesForKey:withRowID:]"];
            [PLCoreStorage logMessage:v16 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:1807];

            v21 = PLLogCommon(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v34 = v16;
              _os_log_debug_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            d = dCopy;
            v8 = v23;
            keyCopy = v24;
          }
        }

        v22 = [(PLSQLiteConnection *)self performQuery:v12];

        ++v11;
      }

      while (v10 != v11);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }
}

BOOL __57__PLSQLiteConnection_deleteArrayEntriesForKey_withRowID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteArrayEntriesForKey_withRowID__classDebugEnabled = result;
  return result;
}

- (void)deleteAllEntriesForKey:(id)key withFilters:(id)filters
{
  filtersCopy = filters;
  v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"DELETE FROM '%@'", key];
  if (filtersCopy)
  {
    v8 = [filtersCopy componentsJoinedByString:@" AND "];
    [v7 appendFormat:@"WHERE %@ ", v8];
  }

  [v7 appendString:@";"];
  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PLSQLiteConnection_deleteAllEntriesForKey_withFilters___block_invoke;
    block[3] = &unk_1E8519630;
    v19 = @"delete";
    v20 = v9;
    if (deleteAllEntriesForKey_withFilters__defaultOnce != -1)
    {
      dispatch_once(&deleteAllEntriesForKey_withFilters__defaultOnce, block);
    }

    v10 = deleteAllEntriesForKey_withFilters__classDebugEnabled;

    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlDelete=%@", v7];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection deleteAllEntriesForKey:withFilters:]"];
      [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1819];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v17 = [(PLSQLiteConnection *)self performQuery:v7];
}

BOOL __57__PLSQLiteConnection_deleteAllEntriesForKey_withFilters___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  deleteAllEntriesForKey_withFilters__classDebugEnabled = result;
  return result;
}

- (void)setAllNullValuesForEntryKey:(id)key forKey:(id)forKey toValue:(id)value withFilters:(id)filters
{
  v23 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  forKey = [MEMORY[0x1E696AD60] stringWithFormat:@"UPDATE %@ SET %@ = %@ WHERE %@ IS NULL", key, forKey, value, forKey];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = filtersCopy;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [forKey appendFormat:@" AND %@", *(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = [(PLSQLiteConnection *)self performQuery:forKey];
}

- (id)entriesForKey:(id)key withProperties:(id)properties
{
  v85 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  propertiesCopy = properties;
  context = objc_autoreleasePoolPush();
  v68 = objc_opt_new();
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT * "];
  v7 = [propertiesCopy objectForKeyedSubscript:@"select"];
  if (v7)
  {
    v8 = v7;
    v9 = [propertiesCopy objectForKeyedSubscript:@"select"];
    v10 = [v9 count];

    if (v10)
    {
      [v6 appendString:{@", "}];
      v11 = [propertiesCopy objectForKeyedSubscript:@"select"];
      v12 = [v11 componentsJoinedByString:{@", "}];
      [v6 appendString:v12];
    }
  }

  v13 = keyCopy;
  [v6 appendFormat:@" FROM '%@' ", keyCopy];
  v14 = [propertiesCopy objectForKeyedSubscript:@"where"];
  if (v14)
  {
    v15 = v14;
    v16 = [propertiesCopy objectForKeyedSubscript:@"where"];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [propertiesCopy objectForKeyedSubscript:@"where"];
      v19 = [v18 componentsJoinedByString:@" AND "];
      [v6 appendFormat:@"WHERE %@ ", v19];
    }
  }

  v20 = [propertiesCopy objectForKeyedSubscript:@"order by"];
  v66 = v6;
  if (v20)
  {
    v21 = v20;
    v22 = [propertiesCopy objectForKeyedSubscript:@"order by"];
    null = [MEMORY[0x1E695DFB0] null];

    if (v22 != null)
    {
      [v6 appendString:@"ORDER BY "];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v24 = [propertiesCopy objectForKeyedSubscript:@"order by"];
      allKeys = [v24 allKeys];

      obj = allKeys;
      v26 = [allKeys countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 1;
        v29 = *v80;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v80 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v79 + 1) + 8 * i);
            if ((v28 & 1) == 0)
            {
              [v66 appendString:{@", "}];
            }

            v32 = [propertiesCopy objectForKeyedSubscript:@"order by"];
            v33 = [v32 objectForKeyedSubscript:v31];
            if ([v33 BOOLValue])
            {
              v34 = @"DESC";
            }

            else
            {
              v34 = @"ASC";
            }

            [v66 appendFormat:@"%@ %@", v31, v34, context];

            v28 = 0;
          }

          v27 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
          v28 = 0;
        }

        while (v27);
      }

      v6 = v66;
      [v66 appendString:@" "];
      v13 = keyCopy;
    }
  }

  v35 = [propertiesCopy objectForKeyedSubscript:@"limit"];

  if (v35)
  {
    v36 = [propertiesCopy objectForKeyedSubscript:@"limit"];
    [v6 appendFormat:@"LIMIT %@ ", v36];
  }

  [v6 appendString:@";"];
  if (+[PLDefaults debugEnabled])
  {
    v37 = objc_opt_class();
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke;
    v76[3] = &unk_1E8519630;
    v77 = @"entryQuery";
    v78 = v37;
    if (entriesForKey_withProperties__defaultOnce != -1)
    {
      dispatch_once(&entriesForKey_withProperties__defaultOnce, v76);
    }

    v38 = entriesForKey_withProperties__classDebugEnabled;

    if (v38 == 1)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlQuery=%@", v6];
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent = [v40 lastPathComponent];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection entriesForKey:withProperties:]"];
      [PLCoreStorage logMessage:v39 fromFile:lastPathComponent fromFunction:v42 fromLineNumber:1868];

      v44 = PLLogCommon(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v6 = v66;
    }
  }

  v45 = [(PLSQLiteConnection *)self performQuery:v6];
  v46 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke_758;
  block[3] = &unk_1E8519630;
  v74 = @"entryQuery";
  v75 = v46;
  if (entriesForKey_withProperties__defaultOnce_756 != -1)
  {
    dispatch_once(&entriesForKey_withProperties__defaultOnce_756, block);
  }

  v47 = entriesForKey_withProperties__classDebugEnabled_757;

  if (v47 == 1)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"!!! sqlQuery=%@, results=%@", v6, v45];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
    lastPathComponent2 = [v49 lastPathComponent];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection entriesForKey:withProperties:]"];
    [PLCoreStorage logMessage:v48 fromFile:lastPathComponent2 fromFunction:v51 fromLineNumber:1871];

    v53 = PLLogCommon(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v54 = v45;
  v55 = [v54 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v70;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v70 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [PLEntry entryWithEntryKey:v13 withData:*(*(&v69 + 1) + 8 * j)];
        [v59 setExistsInDB:1];
        [v68 addObject:v59];
        if ([v59 hasDynamicKeys])
        {
          v60 = [propertiesCopy objectForKeyedSubscript:@"loadDynamic"];

          if (v60)
          {
            [(PLSQLiteConnection *)self loadDynamicValuesIntoEntry:v59];
          }
        }

        if ([v59 hasArrayKeys])
        {
          v61 = [propertiesCopy objectForKeyedSubscript:@"loadDynamic"];

          if (v61)
          {
            [(PLSQLiteConnection *)self loadArrayValuesIntoEntry:v59];
          }
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v56);
  }

  objc_autoreleasePoolPop(context);

  return v68;
}

BOOL __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  entriesForKey_withProperties__classDebugEnabled = result;
  return result;
}

BOOL __51__PLSQLiteConnection_entriesForKey_withProperties___block_invoke_758(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  entriesForKey_withProperties__classDebugEnabled_757 = result;
  return result;
}

- (id)entriesForKey:(id)key withQuery:(id)query
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  queryCopy = query;
  context = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v9 = [(PLSQLiteConnection *)self performQuery:queryCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [PLEntry entryWithEntryKey:keyCopy withData:*(*(&v17 + 1) + 8 * i)];
        [v14 setExistsInDB:1];
        [v8 addObject:v14];
        if ([v14 hasDynamicKeys])
        {
          [(PLSQLiteConnection *)self loadDynamicValuesIntoEntry:v14];
        }

        if ([v14 hasArrayKeys])
        {
          [(PLSQLiteConnection *)self loadArrayValuesIntoEntry:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);

  return v8;
}

- (void)loadDynamicValuesIntoEntry:(id)entry
{
  v42 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if ([entryCopy hasDynamicKeys])
  {
    v5 = MEMORY[0x1E696AEC0];
    entryKey = [entryCopy entryKey];
    v7 = [v5 stringWithFormat:@"SELECT * FROM '%@_%@' WHERE FK_ID==%lld", entryKey, @"Dynamic", objc_msgSend(entryCopy, "entryID")];

    v27 = v7;
    v8 = [(PLSQLiteConnection *)self performQuery:v7];
    entryKey2 = [entryCopy entryKey];
    v10 = [PLEntryDefinition dynamicKeyConfigsForEntryKey:entryKey2];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v8;
    v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v31)
    {
      v11 = *v37;
      v28 = *v37;
      v29 = v10;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [v10 objectForKeyedSubscript:@"key"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v16 = [v10 objectForKeyedSubscript:@"key"];
            allKeys = [v16 allKeys];
            v18 = [allKeys sortedArrayUsingSelector:sel_compare_];

            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v33;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v33 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = [v13 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * j)];
                  v25 = [v13 objectForKeyedSubscript:@"value"];
                  [entryCopy setObject:v25 forKeyedSubscript:v24];
                }

                v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v21);
              v26 = v19;
              v11 = v28;
              v10 = v29;
            }

            else
            {
              v26 = v19;
            }
          }

          else
          {
            v26 = [v13 objectForKeyedSubscript:@"Key"];
            v19 = [v13 objectForKeyedSubscript:@"value"];
            [entryCopy setObject:v19 forKeyedSubscript:v26];
          }
        }

        v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v31);
    }
  }
}

- (void)loadArrayValuesIntoEntry:(id)entry
{
  v33 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if ([entryCopy hasArrayKeys])
  {
    [entryCopy arrayKeys];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v19 = *v28;
      v20 = entryCopy;
      do
      {
        v4 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v27 + 1) + 8 * v4);
          v6 = MEMORY[0x1E696AEC0];
          entryKey = [entryCopy entryKey];
          v8 = [v6 stringWithFormat:@"SELECT value FROM '%@_Array_%@' WHERE FK_ID==%lld", entryKey, v5, objc_msgSend(entryCopy, "entryID")];

          v9 = [(PLSQLiteConnection *)self performQuery:v8];
          v10 = objc_opt_new();
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            do
            {
              v15 = 0;
              do
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v23 + 1) + 8 * v15) objectForKeyedSubscript:@"value"];
                [v10 addObject:v16];

                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v13);
          }

          if ([v10 count])
          {
            v17 = v10;
          }

          else
          {
            v17 = 0;
          }

          entryCopy = v20;
          [v20 setObject:v17 forKeyedSubscript:v5];

          ++v4;
        }

        while (v4 != v22);
        v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }
  }
}

- (void)moveDatabaseToPath:(id)path
{
  pathCopy = path;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    dbSem = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

    if ([(PLSQLiteConnection *)self dbConnection])
    {
      [(PLSQLiteConnection *)self copyDatabase:pathCopy];
      v6 = _sqlite3_db_truncate();
      if (v6)
      {
        v7 = PLLogCommon(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [PLSQLiteConnection moveDatabaseToPath:];
        }
      }
    }

    dbSem2 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(dbSem2);
  }
}

- (BOOL)truncateDB
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    return 0;
  }

  dbSem = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  if (![(PLSQLiteConnection *)self dbConnection])
  {
    dbSem2 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(dbSem2);

    return 0;
  }

  v4 = _sqlite3_db_truncate();
  v5 = v4 == 0;
  if (v4)
  {
    v6 = PLLogCommon(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [PLSQLiteConnection moveDatabaseToPath:];
    }
  }

  dbSem3 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(dbSem3);

  return v5;
}

- (void)closeConnection
{
  dbSem = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  dbConnection = [(PLSQLiteConnection *)self dbConnection];
  if (dbConnection)
  {
    v5 = PLLogCommon(dbConnection);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Closing dbConnection!", buf, 2u);
    }

    sqlite3_close([(PLSQLiteConnection *)self dbConnection]);
    [(PLSQLiteConnection *)self setDbConnection:0];
    dbSem2 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(dbSem2);
  }

  else
  {
    dbSem3 = [(PLSQLiteConnection *)self dbSem];
    dispatch_semaphore_signal(dbSem3);
  }
}

- (void)vacuum
{
  if ([PLDefaults BOOLForKey:@"Vacuum" ifNotSet:1])
  {
    transactionLock = [(PLSQLiteConnection *)self transactionLock];
    objc_sync_enter(transactionLock);
    if (+[PLDefaults debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__PLSQLiteConnection_vacuum__block_invoke;
      block[3] = &unk_1E8519630;
      v18 = @"Vacuum";
      v19 = v4;
      if (vacuum_defaultOnce != -1)
      {
        dispatch_once(&vacuum_defaultOnce, block);
      }

      v5 = vacuum_classDebugEnabled;

      if (v5 == 1)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Vacuum!"];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection vacuum]"];
        [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:2009];

        v11 = PLLogCommon(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    isTransactionInProgress = [(PLSQLiteConnection *)self isTransactionInProgress];
    if (isTransactionInProgress)
    {
      v13 = PLLogCommon(isTransactionInProgress);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_DEFAULT, "Vacuuming whilst in a critical data section!", v16, 2u);
      }
    }

    if ([(PLSQLiteConnection *)self isIncrementalVacuumEnabled])
    {
      v14 = @"PRAGMA incremental_vacuum;";
    }

    else
    {
      v14 = @"VACUUM;";
    }

    v15 = [(PLSQLiteConnection *)self performQuery:v14];
    objc_sync_exit(transactionLock);
  }
}

BOOL __28__PLSQLiteConnection_vacuum__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  vacuum_classDebugEnabled = result;
  return result;
}

- (void)fullVacuum
{
  obj = [(PLSQLiteConnection *)self transactionLock];
  objc_sync_enter(obj);
  v3 = [(PLSQLiteConnection *)self performQuery:@"VACUUM;"];
  objc_sync_exit(obj);
}

- (BOOL)passesIntegrityCheck
{
  v11 = *MEMORY[0x1E69E9840];
  dbSem = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  filePath = [(PLSQLiteConnection *)self filePath];
  [filePath UTF8String];
  v5 = _sqlite3_integrity_check();

  v7 = PLLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v5;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "Integrity check result: %d", v10, 8u);
  }

  dbSem2 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(dbSem2);

  return v5 == 0;
}

- (void)setJournalMode:(signed __int16)mode
{
  modeCopy = mode;
  if (mode == 1)
  {
    v4 = @"PRAGMA journal_mode = DELETE;";
    goto LABEL_5;
  }

  if (!mode)
  {
    v4 = @"PRAGMA journal_mode = WAL;";
LABEL_5:
    v5 = [(PLSQLiteConnection *)self performQuery:v4];
    goto LABEL_11;
  }

  if (+[PLDefaults debugEnabled])
  {
    modeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** ERROR *** invalid journalMode=%d", modeCopy];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection setJournalMode:]"];
    [PLCoreStorage logMessage:modeCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:2045];

    v11 = PLLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v5 = 0;
LABEL_11:
  if (+[PLDefaults debugEnabled])
  {
    v12 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __37__PLSQLiteConnection_setJournalMode___block_invoke;
    v23 = &unk_1E8519630;
    v24 = @"journalMode";
    v25 = v12;
    if (setJournalMode__defaultOnce != -1)
    {
      dispatch_once(&setJournalMode__defaultOnce, &block);
    }

    v13 = setJournalMode__classDebugEnabled;

    if (v13 == 1)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"journalMode=%d result=%@", modeCopy, v5, block, v21, v22, v23];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLSQLiteConnection.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSQLiteConnection setJournalMode:]"];
      [PLCoreStorage logMessage:v14 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:2048];

      v19 = PLLogCommon(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __37__PLSQLiteConnection_setJournalMode___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  setJournalMode__classDebugEnabled = result;
  return result;
}

- (BOOL)copyDatabase:(id)database
{
  databaseCopy = database;
  [database UTF8String];
  v5 = _sqlite3_db_copy();
  v6 = v5;
  if (v5)
  {
    v7 = PLLogCommon(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyDatabase:];
    }
  }

  return v6 == 0;
}

- (BOOL)copyDatabaseToPath:(id)path
{
  pathCopy = path;
  dbSem = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_wait(dbSem, 0xFFFFFFFFFFFFFFFFLL);

  LOBYTE(dbSem) = [(PLSQLiteConnection *)self copyDatabase:pathCopy];
  dbSem2 = [(PLSQLiteConnection *)self dbSem];
  dispatch_semaphore_signal(dbSem2);

  return dbSem;
}

- (BOOL)copyDatabaseToPath:(id)path fromDate:(id)date toDate:(id)toDate withTableFilters:(id)filters vacuumDB:(BOOL)b
{
  bCopy = b;
  filtersCopy = filters;
  toDateCopy = toDate;
  dateCopy = date;
  pathCopy = path;
  LOBYTE(bCopy) = [(PLSQLiteConnection *)self copyDatabaseToPath:pathCopy fromDate:dateCopy toDate:toDateCopy withTableFilters:filtersCopy vacuumDB:bCopy withCacheSize:[(PLSQLiteConnection *)self cacheSize]];

  return bCopy;
}

- (BOOL)copyDatabaseToPath:(id)path fromDate:(id)date toDate:(id)toDate withTableFilters:(id)filters vacuumDB:(BOOL)b withCacheSize:(int64_t)size
{
  bCopy = b;
  pathCopy = path;
  dateCopy = date;
  toDateCopy = toDate;
  filtersCopy = filters;
  v18 = objc_autoreleasePoolPush();
  v19 = [(PLSQLiteConnection *)self copyDatabaseToPath:pathCopy];
  if (v19)
  {
    v20 = [[PLSQLiteConnection alloc] initWithFilePath:pathCopy withCacheSize:size];
    v21 = v20;
    if (dateCopy | toDateCopy)
    {
      [(PLSQLiteConnection *)v20 trimAllTablesFromDate:dateCopy toDate:toDateCopy withTableFilters:filtersCopy];
    }

    if (bCopy)
    {
      [(PLSQLiteConnection *)v21 vacuum];
    }

    [(PLSQLiteConnection *)v21 closeConnection];
  }

  objc_autoreleasePoolPop(v18);

  return v19;
}

- (id)cachedStatementForMetadataInsert
{
  if (!self->_metadataStmtCreated)
  {
    v13 = 0;
    v3 = [PLSQLStatement alloc];
    dbConnection = [(PLSQLiteConnection *)self dbConnection];
    dbSem = [(PLSQLiteConnection *)self dbSem];
    v6 = [(PLSQLStatement *)v3 initWithSQLQuery:@"INSERT INTO PLCoreStorage_Metadata_Dynamic (FK_ID forDatabase:build withDBSem:name result:version, metadata) VALUES (?, ?, ?, ?, ?)", dbConnection, dbSem, &v13];
    metadataStmt = self->_metadataStmt;
    self->_metadataStmt = v6;

    if (v13)
    {
      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection cachedStatementForMetadataInsert];
      }

      v10 = self->_metadataStmt;
      self->_metadataStmt = 0;
    }

    self->_metadataStmtCreated = 1;
  }

  v11 = self->_metadataStmt;

  return v11;
}

- (void)writeMetadata:(id)metadata forFKID:(id)d build:(id)build name:(id)name version:(double)version
{
  metadataCopy = metadata;
  dCopy = d;
  buildCopy = build;
  nameCopy = name;
  cachedStatementForMetadataInsert = [(PLSQLiteConnection *)self cachedStatementForMetadataInsert];
  v16 = cachedStatementForMetadataInsert;
  if (cachedStatementForMetadataInsert)
  {
    [cachedStatementForMetadataInsert bindValue:dCopy withFormater:5 atPosition:1];
    [v16 bindValue:buildCopy withFormater:1 atPosition:2];
    [v16 bindValue:nameCopy withFormater:1 atPosition:3];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:version];
    [v16 bindValue:v17 withFormater:6 atPosition:4];

    [v16 bindValue:metadataCopy withFormater:8 atPosition:5];
    v18 = [(PLSQLiteConnection *)self performStatement:v16];
  }
}

- (void)freeMetadataState
{
  metadataStmt = self->_metadataStmt;
  self->_metadataStmt = 0;

  self->_metadataStmtCreated = 0;
}

- (BOOL)attachDB:(id)b withName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v13 = 0;
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ATTACH DATABASE '%@' AS '%@'", b, nameCopy];;
  v8 = [(PLSQLiteConnection *)self performQuery:nameCopy returnValue:&v13 returnResult:0];

  v10 = sqlConnectionHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = nameCopy;
    v16 = 1024;
    v17 = v13;
    _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "attach DB ('%@') return value '%d'", buf, 0x12u);
  }

  v11 = v13 == 0;
  return v11;
}

- (BOOL)detachDB:(id)b
{
  v16 = *MEMORY[0x1E69E9840];
  bCopy = b;
  v11 = 0;
  bCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"DETACH DATABASE '%@'", bCopy];;
  v6 = [(PLSQLiteConnection *)self performQuery:bCopy returnValue:&v11 returnResult:0];

  v8 = sqlConnectionHandle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = bCopy;
    v14 = 1024;
    v15 = v11;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "detach DB ('%@') return value '%d'", buf, 0x12u);
  }

  v9 = v11 == 0;
  return v9;
}

- (BOOL)copyTable:(id)table fromConnection:(id)connection withDBName:(id)name withProperties:(id)properties andAttach:(BOOL)attach
{
  attachCopy = attach;
  v31 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  connectionCopy = connection;
  nameCopy = name;
  propertiesCopy = properties;
  v16 = [(PLSQLiteConnection *)self tableExistsForTableName:tableCopy];
  if (v16)
  {
    v17 = sqlConnectionHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = tableCopy;
      _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_INFO, "table (%@) already exists", &v27, 0xCu);
    }

LABEL_20:
    v24 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v18 = [connectionCopy tableExistsForTableName:tableCopy];
  if ((v18 & 1) == 0)
  {
    v17 = sqlConnectionHandle(v18);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      filePath = [connectionCopy filePath];
      v27 = 138412546;
      v28 = tableCopy;
      v29 = 2112;
      v30 = filePath;
      _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_INFO, "table ('%@') does not exist in source database (%@)", &v27, 0x16u);
    }

    goto LABEL_20;
  }

  if (!attachCopy)
  {
    v22 = [(PLSQLiteConnection *)self copyTable:tableCopy fromDBName:nameCopy withProperties:propertiesCopy];
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_16:
    v17 = sqlConnectionHandle(v22);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyTable:fromConnection:withDBName:withProperties:andAttach:];
    }

    goto LABEL_20;
  }

  filePath2 = [connectionCopy filePath];
  v20 = [(PLSQLiteConnection *)self attachDB:filePath2 withName:nameCopy];

  if (!v20)
  {
    v17 = sqlConnectionHandle(v21);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyTable:connectionCopy fromConnection:? withDBName:? withProperties:? andAttach:?];
    }

    goto LABEL_20;
  }

  v22 = [(PLSQLiteConnection *)self copyTable:tableCopy fromDBName:nameCopy withProperties:propertiesCopy];
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = [(PLSQLiteConnection *)self detachDB:nameCopy];
  if ((v23 & 1) == 0)
  {
    v17 = sqlConnectionHandle(v23);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLSQLiteConnection copyTable:nameCopy fromConnection:connectionCopy withDBName:? withProperties:? andAttach:?];
    }

    v24 = 1;
    goto LABEL_21;
  }

LABEL_15:
  v24 = 1;
LABEL_22:

  return v24;
}

- (BOOL)copyTable:(id)table fromDBName:(id)name withProperties:(id)properties
{
  v65 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  nameCopy = name;
  propertiesCopy = properties;
  [(PLSQLiteConnection *)self beginTransaction];
  tableCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM '%@'.sqlite_schema WHERE name = '%@'", nameCopy, tableCopy];
  v12 = [(PLSQLiteConnection *)self performQuery:tableCopy];

  if (v12)
  {
    firstObject = [v12 firstObject];
    v15 = [firstObject objectForKeyedSubscript:@"sql"];

    v17 = sqlConnectionHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = tableCopy;
      v59 = 2112;
      v60 = v15;
      _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEFAULT, "creating table %@ with schema query '%@'", buf, 0x16u);
    }

    v56 = 0;
    v18 = [(PLSQLiteConnection *)self performQuery:v15 returnValue:&v56 returnResult:0];
    v19 = v56;
    v20 = sqlConnectionHandle(v18);
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection copyTable:fromDBName:withProperties:];
      }

      v22 = 0;
      goto LABEL_29;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v58 = tableCopy;
      v59 = 2112;
      v60 = propertiesCopy;
      _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_INFO, "copying entries to %@ with properties %@", buf, 0x16u);
    }

    v21 = [(PLSQLiteConnection *)self sqlFormatedColumnNamesForTableInsert:tableCopy];
    v23 = [(PLSQLiteConnection *)self sqlFormatedColumnNamesForTableSelect:tableCopy withSystemOffset:0.0];
    v24 = MEMORY[0x1E696AEC0];
    v55 = propertiesCopy;
    v25 = [(PLSQLiteConnection *)self sqlPropertiesAsString:propertiesCopy];
    v54 = v23;
    v26 = [v24 stringWithFormat:@"SELECT %@ FROM '%@'.'%@' %@", v23, nameCopy, tableCopy, v25];

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO '%@' (%@) %@", tableCopy, v21, v26];
    v28 = sqlConnectionHandle(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [PLSQLiteConnection copyTable:fromDBName:withProperties:];
    }

    v29 = [(PLSQLiteConnection *)self performQuery:v27 returnValue:&v56 returnResult:0];
    if (v56)
    {
      v30 = sqlConnectionHandle(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [PLSQLiteConnection copyTable:fromDBName:withProperties:];
      }

      [(PLSQLiteConnection *)self endTransaction];
LABEL_19:
      v22 = 0;
LABEL_28:

      propertiesCopy = v55;
LABEL_29:

      goto LABEL_30;
    }

    v31 = [v55 objectForKeyedSubscript:@"uuid"];

    if (v31)
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = [(PLSQLiteConnection *)self sqlPropertiesAsString:v55];
      v34 = [v32 stringWithFormat:@"SELECT IFNULL(MIN(ID), -1) as startID, IFNULL(MAX(ID), -1) as endID FROM '%@'.'%@' %@", nameCopy, tableCopy, v33];

      v35 = v34;
      v37 = sqlConnectionHandle(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [PLSQLiteConnection copyTable:fromDBName:withProperties:];
      }

      v38 = [(PLSQLiteConnection *)self performQuery:v35];
      if (!v38)
      {
        v47 = sqlConnectionHandle(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [PLSQLiteConnection copyTable:fromDBName:withProperties:];
        }

        goto LABEL_19;
      }

      v51 = v26;
      v53 = v35;
      v39 = v38;
      firstObject2 = [v38 firstObject];
      v41 = [firstObject2 objectForKeyedSubscript:@"startID"];
      intValue = [v41 intValue];

      v52 = v39;
      firstObject3 = [v39 firstObject];
      v43 = [firstObject3 objectForKeyedSubscript:@"endID"];
      intValue2 = [v43 intValue];

      v45 = PLLogSubmission(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v48 = [v55 objectForKeyedSubscript:@"uuid"];
        *buf = 138413058;
        v58 = v48;
        v59 = 2112;
        v60 = tableCopy;
        v61 = 1024;
        v62 = intValue;
        v63 = 1024;
        v64 = intValue2;
        _os_log_debug_impl(&dword_1D8611000, v45, OS_LOG_TYPE_DEBUG, "Copy Session UUID = %@, table = '%@', startID = %d, endID = %d", buf, 0x22u);
      }

      v26 = v51;
    }

    [(PLSQLiteConnection *)self endTransaction];
    v22 = 1;
    goto LABEL_28;
  }

  v15 = sqlConnectionHandle(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [PLSQLiteConnection copyTable:fromDBName:withProperties:];
  }

  v22 = 0;
LABEL_30:

  return v22;
}

- (id)sqlPropertiesAsString:(id)string
{
  v36 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  string = [MEMORY[0x1E696AD60] string];
  v5 = [stringCopy objectForKeyedSubscript:@"WHERE"];
  if (v5)
  {
    v6 = v5;
    v7 = [stringCopy objectForKeyedSubscript:@"WHERE"];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [stringCopy objectForKeyedSubscript:@"WHERE"];
      v10 = [v9 componentsJoinedByString:@" AND "];
      [string appendFormat:@"%@ %@ ", @"WHERE", v10];
    }
  }

  v11 = [stringCopy objectForKeyedSubscript:@"ORDER BY"];
  if (v11)
  {
    v12 = v11;
    v13 = [stringCopy objectForKeyedSubscript:@"ORDER BY"];
    null = [MEMORY[0x1E695DFB0] null];

    if (v13 != null)
    {
      [string appendFormat:@"%@ ", @"ORDER BY"];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = stringCopy;
      v16 = [stringCopy objectForKeyedSubscript:@"ORDER BY"];
      allKeys = [v16 allKeys];

      v18 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 1;
        v21 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(allKeys);
            }

            v23 = *(*(&v31 + 1) + 8 * i);
            if ((v20 & 1) == 0)
            {
              [string appendString:{@", "}];
            }

            v24 = [v15 objectForKeyedSubscript:@"ORDER BY"];
            v25 = [v24 objectForKeyedSubscript:v23];
            bOOLValue = [v25 BOOLValue];
            v27 = @"ASC";
            if (bOOLValue)
            {
              v27 = @"DESC";
            }

            [string appendFormat:@"%@ %@", v23, v27];

            v20 = 0;
          }

          v19 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
          v20 = 0;
        }

        while (v19);
      }

      [string appendString:@" "];
      stringCopy = v15;
    }
  }

  v28 = [stringCopy objectForKeyedSubscript:@"LIMIT"];

  if (v28)
  {
    v29 = [stringCopy objectForKeyedSubscript:@"LIMIT"];
    [string appendFormat:@"%@ %@ ", @"LIMIT", v29];
  }

  return string;
}

- (void)openCurrentFileWithCacheSize:(void *)a1 withFlags:.cold.1(void *a1)
{
  v1 = [a1 filePath];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

- (void)openCurrentFileWithCacheSize:withFlags:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12(v0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)mergeDataFromOtherDBFile:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)writeDynamicEntriesToPPS:(void *)a1 .cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
}

- (void)writeDynamicEntriesToPPS:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeArrayEntries:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "writeArrayEntries: corrupt DB", buf, 2u);
}

- (void)moveDatabaseToPath:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12(v0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x12u);
}

- (void)copyDatabase:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12(v0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)copyTable:(void *)a1 fromConnection:withDBName:withProperties:andAttach:.cold.1(void *a1)
{
  v1 = [a1 filePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)copyTable:fromConnection:withDBName:withProperties:andAttach:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)copyTable:(uint64_t)a1 fromConnection:(void *)a2 withDBName:withProperties:andAttach:.cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 filePath];
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)copyTable:fromDBName:withProperties:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)copyTable:fromDBName:withProperties:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)copyTable:fromDBName:withProperties:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyTable:fromDBName:withProperties:.cold.6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end