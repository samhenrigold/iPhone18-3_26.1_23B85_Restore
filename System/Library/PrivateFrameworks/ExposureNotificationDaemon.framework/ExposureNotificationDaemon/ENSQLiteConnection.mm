@interface ENSQLiteConnection
- (BOOL)_executeSQL:(id)l cacheStatement:(BOOL)statement error:(id *)error bindingHandler:(id)handler enumerationHandler:(id)enumerationHandler;
- (BOOL)_prepareStatementForSQL:(id)l cache:(BOOL)cache error:(id *)error statementHandler:(id)handler;
- (BOOL)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row error:(id *)error;
- (BOOL)executeUncachedSQLStatements:(id)statements error:(id *)error;
- (BOOL)getIntegerValue:(int64_t *)value forPragma:(id)pragma error:(id *)error;
- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block;
- (BOOL)setIntegerValue:(int64_t)value forPragma:(id)pragma error:(id *)error;
- (BOOL)truncateWithError:(id *)error;
- (ENSQLiteConnection)initWithDatabaseURL:(id)l;
- (id)_initWithDatabaseURL:(id)l;
- (id)_lastErrorWithResultCode:(int)code;
- (int)openWithError:(id *)error;
- (int64_t)lastInsertedRowID;
- (void)close;
- (void)dealloc;
- (void)lastInsertedRowID;
@end

@implementation ENSQLiteConnection

- (ENSQLiteConnection)initWithDatabaseURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [ENSQLiteConnection initWithDatabaseURL:];
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    [ENSQLiteConnection initWithDatabaseURL:];
  }

  v5 = [(ENSQLiteConnection *)self _initWithDatabaseURL:lCopy];

  return v5;
}

- (id)_initWithDatabaseURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ENSQLiteConnection;
  v5 = [(ENSQLiteConnection *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    v5->_statementCache = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF140], &kSQLite3StatementDictionaryValueCallbacks);
  }

  return v5;
}

- (void)dealloc
{
  [(ENSQLiteConnection *)self close];
  v3.receiver = self;
  v3.super_class = ENSQLiteConnection;
  [(ENSQLiteConnection *)&v3 dealloc];
}

- (int)openWithError:(id *)error
{
  p_db = &self->_db;
  if (!self->_db)
  {
    fileURL = self->_fileURL;
    if (fileURL)
    {
      fileSystemRepresentation = [(NSURL *)fileURL fileSystemRepresentation];
    }

    else
    {
      fileSystemRepresentation = ":memory:";
    }

    v9 = sqlite3_open_v2(fileSystemRepresentation, p_db, self->_additionalOpenFlags | 6, 0);
    if (v9)
    {
      v4 = v9;
      v10 = @"opening database";
    }

    else
    {
      v11 = sqlite3_exec(*p_db, "PRAGMA auto_vacuum = 2;", 0, 0, 0);
      if (v11)
      {
        v4 = v11;
        v10 = @"setting auto_vacuum";
      }

      else
      {
        v12 = sqlite3_exec(*p_db, "PRAGMA cache_size = 512;", 0, 0, 0);
        if (v12)
        {
          v4 = v12;
          v10 = @"setting cache_size";
        }

        else
        {
          v13 = sqlite3_exec(*p_db, "PRAGMA journal_mode = WAL;", 0, 0, 0);
          if (v13)
          {
            v4 = v13;
            v10 = @"setting journal_mode";
          }

          else
          {
            v4 = sqlite3_exec(*p_db, "PRAGMA foreign_keys = ON;", 0, 0, 0);
            if (!v4)
            {
              return v4;
            }

            v10 = @"enabling foreign keys";
          }
        }
      }
    }

    if (gLogCategory__ENSQLiteConnection <= 90 && (gLogCategory__ENSQLiteConnection != -1 || _LogCategory_Initialize()))
    {
      [(ENSQLiteConnection *)p_db openWithError:v4, v10, fileSystemRepresentation];
      if (!error)
      {
        return v4;
      }
    }

    else if (!error)
    {
      return v4;
    }

    *error = [(ENSQLiteConnection *)self _lastErrorWithResultCode:v4];
    return v4;
  }

  LODWORD(v4) = 0;
  return v4;
}

- (void)close
{
  statementCache = self->_statementCache;
  if (statementCache)
  {
    CFRelease(statementCache);
    self->_statementCache = 0;
  }

  db = self->_db;
  if (db)
  {
    sqlite3_close(db);
    self->_db = 0;
  }
}

- (int64_t)lastInsertedRowID
{
  db = self->_db;
  if (db)
  {
  }

  else
  {
    [ENSQLiteConnection lastInsertedRowID];
    db = v5;
  }

  return sqlite3_last_insert_rowid(db);
}

- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  if (!self->_db)
  {
    [ENSQLiteConnection performTransactionWithType:error:usingBlock:];
  }

  if (self->_isInTransaction)
  {
    [ENSQLiteConnection performTransactionWithType:error:usingBlock:];
  }

  if (type > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_278FD2A80[type];
  }

  v10 = [(ENSQLiteConnection *)self executeUncachedSQL:v9 error:error];
  self->_isInTransaction = v10;
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = objc_autoreleasePoolPush();
  v22 = 0;
  v12 = blockCopy[2](blockCopy, self, &v22);
  v13 = v22;
  objc_autoreleasePoolPop(v11);
  if (error)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    if (v13)
    {
      v15 = v13;
      *error = v13;
    }

    else
    {
      v16 = ENErrorF(11, "SQLite transaction block failed without an error.");
      *error = v16;
    }
  }

  self->_isInTransaction = 0;
  if ((v12 & 1) == 0)
  {
    v21 = 0;
    v18 = [(ENSQLiteConnection *)self executeUncachedSQL:@"ROLLBACK" error:&v21];
    v19 = v21;
    if (v18 && gLogCategory__ENSQLiteConnection <= 90 && (gLogCategory__ENSQLiteConnection != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory__ENSQLiteConnection, "[ENSQLiteConnection performTransactionWithType:error:usingBlock:]", 90, "Failed to roll back transaction: %@", v19);
    }

LABEL_24:
    v17 = 0;
    goto LABEL_25;
  }

  v17 = [(ENSQLiteConnection *)self executeUncachedSQL:@"COMMIT" error:error];
LABEL_25:

  return v17;
}

- (BOOL)executeUncachedSQLStatements:(id)statements error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  statementsCopy = statements;
  v7 = [statementsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(statementsCopy);
        }

        if (![(ENSQLiteConnection *)self executeUncachedSQL:*(*(&v13 + 1) + 8 * i) error:error, v13])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [statementsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)_executeSQL:(id)l cacheStatement:(BOOL)statement error:(id *)error bindingHandler:(id)handler enumerationHandler:(id)enumerationHandler
{
  statementCopy = statement;
  lCopy = l;
  handlerCopy = handler;
  enumerationHandlerCopy = enumerationHandler;
  if (!self->_db)
  {
    [ENSQLiteConnection _executeSQL:cacheStatement:error:bindingHandler:enumerationHandler:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__ENSQLiteConnection__executeSQL_cacheStatement_error_bindingHandler_enumerationHandler___block_invoke;
  v20[3] = &unk_278FD2A40;
  v16 = handlerCopy;
  v21 = v16;
  v17 = enumerationHandlerCopy;
  v22 = v17;
  v20[4] = selfCopy;
  v18 = [(ENSQLiteConnection *)selfCopy _prepareStatementForSQL:lCopy cache:statementCopy error:error statementHandler:v20];

  objc_sync_exit(selfCopy);
  return v18;
}

uint64_t __89__ENSQLiteConnection__executeSQL_cacheStatement_error_bindingHandler_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  if (*(a1 + 48))
  {
    v7 = 0;
    v15 = 0;
    while (1)
    {
      v8 = [*(a1 + 32) _stepStatement:a2 hasRow:&v15 error:a3];
      if (!v8 || v15 != 1)
      {
        break;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = (*(*(a1 + 48) + 16))();
      v11 = v7;

      objc_autoreleasePoolPop(v9);
      if (v10)
      {
        v7 = v11;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v11 = v7;
LABEL_14:
    if (v11)
    {
      if (a3)
      {
        v14 = v11;
        v8 = 0;
        *a3 = v11;
      }

      else
      {
        v8 = 0;
      }
    }

    return v8;
  }

  else
  {
    v12 = *(a1 + 32);

    return [v12 _stepStatement:a2 hasRow:0 error:a3];
  }
}

- (BOOL)_prepareStatementForSQL:(id)l cache:(BOOL)cache error:(id *)error statementHandler:(id)handler
{
  cacheCopy = cache;
  lCopy = l;
  handlerCopy = handler;
  Value = CFDictionaryGetValue(self->_statementCache, lCopy);
  ppStmt = Value;
  if (Value)
  {
    v13 = Value;
    v14 = 0;
    goto LABEL_20;
  }

  while (1)
  {
    v21 = 0;
    v16 = sqlite3_prepare_v2(self->_db, [lCopy UTF8String], objc_msgSend(lCopy, "length"), &ppStmt, &v21);
    if (!v16)
    {
      break;
    }

    v15 = v16;
    if ((v16 - 5) >= 2)
    {
      v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v17 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && gLogCategory_ENSQLiteConnection <= 90 && (gLogCategory_ENSQLiteConnection != -1 || _LogCategory_Initialize()))
      {
        [ENSQLiteConnection _prepareStatementForSQL:v15 cache:lCopy error:? statementHandler:?];
        if (error)
        {
          goto LABEL_14;
        }
      }

      else if (error)
      {
LABEL_14:
        [(ENSQLiteConnection *)self _lastErrorWithResultCode:v15];
        *error = v14 = 0;
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  if (v21 && *v21)
  {
    [ENSQLiteConnection _prepareStatementForSQL:? cache:? error:? statementHandler:?];
    if (cacheCopy)
    {
      goto LABEL_8;
    }
  }

  else if (cacheCopy)
  {
LABEL_8:
    CFDictionarySetValue(self->_statementCache, lCopy, ppStmt);
LABEL_16:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = 1;
LABEL_19:
  v13 = ppStmt;
  if (!ppStmt)
  {
    v19 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v19 = handlerCopy[2](handlerCopy, v13, error);
  if (v14)
  {
    sqlite3_finalize(ppStmt);
  }

  else
  {
    sqlite3_clear_bindings(ppStmt);
    sqlite3_reset(ppStmt);
  }

LABEL_23:

  return v19 & 1;
}

- (BOOL)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row error:(id *)error
{
  if (row)
  {
    *row = 0;
  }

  if (!statement)
  {
    return 1;
  }

  do
  {
    v9 = sqlite3_step(statement);
    if (v9 == 101)
    {
      return 1;
    }

    if (v9 == 100)
    {
      result = 1;
      if (row)
      {
        *row = 1;
      }

      return result;
    }

    v10 = v9;
    v11 = v9;
  }

  while (v9 - 5 < 2);
  if (v9 == 19)
  {
    v12 = 10;
  }

  else
  {
    v12 = 90;
  }

  v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v13 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && v12 >= gLogCategory_ENSQLiteConnection && (gLogCategory_ENSQLiteConnection != -1 || _LogCategory_Initialize()))
  {
    [(ENSQLiteConnection *)statement _stepStatement:v11 hasRow:v12 error:?];
    if (error)
    {
      goto LABEL_15;
    }
  }

  else if (error)
  {
LABEL_15:
    v15 = [(ENSQLiteConnection *)self _lastErrorWithResultCode:v10];
    v16 = v15;
    result = 0;
    *error = v15;
    return result;
  }

  return 0;
}

- (BOOL)setIntegerValue:(int64_t)value forPragma:(id)pragma error:(id *)error
{
  value = [MEMORY[0x277CCACA0] stringWithFormat:@"PRAGMA %@=%lld", pragma, value];
  LOBYTE(error) = [(ENSQLiteConnection *)self executeUncachedSQL:value error:error];

  return error;
}

- (BOOL)getIntegerValue:(int64_t *)value forPragma:(id)pragma error:(id *)error
{
  pragma = [MEMORY[0x277CCACA0] stringWithFormat:@"PRAGMA %@", pragma];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ENSQLiteConnection_getIntegerValue_forPragma_error___block_invoke;
  v10[3] = &__block_descriptor_40_e27_B24__0__sqlite3_stmt__8__16l;
  v10[4] = value;
  LOBYTE(error) = [(ENSQLiteConnection *)self _executeSQL:pragma cacheStatement:0 error:error bindingHandler:0 enumerationHandler:v10];

  return error;
}

- (BOOL)truncateWithError:(id *)error
{
  if (!self->_db)
  {
    [ENSQLiteConnection truncateWithError:];
  }

  return _sqlite3_db_truncate() == 0;
}

- (id)_lastErrorWithResultCode:(int)code
{
  v3 = *&code;
  if (self->_db)
  {
    if (code)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  [ENSQLiteConnection _lastErrorWithResultCode:];
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v3 == 23)
  {
    v5 = ENErrorF(16, "Database inaccessible");
  }

  else
  {
    fileSystemRepresentation = [(NSURL *)self->_fileURL fileSystemRepresentation];
    db = self->_db;
    v8 = MEMORY[0x277CCACA0];
    v9 = sqlite3_errmsg(db);
    v10 = "<unavailable>";
    if (v9)
    {
      v10 = v9;
    }

    v11 = [v8 stringWithFormat:@"[%d, %s]", v3, v10];
    v5 = ENErrorF(11, "SQLite error at %s: %@", fileSystemRepresentation, v11);
  }

LABEL_10:

  return v5;
}

- (void)initWithDatabaseURL:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"fileURL != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDatabaseURL:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"fileURL.isFileURL" object:? file:? lineNumber:? description:?];
}

- (void)openWithError:(uint64_t)a3 .cold.1(sqlite3 **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277CCACA0];
  v8 = sqlite3_errmsg(*a1);
  v9 = "<unavailable>";
  if (v8)
  {
    v9 = v8;
  }

  v10 = [v7 stringWithFormat:@"[%d, %s]", a2, v9];
  LogPrintF_safe(&gLogCategory__ENSQLiteConnection, "[ENSQLiteConnection openWithError:]", 90, "SQLite error when %@ at %s: %@", a3, a4, v10);
}

- (void)lastInsertedRowID
{
  OUTLINED_FUNCTION_2_4();
  currentHandler = [MEMORY[0x277CCA888] currentHandler];
  [currentHandler handleFailureInMethod:v3 object:v2 file:@"ENSQLiteConnection.m" lineNumber:145 description:@"Database must be open"];

  *v0 = *v1;
}

- (void)performTransactionWithType:error:usingBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)performTransactionWithType:error:usingBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_executeSQL:cacheStatement:error:bindingHandler:enumerationHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_prepareStatementForSQL:(uint64_t)a3 cache:error:statementHandler:.cold.1(sqlite3 **a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA0];
  v6 = sqlite3_errmsg(*a1);
  v7 = "<unavailable>";
  if (v6)
  {
    v7 = v6;
  }

  v8 = [v5 stringWithFormat:@"[%d, %s]", a2, v7];
  LogPrintF_safe(&gLogCategory_ENSQLiteConnection, "[ENSQLiteConnection _prepareStatementForSQL:cache:error:statementHandler:]", 90, "Could not prepare statement: %@: %@", a3, v8);
}

- (void)_prepareStatementForSQL:(uint64_t *)a1 cache:error:statementHandler:.cold.2(uint64_t *a1)
{
  v2 = [MEMORY[0x277CCA888] currentHandler];
  v4 = *a1;
  OUTLINED_FUNCTION_0_8();
  [v3 handleFailureInMethod:v4 object:? file:? lineNumber:? description:?];
}

- (void)_stepStatement:(uint64_t)a3 hasRow:(uint64_t)a4 error:.cold.1(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sqlite3_sql(a1);
  v8 = *(a2 + 8);
  v9 = MEMORY[0x277CCACA0];
  v10 = sqlite3_errmsg(v8);
  v11 = "<unavailable>";
  if (v10)
  {
    v11 = v10;
  }

  v12 = [v9 stringWithFormat:@"[%d, %s]", a3, v11];
  LogPrintF_safe(&gLogCategory_ENSQLiteConnection, "[ENSQLiteConnection _stepStatement:hasRow:error:]", a4, "Step failed with error: %s: %@", v7, v12);
}

- (void)truncateWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"ENSQLiteConnection.m" lineNumber:382 description:@"Database must be open"];

  *v0 = *v1;
}

- (void)_lastErrorWithResultCode:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end