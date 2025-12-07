@interface MSASModelBase
- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion;
- (MSASModelBase)initWithPersonID:(id)d databasePath:(id)path currentVersion:(int)version;
- (id)dbQueuePersistentDataForKey:(id)key;
- (id)dbQueuePersistentObjectForKey:(id)key;
- (id)dbQueuePersistentStringForKey:(id)key;
- (id)persistentObjectForKey:(id)key;
- (id)persistentStringForKey:(id)key;
- (sqlite3)db;
- (sqlite3_stmt)statementForString:(id)string;
- (void)beginTransaction;
- (void)dbQueueBeginTransaction;
- (void)dbQueueDeletePersistentValueWithKey:(id)key;
- (void)dbQueueEndTransaction;
- (void)dbQueueInitializeDatabasePath:(id)path currentVersion:(int)version;
- (void)dbQueueRollbackTransaction;
- (void)dbQueueSetPersistentData:(id)data forKey:(id)key;
- (void)dbQueueSetPersistentObject:(id)object forKey:(id)key;
- (void)dbQueueSetPersistentString:(id)string forKey:(id)key;
- (void)deletePersistentValueWithKey:(id)key;
- (void)endTransaction;
- (void)setPersistentObject:(id)object forKey:(id)key;
- (void)setPersistentString:(id)string forKey:(id)key;
- (void)shutDownForDestruction:(BOOL)destruction completionBlock:(id)block;
@end

@implementation MSASModelBase

- (void)dbQueueRollbackTransaction
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Rolling back transaction.", &v7, 0xCu);
  }

  v3 = [(MSASModelBase *)self statementForString:@"rollback transaction;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (!v5)
  {
    v6 = sqlite3_step(v3);
    MSSqliteTrapForDBLockError(v6);
  }

  sqlite3_reset(v3);
}

- (void)dbQueueEndTransaction
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Ending transaction.", &v7, 0xCu);
  }

  v3 = [(MSASModelBase *)self statementForString:@"release savepoint save;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (!v5)
  {
    v6 = sqlite3_step(v3);
    MSSqliteTrapForDBLockError(v6);
  }

  sqlite3_reset(v3);
}

- (void)endTransaction
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MSASModelBase_endTransaction__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

- (void)dbQueueBeginTransaction
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Beginning transaction.", &v7, 0xCu);
  }

  v3 = [(MSASModelBase *)self statementForString:@"savepoint save;"];
  v4 = sqlite3_reset(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (!v5)
  {
    v6 = sqlite3_step(v3);
    MSSqliteTrapForDBLockError(v6);
  }

  sqlite3_reset(v3);
}

- (void)beginTransaction
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MSASModelBase_beginTransaction__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

- (void)dbQueueDeletePersistentValueWithKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Deleting persistent value for key %{public}@.", &v12, 0x16u);
  }

  v5 = [(MSASModelBase *)self statementForString:@"delete from Properties where key = ?;"];
  v6 = sqlite3_reset(v5);
  v7 = v6;
  MSSqliteTrapForDBLockError(v6);
  if (v7 || (v8 = sqlite3_bind_text(v5, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL), v9 = v8, MSSqliteTrapForDBLockError(v8), v9) || (v10 = sqlite3_step(v5), v11 = v10, MSSqliteTrapForDBLockError(v10), v11 != 101))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 138543618;
      selfCopy2 = self;
      v14 = 2114;
      v15 = keyCopy;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not delete persistent value for key %{public}@.", &v12, 0x16u);
    }
  }
}

- (void)dbQueueSetPersistentObject:(id)object forKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v13 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v13];
  v8 = v13;
  v9 = v8;
  if (!v7)
  {
    v10 = MEMORY[0x277CCACA8];
    userInfo = [v8 userInfo];
    v12 = [v10 stringWithFormat:@"Failed to archive an object. Error: %@ Info: %@", v9, userInfo];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  [(MSASModelBase *)self dbQueueSetPersistentData:v7 forKey:keyCopy];
}

- (void)dbQueueSetPersistentString:(id)string forKey:(id)key
{
  keyCopy = key;
  v7 = [string dataUsingEncoding:4];
  [(MSASModelBase *)self dbQueueSetPersistentData:v7 forKey:keyCopy];
}

- (void)dbQueueSetPersistentData:(id)data forKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v20 = 138543618;
    selfCopy2 = self;
    v22 = 2114;
    v23 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Setting persistent value for key %{public}@.", &v20, 0x16u);
    if (dataCopy)
    {
LABEL_3:
      v8 = [(MSASModelBase *)self statementForString:@"insert or replace into Properties (key, value) values (?, ?);"];
      v9 = sqlite3_reset(v8);
      v10 = v9;
      MSSqliteTrapForDBLockError(v9);
      if (v10)
      {
        goto LABEL_11;
      }

      v11 = sqlite3_bind_text(v8, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v11;
      MSSqliteTrapForDBLockError(v11);
      if (v12)
      {
        goto LABEL_11;
      }

      v13 = [dataCopy length];
      if (v13 >> 31)
      {
        __assert_rtn("[MSASModelBase dbQueueSetPersistentData:forKey:]", "MSASModelBase.m", 384, "dataLength <= INT_MAX");
      }

      v14 = sqlite3_bind_blob(v8, 2, [dataCopy bytes], v13, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_10;
    }
  }

  else if (dataCopy)
  {
    goto LABEL_3;
  }

  v8 = [(MSASModelBase *)self statementForString:@"delete from Properties where key = ?;"];
  v15 = sqlite3_reset(v8);
  v16 = v15;
  MSSqliteTrapForDBLockError(v15);
  if (v16)
  {
    goto LABEL_11;
  }

  v14 = sqlite3_bind_text(v8, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_10:
  v17 = v14;
  MSSqliteTrapForDBLockError(v14);
  if (!v17)
  {
    v18 = sqlite3_step(v8);
    v19 = v18;
    MSSqliteTrapForDBLockError(v18);
    sqlite3_reset(v8);
    if (v19 == 101)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:
  sqlite3_reset(v8);
LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = 138543618;
    selfCopy2 = self;
    v22 = 2114;
    v23 = keyCopy;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not set persistent value for key %{public}@.", &v20, 0x16u);
  }

LABEL_14:
}

- (id)dbQueuePersistentObjectForKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(MSASModelBase *)self dbQueuePersistentDataForKey:keyCopy];
  if (v5)
  {
    v9 = 0;
    v6 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v5 outError:&v9];
    v7 = v9;
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v12 = 2114;
        v13 = v6;
        v14 = 2114;
        v15 = keyCopy;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieved persistent object %{public}@ for key %{public}@.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v12 = 2114;
      v13 = keyCopy;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not unarchive persistent object for key %{public}@: %@", buf, 0x20u);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dbQueuePersistentStringForKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(MSASModelBase *)self dbQueuePersistentDataForKey:keyCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543874;
    selfCopy = self;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieved persistent string %{public}@ for key %{public}@.", &v8, 0x20u);
  }

  return v6;
}

- (id)dbQueuePersistentDataForKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543618;
    selfCopy2 = self;
    v17 = 2114;
    v18 = keyCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving persistent value for key: %{public}@", &v15, 0x16u);
  }

  v5 = [(MSASModelBase *)self statementForString:@"select value from Properties where key = ?"];
  v6 = 1;
  v7 = sqlite3_bind_text(v5, 1, [keyCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (v8)
  {
LABEL_4:
    v9 = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = sqlite3_step(v5);
  if (v12 == 101)
  {
    v6 = 0;
    goto LABEL_4;
  }

  v13 = v12;
  if (v12 != 100)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      selfCopy2 = self;
      v17 = 2114;
      v18 = keyCopy;
      v19 = 1024;
      v20 = v13;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot retrieve persistent value for key %{public}@. sqlite status: %d", &v15, 0x1Cu);
    }

    goto LABEL_4;
  }

  v14 = sqlite3_column_blob(v5, 0);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:{sqlite3_column_bytes(v5, 0)}];
  v6 = 0;
  if (v5)
  {
LABEL_5:
    sqlite3_reset(v5);
  }

LABEL_6:
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (void)deletePersistentValueWithKey:(id)key
{
  keyCopy = key;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__MSASModelBase_deletePersistentValueWithKey___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(dbQueue, v7);
}

- (void)setPersistentObject:(id)object forKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v19 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:object requiringSecureCoding:1 error:&v19];
  v8 = v19;
  v9 = v8;
  if (!v7)
  {
    v10 = MEMORY[0x277CCACA8];
    userInfo = [v8 userInfo];
    v12 = [v10 stringWithFormat:@"Failed to archive an object. Error: %@ Info: %@", v9, userInfo];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MSASModelBase_setPersistentObject_forKey___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v17 = v7;
  v18 = keyCopy;
  v14 = keyCopy;
  v15 = v7;
  dispatch_async(dbQueue, block);
}

- (id)persistentObjectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5293;
  v16 = __Block_byref_object_dispose__5294;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSASModelBase_persistentObjectForKey___block_invoke;
  block[3] = &unk_278E91C78;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __40__MSASModelBase_persistentObjectForKey___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) dbQueuePersistentObjectForKey:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)setPersistentString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MSASModelBase_setPersistentString_forKey___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = stringCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = stringCopy;
  dispatch_async(dbQueue, block);
}

- (id)persistentStringForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5293;
  v16 = __Block_byref_object_dispose__5294;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSASModelBase_persistentStringForKey___block_invoke;
  block[3] = &unk_278E91C78;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __40__MSASModelBase_persistentStringForKey___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) dbQueuePersistentStringForKey:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (sqlite3_stmt)statementForString:(id)string
{
  stringCopy = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (stringCopy)
  {
    statementQueue = [(MSASModelBase *)self statementQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__MSASModelBase_statementForString___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v9 = stringCopy;
    v10 = &v11;
    dispatch_sync(statementQueue, block);

    v6 = v12[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __36__MSASModelBase_statementForString___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, *(a1 + 40));
    if (Value)
    {
      *(*(*(a1 + 48) + 8) + 24) = Value;
      return;
    }

    v2 = *(a1 + 32);
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(*(v2 + 16), [*(a1 + 40) UTF8String], -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = sqlite3_errmsg(*(v6 + 16));
      *buf = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2082;
      v15 = v8;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not compile SQL query: %{public}@. sqlite error: %{public}s", buf, 0x20u);
    }
  }

  else if (ppStmt)
  {
    CFDictionarySetValue(*(*(a1 + 32) + 32), *(a1 + 40), ppStmt);
    v5 = ppStmt;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_11:
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (void)shutDownForDestruction:(BOOL)destruction completionBlock:(id)block
{
  destructionCopy = destruction;
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 1024;
    v14 = destructionCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Shutting down. For destruction: %d", buf, 0x12u);
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke;
  v9[3] = &unk_278E927A0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(dbQueue, v9);
}

void __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke_2;
  block[3] = &unk_278E926D8;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);

  v3 = *(*(a1 + 32) + 16);
  if (v3)
  {
    if (sqlite3_close(v3) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = sqlite3_errmsg(*(v6 + 16));
      *buf = 138543618;
      v10 = v6;
      v11 = 2082;
      v12 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Can't shut down. sqlite error: %{public}s. Ignoring.", buf, 0x16u);
    }

    *(*(a1 + 32) + 16) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    dispatch_async(v5, v4);
  }
}

void __56__MSASModelBase_shutDownForDestruction_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (Count)
    {
      v4 = Count;
      v5 = 8 * Count;
      v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v7 = malloc_type_malloc(v5, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(*(a1 + 32) + 32), v6, v7);
      if (v4 >= 1)
      {
        v8 = v7;
        do
        {
          v9 = *v8++;
          sqlite3_finalize(v9);
          --v4;
        }

        while (v4);
      }

      free(v6);
      free(v7);
    }

    CFRelease(*(*(a1 + 32) + 32));
    *(*(a1 + 32) + 32) = 0;
  }
}

- (BOOL)dbQueueUpgradeFromDatabaseVersion:(int)version currentVersion:(int)currentVersion
{
  v22 = *MEMORY[0x277D85DE8];
  if (version >= currentVersion)
  {
    return 1;
  }

  v4 = *&currentVersion;
  errmsg = 0;
  if (sqlite3_exec(self->_db, "create table if not exists Properties(\n   key             text unique primary key,\n   value           blob\n);\n", 0, 0, &errmsg))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v20 = 2082;
      v21 = errmsg;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not create Properties table. Error: %{public}s", buf, 0x16u);
    }

    sqlite3_free(errmsg);
  }

  ppStmt = 0;
  v6 = sqlite3_prepare_v2([(MSASModelBase *)self dbQueueDB], "insert or replace into Properties (key, value) values ('version', ?);", -1, &ppStmt, 0);
  v7 = v6;
  MSSqliteTrapForDBLockError(v6);
  if (v7)
  {
    v8 = 216;
  }

  else
  {
    v10 = ppStmt;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v4];
    v12 = sqlite3_bind_text(v10, 1, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    LODWORD(v10) = v12;
    MSSqliteTrapForDBLockError(v12);

    if (v10)
    {
      v8 = 218;
    }

    else
    {
      v13 = sqlite3_step(ppStmt);
      v14 = v13;
      MSSqliteTrapForDBLockError(v13);
      if (v14 == 101)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v20 = 1024;
          LODWORD(v21) = v4;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Set database version to %d.", buf, 0x12u);
        }

        v9 = 1;
        goto LABEL_19;
      }

      v8 = 219;
    }
  }

  MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, v8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to create properties table.", buf, 0xCu);
  }

  v9 = 0;
LABEL_19:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v9;
}

- (void)dbQueueInitializeDatabasePath:(id)path currentVersion:(int)version
{
  v4 = *&version;
  *&v37[5] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = 0;
  v8 = MEMORY[0x277D86220];
  *&v9 = 138543874;
  v30 = v9;
  do
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      selfCopy16 = self;
      v36 = 2112;
      *v37 = pathCopy;
      _os_log_debug_impl(&dword_245B99000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Opening database at %@", buf, 0x16u);
    }

    ppStmt = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager2 fileExistsAtPath:pathCopy];

    if (v12 && sqlite3_open_v2([pathCopy fileSystemRepresentation], &self->_db, 65542, 0))
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy16 = self;
        v36 = 2112;
        *v37 = pathCopy;
        v13 = v8;
        v14 = "%{public}@ Cannot open sqlite3 database at path %@. Recreating database.";
        v15 = 22;
LABEL_71:
        _os_log_error_impl(&dword_245B99000, v13, OS_LOG_TYPE_ERROR, v14, buf, v15);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    db = self->_db;
    if (!db)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy16 = self;
        _os_log_impl(&dword_245B99000, v8, OS_LOG_TYPE_INFO, "%{public}@: Creating new database.", buf, 0xCu);
      }

      stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

      if (sqlite3_open_v2([pathCopy fileSystemRepresentation], &self->_db, 65542, 0))
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy16 = self;
          v36 = 2112;
          *v37 = pathCopy;
          _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Cannot create sqlite3 database at path %@. Carrying on.", buf, 0x16u);
        }

        self->_db = 0;
        goto LABEL_28;
      }

      db = self->_db;
    }

    errmsg = 0;
    if (sqlite3_exec(db, "pragma cache_size = -128;", 0, 0, &errmsg) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy16 = self;
      v36 = 2082;
      *v37 = errmsg;
      _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Could not set cache size. Ignoring. Error: %{public}s", buf, 0x16u);
    }

    if (sqlite3_exec(self->_db, "pragma journal_mode = wal;", 0, 0, &errmsg) && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy16 = self;
      v36 = 2082;
      *v37 = errmsg;
      _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Could not set journal mode. Ignoring. Error: %{public}s", buf, 0x16u);
    }

    if (v7 & 1 | ((v12 & 1) == 0))
    {
      intValue = 0xFFFFFFFFLL;
      goto LABEL_17;
    }

    if (sqlite3_prepare_v2(self->_db, "select value from Properties where key = 'version';", -1, &ppStmt, 0))
    {
      MSLogSqliteError(self->_db, self, 117);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138543362;
      selfCopy16 = self;
      v13 = v8;
      v14 = "%{public}@: Could not compile version check statement. Deleting database and recreating.";
LABEL_70:
      v15 = 12;
      goto LABEL_71;
    }

    v23 = sqlite3_step(ppStmt);
    if (v23)
    {
      if (v23 != 100)
      {
        MSLogSqliteError(self->_db, self, 126);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        *buf = 138543362;
        selfCopy16 = self;
        v13 = v8;
        v14 = "%{public}@: Fatal error: Could not read current version. Deleting database and recreating.";
        goto LABEL_70;
      }

      v24 = MSSqliteStringFromStatementColumn(ppStmt, 0);
      intValue = [v24 intValue];
    }

    else
    {
      intValue = 0xFFFFFFFFLL;
    }

    if (intValue > v4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = v30;
        selfCopy16 = self;
        v36 = 1024;
        *v37 = intValue;
        v37[2] = 1024;
        *&v37[3] = v4;
        v13 = v8;
        v14 = "%{public}@: Fatal error: database version %d is greater than what the model understands (%d). Deleting database and recreating.";
        v15 = 24;
        goto LABEL_71;
      }

LABEL_21:
      v18 = 0;
      v7 = 1;
      goto LABEL_47;
    }

LABEL_17:
    if (intValue == v4)
    {
      v7 = 0;
LABEL_28:
      v18 = 1;
      goto LABEL_47;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v30;
      selfCopy16 = self;
      v36 = 1024;
      *v37 = intValue;
      v37[2] = 1024;
      *&v37[3] = v4;
      _os_log_impl(&dword_245B99000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Migrating database from version %d to version %d.", buf, 0x18u);
    }

    v31 = 0;
    if (sqlite3_exec(self->_db, "savepoint migration;", 0, 0, &v31))
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy16 = self;
        v36 = 2082;
        *v37 = v31;
        _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Could not begin transaction. Error: %{public}s", buf, 0x16u);
      }

      sqlite3_free(v31);
    }

    v18 = [(MSASModelBase *)self dbQueueUpgradeFromDatabaseVersion:intValue currentVersion:v4];
    v20 = self->_db;
    if (v18)
    {
      if (sqlite3_exec(v20, "release savepoint migration;", 0, 0, &v31))
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy16 = self;
          v36 = 2082;
          *v37 = v31;
          v21 = v8;
          v22 = "%{public}@: Could not end transaction. Error: %{public}s";
LABEL_73:
          _os_log_error_impl(&dword_245B99000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

    else if (sqlite3_exec(v20, "rollback transaction to savepoint migration;", 0, 0, &v31))
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy16 = self;
        v36 = 2082;
        *v37 = v31;
        v21 = v8;
        v22 = "%{public}@: Could not roll back transaction. Error: %{public}s";
        goto LABEL_73;
      }

LABEL_45:
      sqlite3_free(v31);
    }

    v7 = !v18;
LABEL_47:
    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
    }

    ppStmt = 0;
    if (v7)
    {
      v25 = self->_db;
      if (!v25)
      {
        goto LABEL_57;
      }

      LODWORD(v31) = 129;
      v26 = sqlite3_file_control(v25, 0, 101, &v31);
      if (v26)
      {
        MSLogSqliteError(self->_db, self, 174);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy16 = self;
          v36 = 1024;
          *v37 = v26;
          _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Could not truncate sqlite database (%d).", buf, 0x12u);
        }
      }

      if (sqlite3_close(self->_db) && (MSLogSqliteError(self->_db, self, 178), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
      {
        *buf = 138543362;
        selfCopy16 = self;
        _os_log_error_impl(&dword_245B99000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Could not close sqlite database.", buf, 0xCu);
        if (v26)
        {
LABEL_57:
          [defaultManager removeItemAtPath:pathCopy error:0];
          v27 = [pathCopy stringByAppendingString:@"-shm"];
          [defaultManager removeItemAtPath:v27 error:0];

          v28 = [pathCopy stringByAppendingString:@"-wal"];
          [defaultManager removeItemAtPath:v28 error:0];

          v29 = [pathCopy stringByAppendingString:@"-journal"];
          [defaultManager removeItemAtPath:v29 error:0];
        }
      }

      else if (v26)
      {
        goto LABEL_57;
      }

      self->_db = 0;
      self->_dbWasRecreated = 1;
    }
  }

  while (!v18);
  if (self->_db && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy16 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Database ready.", buf, 0xCu);
  }
}

- (sqlite3)db
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __19__MSASModelBase_db__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (MSASModelBase)initWithPersonID:(id)d databasePath:(id)path currentVersion:(int)version
{
  dCopy = d;
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = MSASModelBase;
  v11 = [(MSASModelBase *)&v30 init];
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"MSASModelBase statement queue - %@", v14];

    v16 = dispatch_queue_create([v15 UTF8String], 0);
    statementQueue = v11->_statementQueue;
    v11->_statementQueue = v16;

    v18 = MEMORY[0x277CCACA8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"MSASModelBase db queue - %@", v20];

    v22 = dispatch_queue_create([v21 UTF8String], 0);
    dbQueue = v11->_dbQueue;
    v11->_dbQueue = v22;

    objc_storeStrong(&v11->_personID, d);
    v11->_statements = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &initWithPersonID_databasePath_currentVersion__doNothingCallbacks);
    dbQueue = [(MSASModelBase *)v11 dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MSASModelBase_initWithPersonID_databasePath_currentVersion___block_invoke;
    block[3] = &unk_278E91F20;
    v27 = v11;
    v28 = pathCopy;
    versionCopy = version;
    dispatch_sync(dbQueue, block);
  }

  return v11;
}

@end