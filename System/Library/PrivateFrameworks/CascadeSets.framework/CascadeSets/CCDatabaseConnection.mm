@interface CCDatabaseConnection
+ (id)connectionToDatabaseAtURL:(id)l dataProtectionClass:(int)class openMode:(int64_t)mode accessAssertion:(id)assertion;
+ (id)readOnlyConnectionToDatabaseAtURL:(id)l accessAssertion:(id)assertion;
- (BOOL)_createTableWithRecordClass:(Class)class error:(id *)error;
- (BOOL)beginTransactionWithError:(id *)error;
- (BOOL)cleanup:(id *)cleanup;
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)enumerateRecordResultsOfSelect:(id)select recordClass:(Class)class error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateRowResultsOfSelect:(id)select error:(id *)error usingBlock:(id)block;
- (BOOL)firstResultOfSelect:(id)select outNumberValue:(id *)value error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)rollbackTransactionWithError:(id *)error;
- (CCDatabaseConnection)init;
- (CCDatabaseConnection)initWithDatabase:(id)database accessAssertion:(id)assertion;
- (id)enumeratorForRowResultsOfSelect:(id)select error:(id *)error;
- (void)dealloc;
@end

@implementation CCDatabaseConnection

- (void)dealloc
{
  [(CCDatabaseConnection *)self closeWithError:0];
  v3.receiver = self;
  v3.super_class = CCDatabaseConnection;
  [(CCDatabaseConnection *)&v3 dealloc];
}

- (CCDatabaseConnection)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)readOnlyConnectionToDatabaseAtURL:(id)l accessAssertion:(id)assertion
{
  assertionCopy = assertion;
  lCopy = l;
  v7 = [objc_opt_class() connectionToDatabaseAtURL:lCopy dataProtectionClass:0 openMode:1 accessAssertion:assertionCopy];

  return v7;
}

+ (id)connectionToDatabaseAtURL:(id)l dataProtectionClass:(int)class openMode:(int64_t)mode accessAssertion:(id)assertion
{
  v7 = *&class;
  assertionCopy = assertion;
  lCopy = l;
  v11 = [CCSQLiteDatabase alloc];
  path = [lCopy path];

  if ((mode - 1) >= 3)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  v14 = [(CCSQLiteDatabase *)v11 initWithPath:path accessPermission:modeCopy threadingMode:3 dataProtectionClass:v7 databaseOptions:3];

  v15 = [objc_alloc(objc_opt_class()) initWithDatabase:v14 accessAssertion:assertionCopy];

  return v15;
}

- (CCDatabaseConnection)initWithDatabase:(id)database accessAssertion:(id)assertion
{
  databaseCopy = database;
  assertionCopy = assertion;
  v14.receiver = self;
  v14.super_class = CCDatabaseConnection;
  v9 = [(CCDatabaseConnection *)&v14 init];
  v10 = v9;
  if (v9 && (v9->_inTransaction = 0, objc_storeStrong(&v9->_db, database), objc_storeStrong(&v10->_accessAssertion, assertion), !v10->_db))
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseConnection initWithDatabase:accessAssertion:];
    }

    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)openWithError:(id *)error
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA busy_timeout = %d", 500];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA cache_spill = %d", 800];
  if ([(CCDatabase *)self->_db openWithError:error]&& [(CCDatabase *)self->_db executeCommandString:v5 error:error]&& [(CCDatabase *)self->_db executeCommandString:@"PRAGMA foreign_keys = ON;" error:error])
  {
    v7 = [(CCDatabase *)self->_db executeCommandString:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)prepareWithError:(id *)error
{
  if ([(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:error]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:error]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:error]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:error]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:error]&& [(CCDatabaseConnection *)self _createTableWithRecordClass:objc_opt_class() error:error])
  {
    return 1;
  }

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseConnection prepareWithError:];
  }

  return 0;
}

- (BOOL)_createTableWithRecordClass:(Class)class error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  genSQLCreateStatements = [(objc_class *)class genSQLCreateStatements];
  v7 = [genSQLCreateStatements countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(genSQLCreateStatements);
        }

        if (![(CCDatabase *)self->_db executeCommandString:*(*(&v13 + 1) + 8 * i) error:error])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [genSQLCreateStatements countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)beginTransactionWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v4 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"Attempted to begin transaction when one is already active";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:11 userInfo:v5];
    CCSetError(error, v6);

    LOBYTE(v7) = 0;
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection beginTransactionWithError:];
    }

    v7 = [(CCDatabase *)self->_db beginTransactionWithError:error];
    if (v7)
    {
      LOBYTE(v7) = 1;
      self->_inTransaction = 1;
    }
  }

  return v7;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection commitTransactionWithError:];
    }

    v6 = [(CCDatabase *)self->_db commitTransactionWithError:error];
    if (v6)
    {
      self->_inTransaction = 0;
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"Attempted to commit transaction when none are active";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:12 userInfo:v8];
    CCSetError(error, v9);

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)rollbackTransactionWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection rollbackTransactionWithError:];
    }

    v6 = [(CCDatabase *)self->_db rollbackTransactionWithError:error];
    if (v6)
    {
      self->_inTransaction = 0;
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"Attempted to rollback transaction when none are active";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:13 userInfo:v8];
    CCSetError(error, v9);

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)cleanup:(id *)cleanup
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_inTransaction)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A278];
    v11[0] = @"Attempted to cleanup while transaction is active";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:16 userInfo:v5];
    CCSetError(cleanup, v6);

    return 0;
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseConnection cleanup:];
    }

    return [(CCDatabase *)self->_db cleanup:cleanup];
  }
}

- (id)enumeratorForRowResultsOfSelect:(id)select error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  selectCopy = select;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"Could not execute non-select command on read-only database connection";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    error = [v10 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:14 userInfo:v7];
    CCSetError(error, error);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v7 = [(CCDatabase *)self->_db enumerateCommand:selectCopy options:2];
  error = [v7 error];
  if (error)
  {
    CCSetError(error, error);
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      commandString = [selectCopy commandString];
      parameters = [selectCopy parameters];
      path = [(CCDatabase *)self->_db path];
      v16 = 138413058;
      v17 = commandString;
      v18 = 2112;
      v19 = parameters;
      v20 = 2112;
      v21 = path;
      v22 = 2112;
      v23 = error;
      _os_log_error_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_ERROR, "Could not execute command=%@ with parameters=%@ in database file at %@, err=%@", &v16, 0x2Au);
    }

    goto LABEL_7;
  }

  v7 = v7;
  v11 = v7;
LABEL_8:

  return v11;
}

- (BOOL)firstResultOfSelect:(id)select outNumberValue:(id *)value error:(id *)error
{
  selectCopy = select;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CCDatabaseConnection_firstResultOfSelect_outNumberValue_error___block_invoke;
  v13[3] = &unk_1E7C8B668;
  v13[4] = &v14;
  v9 = [(CCDatabaseConnection *)self enumerateRowResultsOfSelect:selectCopy error:error usingBlock:v13];
  v10 = v9;
  if (value)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *value = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v10;
}

BOOL __65__CCDatabaseConnection_firstResultOfSelect_outNumberValue_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  *a4 = 1;
  v6 = a2;
  v7 = [v6 columnCount];
  if (v7 >= 2)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database result has more than a single value: %@", v6, *MEMORY[0x1E696A278]];

    v17[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v11 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:15 userInfo:v13];
    CCSetError(a3, v14);
  }

  else
  {
    v8 = [v6 numberValueAtColumnIndex:0];

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return v7 < 2;
}

- (BOOL)enumerateRowResultsOfSelect:(id)select error:(id *)error usingBlock:(id)block
{
  selectCopy = select;
  blockCopy = block;
  v10 = [(CCDatabaseConnection *)self enumeratorForRowResultsOfSelect:selectCopy error:error];
  v11 = v10;
  if (v10)
  {
    v24 = 0;
    nextRow = [v10 nextRow];
    if (nextRow)
    {
      v13 = nextRow;
      while (1)
      {
        v14 = objc_autoreleasePoolPush();
        v23 = 0;
        v15 = blockCopy[2](blockCopy, v13, &v23, &v24);
        v16 = v23;
        v17 = v16;
        if (!v15 || v24 == 1)
        {
          break;
        }

        objc_autoreleasePoolPop(v14);
        nextRow2 = [v11 nextRow];

        v13 = nextRow2;
        if (!nextRow2)
        {
          goto LABEL_7;
        }
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
LABEL_7:
      v17 = 0;
      LOBYTE(v15) = 1;
    }

    error = [v11 error];
    v20 = error;
    if (error)
    {
      v21 = error;
    }

    else
    {
      v21 = v17;
    }

    CCSetError(error, v21);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)enumerateRecordResultsOfSelect:(id)select recordClass:(Class)class error:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__CCDatabaseConnection_enumerateRecordResultsOfSelect_recordClass_error_usingBlock___block_invoke;
  v13[3] = &unk_1E7C8B690;
  v14 = blockCopy;
  classCopy = class;
  v11 = blockCopy;
  LOBYTE(error) = [(CCDatabaseConnection *)self enumerateRowResultsOfSelect:select error:error usingBlock:v13];

  return error;
}

uint64_t __84__CCDatabaseConnection_enumerateRecordResultsOfSelect_recordClass_error_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 40) recordFromDatabaseValueRow:a2];
  if (!v7)
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"Unrecognized database record converted from SQLite value row";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:15 userInfo:v10];
    CCSetError(a3, v11);

    goto LABEL_5;
  }

  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    *a4 = 1;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

@end