@interface SSSQLiteDatabase
+ (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)stepping;
+ (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)stepping;
+ (void)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row didFinish:(BOOL *)finish isCorrupt:(BOOL *)corrupt;
- (BOOL)columnName:(id)name existsInTable:(id)table;
- (BOOL)executeSQL:(id)l;
- (BOOL)setUserVersion:(int64_t)version forDatabase:(id)database;
- (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)stepping;
- (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)stepping;
- (BOOL)takesTaskCompletionAssertions;
- (SSSQLiteDatabase)initWithDatabaseURL:(id)l readOnly:(BOOL)only protectionType:(id)type;
- (id)_openDatabaseIfNotOpen;
- (int)_closeDatabaseIfOpen;
- (int)_openFlags;
- (int)_resetAndReopenDatabaseWithPath:(id)path;
- (int64_t)countChanges;
- (int64_t)userVersionForDatabase:(id)database;
- (sqlite3_stmt)_statementForSQL:(id)l cache:(BOOL)cache;
- (void)_accessDatabaseUsingBlock:(id)block;
- (void)_beginTaskCompletionAssertion;
- (void)_endTaskCompletionAssertion;
- (void)_expireBackgroundTask;
- (void)_resetCorruptDatabase;
- (void)_resetDatabaseWithPath:(id)path;
- (void)accessDatabaseUsingBlock:(id)block;
- (void)beginTaskCompletionAssertion;
- (void)dealloc;
- (void)dispatchBlockAsync:(id)async;
- (void)dispatchBlockSync:(id)sync;
- (void)endTaskCompletionAssertion;
- (void)expireBackgroundTask;
- (void)performTransactionWithBlock:(id)block;
- (void)prepareStatementForSQL:(id)l cache:(BOOL)cache usingBlock:(id)block;
- (void)setTakesTaskCompletionAssertions:(BOOL)assertions;
@end

@implementation SSSQLiteDatabase

- (void)_beginTaskCompletionAssertion
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_takesTaskCompletionAssertions)
  {
    taskAssertionCount = self->_taskAssertionCount;
    if (taskAssertionCount < 1)
    {
      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        LODWORD(v7) = shouldLog | 2;
      }

      else
      {
        LODWORD(v7) = shouldLog;
      }

      oSLogObject = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v7 = v7;
      }

      else
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v19 = 138412290;
        v20 = objc_opt_class();
        v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%@: Taking process assertion", &v19, 12);
        if (v9)
        {
          v10 = v9;
          v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
          free(v10);
          SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
        }
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.StoreServices.SSSQLiteDatabase.%@", -[NSString lastPathComponent](self->_databasePath, "lastPathComponent")];
      v4 = 1;
      self->_taskAssertion = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:1 reason:4 name:v18 withHandler:0];
    }

    else
    {
      v4 = taskAssertionCount + 1;
    }

    self->_taskAssertionCount = v4;
  }
}

- (id)_openDatabaseIfNotOpen
{
  v113[1] = *MEMORY[0x1E69E9840];
  p_db = &self->_db;
  if (self->_db)
  {
    return 0;
  }

  protectionType = self->_protectionType;
  if ((!protectionType || ![(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A3A8]]) && !MKBDeviceUnlockedSinceBoot())
  {
    v37 = MEMORY[0x1E696ABC0];
    v112 = @"sqlite_result";
    v113[0] = &unk_1F507A258;
    v38 = MEMORY[0x1E695DF20];
    v39 = v113;
    v40 = &v112;
    return [v37 errorWithDomain:@"SSErrorDomain" code:112 userInfo:{objc_msgSend(v38, "dictionaryWithObjects:forKeys:count:", v39, v40, 1)}];
  }

  v105 = 0;
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) != 0 || !v105)
  {
    v20 = sqlite3_open_v2([(NSString *)self->_databasePath fileSystemRepresentation], p_db, [(SSSQLiteDatabase *)self _openFlags], 0);
    if (v20)
    {
      v21 = v20;
      if (*p_db)
      {
        sqlite3_close(*p_db);
        *p_db = 0;
      }

      if (v21 == 23)
      {
        v22 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v22)
        {
          v22 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        oSLogObject = [v22 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v25 = shouldLog;
        }

        else
        {
          v25 = shouldLog & 2;
        }

        v21 = 23;
        if (v25)
        {
          v26 = objc_opt_class();
          databasePath = self->_databasePath;
          v108 = 138412802;
          v109 = v26;
          v110 = 1024;
          LODWORD(v111[0]) = 23;
          WORD2(v111[0]) = 2112;
          *(v111 + 6) = databasePath;
          v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "%@: Not authorized to open database: [%d, %@]", &v108, 28);
          if (v28)
          {
            v29 = v28;
            v30 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
            free(v29);
            SSFileLog(v22, @"%@", v31, v32, v33, v34, v35, v36, v30);
            v21 = 23;
          }
        }

        goto LABEL_93;
      }

      readOnly = self->_readOnly;
      v56 = +[SSLogConfig sharedStoreServicesConfig];
      v57 = v56;
      if (readOnly)
      {
        if (!v56)
        {
          v57 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v57 shouldLog];
        if ([v57 shouldLogToDisk])
        {
          LODWORD(v59) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v59) = shouldLog2;
        }

        oSLogObject2 = [v57 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v59;
        }

        else
        {
          v59 &= 2u;
        }

        if (v59)
        {
          v61 = objc_opt_class();
          v62 = self->_databasePath;
          v108 = 138412802;
          v109 = v61;
          v110 = 1024;
          LODWORD(v111[0]) = v21;
          WORD2(v111[0]) = 2112;
          *(v111 + 6) = v62;
          v63 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "%@: Could not open read-only db: [%d, %@]", &v108, 28);
          if (v63)
          {
            v64 = v63;
            v65 = [MEMORY[0x1E696AEC0] stringWithCString:v63 encoding:4];
            free(v64);
            SSFileLog(v57, @"%@", v66, v67, v68, v69, v70, v71, v65);
          }
        }

        goto LABEL_93;
      }

      if (!v56)
      {
        v57 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v57 shouldLog];
      if ([v57 shouldLogToDisk])
      {
        LODWORD(v73) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v73) = shouldLog3;
      }

      oSLogObject3 = [v57 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v73 = v73;
      }

      else
      {
        v73 &= 2u;
      }

      if (v73)
      {
        v75 = objc_opt_class();
        v76 = self->_databasePath;
        v108 = 138412802;
        v109 = v75;
        v110 = 1024;
        LODWORD(v111[0]) = v21;
        WORD2(v111[0]) = 2112;
        *(v111 + 6) = v76;
        v77 = _os_log_send_and_compose_impl(v73, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 16, "%@: Could not open database, resetting: [%d, %@]", &v108, 28);
        if (v77)
        {
          v78 = v77;
          v79 = [MEMORY[0x1E696AEC0] stringWithCString:v77 encoding:4];
          free(v78);
          SSFileLog(v57, @"%@", v80, v81, v82, v83, v84, v85, v79);
        }
      }

      v21 = [(SSSQLiteDatabase *)self _resetAndReopenDatabaseWithPath:self->_databasePath];
    }

    else
    {
      if (!self->_readOnly && self->_setupBlock)
      {
        v41 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v41)
        {
          v41 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v41 shouldLog];
        if ([v41 shouldLogToDisk])
        {
          v43 = shouldLog4 | 2;
        }

        else
        {
          v43 = shouldLog4;
        }

        oSLogObject4 = [v41 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
        {
          v45 = v43;
        }

        else
        {
          v45 = v43 & 2;
        }

        if (v45)
        {
          LOWORD(v108) = 0;
          v46 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_1D48BA000, oSLogObject4, 2, "SSSQLiteDatabase: Calling setupBlock", &v108, 2);
          if (v46)
          {
            v47 = v46;
            v48 = [MEMORY[0x1E696AEC0] stringWithCString:v46 encoding:4];
            free(v47);
            SSFileLog(v41, @"%@", v49, v50, v51, v52, v53, v54, v48);
          }
        }

        (*(self->_setupBlock + 2))();
      }

      v21 = 0;
    }

    if (self->_readOnly || v21)
    {
      if (v21)
      {
LABEL_93:
        v37 = MEMORY[0x1E696ABC0];
        v106 = @"sqlite_result";
        v107 = [MEMORY[0x1E696AD98] numberWithInt:v21];
        v38 = MEMORY[0x1E695DF20];
        v39 = &v107;
        v40 = &v106;
        return [v37 errorWithDomain:@"SSErrorDomain" code:112 userInfo:{objc_msgSend(v38, "dictionaryWithObjects:forKeys:count:", v39, v40, 1)}];
      }
    }

    else
    {
      v86 = sqlite3_exec(*p_db, "PRAGMA cache_size=512;", 0, 0, 0);
      v87 = v86;
      if (v86 == 26 || v86 == 11)
      {
        v88 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v88)
        {
          v88 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v88 shouldLog];
        if ([v88 shouldLogToDisk])
        {
          LODWORD(v90) = shouldLog5 | 2;
        }

        else
        {
          LODWORD(v90) = shouldLog5;
        }

        oSLogObject5 = [v88 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
        {
          v90 = v90;
        }

        else
        {
          v90 &= 2u;
        }

        if (v90)
        {
          v92 = objc_opt_class();
          v93 = self->_databasePath;
          v108 = 138412802;
          v109 = v92;
          v110 = 1024;
          LODWORD(v111[0]) = v87;
          WORD2(v111[0]) = 2112;
          *(v111 + 6) = v93;
          LODWORD(v104) = 28;
          v94 = _os_log_send_and_compose_impl(v90, 0, 0, 0, &dword_1D48BA000, oSLogObject5, 16, "%@: Resetting after error: [%d, %@]", &v108, v104);
          if (v94)
          {
            v95 = v94;
            v96 = [MEMORY[0x1E696AEC0] stringWithCString:v94 encoding:4];
            free(v95);
            SSFileLog(v88, @"%@", v97, v98, v99, v100, v101, v102, v96);
          }
        }

        v21 = [(SSSQLiteDatabase *)self _resetAndReopenDatabaseWithPath:self->_databasePath];
        db = self->_db;
        if (v21)
        {
          if (db)
          {
            sqlite3_close(db);
            *p_db = 0;
          }

          goto LABEL_93;
        }

        sqlite3_exec(db, "PRAGMA cache_size=512;", 0, 0, 0);
      }
    }

    sqlite3_busy_timeout(*p_db, 3600000);
    return 0;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog6 | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog6;
  }

  oSLogObject6 = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v108 = 138412546;
    v109 = v10;
    v110 = 2112;
    v111[0] = v105;
    v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, oSLogObject6, 16, "%@: Could not create directory to place new database: %@", &v108, 22);
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v12);
      SSFileLog(v6, @"%@", v14, v15, v16, v17, v18, v19, v13);
    }
  }

  return v105;
}

- (void)_endTaskCompletionAssertion
{
  if (self->_takesTaskCompletionAssertions)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = dispatch_time(0, 5000000000);
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SSSQLiteDatabase__endTaskCompletionAssertion__block_invoke;
    block[3] = &unk_1E84AC408;
    block[4] = self;
    dispatch_after(v5, dispatchQueue, block);
  }
}

- (SSSQLiteDatabase)initWithDatabaseURL:(id)l readOnly:(BOOL)only protectionType:(id)type
{
  onlyCopy = only;
  v36 = *MEMORY[0x1E69E9840];
  v9 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v28 = 138413058;
    v29 = objc_opt_class();
    v30 = 2114;
    path = [l path];
    v32 = 1024;
    v33 = onlyCopy;
    v34 = 2112;
    typeCopy = type;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "%@: initWithDatabaseURL:%{public}@ readOnly:%d protectionType:%@", &v28, 38);
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
    }
  }

  if (([l isFileURL] & 1) == 0)
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid database URL"];
    self = 0;
  }

  v27.receiver = self;
  v27.super_class = SSSQLiteDatabase;
  v22 = [(SSSQLiteDatabase *)&v27 init];
  if (v22)
  {
    v23 = NSClassFromString(&cfstr_Uiapplication.isa);
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStore.SSSQLiteDatabase.%p", v22];
    v25 = dispatch_queue_create([v24 UTF8String], 0);
    v22->_dispatchQueue = v25;
    dispatch_queue_set_specific(v25, "_ISSQLiteDispatchQueueTag", 1, 0);

    v22->_databasePath = [l path];
    v22->_readOnly = onlyCopy;
    v22->_protectionType = type;
    if (__TakesTaskCompletionAssertions == 1)
    {
      if (!v23)
      {
        v22->_takesTaskCompletionAssertions = 0;
        return v22;
      }

      v22->_takesTaskCompletionAssertions = 1;
      goto LABEL_19;
    }

    if (v22->_takesTaskCompletionAssertions)
    {
LABEL_19:
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }

  return v22;
}

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  _closeDatabaseIfOpen = [(SSSQLiteDatabase *)self _closeDatabaseIfOpen];
  if (_closeDatabaseIfOpen)
  {
    v4 = _closeDatabaseIfOpen;
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v21 = 138412802;
      v22 = objc_opt_class();
      v23 = 1024;
      v24 = v4;
      v25 = 2080;
      v26 = sqlite3_errstr(v4);
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%@: Failed to close database: [0, %d, %s]", &v21, 28);
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_queue_set_specific(dispatchQueue, "_ISSQLiteDispatchQueueTag", 0, 0);
    dispatch_release(self->_dispatchQueue);
    self->_dispatchQueue = 0;
  }

  taskAssertion = self->_taskAssertion;
  if (taskAssertion)
  {
    [(BKSProcessAssertion *)taskAssertion invalidate];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v20.receiver = self;
  v20.super_class = SSSQLiteDatabase;
  [(SSSQLiteDatabase *)&v20 dealloc];
}

+ (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)stepping
{
  v4 = 0;
  [self _stepStatement:stepping hasRow:0 didFinish:&v4 isCorrupt:0];
  return v4;
}

+ (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)stepping
{
  v4 = 0;
  [self _stepStatement:stepping hasRow:&v4 didFinish:0 isCorrupt:0];
  return v4;
}

- (void)accessDatabaseUsingBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__SSSQLiteDatabase_accessDatabaseUsingBlock___block_invoke;
  v3[3] = &unk_1E84AC738;
  v3[4] = self;
  v3[5] = block;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v3];
}

- (BOOL)columnName:(id)name existsInTable:(id)table
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  table = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA table_info(%@);", table];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SSSQLiteDatabase_columnName_existsInTable___block_invoke;
  v8[3] = &unk_1E84B1E40;
  v8[4] = self;
  v8[5] = name;
  v8[6] = &v9;
  [(SSSQLiteDatabase *)self prepareStatementForSQL:table cache:0 usingBlock:v8];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return self;
}

void __45__SSSQLiteDatabase_columnName_existsInTable___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) statementHasRowAfterStepping:a2])
  {
    while (1)
    {
      if (sqlite3_column_type(a2, 1) == 3)
      {
        v5 = sqlite3_column_text(a2, 1);
        if (v5)
        {
          if (*v5 && [objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4), "isEqualToString:", *(a1 + 40)}])
          {
            break;
          }
        }
      }

      if (([*(a1 + 32) statementHasRowAfterStepping:a2] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_7:

  objc_autoreleasePoolPop(v4);
}

- (int64_t)countChanges
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__SSSQLiteDatabase_countChanges__block_invoke;
  v4[3] = &unk_1E84AC698;
  v4[4] = self;
  v4[5] = &v5;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __32__SSSQLiteDatabase_countChanges__block_invoke(uint64_t a1)
{
  result = sqlite3_changes(*(*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dispatchBlockAsync:(id)async
{
  if (dispatch_get_specific("_ISSQLiteDispatchQueueTag") == 1)
  {
    v6 = *(async + 2);

    v6(async);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;

    dispatch_async(dispatchQueue, async);
  }
}

- (void)dispatchBlockSync:(id)sync
{
  if (dispatch_get_specific("_ISSQLiteDispatchQueueTag") == 1)
  {
    v6 = *(sync + 2);

    v6(sync);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;

    dispatch_sync(dispatchQueue, sync);
  }
}

- (BOOL)executeSQL:(id)l
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSSQLiteDatabase_executeSQL___block_invoke;
  v5[3] = &unk_1E84AC7B0;
  v5[4] = l;
  v5[5] = self;
  v5[6] = &v6;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__SSSQLiteDatabase_executeSQL___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) UTF8String];
  v3 = 0;
  do
  {
    errmsg = 0;
    v4 = sqlite3_exec(*(*(a1 + 40) + 8), v2, 0, 0, &errmsg);
    if (v4)
    {
      v5 = v4;
      v6 = errmsg;
      if (v4 - 5 > 1)
      {
        if (!errmsg)
        {
          v6 = sqlite3_errmsg(*(*(a1 + 40) + 8));
        }

        v22 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v22)
        {
          v22 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v23) = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          LODWORD(v23) = v23 | 2;
        }

        v24 = [v22 OSLogObject];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v23 = v23;
        }

        else
        {
          v23 &= 2u;
        }

        if (v23)
        {
          v25 = objc_opt_class();
          v26 = *(a1 + 32);
          v27 = *(*(a1 + 40) + 24);
          v40 = 138413314;
          v41 = v25;
          v42 = 2112;
          v43 = v26;
          v44 = 2048;
          v45 = v5;
          v46 = 2080;
          v47 = v6;
          v48 = 2112;
          v49 = v27;
          LODWORD(v38) = 52;
          v28 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1D48BA000, v24, 16, "%@: Could not execute SQL: %@: [%ld, %s, %@]", &v40, v38);
          if (v28)
          {
            v29 = v28;
            v30 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
            free(v29);
            SSFileLog(v22, @"%@", v31, v32, v33, v34, v35, v36, v30);
          }
        }

        if (v5 == 26 || v5 == 11)
        {
          [*(a1 + 40) _resetCorruptDatabase];
        }

        v21 = 0;
      }

      else
      {
        if (!errmsg)
        {
          v6 = sqlite3_errmsg(*(*(a1 + 40) + 8));
        }

        v7 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v8) = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          LODWORD(v8) = v8 | 2;
        }

        v9 = [v7 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v8 = v8;
        }

        else
        {
          v8 &= 2u;
        }

        if (v8)
        {
          v10 = objc_opt_class();
          v11 = *(*(a1 + 40) + 24);
          v40 = 138413314;
          v41 = v10;
          v42 = 2048;
          v43 = v5;
          v44 = 2048;
          v45 = v3;
          v46 = 2080;
          v47 = v6;
          v48 = 2112;
          v49 = v11;
          LODWORD(v38) = 52;
          v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, v9, 2, "%@: Spin for SQL lock: %ld, spin count: [%ld, %s, %@]", &v40, v38);
          if (v12)
          {
            v13 = v12;
            v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
            free(v13);
            SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v14);
          }
        }

        [MEMORY[0x1E696AF00] sleepForTimeInterval:0.5];
        ++v3;
        v21 = 1;
      }
    }

    else
    {
      v21 = 0;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (errmsg)
    {
      sqlite3_free(errmsg);
    }
  }

  while ((v21 & 1) != 0);
}

- (void)performTransactionWithBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__SSSQLiteDatabase_performTransactionWithBlock___block_invoke;
  v3[3] = &unk_1E84AF318;
  v3[4] = self;
  v3[5] = block;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v3];
}

_BYTE *__48__SSSQLiteDatabase_performTransactionWithBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[34];
  if ((v3 & 1) == 0)
  {
    if (result[32])
    {
      v4 = @"BEGIN DEFERRED TRANSACTION;";
    }

    else
    {
      v4 = @"BEGIN IMMEDIATE TRANSACTION;";
    }

    result = [result executeSQL:v4];
    *(*(a1 + 32) + 34) = result;
  }

  if (*(*(a1 + 32) + 34) == 1)
  {
    result = (*(*(a1 + 40) + 16))();
    if ((v3 & 1) == 0)
    {
      if (result)
      {
        result = [*(a1 + 32) executeSQL:@"COMMIT;"];
      }

      else
      {
        result = [*(a1 + 32) executeSQL:@"ROLLBACK;"];
      }

      *(*(a1 + 32) + 34) = 0;
    }
  }

  return result;
}

- (void)prepareStatementForSQL:(id)l cache:(BOOL)cache usingBlock:(id)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__SSSQLiteDatabase_prepareStatementForSQL_cache_usingBlock___block_invoke;
  v5[3] = &unk_1E84B1E68;
  v5[4] = self;
  v5[5] = l;
  cacheCopy = cache;
  v5[6] = block;
  [(SSSQLiteDatabase *)self _accessDatabaseUsingBlock:v5];
}

uint64_t __60__SSSQLiteDatabase_prepareStatementForSQL_cache_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _statementForSQL:*(a1 + 40) cache:*(a1 + 56)];
  result = (*(*(a1 + 48) + 16))();
  if (v3 == *(*(a1 + 32) + 8))
  {
    sqlite3_clear_bindings(v4);
    result = sqlite3_reset(v4);
    if ((*(a1 + 56) & 1) == 0)
    {
      return sqlite3_finalize(v4);
    }
  }

  return result;
}

- (BOOL)setUserVersion:(int64_t)version forDatabase:(id)database
{
  version = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@.user_version=%ld;", database, version];
  v6 = [(SSSQLiteDatabase *)self executeSQL:version];

  return v6;
}

- (int64_t)userVersionForDatabase:(id)database
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  database = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA %@.user_version;", database];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SSSQLiteDatabase_userVersionForDatabase___block_invoke;
  v7[3] = &unk_1E84B1E90;
  v7[4] = self;
  v7[5] = &v8;
  [(SSSQLiteDatabase *)self prepareStatementForSQL:database cache:0 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __43__SSSQLiteDatabase_userVersionForDatabase___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  if ([*(a1 + 32) statementHasRowAfterStepping:a2])
  {
    v4 = SSSQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 40) + 8) + 24) = [v4 integerValue];
  }
}

- (void)beginTaskCompletionAssertion
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSSQLiteDatabase_beginTaskCompletionAssertion__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)endTaskCompletionAssertion
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SSSQLiteDatabase_endTaskCompletionAssertion__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)expireBackgroundTask
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSSQLiteDatabase_expireBackgroundTask__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)setTakesTaskCompletionAssertions:(BOOL)assertions
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SSSQLiteDatabase_setTakesTaskCompletionAssertions___block_invoke;
  v4[3] = &unk_1E84AD498;
  v4[4] = self;
  assertionsCopy = assertions;
  dispatch_async(dispatchQueue, v4);
}

- (BOOL)statementDidFinishAfterStepping:(sqlite3_stmt *)stepping
{
  v6 = 0;
  [objc_opt_class() _stepStatement:stepping hasRow:0 didFinish:&v6 + 1 isCorrupt:&v6];
  if (v6)
  {
    [(SSSQLiteDatabase *)self _resetCorruptDatabase];
    v4 = 0;
  }

  else
  {
    v4 = HIBYTE(v6);
  }

  return v4 & 1;
}

- (BOOL)statementHasRowAfterStepping:(sqlite3_stmt *)stepping
{
  v6 = 0;
  [objc_opt_class() _stepStatement:stepping hasRow:&v6 + 1 didFinish:0 isCorrupt:&v6];
  if (v6)
  {
    [(SSSQLiteDatabase *)self _resetCorruptDatabase];
    v4 = 0;
  }

  else
  {
    v4 = HIBYTE(v6);
  }

  return v4 & 1;
}

- (BOOL)takesTaskCompletionAssertions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SSSQLiteDatabase_takesTaskCompletionAssertions__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (void)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row didFinish:(BOOL *)finish isCorrupt:(BOOL *)corrupt
{
  v38 = *MEMORY[0x1E69E9840];
  if (statement)
  {
    while (1)
    {
      v10 = sqlite3_step(statement);
      if (v10 == 9)
      {
        break;
      }

      if (v10 == 101)
      {
        if (finish)
        {
          *finish = 1;
        }

        return;
      }

      if (v10 == 100)
      {
        if (row)
        {
          *row = 1;
        }

        return;
      }

      v11 = v10;
      if (v10 - 7 <= 0xFFFFFFFD)
      {
        v12 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v12)
        {
          v12 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v12 shouldLog];
        if ([v12 shouldLogToDisk])
        {
          LODWORD(v14) = shouldLog | 2;
        }

        else
        {
          LODWORD(v14) = shouldLog;
        }

        oSLogObject = [v12 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v14 = v14;
        }

        else
        {
          v14 &= 2u;
        }

        if (v14)
        {
          v16 = objc_opt_class();
          v17 = sqlite3_sql(statement);
          v18 = sqlite3_db_handle(statement);
          v30 = 138413058;
          v31 = v16;
          v32 = 2080;
          v33 = v17;
          v34 = 1024;
          v35 = v11;
          v36 = 2080;
          v37 = sqlite3_errmsg(v18);
          v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%@: Step failed: %s: [%d, %s]", &v30, 38);
          if (v19)
          {
            v20 = v19;
            v21 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
            free(v20);
            SSFileLog(v12, @"%@", v22, v23, v24, v25, v26, v27, v21);
          }
        }

        if (corrupt)
        {
          v29 = v11 == 11 || v11 == 26;
          *corrupt = v29;
        }

        return;
      }

      if (v10 == 6)
      {
        sqlite3_reset(statement);
      }
    }
  }
}

- (void)_accessDatabaseUsingBlock:(id)block
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SSSQLiteDatabase__accessDatabaseUsingBlock___block_invoke;
  v4[3] = &unk_1E84AF318;
  v4[4] = self;
  v4[5] = block;
  if (dispatch_get_specific("_ISSQLiteDispatchQueueTag") == 1)
  {
    __46__SSSQLiteDatabase__accessDatabaseUsingBlock___block_invoke(v4);
  }

  else
  {
    dispatch_sync(self->_dispatchQueue, v4);
  }
}

uint64_t __46__SSSQLiteDatabase__accessDatabaseUsingBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _beginTaskCompletionAssertion];
  if ([*(a1 + 32) _openDatabaseIfNotOpen])
  {
    v2 = *(a1 + 32);

    return [v2 _endTaskCompletionAssertion];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    return [*(a1 + 32) _endTaskCompletionAssertion];
  }
}

- (int)_closeDatabaseIfOpen
{
  db = self->_db;
  if (db)
  {
    if (self->_statementCache)
    {
      CFRelease(self->_statementCache);
      self->_statementCache = 0;
      db = self->_db;
    }

    stmt = sqlite3_next_stmt(db, 0);
    if (stmt)
    {
      v5 = stmt;
      do
      {
        sqlite3_finalize(v5);
        v5 = sqlite3_next_stmt(self->_db, v5);
      }

      while (v5);
    }

    LODWORD(db) = sqlite3_close(self->_db);
    if (!db)
    {
      self->_db = 0;
    }
  }

  return db;
}

void __47__SSSQLiteDatabase__endTaskCompletionAssertion__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 80) = v4;
    if (!*(*(a1 + 32) + 80))
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = v7 | 2;
      }

      else
      {
        LODWORD(v8) = v7;
      }

      v9 = [v6 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v20 = 138412290;
        v21 = objc_opt_class();
        v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1D48BA000, v9, 1, "%@: Releasing process assertion", &v20, 12);
        if (v10)
        {
          v11 = v10;
          v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
          free(v11);
          SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v12);
        }
      }

      v19 = *(*(a1 + 32) + 72);
      if (v19)
      {
        [v19 invalidate];

        *(*(a1 + 32) + 72) = 0;
      }
    }
  }
}

- (void)_expireBackgroundTask
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_takesTaskCompletionAssertions && self->_taskAssertion)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "%@: Releasing process assertion, background task expired", &v16, 12);
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }

    self->_taskAssertionCount = 0;
    [(BKSProcessAssertion *)self->_taskAssertion invalidate];

    self->_taskAssertion = 0;
  }
}

- (int)_openFlags
{
  if (self->_readOnly)
  {
    v2 = 1;
  }

  else
  {
    v2 = 6;
  }

  protectionType = self->_protectionType;
  if (protectionType)
  {
    if ([(NSString *)self->_protectionType isEqualToString:*MEMORY[0x1E696A3A8]])
    {
      v4 = 0x400000;
    }

    else if ([(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A378]])
    {
      v4 = 0x100000;
    }

    else if ([(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A380]])
    {
      v4 = 0x200000;
    }

    else if ([(NSString *)protectionType isEqualToString:*MEMORY[0x1E696A388]])
    {
      v4 = 3145728;
    }

    else
    {
      v4 = 0;
    }

    return v4 | v2;
  }

  return v2;
}

- (int)_resetAndReopenDatabaseWithPath:(id)path
{
  v27 = *MEMORY[0x1E69E9840];
  _closeDatabaseIfOpen = [(SSSQLiteDatabase *)self _closeDatabaseIfOpen];
  if (_closeDatabaseIfOpen)
  {
    v6 = _closeDatabaseIfOpen;
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v21 = 138412802;
      v22 = objc_opt_class();
      v23 = 1024;
      v24 = v6;
      v25 = 2080;
      v26 = sqlite3_errstr(v6);
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%@: Failed to close database: [1, %d, %s]", &v21, 28);
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  if (self->_readOnly)
  {
    return 1;
  }

  [(SSSQLiteDatabase *)self _resetDatabaseWithPath:path];
  return sqlite3_open_v2([path fileSystemRepresentation], &self->_db, -[SSSQLiteDatabase _openFlags](self, "_openFlags"), 0);
}

- (void)_resetCorruptDatabase
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_readOnly)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      databasePath = self->_databasePath;
      v33 = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = databasePath;
      v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%@: Re-open database: %@", &v33, 22);
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
        free(v10);
        SSFileLog(v3, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }

    [(SSSQLiteDatabase *)self _resetDatabaseWithPath:self->_databasePath];
    [(SSSQLiteDatabase *)self _openDatabaseIfNotOpen];
    if (self->_setupBlock)
    {
      v18 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = shouldLog2 | 2;
      }

      else
      {
        v20 = shouldLog2;
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 2;
      }

      if (v22)
      {
        LOWORD(v33) = 0;
        LODWORD(v32) = 2;
        v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "SSSQLiteDatabase: Calling setupBlock", &v33, v32);
        if (v23)
        {
          v24 = v23;
          v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
          free(v24);
          SSFileLog(v18, @"%@", v26, v27, v28, v29, v30, v31, v25);
        }
      }

      (*(self->_setupBlock + 2))();
    }
  }
}

- (void)_resetDatabaseWithPath:(id)path
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_db)
  {
    goto LABEL_15;
  }

  v5 = CPSqliteDatabaseDelete();
  _closeDatabaseIfOpen = [(SSSQLiteDatabase *)self _closeDatabaseIfOpen];
  if (_closeDatabaseIfOpen)
  {
    v7 = _closeDatabaseIfOpen;
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v31 = 138412802;
      v32 = objc_opt_class();
      v33 = 1024;
      v34 = v7;
      v35 = 2080;
      v36 = sqlite3_errstr(v7);
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%@: Failed to close database: [2, %d, %s]", &v31, 28);
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
        free(v13);
        SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }
  }

  if ((v5 & 1) == 0)
  {
LABEL_15:
    v21 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = [&unk_1F507A300 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(&unk_1F507A300);
          }

          [v21 removeItemAtPath:objc_msgSend(path error:{"stringByAppendingString:", *(*(&v26 + 1) + 8 * i)), 0}];
        }

        v23 = [&unk_1F507A300 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }
}

- (sqlite3_stmt)_statementForSQL:(id)l cache:(BOOL)cache
{
  cacheCopy = cache;
  v39 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  if (!cache || (v7 = self->_statementCache) == 0 || (ppStmt = CFDictionaryGetValue(v7, l)) == 0)
  {
    do
    {
      v8 = sqlite3_prepare_v2(self->_db, [l UTF8String], objc_msgSend(l, "length"), &ppStmt, 0);
    }

    while ((v8 - 5) < 2);
    v9 = v8;
    if (v8)
    {
      v10 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v12) = shouldLog | 2;
      }

      else
      {
        LODWORD(v12) = shouldLog;
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v12 = v12;
      }

      else
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v14 = objc_opt_class();
        v15 = sqlite3_errmsg(self->_db);
        databasePath = self->_databasePath;
        v29 = 138413314;
        v30 = v14;
        v31 = 2112;
        lCopy = l;
        v33 = 1024;
        v34 = v9;
        v35 = 2080;
        v36 = v15;
        v37 = 2112;
        v38 = databasePath;
        v17 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%@: Could not prepare statement: %@: [%d, %s, %@]", &v29, 48);
        if (v17)
        {
          v18 = v17;
          v19 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
          free(v18);
          SSFileLog(v10, @"%@", v20, v21, v22, v23, v24, v25, v19);
        }
      }

      if (v9 == 26 || v9 == 11)
      {
        [(SSSQLiteDatabase *)self _resetCorruptDatabase];
      }
    }

    else if (cacheCopy)
    {
      statementCache = self->_statementCache;
      if (!statementCache)
      {
        statementCache = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], &kSqlite3StatementDictionaryValueCallbacks);
        self->_statementCache = statementCache;
      }

      CFDictionarySetValue(statementCache, l, ppStmt);
    }
  }

  return ppStmt;
}

@end