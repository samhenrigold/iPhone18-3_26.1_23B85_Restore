@interface MSPerformanceLogger
+ (id)sharedLogger;
+ (void)nukeCompletionBlock:(id)block;
- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion;
- (MSPerformanceLogger)init;
- (void)_logSqliteErrorLine:(int)line;
- (void)dbQueueDiscardOperation:(id)operation itemGUID:(id)d;
- (void)discardOperation:(id)operation itemGUID:(id)d;
- (void)startOperation:(id)operation itemGUID:(id)d;
- (void)stopOperation:(id)operation itemGUID:(id)d;
- (void)summarizeOperation:(id)operation itemGUID:(id)d formatBlock:(id)block;
@end

@implementation MSPerformanceLogger

- (void)summarizeOperation:(id)operation itemGUID:(id)d formatBlock:(id)block
{
  operationCopy = operation;
  dCopy = d;
  blockCopy = block;
  v11 = MSPlatform();
  if (objc_opt_respondsToSelector())
  {
    v12 = MSPlatform();
    isPerformanceLoggingEnabled = [v12 isPerformanceLoggingEnabled];

    if (isPerformanceLoggingEnabled)
    {
      date = [MEMORY[0x277CBEAA8] date];
      dbQueue = [(MSASModelBase *)self dbQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__MSPerformanceLogger_summarizeOperation_itemGUID_formatBlock___block_invoke;
      block[3] = &unk_278E921D0;
      block[4] = self;
      v18 = operationCopy;
      v19 = dCopy;
      v20 = date;
      v21 = blockCopy;
      v16 = date;
      dispatch_async(dbQueue, block);
    }
  }

  else
  {
  }
}

uint64_t __63__MSPerformanceLogger_summarizeOperation_itemGUID_formatBlock___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:{@"select event, timestamp from PerfLog where operation = ? and GUID = ? order by rowid asc;"}];
  v3 = MSSqliteBindStringOrNull(v2, 1, *(a1 + 40));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    v5 = [*(a1 + 32) dbQueueDB];
    v6 = *(a1 + 32);
    v7 = 178;
  }

  else
  {
    v8 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
    v9 = v8;
    MSSqliteTrapForDBLockError(v8);
    if (!v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        *v36 = 138543618;
        *&v36[4] = v11;
        *&v36[12] = 2114;
        *&v36[14] = v12;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Summarizing %{public}@ - %{public}@", v36, 0x16u);
      }

      v13 = 0;
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
      while (1)
      {
        v17 = v13;
        v18 = sqlite3_step(v2);
        if (v18 != 100)
        {
          break;
        }

        v19 = MSSqliteStringFromStatementColumn(v2, 0);
        v20 = MSSqliteDateFromTimeIntervalStatementColumn(v2, 1);
        v13 = v20;
        if (!v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v32 = *(a1 + 40);
            v33 = *(a1 + 48);
            *v36 = 138543618;
            *&v36[4] = v32;
            *&v36[12] = 2114;
            *&v36[14] = v33;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %{public}@ Perf log entry missing event indicator. Aborting.", v36, 0x16u);
          }

          v19 = 0;
          goto LABEL_44;
        }

        if (!v20)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 40);
            v25 = *(a1 + 48);
            *v36 = 138543618;
            *&v36[4] = v24;
            *&v36[12] = 2114;
            *&v36[14] = v25;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %{public}@ Perf log entry missing facility indicator. Aborting.", v36, 0x16u);
          }

          goto LABEL_44;
        }

        if ([v19 isEqualToString:@"start"])
        {
          if (v14)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v26 = *(a1 + 40);
              v27 = *(a1 + 48);
              *v36 = 138543618;
              *&v36[4] = v26;
              *&v36[12] = 2114;
              *&v36[14] = v27;
              v28 = MEMORY[0x277D86220];
              v29 = "%{public}@ - %{public}@ Unexpected start event. Aborting.";
              goto LABEL_40;
            }

            goto LABEL_43;
          }

          if (v17)
          {
            [v13 timeIntervalSinceDate:v17];
            v16 = v16 + v21;
          }

          v14 = 1;
        }

        else
        {
          if (![v19 isEqualToString:@"stop"])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v34 = *(a1 + 40);
              v35 = *(a1 + 48);
              *v36 = 138543874;
              *&v36[4] = v34;
              *&v36[12] = 2114;
              *&v36[14] = v35;
              *&v36[22] = 2114;
              v37 = v19;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %{public}@ Unknown event type “%{public}@”. Aborting.", v36, 0x20u);
            }

            goto LABEL_43;
          }

          if (v14 != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v30 = *(a1 + 40);
              v31 = *(a1 + 48);
              *v36 = 138543618;
              *&v36[4] = v30;
              *&v36[12] = 2114;
              *&v36[14] = v31;
              v28 = MEMORY[0x277D86220];
              v29 = "%{public}@ - %{public}@ Unexpected stop event. Aborting.";
LABEL_40:
              _os_log_impl(&dword_245B99000, v28, OS_LOG_TYPE_INFO, v29, v36, 0x16u);
            }

LABEL_43:

LABEL_44:
            goto LABEL_45;
          }

          if (v17)
          {
            [v13 timeIntervalSinceDate:v17];
            v14 = 0;
            v15 = v15 + v22;
          }

          else
          {
            v14 = 0;
          }
        }
      }

      if (v18 == 101)
      {
        if (v14 == 1 && v13)
        {
          [*(a1 + 56) timeIntervalSinceDate:v13];
          v15 = v15 + v23;
        }

        (*(*(a1 + 64) + 16))(v15, v16);
      }

      else
      {
        [*(a1 + 32) _logSqliteErrorLine:232];
      }

LABEL_45:

      if (v2)
      {
        goto LABEL_6;
      }

      return [*(a1 + 32) dbQueueDiscardOperation:*(a1 + 40) itemGUID:{*(a1 + 48), *v36, *&v36[8]}];
    }

    v5 = [*(a1 + 32) dbQueueDB];
    v6 = *(a1 + 32);
    v7 = 179;
  }

  MSLogSqliteError(v5, v6, v7);
  if (v2)
  {
LABEL_6:
    sqlite3_reset(v2);
  }

  return [*(a1 + 32) dbQueueDiscardOperation:*(a1 + 40) itemGUID:{*(a1 + 48), *v36, *&v36[8]}];
}

- (void)discardOperation:(id)operation itemGUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v15 = operationCopy;
    v16 = 2114;
    v17 = dCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %{public}@ Discarding measurements.", buf, 0x16u);
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSPerformanceLogger_discardOperation_itemGUID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = operationCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = operationCopy;
  dispatch_async(dbQueue, block);
}

- (void)dbQueueDiscardOperation:(id)operation itemGUID:(id)d
{
  dCopy = d;
  operationCopy = operation;
  v7 = [(MSASModelBase *)self statementForString:@"delete from PerfLog where operation = ? and GUID = ?;"];
  v8 = MSSqliteBindStringOrNull(v7, 1, operationCopy);

  MSSqliteTrapForDBLockError(v8);
  if (v8)
  {
    v9 = 149;
  }

  else
  {
    v10 = MSSqliteBindStringOrNull(v7, 2, dCopy);
    v11 = v10;
    MSSqliteTrapForDBLockError(v10);
    if (v11)
    {
      v9 = 150;
    }

    else
    {
      v12 = sqlite3_step(v7);
      v13 = v12;
      MSSqliteTrapForDBLockError(v12);
      if (v13 == 101)
      {
        goto LABEL_8;
      }

      v9 = 151;
    }
  }

  [(MSPerformanceLogger *)self _logSqliteErrorLine:v9];
LABEL_8:
  if (v7)
  {
    sqlite3_reset(v7);
  }
}

- (void)stopOperation:(id)operation itemGUID:(id)d
{
  operationCopy = operation;
  dCopy = d;
  v8 = MSPlatform();
  if (objc_opt_respondsToSelector())
  {
    v9 = MSPlatform();
    isPerformanceLoggingEnabled = [v9 isPerformanceLoggingEnabled];

    if (isPerformanceLoggingEnabled)
    {
      date = [MEMORY[0x277CBEAA8] date];
      dbQueue = [(MSASModelBase *)self dbQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__MSPerformanceLogger_stopOperation_itemGUID___block_invoke;
      v14[3] = &unk_278E92660;
      v14[4] = self;
      v15 = operationCopy;
      v16 = dCopy;
      v17 = date;
      v13 = date;
      dispatch_async(dbQueue, v14);
    }
  }

  else
  {
  }
}

void __46__MSPerformanceLogger_stopOperation_itemGUID___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] statementForString:{@"insert into PerfLog (operation, GUID, event, timestamp) values (?, ?, ?, ?);"}];
  v3 = MSSqliteBindStringOrNull(v2, 1, a1[5]);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    v5 = a1[4];
    v6 = 134;
LABEL_13:
    [v5 _logSqliteErrorLine:v6];
    goto LABEL_14;
  }

  v7 = MSSqliteBindStringOrNull(v2, 2, a1[6]);
  v8 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (v8)
  {
    v5 = a1[4];
    v6 = 135;
    goto LABEL_13;
  }

  v9 = sqlite3_bind_text(v2, 3, "stop", -1, 0);
  v10 = v9;
  MSSqliteTrapForDBLockError(v9);
  if (v10)
  {
    v5 = a1[4];
    v6 = 136;
    goto LABEL_13;
  }

  [a1[7] timeIntervalSinceReferenceDate];
  v12 = sqlite3_bind_double(v2, 4, v11);
  v13 = v12;
  MSSqliteTrapForDBLockError(v12);
  if (v13)
  {
    v5 = a1[4];
    v6 = 137;
    goto LABEL_13;
  }

  v14 = sqlite3_step(v2);
  v15 = v14;
  MSSqliteTrapForDBLockError(v14);
  if (v15 != 101)
  {
    v5 = a1[4];
    v6 = 138;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = a1[5];
    v17 = a1[6];
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v17;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Stop %{public}@ - %{public}@", &v18, 0x16u);
  }

LABEL_14:
  if (v2)
  {
    sqlite3_reset(v2);
  }
}

- (void)startOperation:(id)operation itemGUID:(id)d
{
  operationCopy = operation;
  dCopy = d;
  v8 = MSPlatform();
  if (objc_opt_respondsToSelector())
  {
    v9 = MSPlatform();
    isPerformanceLoggingEnabled = [v9 isPerformanceLoggingEnabled];

    if (isPerformanceLoggingEnabled)
    {
      date = [MEMORY[0x277CBEAA8] date];
      dbQueue = [(MSASModelBase *)self dbQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__MSPerformanceLogger_startOperation_itemGUID___block_invoke;
      v14[3] = &unk_278E92660;
      v14[4] = self;
      v15 = operationCopy;
      v16 = dCopy;
      v17 = date;
      v13 = date;
      dispatch_async(dbQueue, v14);
    }
  }

  else
  {
  }
}

void __47__MSPerformanceLogger_startOperation_itemGUID___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] statementForString:{@"insert into PerfLog (operation, GUID, event, timestamp) values (?, ?, ?, ?);"}];
  v3 = MSSqliteBindStringOrNull(v2, 1, a1[5]);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4 || (v5 = MSSqliteBindStringOrNull(v2, 2, a1[6]), v6 = v5, MSSqliteTrapForDBLockError(v5), v6) || (v7 = sqlite3_bind_text(v2, 3, "start", -1, 0), v8 = v7, MSSqliteTrapForDBLockError(v7), v8) || ([a1[7] timeIntervalSinceReferenceDate], v10 = sqlite3_bind_double(v2, 4, v9), v11 = v10, MSSqliteTrapForDBLockError(v10), v11) || (v12 = sqlite3_step(v2), v13 = v12, MSSqliteTrapForDBLockError(v12), v13 != 101))
  {
    [a1[4] _logSqliteErrorLine:122];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = a1[5];
    v15 = a1[6];
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Start %{public}@ - %{public}@", &v16, 0x16u);
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }
}

- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion
{
  v16 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = MSPerformanceLogger;
  v7 = [MSASModelBase dbQueueUpgradeFromDatabaseVersion:sel_dbQueueUpgradeFromDatabaseVersion_currentVersion_ currentVersion:?];
  if (!v7)
  {
    return v7;
  }

  if (version < 0)
  {
    errmsg = 0;
    if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "pragma journal_mode = wal;", 0, 0, &errmsg) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *v14 = self;
      *&v14[8] = 2082;
      v15 = errmsg;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not set journal mode. Ignoring. Error: %{public}s", buf, 0x16u);
    }

    if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create table if not exists PerfLog (\n   rowid       integer primary key asc autoincrement,\n   operation   text,\n   GUID        text,\n   event       text,\n   timestamp   float);", 0, 0, &errmsg))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *v14 = errmsg;
        v8 = MEMORY[0x277D86220];
        v9 = "Could not create performance log. Error: %{public}s";
LABEL_18:
        _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }

    else if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists PerfLogByGUID on PerfLog (GUID asc, operation asc);", 0, 0, &errmsg))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *v14 = errmsg;
        v8 = MEMORY[0x277D86220];
        v9 = "Could not create performance log index. Error: %{public}s";
        goto LABEL_18;
      }
    }

    else
    {
      if (!sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
      {
        return v7;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *v14 = errmsg;
        v8 = MEMORY[0x277D86220];
        v9 = "Could not analyze performance log database. Ignoring. Error: %{public}s";
        goto LABEL_18;
      }
    }

    sqlite3_free(errmsg);
    return v7;
  }

  if (version && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v14 = version;
    *&v14[4] = 1024;
    *&v14[6] = currentVersion;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot migrate performance log database from version %d to %d. Recreating.", buf, 0xEu);
  }

  return v7;
}

- (MSPerformanceLogger)init
{
  v3 = MSPathPerfDB();
  v6.receiver = self;
  v6.super_class = MSPerformanceLogger;
  v4 = [(MSASModelBase *)&v6 initWithPersonID:0 databasePath:v3 currentVersion:0];

  return v4;
}

- (void)_logSqliteErrorLine:(int)line
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/coremediastream/MSPerformanceLogger.m";
    v7 = 1024;
    lineCopy = line;
    v9 = 2082;
    v10 = sqlite3_errmsg([(MSASModelBase *)self dbQueueDB]);
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s:%d: SQL operation failed: %{public}s", &v5, 0x1Cu);
  }
}

+ (void)nukeCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = blockCopy;
  v5 = logger;
  if (logger)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__MSPerformanceLogger_nukeCompletionBlock___block_invoke;
    v9[3] = &unk_278E921A8;
    v10 = blockCopy;
    [v5 shutDownForDestruction:1 completionBlock:v9];
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = MSPathPerfDB();
    [defaultManager removeItemAtPath:v7 error:0];

    if (v4)
    {
      v8 = dispatch_get_global_queue(0, 0);
      dispatch_async(v8, v4);
    }
  }
}

void __43__MSPerformanceLogger_nukeCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = logger;
  logger = 0;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = MSPathPerfDB();
  [v3 removeItemAtPath:v4 error:0];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_async(v6, v5);
  }
}

+ (id)sharedLogger
{
  v2 = MSPlatform();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = MSPlatform();
  isPerformanceLoggingEnabled = [v3 isPerformanceLoggingEnabled];

  v5 = logger;
  if (isPerformanceLoggingEnabled && !logger)
  {
    v6 = objc_alloc_init(MSPerformanceLogger);
    v2 = logger;
    logger = v6;
LABEL_5:

    v5 = logger;
  }

  return v5;
}

@end