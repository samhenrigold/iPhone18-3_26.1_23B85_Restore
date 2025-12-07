@interface EDProtectedDatabasePersistence
+ (BOOL)_isRecoverableError:(id)error;
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (unint64_t)_resultForConnection:(id)connection success:(BOOL)success error:(id)error errorMessage:(id)message;
- (BOOL)_attachProtectedDatabaseToConnection:(id)connection withSchema:(id)schema error:(id *)error;
- (BOOL)_initializeDatabase:(id)database withConnection:(id)connection schema:(id)schema error:(id *)error;
- (BOOL)_isJournalMalformedForSchema:(id)schema connection:(id)connection;
- (BOOL)_performOnDemandReconciliationForConnection:(id)connection withSchema:(id)schema;
- (BOOL)_removeExistingDatabaseIDs:(id)ds withColumn:(id)column connection:(id)connection;
- (BOOL)_updateSqliteSequenceForDatabase:(id)database schema:(id)schema withConnection:(id)connection error:(id *)error;
- (BOOL)_upgradeJournalWithConnection:(id)connection schema:(id)schema error:(id *)error;
- (BOOL)protectedDataAvailable;
- (EDProtectedDatabasePersistence)initWithBasePath:(id)path hookRegistry:(id)registry;
- (EDProtectedDatabasePersistence)initWithJournalManager:(id)manager hookRegistry:(id)registry;
- (id)_allReferencingColumnsForTable:(id)table;
- (id)_databaseIDsToDeleteForTable:(id)table;
- (id)database;
- (int64_t)_maxRowIDForColumn:(id)column withConnection:(id)connection;
- (unint64_t)_deleteRowIDs:(id)ds fromJournal:(id)journal withConnection:(id)connection;
- (unint64_t)_executeStatementString:(id)string onConnection:(id)connection errorMessage:(id)message;
- (unint64_t)_executeUpdateStatement:(id)statement onConnection:(id)connection errorMessage:(id)message;
- (unint64_t)_mergeSchema:(id)schema connection:(id)connection journaledRows:(unint64_t *)rows newRows:(unint64_t *)newRows;
- (unint64_t)_mergeTable:(id)table connection:(id)connection journaledRows:(unint64_t *)rows newRows:(unint64_t *)newRows;
- (unint64_t)_reconcileJournalsWithSchema:(id)schema connection:(id)connection;
- (unint64_t)_runReconciliationWithSchema:(id)schema connection:(id)connection;
- (unint64_t)signpostID;
- (void)_attachJournalDatabaseToConnection:(id)connection withSchema:(id)schema;
- (void)_deleteDatabaseIDs:(id)ds fromTable:(id)table;
- (void)_detachJournalDatabaseFromConnection:(id)connection;
- (void)_ensureJournalIsAttachedToConnection:(id)connection withSchema:(id)schema;
- (void)_ensureProtectedDatabaseOrJournalIsAttachedToConnection:(id)connection withSchema:(id)schema;
- (void)attachProtectedOrJournalDatabaseToConnectionIfNecessary:(id)necessary withSchema:(id)schema;
- (void)detachProtectedOrJournalDatabaseFromConnectionIfNecessary:(id)necessary;
- (void)reconcileJournalsWithSchema:(id)schema completionBlock:(id)block;
- (void)registerMergeHandler:(id)handler forTable:(id)table;
- (void)scheduleRecurringActivity;
- (void)test_tearDown;
@end

@implementation EDProtectedDatabasePersistence

- (BOOL)protectedDataAvailable
{
  database = [(EDProtectedDatabasePersistence *)self database];
  protectedDatabaseIsAvailable = [database protectedDatabaseIsAvailable];

  return protectedDatabaseIsAvailable;
}

- (id)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDProtectedDatabasePersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_80 != -1)
  {
    dispatch_once(&log_onceToken_80, block);
  }

  v2 = log_log_80;

  return v2;
}

void __37__EDProtectedDatabasePersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_80;
  log_log_80 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EDProtectedDatabasePersistence_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_7 != -1)
  {
    dispatch_once(&signpostLog_onceToken_7, block);
  }

  v2 = signpostLog_log_7;

  return v2;
}

void __45__EDProtectedDatabasePersistence_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_7;
  signpostLog_log_7 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDProtectedDatabasePersistence)initWithBasePath:(id)path hookRegistry:(id)registry
{
  pathCopy = path;
  registryCopy = registry;
  v8 = [[EDPersistenceDatabaseJournalManager alloc] initWithBasePath:pathCopy];
  v9 = [(EDProtectedDatabasePersistence *)self initWithJournalManager:v8 hookRegistry:registryCopy];

  return v9;
}

- (EDProtectedDatabasePersistence)initWithJournalManager:(id)manager hookRegistry:(id)registry
{
  managerCopy = manager;
  registryCopy = registry;
  v20.receiver = self;
  v20.super_class = EDProtectedDatabasePersistence;
  v9 = [(EDProtectedDatabasePersistence *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_journalManager, manager);
    objc_storeStrong(&v10->_hookRegistry, registry);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.email.protectedDatabasePersistence.reconciliationQueue", v12);
    reconciliationQueue = v10->_reconciliationQueue;
    v10->_reconciliationQueue = v13;

    *&v10->_initializationLock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc(MEMORY[0x1E699B7F0]);
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v17 = [v15 initWithObject:strongToWeakObjectsMapTable];
    reconciliationMergeHandlers = v10->_reconciliationMergeHandlers;
    v10->_reconciliationMergeHandlers = v17;
  }

  return v10;
}

- (void)attachProtectedOrJournalDatabaseToConnectionIfNecessary:(id)necessary withSchema:(id)schema
{
  v25 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  schemaCopy = schema;
  v9 = objc_autoreleasePoolPush();
  if ([(EDProtectedDatabasePersistence *)self supportsJournaling])
  {
    if (![(EDProtectedDatabasePersistence *)self protectedDataAvailable])
    {
      if ([necessaryCopy protectedDatabaseAttached])
      {
        [(EDProtectedDatabasePersistence *)self _detachProtectedDatabaseFromConnection:necessaryCopy];
      }

      else if ([necessaryCopy journalDatabaseAttached])
      {
        goto LABEL_19;
      }

      [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:necessaryCopy withSchema:schemaCopy];
      goto LABEL_19;
    }

    if (([necessaryCopy protectedDatabaseAttached] & 1) == 0)
    {
      if ([necessaryCopy journalDatabaseAttached])
      {
        if ([(EDProtectedDatabasePersistence *)self _performOnDemandReconciliationForConnection:necessaryCopy withSchema:schemaCopy])
        {
          [(EDProtectedDatabasePersistence *)self _ensureProtectedDatabaseOrJournalIsAttachedToConnection:necessaryCopy withSchema:schemaCopy];
        }

        else
        {
          [(EDProtectedDatabasePersistence *)self _ensureJournalIsAttachedToConnection:necessaryCopy withSchema:schemaCopy];
        }
      }

      else
      {
        v18 = 0;
        v10 = [(EDProtectedDatabasePersistence *)self _attachProtectedDatabaseToConnection:necessaryCopy withSchema:schemaCopy error:&v18];
        v11 = v18;
        if (!v10)
        {
          if ([EDProtectedDatabasePersistence _isRecoverableError:v11])
          {
            v12 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              ef_publicDescription = [v11 ef_publicDescription];
              v15 = EFProtectedDataAvailable();
              database = [(EDProtectedDatabasePersistence *)self database];
              protectedDatabaseIsAvailable = [database protectedDatabaseIsAvailable];
              *buf = 138543874;
              v20 = ef_publicDescription;
              v21 = 1024;
              v22 = v15;
              v23 = 1024;
              v24 = protectedDatabaseIsAvailable;
              _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "Got error %{public}@ attaching protected database.  ProtectedDataAvailable = %d, protectedDatabaseIsAvailable = %d", buf, 0x18u);
            }

            [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:necessaryCopy withSchema:schemaCopy];
          }

          else
          {
            [necessaryCopy handleError:v11 message:@"Unable to attach protected database"];
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:141 description:@"Unable to attach protected database"];
          }
        }
      }
    }
  }

LABEL_19:
  objc_autoreleasePoolPop(v9);
}

- (void)detachProtectedOrJournalDatabaseFromConnectionIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = objc_autoreleasePoolPush();
  if (-[EDProtectedDatabasePersistence supportsJournaling](self, "supportsJournaling") && [necessaryCopy protectedDatabaseAttached] && !-[EDProtectedDatabasePersistence protectedDataAvailable](self, "protectedDataAvailable"))
  {
    [(EDProtectedDatabasePersistence *)self _detachProtectedDatabaseFromConnection:necessaryCopy];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_ensureJournalIsAttachedToConnection:(id)connection withSchema:(id)schema
{
  connectionCopy = connection;
  schemaCopy = schema;
  if ([connectionCopy protectedDatabaseAttached])
  {
    [(EDProtectedDatabasePersistence *)self _detachProtectedDatabaseFromConnection:connectionCopy];
  }

  if (([connectionCopy journalDatabaseAttached] & 1) == 0)
  {
    [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:connectionCopy withSchema:schemaCopy];
  }
}

- (void)_ensureProtectedDatabaseOrJournalIsAttachedToConnection:(id)connection withSchema:(id)schema
{
  v24 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  schemaCopy = schema;
  if ([connectionCopy protectedDatabaseAttached])
  {
    v9 = 0;
    goto LABEL_4;
  }

  v17 = 0;
  v10 = [(EDProtectedDatabasePersistence *)self _attachProtectedDatabaseToConnection:connectionCopy withSchema:schemaCopy error:&v17];
  v9 = v17;
  if (v10)
  {
LABEL_4:
    if ([connectionCopy journalDatabaseAttached])
    {
      [(EDProtectedDatabasePersistence *)self _detachJournalDatabaseFromConnection:connectionCopy];
    }

    goto LABEL_12;
  }

  if ([EDProtectedDatabasePersistence _isRecoverableError:v9])
  {
    v11 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v9 ef_publicDescription];
      v14 = EFProtectedDataAvailable();
      database = [(EDProtectedDatabasePersistence *)self database];
      protectedDatabaseIsAvailable = [database protectedDatabaseIsAvailable];
      *buf = 138543874;
      v19 = ef_publicDescription;
      v20 = 1024;
      v21 = v14;
      v22 = 1024;
      v23 = protectedDatabaseIsAvailable;
      _os_log_error_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_ERROR, "Got error %{public}@ attaching protected database.  ProtectedDataAvailable = %d, protectedDatabaseIsAvailable = %d", buf, 0x18u);
    }

    if (([connectionCopy journalDatabaseAttached] & 1) == 0)
    {
      [(EDProtectedDatabasePersistence *)self _attachJournalDatabaseToConnection:connectionCopy withSchema:schemaCopy];
    }
  }

  else
  {
    [connectionCopy handleError:v9 message:@"Unable to attach protected database"];
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:213 description:@"Unable to attach protected database"];
  }

LABEL_12:
}

- (BOOL)_attachProtectedDatabaseToConnection:(id)connection withSchema:(id)schema error:(id *)error
{
  connectionCopy = connection;
  schemaCopy = schema;
  protectedDatabaseName = [objc_opt_class() protectedDatabaseName];
  v11 = [connectionCopy attachProtectedDatabaseWithName:protectedDatabaseName error:error];

  if (!v11)
  {
    goto LABEL_9;
  }

  os_unfair_lock_lock(&self->_initializationLock);
  if ([(EDProtectedDatabasePersistence *)self isInitialized])
  {
    os_unfair_lock_unlock(&self->_initializationLock);
  }

  else
  {
    protectedDatabaseName2 = [objc_opt_class() protectedDatabaseName];
    v13 = [(EDProtectedDatabasePersistence *)self _initializeDatabase:protectedDatabaseName2 withConnection:connectionCopy schema:schemaCopy error:error];

    [(EDProtectedDatabasePersistence *)self setIsInitialized:v13];
    os_unfair_lock_unlock(&self->_initializationLock);
    if (!v13)
    {
LABEL_8:
      [connectionCopy detachProtectedDatabase];
LABEL_9:
      v16 = 0;
      goto LABEL_10;
    }
  }

  if ([connectionCopy isWriter])
  {
    protectedDatabaseName3 = [objc_opt_class() protectedDatabaseName];
    v15 = [(EDProtectedDatabasePersistence *)self _updateSqliteSequenceForDatabase:protectedDatabaseName3 schema:schemaCopy withConnection:connectionCopy error:error];

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v16 = 1;
LABEL_10:

  return v16;
}

- (void)_attachJournalDatabaseToConnection:(id)connection withSchema:(id)schema
{
  connectionCopy = connection;
  schemaCopy = schema;
  if ([connectionCopy isWriter])
  {
    journalManager = [(EDProtectedDatabasePersistence *)self journalManager];
    v10 = [journalManager currentJournalCreateIfNeeded:1];

    journalDatabaseName = [objc_opt_class() journalDatabaseName];
    v12 = [connectionCopy attachJournalDatabase:v10 withName:journalDatabaseName];

    if (v12)
    {
      journalDatabaseName2 = [objc_opt_class() journalDatabaseName];
      v22 = 0;
      v14 = [(EDProtectedDatabasePersistence *)self _initializeDatabase:journalDatabaseName2 withConnection:connectionCopy schema:schemaCopy error:&v22];
      v15 = v22;

      if (v14)
      {
        journalDatabaseName3 = [objc_opt_class() journalDatabaseName];
        v21 = v15;
        v17 = [(EDProtectedDatabasePersistence *)self _updateSqliteSequenceForDatabase:journalDatabaseName3 schema:schemaCopy withConnection:connectionCopy error:&v21];
        currentHandler = v21;

        v15 = currentHandler;
        if (v17)
        {
          goto LABEL_9;
        }
      }

      v19 = +[EDProtectedDatabasePersistence log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [EDProtectedDatabasePersistence _attachJournalDatabaseToConnection:v19 withSchema:?];
      }

      [connectionCopy detachJournalDatabase];
      journalManager2 = [(EDProtectedDatabasePersistence *)self journalManager];
      [journalManager2 mergedJournal:v10];

      [connectionCopy handleError:v15 message:@"Initializing journal database"];
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:270 description:@"Unable to attach journal database"];
LABEL_9:
  }
}

- (void)_detachJournalDatabaseFromConnection:(id)connection
{
  connectionCopy = connection;
  if (([connectionCopy detachJournalDatabase] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:276 description:@"Unable to detach journal database"];
  }
}

- (BOOL)_initializeDatabase:(id)database withConnection:(id)connection schema:(id)schema error:(id *)error
{
  databaseCopy = database;
  connectionCopy = connection;
  schemaCopy = schema;
  databaseCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@.journal_mode = WAL;", databaseCopy];
  sqlConnection = [connectionCopy sqlConnection];
  v14 = [sqlConnection executeStatementString:databaseCopy error:error];

  if (v14)
  {
    v15 = [schemaCopy definitionWithDatabaseName:databaseCopy];
    sqlConnection2 = [connectionCopy sqlConnection];
    v17 = [sqlConnection2 executeStatementString:v15 error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_upgradeJournalWithConnection:(id)connection schema:(id)schema error:(id *)error
{
  connectionCopy = connection;
  schemaCopy = schema;
  journalDatabaseName = [objc_opt_class() journalDatabaseName];
  LOBYTE(error) = [(EDProtectedDatabasePersistence *)self _initializeDatabase:journalDatabaseName withConnection:connectionCopy schema:schemaCopy error:error];

  return error;
}

- (BOOL)_updateSqliteSequenceForDatabase:(id)database schema:(id)schema withConnection:(id)connection error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  schemaCopy = schema;
  connectionCopy = connection;
  v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  databaseCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT name FROM %@.sqlite_sequence", databaseCopy];
  v10 = [connectionCopy preparedStatementForQueryString:?];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __95__EDProtectedDatabasePersistence__updateSqliteSequenceForDatabase_schema_withConnection_error___block_invoke;
  v62[3] = &unk_1E8250300;
  v53 = v44;
  v63 = v53;
  v43 = v10;
  if ([v10 executeUsingBlock:v62 error:error])
  {
    databaseCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.sqlite_sequence", databaseCopy];
    v46 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:databaseCopy2];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [schemaCopy tables];
    v11 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v11)
    {
      v51 = *v59;
      do
      {
        v52 = v11;
        for (i = 0; i != v52; ++i)
        {
          if (*v59 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v58 + 1) + 8 * i);
          v14 = [(EDProtectedDatabasePersistence *)self _allReferencingColumnsForTable:v13];
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v15 = v14;
          v16 = 0;
          v17 = [v15 countByEnumeratingWithState:&v54 objects:v70 count:16];
          if (v17)
          {
            v18 = *v55;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v55 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [(EDProtectedDatabasePersistence *)self _maxRowIDForColumn:*(*(&v54 + 1) + 8 * j) withConnection:connectionCopy];
                if (v16 <= v20)
                {
                  v16 = v20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v54 objects:v70 count:16];
            }

            while (v17);
          }

          name = [v13 name];
          v22 = [EDTableMetadataPersistence largestDeletedRowIDForTableName:name withConnection:connectionCopy];

          v23 = +[EDProtectedDatabasePersistence log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v13 name];
            *buf = 138412802;
            v65 = name2;
            v66 = 2048;
            v67 = v16;
            v68 = 2048;
            v69 = v22;
            _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "%@: maxRowID: %lld, largestDeletedRowID: %lld", buf, 0x20u);
          }

          if (v16 <= v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = v16;
          }

          name3 = [v13 name];
          v27 = [v53 containsObject:name3];

          if (v27)
          {
            v28 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v13 fullNameWithDatabaseName:databaseCopy];
              *buf = 138543618;
              v65 = v29;
              v66 = 2048;
              v67 = v25;
              _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Updating sqlite_sequence %{public}@ = %lld", buf, 0x16u);
            }

            v30 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:databaseCopy2];
            v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
            [v30 setObject:v31 forKeyedSubscript:@"seq"];

            v32 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"name"];
            name4 = [v13 name];
            v34 = [v32 equalTo:name4];
            [v30 setWhereClause:v34];

            LOBYTE(v34) = [connectionCopy executeUpdateStatement:v30 error:error];
            if ((v34 & 1) == 0)
            {

              v40 = 0;
              goto LABEL_33;
            }
          }

          else
          {
            v35 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v13 fullNameWithDatabaseName:databaseCopy];
              *buf = 138543618;
              v65 = v36;
              v66 = 2048;
              v67 = v25;
              _os_log_impl(&dword_1C61EF000, v35, OS_LOG_TYPE_DEFAULT, "Setting sqlite_sequence %{public}@ = %lld", buf, 0x16u);
            }

            addValue = [v46 addValue];
            name5 = [v13 name];
            [addValue setObject:name5 forKeyedSubscript:@"name"];

            v39 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
            [addValue setObject:v39 forKeyedSubscript:@"seq"];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v11);
    }

    v40 = [connectionCopy executeInsertStatement:v46 error:error];
LABEL_33:
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

void __95__EDProtectedDatabasePersistence__updateSqliteSequenceForDatabase_schema_withConnection_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (int64_t)_maxRowIDForColumn:(id)column withConnection:(id)connection
{
  columnCopy = column;
  connectionCopy = connection;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [columnCopy name];
  table = [columnCopy table];
  name2 = [table name];
  v11 = [v7 initWithFormat:@"SELECT max(%@) FROM %@", name, name2];

  v12 = [connectionCopy preparedStatementForQueryString:v11];
  v19 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__EDProtectedDatabasePersistence__maxRowIDForColumn_withConnection___block_invoke;
  v20[3] = &unk_1E8250418;
  v20[4] = &v21;
  LOBYTE(table) = [v12 executeUsingBlock:v20 error:&v19];
  v13 = v19;
  if ((table & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [columnCopy fullNameWithDatabaseName:0];
    v16 = [v14 initWithFormat:@"Finding max %@", v15];

    [connectionCopy handleError:v13 message:v16];
  }

  v17 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v17;
}

void __68__EDProtectedDatabasePersistence__maxRowIDForColumn_withConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v6 databaseIDValue];

  *a4 = 1;
}

- (BOOL)_performOnDemandReconciliationForConnection:(id)connection withSchema:(id)schema
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  schemaCopy = schema;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v9 = "Skipping on-demand reconciliation from the main thread";
LABEL_10:
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, v9, &v15, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ((EFProtectedDataAvailable() & 1) == 0)
  {
    v8 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v9 = "Skipping on-demand reconciliation because protected data isn't available";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_reconciliationLock);
  if ([(EDProtectedDatabasePersistence *)self isReconciling])
  {
    os_unfair_lock_unlock(&self->_reconciliationLock);
    v8 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v9 = "Skipping on-demand reconciliation because we're already reconciling";
      goto LABEL_10;
    }

LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  [(EDProtectedDatabasePersistence *)self setIsReconciling:1];
  os_unfair_lock_unlock(&self->_reconciliationLock);
  v12 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Triggering on-demand reconciliation", &v15, 2u);
  }

  v8 = [MEMORY[0x1E699B860] transactionWithDescription:@"on-demand reconciliation"];
  v13 = [(EDProtectedDatabasePersistence *)self _reconcileJournalsWithSchema:schemaCopy connection:connectionCopy];
  v10 = v13 == 0;
  v14 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v13;
    _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Completed on-demand reconciliation with result: %lu", &v15, 0xCu);
  }

  [v8 invalidate];
LABEL_12:

  return v10;
}

- (void)reconcileJournalsWithSchema:(id)schema completionBlock:(id)block
{
  schemaCopy = schema;
  blockCopy = block;
  os_unfair_lock_lock(&self->_reconciliationLock);
  if (![(EDProtectedDatabasePersistence *)self isReconciling])
  {
    [(EDProtectedDatabasePersistence *)self setIsReconciling:1];
    os_unfair_lock_unlock(&self->_reconciliationLock);
    v10 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Triggering reconciliation", buf, 2u);
    }

    v11 = [MEMORY[0x1E699B860] transactionWithDescription:@"reconciliation"];
    reconciliationQueue = self->_reconciliationQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__EDProtectedDatabasePersistence_reconcileJournalsWithSchema_completionBlock___block_invoke;
    v15[3] = &unk_1E8256198;
    v15[4] = self;
    v16 = schemaCopy;
    v17 = v11;
    v18 = blockCopy;
    v9 = v11;
    dispatch_async(reconciliationQueue, v15);

    goto LABEL_7;
  }

  os_unfair_lock_unlock(&self->_reconciliationLock);
  if (blockCopy)
  {
    v8 = self->_reconciliationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__EDProtectedDatabasePersistence_reconcileJournalsWithSchema_completionBlock___block_invoke_62;
    block[3] = &unk_1E8251B48;
    v14 = blockCopy;
    dispatch_async(v8, block);
    v9 = v14;
LABEL_7:
  }
}

uint64_t __78__EDProtectedDatabasePersistence_reconcileJournalsWithSchema_completionBlock___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _reconcileJournalsWithSchema:*(a1 + 40) connection:0];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v2;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Completed reconciliation with result: %lu", &v6, 0xCu);
  }

  return [*(a1 + 48) invalidate];
}

- (unint64_t)_reconcileJournalsWithSchema:(id)schema connection:(id)connection
{
  schemaCopy = schema;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  if ([connectionCopy isWriter])
  {
    v9 = connectionCopy;
  }

  else
  {
    database = [(EDProtectedDatabasePersistence *)self database];
    v9 = [database checkOutConnectionIsWriter:1];
  }

  v11 = [(EDProtectedDatabasePersistence *)self _runReconciliationWithSchema:schemaCopy connection:v9];
  if (v9 != connectionCopy)
  {
    database2 = [(EDProtectedDatabasePersistence *)self database];
    [database2 checkInConnection:v9];
  }

  [(EDProtectedDatabasePersistence *)self finishJournalReconciliation:v11];
  os_unfair_lock_lock(&self->_reconciliationLock);
  [(EDProtectedDatabasePersistence *)self setIsReconciling:0];
  os_unfair_lock_unlock(&self->_reconciliationLock);
  if (!v11)
  {
    hookRegistry = [(EDProtectedDatabasePersistence *)self hookRegistry];
    [hookRegistry persistenceDidReconcileProtectedData];
  }

  objc_autoreleasePoolPop(v8);
  return v11;
}

- (unint64_t)_runReconciliationWithSchema:(id)schema connection:(id)connection
{
  v54 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  connectionCopy = connection;
  v42 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v8 = +[EDProtectedDatabasePersistence signpostLog];
  signpostID = [(EDProtectedDatabasePersistence *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EDProtectedDatabasePersistenceReconciliation", "Starting reconciliation of protected data", buf, 2u);
  }

  if (![(EDProtectedDatabasePersistence *)self protectedDataAvailable])
  {
    v24 = 1;
    goto LABEL_49;
  }

  if ([connectionCopy journalDatabaseAttached])
  {
    [(EDProtectedDatabasePersistence *)self _detachJournalDatabaseFromConnection:connectionCopy];
  }

  if (([connectionCopy protectedDatabaseAttached] & 1) == 0)
  {
    v47 = 0;
    v10 = [(EDProtectedDatabasePersistence *)self _attachProtectedDatabaseToConnection:connectionCopy withSchema:schemaCopy error:&v47];
    v11 = v47;
    v12 = v11;
    if (!v10)
    {
      v24 = [EDProtectedDatabasePersistence _resultForConnection:connectionCopy success:0 error:v11 errorMessage:@"Unable to attach protected database"];

      goto LABEL_49;
    }
  }

  v45 = 0;
  v46 = 0;
  journalManager = [(EDProtectedDatabasePersistence *)self journalManager];
  oldestJournal = [journalManager oldestJournal];
  if (!oldestJournal)
  {
LABEL_33:
    v24 = 0;
    goto LABEL_43;
  }

  *&v15 = 134217984;
  v41 = v15;
  while (1)
  {
    v16 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      number = [oldestJournal number];
      *buf = v41;
      v53 = number;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Reconciling journal %lu", buf, 0xCu);
    }

    journalDatabaseName = [objc_opt_class() journalDatabaseName];
    v44 = 0;
    v19 = [connectionCopy attachJournalDatabase:oldestJournal withName:journalDatabaseName error:&v44];
    v20 = v44;

    if ((v19 & 1) == 0)
    {
      break;
    }

    v43 = v20;
    v21 = [(EDProtectedDatabasePersistence *)self _upgradeJournalWithConnection:connectionCopy schema:schemaCopy error:&v43];
    v22 = v43;

    v20 = v22;
    if (!v21)
    {
      v34 = +[EDProtectedDatabasePersistence log];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        number2 = [oldestJournal number];
        ef_publicDescription = [v22 ef_publicDescription];
        [(EDProtectedDatabasePersistence *)ef_publicDescription _runReconciliationWithSchema:buf connection:number2];
      }

      v33 = [EDProtectedDatabasePersistence _resultForConnection:connectionCopy success:0 error:v22 errorMessage:@"Upgrading journal for merging"];
      goto LABEL_41;
    }

    v23 = [(EDProtectedDatabasePersistence *)self _mergeSchema:schemaCopy connection:connectionCopy journaledRows:&v46 newRows:&v45];
    v24 = v23;
    if (v23 == 2)
    {
      if ([(EDProtectedDatabasePersistence *)self _isJournalMalformedForSchema:schemaCopy connection:connectionCopy])
      {
        v25 = +[EDProtectedDatabasePersistence log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          number3 = [oldestJournal number];
          *buf = v41;
          v53 = number3;
          _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "Skipped merging data due to malformed schema for journal %lu", buf, 0xCu);
        }

        v24 = 0;
      }

      else
      {
        v25 = +[EDProtectedDatabasePersistence log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          number4 = [oldestJournal number];
          *buf = v41;
          v53 = number4;
          _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "Permanently failed to merge data for journal %lu", buf, 0xCu);
        }

        v24 = 2;
      }
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_29;
      }

      v25 = +[EDProtectedDatabasePersistence log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        number5 = [oldestJournal number];
        *buf = v41;
        v53 = number5;
        _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "Temporarily failed to merge data for journal %lu", buf, 0xCu);
      }

      v24 = 1;
    }

LABEL_29:
    [(EDProtectedDatabasePersistence *)self _detachJournalDatabaseFromConnection:connectionCopy];
    if (v24)
    {
      goto LABEL_42;
    }

    [journalManager mergedJournal:oldestJournal];
    oldestJournal2 = [journalManager oldestJournal];

    oldestJournal = oldestJournal2;
    if (!oldestJournal2)
    {
      goto LABEL_33;
    }
  }

  v30 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    number6 = [oldestJournal number];
    ef_publicDescription2 = [v20 ef_publicDescription];
    [(EDProtectedDatabasePersistence *)ef_publicDescription2 _runReconciliationWithSchema:buf connection:number6];
  }

  v33 = [EDProtectedDatabasePersistence _resultForConnection:connectionCopy success:0 error:v20 errorMessage:@"Attaching journal for merging"];
LABEL_41:
  v24 = v33;
LABEL_42:

LABEL_43:
  v37 = +[EDProtectedDatabasePersistence signpostLog];
  signpostID2 = [(EDProtectedDatabasePersistence *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *v48 = 134349312;
    v49 = v46;
    v50 = 2050;
    v51 = v45;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v37, OS_SIGNPOST_INTERVAL_END, signpostID2, "EDProtectedDatabasePersistenceReconciliation", "TotalJournaledRows=%{public,signpost.telemetry:number1}lu, NewJournaledRows=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", v48, 0x16u);
  }

  [v42 timeIntervalSinceNow];
  if (v39 < -10.0)
  {
    EFSaveTailspin();
  }

LABEL_49:
  return v24;
}

- (unint64_t)_mergeSchema:(id)schema connection:(id)connection journaledRows:(unint64_t *)rows newRows:(unint64_t *)newRows
{
  v25 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  tables = [schema tables];
  v12 = [tables countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(tables);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      v18 = 0;
      v19 = 0;
      v16 = [(EDProtectedDatabasePersistence *)self _mergeTable:v15 connection:connectionCopy journaledRows:&v19 newRows:&v18];
      if (v16)
      {
        break;
      }

      if (rows)
      {
        *rows += v19;
      }

      if (newRows)
      {
        *newRows += v18;
      }

      if (v12 == ++v14)
      {
        v12 = [tables countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  return v16;
}

- (unint64_t)_mergeTable:(id)table connection:(id)connection journaledRows:(unint64_t *)rows newRows:(unint64_t *)newRows
{
  v87 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  connectionCopy = connection;
  v46 = tableCopy;
  selfCopy = self;
  journalDatabaseName = [objc_opt_class() journalDatabaseName];
  v44 = [tableCopy fullNameWithDatabaseName:journalDatabaseName];

  protectedDatabaseName = [objc_opt_class() protectedDatabaseName];
  v43 = [tableCopy fullNameWithDatabaseName:protectedDatabaseName];

  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v48 = [(EDProtectedDatabasePersistence *)selfCopy _allReferencingColumnsForTable:tableCopy];
  uniqueColumns = [tableCopy uniqueColumns];
  firstObject = [uniqueColumns firstObject];

  if (firstObject)
  {
    v12 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      name = [tableCopy name];
      *buf = 138543874;
      *&buf[4] = name;
      *&buf[12] = 2114;
      *&buf[14] = firstObject;
      *&buf[22] = 2114;
      v86 = v48;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "Merging table %{public}@ with unique columns: %{public}@\n  referencing columns: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v12 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      name2 = [tableCopy name];
      *buf = 138543362;
      *&buf[4] = name2;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "Merging table %{public}@ without unique columns", buf, 0xCu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v86 = 0;
  v39 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v15 = &v77;
  do
  {
    v15[3] = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v76 = 0;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke;
    v64[3] = &unk_1E8256210;
    v17 = v44;
    v65 = v17;
    v18 = firstObject;
    v66 = v18;
    v19 = v43;
    v75 = a2;
    v67 = v19;
    v68 = selfCopy;
    v20 = v16;
    v69 = v20;
    v72 = &v77;
    v73 = &v81;
    v21 = v46;
    v70 = v21;
    v22 = connectionCopy;
    v71 = v22;
    v74 = buf;
    v23 = [v22 performWithOptions:3 transactionError:&v76 block:v64];
    v24 = v76;
    v40 = v19;
    v41 = v18;
    if (v82[3] || (v25 = [EDProtectedDatabasePersistence _resultForConnection:v22 success:v23 error:v24 errorMessage:@"Committing merge batch transaction"], (v82[3] = v25) != 0))
    {
      v26 = 0;
    }

    else
    {
      v27 = &v60;
      v60 = 0;
      v61 = &v60;
      v62 = 0x2020000000;
      v63 = 0;
      v28 = MEMORY[0x1E69E9820];
      v29 = v24;
      while (1)
      {
        v27[3] = 0;
        v59 = v29;
        v50[0] = v28;
        v50[1] = 3221225472;
        v50[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_95;
        v50[3] = &unk_1E8256260;
        v51 = v20;
        v52 = v21;
        v30 = v48;
        v57 = &v81;
        v53 = v30;
        v54 = selfCopy;
        v31 = v22;
        v55 = v31;
        v58 = &v60;
        v56 = v17;
        v32 = [v31 performWithOptions:3 transactionError:&v59 block:v50];
        v24 = v59;

        if (v82[3])
        {
          break;
        }

        v33 = [EDProtectedDatabasePersistence _resultForConnection:v31 success:v32 error:v24 errorMessage:@"Committing update batch transaction"];
        v82[3] = v33;
        v34 = v33 == 0;

        if (v34)
        {
          v27 = v61;
          v29 = v24;
          if (v61[3])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

LABEL_19:
      if (!v82[3])
      {
        v39 += v78[3];
      }

      _Block_object_dispose(&v60, 8);
      v26 = 1;
    }

    if (!v26)
    {
      break;
    }

    v15 = v78;
  }

  while (v78[3]);
  if (rows)
  {
    *rows = v39;
  }

  if (newRows)
  {
    *newRows = *(*&buf[8] + 24);
  }

  v35 = v82[3];
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v81, 8);
  return v35;
}

BOOL __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B948]);
  v4 = *MEMORY[0x1E699B768];
  v5 = [v3 initWithResultColumn:*MEMORY[0x1E699B768] table:*(a1 + 32)];
  if ([*(a1 + 40) count])
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2;
    v40[3] = &unk_1E82561C0;
    v6 = *(a1 + 40);
    v41 = *(a1 + 48);
    v42 = *(a1 + 32);
    v7 = [v6 ef_map:v40];
    if (![v7 count])
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:*(a1 + 112) object:*(a1 + 56) file:@"EDProtectedDatabasePersistence.m" lineNumber:595 description:@"We must have at least one join constraint"];
    }

    v8 = [objc_alloc(MEMORY[0x1E699B898]) initWithExpressions:v7];
    v9 = [v5 leftOuterJoin:*(a1 + 48) on:v8];
    [v9 addResultColumn:v4];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
    [v5 addResult:v10 alias:v4];
  }

  [v5 setLimit:500];
  v11 = objc_alloc_init(MEMORY[0x1E699B810]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_3;
  v36[3] = &unk_1E82561E8;
  v37 = *(a1 + 64);
  v12 = v11;
  v13 = *(a1 + 88);
  v38 = v12;
  v39 = v13;
  v35 = 0;
  v14 = [v34 executeSelectStatement:v5 withBlock:v36 error:&v35];
  v15 = v35;
  *(*(*(a1 + 96) + 8) + 24) = [EDProtectedDatabasePersistence _resultForConnection:v34 success:v14 error:v15 errorMessage:@"Selecting ROWIDs to merge"];
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v16 = 0;
  }

  else
  {
    v17 = [*(a1 + 56) hookRegistry];
    v18 = *(a1 + 64);
    v19 = [*(a1 + 72) name];
    [v17 persistenceWillAddProtectedDatabaseIDsFromJournal:v12 andReplaceJournalDatabaseIDsWithProtectedDatabaseIDs:v18 forTable:v19];

    v20 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v44 = v12;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_INFO, "Inserting %{public}@", buf, 0xCu);
    }

    v21 = [*(a1 + 72) rowIDColumn];
    v22 = [v21 columnExpression];
    v23 = [v22 in:v12];

    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v25 = *(a1 + 48);
    v26 = *(a1 + 32);
    v27 = [v23 ef_SQLExpression];
    v28 = [v24 initWithFormat:@"INSERT OR IGNORE INTO %@ SELECT * FROM %@ WHERE %@", v25, v26, v27];

    v29 = objc_alloc(MEMORY[0x1E696AEC0]);
    v30 = [*(a1 + 72) name];
    v31 = [v29 initWithFormat:@"Unable to insert new rows into protected database for table %@", v30];

    *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 56) _executeStatementString:v28 onConnection:*(a1 + 80) errorMessage:v31];
    if (*(*(*(a1 + 96) + 8) + 24) || (*(*(*(a1 + 96) + 8) + 24) = [*(a1 + 56) _deleteRowIDs:v12 fromJournal:*(a1 + 32) withConnection:v34]) != 0)
    {
      v16 = 0;
    }

    else
    {
      *(*(*(a1 + 104) + 8) + 24) += [v12 count];
      v16 = *(*(*(a1 + 96) + 8) + 24) == 0;
    }
  }

  return v16;
}

id __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699B8C8];
  v5 = *(a1 + 32);
  v6 = [v3 name];
  v7 = [v4 table:v5 column:v6];

  v8 = MEMORY[0x1E699B8C8];
  v9 = *(a1 + 40);
  v10 = [v3 name];
  v11 = [v8 table:v9 column:v10];

  v12 = [v7 equalTo:v11];

  return v12;
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectAtIndexedSubscript:0];
  v4 = [v3 databaseIDValue];

  v5 = [v9 objectAtIndexedSubscript:1];
  v6 = [v5 numberValue];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  else
  {
    [*(a1 + 40) addIndex:v4];
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

BOOL __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97;
  v17 = &unk_1E8256238;
  v5 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v6 = v3;
  v24 = *(a1 + 80);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v20 = v6;
  v21 = v7;
  v9 = v8;
  v10 = *(a1 + 88);
  v22 = v9;
  v25 = v10;
  v11 = v4;
  v23 = v11;
  [v5 enumerateKeysAndObjectsUsingBlock:&v14];
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v12 = 0;
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 56) _deleteRowIDs:v11 fromJournal:*(a1 + 72) withConnection:{v6, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
    [*(a1 + 32) removeObjectsForKeys:v11];
    v12 = *(*(*(a1 + 80) + 8) + 24) == 0;
  }

  return v12;
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v46 = a2;
  v45 = a3;
  v6 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = v46;
    *&buf[12] = 2114;
    *&buf[14] = v45;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "Replacing %{public}@ with %{public}@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) name];
  v8 = [v7 isEqualToString:@"subjects"];

  if (v8)
  {
    v9 = +[EDProtectedDatabasePersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2114;
      *&buf[14] = v45;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Mapping subjectID %{public}@ to %{public}@", buf, 0x16u);
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = *(a1 + 40);
  v10 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v10)
  {
    v43 = *v53;
    while (2)
    {
      v44 = v10;
      for (i = 0; i != v44; ++i)
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = [v12 table];
        v14 = [v13 name];

        v15 = [v12 name];
        v16 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:v14];
        [v16 setObject:v45 forKeyedSubscript:v15];
        v17 = [v12 columnExpression];
        v18 = [v17 equalTo:v46];
        [v16 setWhereClause:v18];

        v19 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = [v12 table];
        v21 = [v20 name];
        v22 = [v19 initWithFormat:@"Unable to merge journal for table %@", v21];

        v23 = *(a1 + 48);
        v51 = 0;
        v24 = [v23 executeUpdateStatement:v16 error:&v51];
        v25 = v51;
        *(*(*(a1 + 80) + 8) + 24) = [EDProtectedDatabasePersistence _resultForConnection:*(a1 + 48) success:v24 error:v25 errorMessage:v22];
        v26 = *(*(*(a1 + 80) + 8) + 24);
        if (v26)
        {
          if (v26 != 2)
          {
            v38 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = [*(a1 + 32) name];
              v40 = [v12 fullNameWithDatabaseName:0];
              __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97_cold_1(v39, v40, buf, v38);
            }

            *a4 = 1;
            goto LABEL_32;
          }

          v27 = +[EDProtectedDatabasePersistence log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            *&buf[4] = v14;
            *&buf[12] = 2114;
            *&buf[14] = v15;
            *&buf[22] = 2114;
            v61 = v46;
            LOWORD(v62) = 2114;
            *(&v62 + 2) = v45;
            _os_log_error_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_ERROR, "Conflict merging table %{public}@.%{public}@ %{public}@ with %{public}@", buf, 0x2Au);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v61 = __Block_byref_object_copy__34;
          *&v62 = __Block_byref_object_dispose__34;
          *(&v62 + 1) = 0;
          v28 = [*(a1 + 56) reconciliationMergeHandlers];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_104;
          v48[3] = &unk_1E82559D8;
          v50 = buf;
          v29 = v14;
          v49 = v29;
          [v28 performWhileLocked:v48];

          if (*(*&buf[8] + 40))
          {
            v30 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v56 = 138543362;
              v57 = v29;
              _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "Merge handler found for table %{public}@", v56, 0xCu);
            }

            v31 = *(*&buf[8] + 40);
            v32 = *(a1 + 64);
            v33 = *(*(a1 + 88) + 8) + 24;
            v47 = v25;
            v34 = [v31 handleReconciliationMergeErrorForTable:v29 columnName:v15 statement:v16 journalRowID:v46 protectedRowID:v45 connection:v32 rowsUpdated:v33 error:&v47];
            v35 = v47;

            *(*(*(a1 + 80) + 8) + 24) = v34;
            v36 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = *(*(*(a1 + 80) + 8) + 24);
              *v56 = 138543618;
              v57 = v29;
              v58 = 2048;
              v59 = v37;
              _os_log_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_DEFAULT, "Merge handler for table %{public}@ returned with result %lu", v56, 0x16u);
            }
          }

          else
          {
            v36 = +[EDProtectedDatabasePersistence log];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *v56 = 138543362;
              v57 = v29;
              _os_log_error_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_ERROR, "No merge handler found for table %{public}@", v56, 0xCu);
            }

            v35 = v25;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          *(*(*(a1 + 88) + 8) + 24) += sqlite3_changes([*(a1 + 48) sqlDB]);
          v35 = v25;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

  [*(a1 + 72) addObject:v46];
  if (*(*(*(a1 + 88) + 8) + 24) >= 0x1F4uLL)
  {
    *a4 = 1;
  }
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_104(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)_deleteRowIDs:(id)ds fromJournal:(id)journal withConnection:(id)connection
{
  dsCopy = ds;
  journalCopy = journal;
  connectionCopy = connection;
  v10 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [EDProtectedDatabasePersistence _deleteRowIDs:dsCopy fromJournal:v10 withConnection:?];
  }

  v11 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
  v12 = [v11 in:dsCopy];

  v13 = [objc_alloc(MEMORY[0x1E699B8E8]) initWithTable:journalCopy where:v12];
  v19 = 0;
  v14 = [connectionCopy executeDeleteStatement:v13 error:&v19];
  v15 = v19;
  journalCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to delete rows from journal for table %@", journalCopy];
  v17 = [EDProtectedDatabasePersistence _resultForConnection:connectionCopy success:v14 error:v15 errorMessage:journalCopy];

  return v17;
}

- (void)scheduleRecurringActivity
{
  if ([(EDProtectedDatabasePersistence *)self supportsJournaling])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke;
    aBlock[3] = &unk_1E8251BE0;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke_2;
    v5[3] = &unk_1E8251BE0;
    v5[4] = self;
    v4 = _Block_copy(v5);
    ef_xpc_activity_register();
  }
}

void __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DB8], 0);
  [*(a1 + 32) addAdditionalCriteriaToCleanupActivity:xdict];
}

void __59__EDProtectedDatabasePersistence_scheduleRecurringActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDProtectedDatabasePersistence log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Starting clean up", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [*(a1 + 32) database];
  v6 = [v5 protectedSchema];
  v7 = [v6 tables];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = *v14;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if (xpc_activity_should_defer(v3) && xpc_activity_set_state(v3, 3))
      {
        break;
      }

      v12 = [*(a1 + 32) _databaseIDsToDeleteForTable:v11];
      if ([v12 count])
      {
        [*(a1 + 32) _deleteDatabaseIDs:v12 fromTable:v11];
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (id)_databaseIDsToDeleteForTable:(id)table
{
  tableCopy = table;
  v5 = [(EDProtectedDatabasePersistence *)self _allReferencingColumnsForTable:tableCopy];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  string = [MEMORY[0x1E696AD60] string];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke;
  v22[3] = &unk_1E8256288;
  v24 = v25;
  v7 = string;
  v23 = v7;
  [v5 enumerateObjectsUsingBlock:v22];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  database = [(EDProtectedDatabasePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDProtectedDatabasePersistence _databaseIDsToDeleteForTable:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_2;
  v17[3] = &unk_1E8254150;
  v11 = tableCopy;
  v18 = v11;
  selfCopy = self;
  v12 = v7;
  v20 = v12;
  v13 = v8;
  v21 = v13;
  [database __performReadWithCaller:v10 usingBlock:v17];

  v14 = v21;
  v15 = v13;

  _Block_object_dispose(v25, 8);

  return v15;
}

void __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) appendString:@" UNION "];
  }

  v3 = *(a1 + 32);
  v4 = [v9 name];
  v5 = [v9 table];
  v6 = [v5 fullNameWithDatabaseName:0];
  [v3 appendFormat:@"SELECT DISTINCT %@ FROM %@", v4, v6];

  if ([v9 nullable])
  {
    [*(a1 + 32) appendString:@" WHERE "];
    v7 = [v9 columnExpressionWithFullName];
    v8 = [v7 isNotNull];
    [v8 ef_renderSQLExpressionInto:*(a1 + 32)];
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

uint64_t __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [*(a1 + 32) rowIDColumn];
    v6 = [v5 name];
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() protectedDatabaseName];
    v9 = [v7 fullNameWithDatabaseName:v8];
    v10 = [v4 initWithFormat:@"SELECT %1$@ FROM %2$@ WHERE %1$@ NOT IN (%3$@)", v6, v9, *(a1 + 48)];

    v11 = [v3 preparedStatementForQueryString:v10];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_3;
    v14[3] = &unk_1E8250300;
    v15 = *(a1 + 56);
    v12 = [v11 executeUsingBlock:v14 error:0];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void __63__EDProtectedDatabasePersistence__databaseIDsToDeleteForTable___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (void)_deleteDatabaseIDs:(id)ds fromTable:(id)table
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  tableCopy = table;
  v8 = [dsCopy mutableCopy];
  v9 = [(EDProtectedDatabasePersistence *)self _allReferencingColumnsForTable:tableCopy];
  database = [(EDProtectedDatabasePersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDProtectedDatabasePersistence _deleteDatabaseIDs:fromTable:]"];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke;
  v21 = &unk_1E8254150;
  v12 = v9;
  v22 = v12;
  selfCopy = self;
  v13 = v8;
  v24 = v13;
  v14 = tableCopy;
  v25 = v14;
  [database __performWriteWithCaller:v11 usingBlock:&v18];

  v15 = [EDProtectedDatabasePersistence log:v18];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 count];
    name = [v14 name];
    *buf = 134218242;
    v27 = v16;
    v28 = 2114;
    v29 = name;
    _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Deleted %lu rows from %{public}@", buf, 0x16u);
  }
}

uint64_t __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke(id *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 protectedDatabaseAttached])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = a1[4];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (([a1[5] _removeExistingDatabaseIDs:a1[6] withColumn:*(*(&v17 + 1) + 8 * v7) connection:v3] & 1) == 0)
          {
            v11 = 0;
            goto LABEL_13;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = [a1[6] allObjects];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke_2;
    v13[3] = &unk_1E8252B28;
    v9 = a1[7];
    v10 = a1[5];
    v14 = v9;
    v15 = v10;
    v16 = v3;
    [v8 ef_enumerateObjectsInBatchesOfSize:45000 block:v13];

    v11 = 1;
    v4 = v14;
LABEL_13:
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void __63__EDProtectedDatabasePersistence__deleteDatabaseIDs_fromTable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) rowIDColumn];
  v5 = [v4 columnExpressionWithFullName];
  v6 = [v5 in:v3];

  v7 = objc_alloc(MEMORY[0x1E699B8E8]);
  v8 = *(a1 + 32);
  v9 = [objc_opt_class() protectedDatabaseName];
  v10 = [v8 fullNameWithDatabaseName:v9];
  v11 = [v7 initWithTable:v10 where:v6];

  v12 = *(a1 + 48);
  v13 = 0;
  [v12 executeDeleteStatement:v11 error:&v13];
}

- (BOOL)_removeExistingDatabaseIDs:(id)ds withColumn:(id)column connection:(id)connection
{
  dsCopy = ds;
  columnCopy = column;
  connectionCopy = connection;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v10 = objc_alloc(MEMORY[0x1E699B948]);
  name = [columnCopy name];
  table = [columnCopy table];
  v13 = [table fullNameWithDatabaseName:0];
  v14 = [v10 initWithResultColumn:name table:v13];

  columnExpressionWithFullName = [columnCopy columnExpressionWithFullName];
  allObjects = [dsCopy allObjects];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke;
  v22[3] = &unk_1E82562B0;
  v17 = v14;
  v23 = v17;
  v18 = columnExpressionWithFullName;
  v24 = v18;
  v27 = &v28;
  v19 = connectionCopy;
  v25 = v19;
  v20 = dsCopy;
  v26 = v20;
  [allObjects ef_enumerateObjectsInBatchesOfSize:45000 block:v22];

  LOBYTE(dsCopy) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  return dsCopy;
}

void __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 40) in:a2];
  [*(a1 + 32) setWhere:v5];

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke_2;
  v8[3] = &unk_1E8250300;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  *(*(*(a1 + 64) + 8) + 24) = [v7 executeSelectStatement:v6 withBlock:v8 error:0];
  *a3 = *(*(*(a1 + 64) + 8) + 24) ^ 1;
}

void __83__EDProtectedDatabasePersistence__removeExistingDatabaseIDs_withColumn_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 objectAtIndexedSubscript:0];
  v3 = [v4 stringValue];
  [v2 removeObject:v3];
}

- (BOOL)_isJournalMalformedForSchema:(id)schema connection:(id)connection
{
  v38 = *MEMORY[0x1E69E9840];
  schemaCopy = schema;
  connectionCopy = connection;
  v23 = schemaCopy;
  journalDatabaseName = [objc_opt_class() journalDatabaseName];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [schemaCopy tables];
  v21 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v21)
  {
    v22 = *v33;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        name = [v7 name];
        v9 = [connectionCopy tableExists:name inDatabase:journalDatabaseName];

        if ((v9 & 1) == 0)
        {
LABEL_20:
          v19 = 1;
          goto LABEL_22;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        columns = [v7 columns];
        v11 = [columns countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          v12 = *v29;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(columns);
              }

              v14 = *(*(&v28 + 1) + 8 * j);
              v27 = 4;
              name2 = [v14 name];
              name3 = [v7 name];
              v17 = [connectionCopy columnExists:name2 inTable:name3 database:journalDatabaseName type:&v27];

              if (v17)
              {
                v18 = v27;
                if (v18 == [v14 type])
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            v11 = [columns countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v19 = 0;
      v21 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (unint64_t)_executeUpdateStatement:(id)statement onConnection:(id)connection errorMessage:(id)message
{
  statementCopy = statement;
  connectionCopy = connection;
  messageCopy = message;
  v14 = 0;
  v10 = [connectionCopy executeUpdateStatement:statementCopy error:&v14];
  v11 = v14;
  v12 = [EDProtectedDatabasePersistence _resultForConnection:connectionCopy success:v10 error:v11 errorMessage:messageCopy];

  return v12;
}

- (unint64_t)_executeStatementString:(id)string onConnection:(id)connection errorMessage:(id)message
{
  stringCopy = string;
  connectionCopy = connection;
  messageCopy = message;
  sqlConnection = [connectionCopy sqlConnection];
  v15 = 0;
  v11 = [sqlConnection executeStatementString:stringCopy error:&v15];
  v12 = v15;

  v13 = [EDProtectedDatabasePersistence _resultForConnection:connectionCopy success:v11 error:v12 errorMessage:messageCopy];
  return v13;
}

+ (BOOL)_isRecoverableError:(id)error
{
  errorCopy = error;
  if (_os_feature_enabled_impl())
  {
    v4 = 0;
  }

  else
  {
    code = [errorCopy code];
    v4 = code == 23 || code == 10;
  }

  return v4;
}

+ (unint64_t)_resultForConnection:(id)connection success:(BOOL)success error:(id)error errorMessage:(id)message
{
  connectionCopy = connection;
  errorCopy = error;
  messageCopy = message;
  if (success)
  {
    v12 = 0;
  }

  else if (([connectionCopy hadIOError] & 1) != 0 || +[EDProtectedDatabasePersistence _isRecoverableError:](EDProtectedDatabasePersistence, "_isRecoverableError:", errorCopy))
  {
    v12 = 1;
  }

  else
  {
    [connectionCopy handleError:errorCopy message:messageCopy];
    v12 = 2;
  }

  return v12;
}

- (id)_allReferencingColumnsForTable:(id)table
{
  tableCopy = table;
  foreignKeyReferences = [tableCopy foreignKeyReferences];
  v5 = [foreignKeyReferences mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v8 = v7;

  associatedColumns = [tableCopy associatedColumns];
  if ([associatedColumns count])
  {
    [v8 unionSet:associatedColumns];
  }

  return v8;
}

- (void)registerMergeHandler:(id)handler forTable:(id)table
{
  handlerCopy = handler;
  tableCopy = table;
  reconciliationMergeHandlers = [(EDProtectedDatabasePersistence *)self reconciliationMergeHandlers];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__EDProtectedDatabasePersistence_registerMergeHandler_forTable___block_invoke;
  v12[3] = &unk_1E82562D8;
  v10 = tableCopy;
  v16 = a2;
  v13 = v10;
  selfCopy = self;
  v11 = handlerCopy;
  v15 = v11;
  [reconciliationMergeHandlers performWhileLocked:v12];
}

void __64__EDProtectedDatabasePersistence_registerMergeHandler_forTable___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKey:a1[4]];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a1[7] object:a1[5] file:@"EDProtectedDatabasePersistence.m" lineNumber:952 description:@"Merge handler already registered for table"];
  }

  [v5 setObject:a1[6] forKey:a1[4]];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDProtectedDatabasePersistence.m" lineNumber:976 description:{@"%s can only be called from unit tests", "-[EDProtectedDatabasePersistence test_tearDown]"}];
  }

  journalManager = [(EDProtectedDatabasePersistence *)self journalManager];
  [journalManager test_tearDown];
}

- (void)_runReconciliationWithSchema:(uint64_t)a3 connection:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to attach journal %lu for reconciliation due to error %{public}@", v4, v5);
}

- (void)_runReconciliationWithSchema:(uint64_t)a3 connection:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to upgrade journal %lu for reconciliation due to error %{public}@", v4, v5);
}

void __79__EDProtectedDatabasePersistence__mergeTable_connection_journaledRows_newRows___block_invoke_2_97_cold_1(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to merge table %{public}@ for %{public}@", a3, a4);
}

- (void)_deleteRowIDs:(uint64_t)a1 fromJournal:(NSObject *)a2 withConnection:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "Deleting from journal: %{public}@", &v2, 0xCu);
}

@end