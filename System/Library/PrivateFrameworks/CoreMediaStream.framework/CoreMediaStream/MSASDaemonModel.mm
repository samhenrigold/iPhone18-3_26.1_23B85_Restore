@interface MSASDaemonModel
+ (id)defaultModel;
- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion;
- (MSASDaemonModel)init;
- (id)earliestNextActivityDate;
- (id)nextActivityDateByPersonID;
- (void)clearAllNextActivityDates;
- (void)setNextActivityDate:(id)date forPersonID:(id)d;
@end

@implementation MSASDaemonModel

- (void)clearAllNextActivityDates
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MSASDaemonModel_clearAllNextActivityDates__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

void __44__MSASDaemonModel_clearAllNextActivityDates__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Clearing out all next activity dates.", &v6, 0xCu);
  }

  v2 = [*(a1 + 32) statementForString:@"delete from NextActivity;"];
  v3 = sqlite3_step(v2);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4 != 101)
  {
    MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 163);
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }
}

- (void)setNextActivityDate:(id)date forPersonID:(id)d
{
  dateCopy = date;
  dCopy = d;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASDaemonModel_setNextActivityDate_forPersonID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = dateCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = dateCopy;
  dispatch_async(dbQueue, block);
}

uint64_t __51__MSASDaemonModel_setNextActivityDate_forPersonID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting next activity date %{public}@ for personID %@.", &v18, 0x20u);
  }

  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = [v2 statementForString:{@"insert or replace into NextActivity (personID, nextActivity) values (?, ?);"}];
    v4 = sqlite3_reset(v3);
    v5 = v4;
    MSSqliteTrapForDBLockError(v4);
    if (v5)
    {
      return sqlite3_reset(v3);
    }

    v6 = sqlite3_bind_text(v3, 1, [*(a1 + 48) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v7 = v6;
    MSSqliteTrapForDBLockError(v6);
    if (v7)
    {
      return sqlite3_reset(v3);
    }

    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v9 = sqlite3_bind_double(v3, 2, v8);
  }

  else
  {
    v3 = [v2 statementForString:@"delete from NextActivity where personID = ?;"];
    v10 = sqlite3_reset(v3);
    v11 = v10;
    MSSqliteTrapForDBLockError(v10);
    if (v11)
    {
      return sqlite3_reset(v3);
    }

    v9 = sqlite3_bind_text(v3, 1, [*(a1 + 48) UTF8String], -1, 0);
  }

  v12 = v9;
  MSSqliteTrapForDBLockError(v9);
  if (!v12)
  {
    v13 = sqlite3_step(v3);
    MSSqliteTrapForDBLockError(v13);
  }

  return sqlite3_reset(v3);
}

- (id)nextActivityDateByPersonID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5141;
  v11 = __Block_byref_object_dispose__5142;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__MSASDaemonModel_nextActivityDateByPersonID__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__MSASDaemonModel_nextActivityDateByPersonID__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v15 = 138543362;
    v16 = v12;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving next activity date by personID.", &v15, 0xCu);
  }

  v2 = [*(a1 + 32) statementForString:{@"select personID, nextActivity from NextActivity;"}];
  v3 = sqlite3_reset(v2);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v5 = sqlite3_step(v2);
    if (v5 != 100)
    {
      break;
    }

    v6 = MSSqliteStringFromStatementColumn(v2, 0);
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v2, 1)}];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v7 forKey:v6];
  }

  if (v5 != 101)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = sqlite3_errmsg([v13 dbQueueDB]);
      v15 = 138543618;
      v16 = v13;
      v17 = 2082;
      v18 = v14;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Error retrieving next activity date by personID. sqlite error: %{public}s", &v15, 0x16u);
    }

LABEL_11:
    sqlite3_reset(v2);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    return;
  }

  sqlite3_reset(v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = [*(*(*(a1 + 40) + 8) + 40) count];
    v15 = 138543618;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...retrieved %ld entries.", &v15, 0x16u);
  }
}

- (id)earliestNextActivityDate
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5141;
  v11 = __Block_byref_object_dispose__5142;
  v12 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving next activity date.", buf, 0xCu);
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MSASDaemonModel_earliestNextActivityDate__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __43__MSASDaemonModel_earliestNextActivityDate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:@"select nextActivity from NextActivity order by nextActivity asc limit 1;"];
  v3 = sqlite3_reset(v2);
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
LABEL_2:
    sqlite3_reset(v2);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    return;
  }

  v7 = sqlite3_step(v2);
  if (v7 != 101)
  {
    if (v7 != 100)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v14 = 138543618;
        v15 = v11;
        v16 = 2082;
        v17 = sqlite3_errmsg([v11 dbQueueDB]);
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot retrieve next activity date. sqlite error: %{public}s", &v14, 0x16u);
      }

      goto LABEL_2;
    }

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v2, 0)}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  sqlite3_reset(v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: ...retrieved date: %{public}@", &v14, 0x16u);
  }
}

- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MSASDaemonModel;
  v6 = [(MSASModelBase *)&v11 dbQueueUpgradeFromDatabaseVersion:*&version currentVersion:*&currentVersion];
  if (version < 0)
  {
    errmsg = 0;
    if (sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create table if not exists NextActivity(\n   personID              text unique primary key,\n   nextActivity          float\n);", 0, 0, &errmsg))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v14 = 2082;
        *v15 = errmsg;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Could not create daemon model tables. Error: %{public}s";
LABEL_12:
        _os_log_error_impl(&dword_245B99000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
      }
    }

    else
    {
      if (!sqlite3_exec([(MSASModelBase *)self dbQueueDB], "create index if not exists NextActivityByDate on NextActivity (nextActivity asc);", 0, 0, &errmsg))
      {
        if (!sqlite3_exec([(MSASModelBase *)self dbQueueDB], "analyze;", 0, 0, &errmsg))
        {
          return 1;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy4 = self;
          v14 = 2082;
          *v15 = errmsg;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not analyze database indexes. Ignoring. Error: %{public}s", buf, 0x16u);
        }

        v6 = 1;
        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v14 = 2082;
        *v15 = errmsg;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Could not create index. Error: %{public}s";
        goto LABEL_12;
      }
    }

LABEL_17:
    sqlite3_free(errmsg);
    return v6;
  }

  if (version != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy4 = self;
      v14 = 1024;
      *v15 = version;
      v15[2] = 1024;
      *&v15[3] = 2;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot upgrade from database version %d to %d. Recreating database.", buf, 0x18u);
    }

    return 0;
  }

  return v6;
}

- (MSASDaemonModel)init
{
  v3 = MSPathAlbumSharingDaemonPersistentStore();
  v6.receiver = self;
  v6.super_class = MSASDaemonModel;
  v4 = [(MSASModelBase *)&v6 initWithPersonID:0 databasePath:v3 currentVersion:2];

  return v4;
}

+ (id)defaultModel
{
  if (defaultModel_onceToken != -1)
  {
    dispatch_once(&defaultModel_onceToken, &__block_literal_global_5171);
  }

  v3 = defaultModel_model;

  return v3;
}

uint64_t __31__MSASDaemonModel_defaultModel__block_invoke()
{
  defaultModel_model = objc_alloc_init(MSASDaemonModel);

  return MEMORY[0x2821F96F8]();
}

@end