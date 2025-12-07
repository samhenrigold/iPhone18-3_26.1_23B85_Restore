@interface HMBSQLContext
+ (id)logCategory;
- (BOOL)fetchSQLite3:(sqlite3_stmt *)lite3 limit:(unint64_t)limit error:(id *)error block:(id)block;
- (BOOL)fetchSQLite3One:(sqlite3_stmt *)one error:(id *)error block:(id)block;
- (BOOL)initializeNewlyCreatedDatabaseWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)runSQLite3:(const char *)lite3 error:(id *)error;
- (BOOL)setSchemaVersion:(int64_t)version error:(id *)error;
- (HMBSQLContext)initWithURL:(id)l;
- (HMBSQLContext)initWithURL:(id)l preparedStatementsCache:(id)cache memoryMonitor:(id)monitor;
- (id)_performBlockWithContextManagedStatementForString:(const char *)string block:(id)block;
- (id)attributeDescriptions;
- (id)commit;
- (id)execSQLite3:(sqlite3_stmt *)lite3;
- (id)runSQLite3:(const char *)lite3;
- (id)sqlBlockWithActivity:(id)activity block:(id)block;
- (id)sqlTransactionWithActivity:(id)activity block:(id)block;
- (int64_t)migrateFromSchemaVersion:(int64_t)version error:(id *)error;
- (sqlite3_stmt)_statementForString:(const char *)string error:(id *)error;
- (unint64_t)insertSQLite3:(sqlite3_stmt *)lite3 error:(id *)error;
- (void)_clearPreparedStatementsCache;
- (void)_configureMemoryPressureHandler;
- (void)dealloc;
- (void)finalize;
- (void)memoryMonitor:(id)monitor didReceiveMemoryEvent:(int64_t)event;
- (void)rollback;
@end

@implementation HMBSQLContext

- (void)memoryMonitor:(id)monitor didReceiveMemoryEvent:(int64_t)event
{
  v12 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing cache after receiving memory pressure notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMBSQLContext *)selfCopy _clearPreparedStatementsCache];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:{-[HMBSQLContext connection](self, "connection")}];
  v5 = [v3 initWithName:@"Context" value:v4];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMBSQLContext *)self url];
  v8 = [v6 initWithName:@"URL" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (BOOL)fetchSQLite3One:(sqlite3_stmt *)one error:(id *)error block:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (error && *error)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *error;
      v24 = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring fetch due to previous error: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_6;
  }

  v15 = sqlite3_step(one);
  if (v15 == 101)
  {
LABEL_10:
    v16 = sqlite3_reset(one);
    v14 = 0;
    if (!error || !v16)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v15 != 100)
  {
    if (!v15)
    {
      goto LABEL_10;
    }

    sqlite3_reset(one);
    if (error)
    {
LABEL_18:
      v20 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:one];
LABEL_19:
      v14 = 0;
      *error = v20;
      goto LABEL_20;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_20;
  }

  v17 = blockCopy[2](blockCopy, one);
  if (v17)
  {
    v18 = v17;
    sqlite3_reset(one);
    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    goto LABEL_6;
  }

  v22 = sqlite3_step(one);
  if (v22 != 101)
  {
    if (v22 == 100)
    {
      sqlite3_reset(one);
      if (error)
      {
        v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    if (v22)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:one];
      }

      sqlite3_reset(one);
      goto LABEL_6;
    }
  }

  v23 = sqlite3_reset(one);
  v14 = v23 == 0;
  if (v23 && error)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v14;
}

- (BOOL)fetchSQLite3:(sqlite3_stmt *)lite3 limit:(unint64_t)limit error:(id *)error block:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (error && *error)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *error;
      v23 = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring fetch due to previous error: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
LABEL_27:
    v21 = 0;
  }

  else
  {
    LOBYTE(v23) = 0;
    while (1)
    {
      v16 = sqlite3_step(lite3);
      if (v16 != 100)
      {
        break;
      }

      if (limit == -1)
      {
        if (v23)
        {
          goto LABEL_20;
        }

        limit = -1;
      }

      else
      {
        if (!limit || (v23 & 1) != 0)
        {
          goto LABEL_20;
        }

        --limit;
      }

      v17 = blockCopy[2](blockCopy, lite3, &v23);
      if (v17)
      {
        v18 = v17;
        sqlite3_reset(lite3);
        if (error)
        {
          v19 = v18;
          *error = v18;
        }

        goto LABEL_27;
      }
    }

    if (v16 && v16 != 101)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:lite3];
      }

      sqlite3_reset(lite3);
      goto LABEL_27;
    }

LABEL_20:
    v20 = sqlite3_reset(lite3);
    v21 = 1;
    if ((v20 - 100) >= 2 && v20)
    {
      if (!error)
      {
        goto LABEL_27;
      }

      [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:lite3];
      *error = v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)insertSQLite3:(sqlite3_stmt *)lite3 error:(id *)error
{
  if (!error)
  {
    if (sqlite3_step(lite3) == 101)
    {
      goto LABEL_7;
    }

    sqlite3_reset(lite3);
    return 0;
  }

  if (*error)
  {
    return 0;
  }

  if (sqlite3_step(lite3) != 101)
  {
    *error = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:lite3];
    if (sqlite3_reset(lite3))
    {
      v6 = MEMORY[0x277CCA9B8];
LABEL_13:
      v11 = [v6 hmbErrorWithSQLite3Statement:lite3];
      v12 = v11;
      result = 0;
      *error = v11;
      return result;
    }

    return 0;
  }

LABEL_7:
  v7 = sqlite3_db_handle(lite3);
  insert_rowid = sqlite3_last_insert_rowid(v7);
  v9 = sqlite3_reset(lite3);
  if (v9)
  {
    result = 0;
  }

  else
  {
    result = insert_rowid;
  }

  if (error && v9)
  {
    v6 = MEMORY[0x277CCA9B8];
    goto LABEL_13;
  }

  return result;
}

- (BOOL)runSQLite3:(const char *)lite3 error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  if (!error || !*error)
  {
    if (sqlite3_exec(self->_connection, lite3, 0, 0, 0))
    {
      v8 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Connection:self->_connection statement:lite3];
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543874;
        v16 = v12;
        v17 = 2080;
        lite3Copy = lite3;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_22AD27000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to run SQL statement %s: %@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      if (!error)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
      if (!error)
      {
        goto LABEL_9;
      }
    }

    v13 = v8;
    *error = v8;
LABEL_9:
    v7 = v8 == 0;

    return v7;
  }

  return 0;
}

- (id)execSQLite3:(sqlite3_stmt *)lite3
{
  v5 = 0;
  __execSQLite3(self, lite3, &v5);
  v3 = v5;

  return v3;
}

- (id)runSQLite3:(const char *)lite3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = __removeExtraWhitespace(lite3);
  if (sqlite3_exec(self->_connection, [v5 UTF8String], 0, 0, 0))
  {
    v6 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Connection:self->_connection statement:lite3];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v10;
      v14 = 2080;
      lite3Copy = lite3;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to run SQL statement %s: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)rollback
{
  if (!sqlite3_get_autocommit(self->_connection))
  {
    v3 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"ROLLBACK;" block:&__block_literal_global_36];
  }
}

uint64_t __25__HMBSQLContext_rollback__block_invoke(int a1, sqlite3_stmt *a2)
{
  sqlite3_step(a2);
  sqlite3_reset(a2);
  return 0;
}

- (id)commit
{
  if (sqlite3_get_autocommit(self->_connection))
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HMBSQLContext *)self _performBlockWithContextManagedStatementForString:"COMMIT" block:&__block_literal_global_33];;
  }

  return v3;
}

id __23__HMBSQLContext_commit__block_invoke(int a1, sqlite3_stmt *a2)
{
  if (sqlite3_step(a2) == 101)
  {
    if (sqlite3_reset(a2))
    {
      v3 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a2];
    sqlite3_reset(a2);
  }

  return v3;
}

id __22__HMBSQLContext_begin__block_invoke(int a1, sqlite3_stmt *a2)
{
  if (sqlite3_step(a2) == 101)
  {
    if (sqlite3_reset(a2))
    {
      v3 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] hmbErrorWithSQLite3Statement:a2];
    sqlite3_reset(a2);
  }

  return v3;
}

- (id)sqlTransactionWithActivity:(id)activity block:(id)block
{
  activityCopy = activity;
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  begin = [(HMBSQLContext *)self begin];
  v9 = begin;
  if (begin)
  {
    commit = begin;
  }

  else
  {
    v11 = blockCopy[2](blockCopy, self);
    if (v11)
    {
      [(HMBSQLContext *)self rollback];
      commit = v11;
    }

    else
    {
      commit = [(HMBSQLContext *)self commit];
      if (commit)
      {
        [(HMBSQLContext *)self rollback];
        v12 = commit;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return commit;
}

- (id)sqlBlockWithActivity:(id)activity block:(id)block
{
  activityCopy = activity;
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  v8 = blockCopy[2](blockCopy, self);
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)setSchemaVersion:(int64_t)version error:(id *)error
{
  version = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %ld", version];;
  connection = [(HMBSQLContext *)self connection];
  uTF8String = [version UTF8String];
  v14 = 0;
  v9 = selectSQLite3(connection, uTF8String, MEMORY[0x277CBEC10], &v14);
  v10 = v14;
  v11 = v10;
  if (error && !v9)
  {
    v12 = v10;
    *error = v11;
  }

  return v9 != 0;
}

- (int64_t)migrateFromSchemaVersion:(int64_t)version error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  error = [(HMBSQLContext *)self prepareWithError:&v13, error];
  v6 = v13;
  if (error)
  {
    hmbIsSQLiteDatabaseCorruptedError = 3;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare tables after migration: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    hmbIsSQLiteDatabaseCorruptedError = [v6 hmbIsSQLiteDatabaseCorruptedError];
  }

  return hmbIsSQLiteDatabaseCorruptedError;
}

- (BOOL)prepareWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(HMBSQLContext *)self runSQLite3:"PRAGMA foreign_keys = ON"];;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA cache_size = %@", &unk_283EB9D50];;
    v14 = -[HMBSQLContext runSQLite3:](self, "runSQLite3:", [v13 UTF8String]);
    if (v14)
    {
      v6 = v14;
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v18;
      v26 = 2048;
      v27 = 512;
      v28 = 2114;
      v29 = v6;
      v19 = "%{public}@Failed to set sqlite cache size to %ld: %{public}@";
      v20 = v17;
      v21 = 32;
    }

    else
    {
      v6 = [(HMBSQLContext *)self runSQLite3:"PRAGMA integrity_check"];;
      if (!v6)
      {
        v12 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        objc_autoreleasePoolPop(v15);
        if (error)
        {
          v22 = v6;
          v12 = 0;
          *error = v6;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_18;
      }

      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      v19 = "%{public}@Failed integrity check %@";
      v20 = v17;
      v21 = 22;
    }

    _os_log_impl(&dword_22AD27000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);

    goto LABEL_14;
  }

  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v10;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to turn on foreign key enforcement: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v11 = v6;
    v12 = 0;
    *error = v6;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (BOOL)initializeNewlyCreatedDatabaseWithError:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v5 = [(HMBSQLContext *)self prepareWithError:&v13];
  v6 = v13;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare context during newly created database initialization: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v11 = v6;
      *error = v6;
    }
  }

  return v5;
}

- (void)finalize
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = selfCopy;
    _os_log_impl(&dword_22AD27000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finalizing %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_assert_owner(&selfCopy->_lock);
  if (selfCopy->_finalized)
  {
    _HMFPreconditionFailure();
  }

  selfCopy->_finalized = 1;
  memoryMonitor = [(HMBSQLContext *)selfCopy memoryMonitor];
  [memoryMonitor removeObserver:selfCopy];

  [(HMBSQLContext *)selfCopy _clearPreparedStatementsCache];
}

- (void)_clearPreparedStatementsCache
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  evictAllStatements = [(HMBPreparedStatementsCache *)self->_preparedStatementsCache evictAllStatements];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [evictAllStatements countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(evictAllStatements);
        }

        sqlite3_finalize(*(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [evictAllStatements countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_performBlockWithContextManagedStatementForString:(const char *)string block:(id)block
{
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  v13 = 0;
  v7 = [(HMBSQLContext *)self _statementForString:string error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = blockCopy[2](blockCopy, v7);
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

- (sqlite3_stmt)_statementForString:(const char *)string error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_finalized)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@requested to prepare SQL statement when the context has already been marked finalized", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    return 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
    v11 = [(HMBPreparedStatementsCache *)self->_preparedStatementsCache statementForString:v12];
    if (!v11)
    {
      if ([(HMBPreparedStatementsCache *)self->_preparedStatementsCache count]>= 0xA)
      {
        sqlite3_finalize([(HMBPreparedStatementsCache *)self->_preparedStatementsCache evictLeastRecentlyUsedStatement]);
      }

      v20 = 0;
      v11 = prepareSQLite3([(HMBSQLContext *)self connection], string, &v20);
      v13 = v20;
      if (v11)
      {
        [(HMBPreparedStatementsCache *)self->_preparedStatementsCache setStatement:v11 forString:v12];
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v22 = v17;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_ERROR, "%{public}@unable to prepare SQL statement: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        if (error)
        {
          v18 = v13;
          v11 = 0;
          *error = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }
  }

  return v11;
}

- (void)_configureMemoryPressureHandler
{
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_283EB9ED0];
  memoryMonitor = [(HMBSQLContext *)self memoryMonitor];
  [memoryMonitor addObserver:self debounceInterval:v4 events:1.0];
}

- (void)dealloc
{
  if (!self->_finalized)
  {
    [HMBSQLFile close:self];
  }

  v3.receiver = self;
  v3.super_class = HMBSQLContext;
  [(HMBSQLContext *)&v3 dealloc];
}

- (HMBSQLContext)initWithURL:(id)l preparedStatementsCache:(id)cache memoryMonitor:(id)monitor
{
  lCopy = l;
  cacheCopy = cache;
  monitorCopy = monitor;
  v20.receiver = self;
  v20.super_class = HMBSQLContext;
  v12 = [(HMBSQLContext *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    scheme = [lCopy scheme];
    v15 = [scheme isEqualToString:@"memory"];

    if (v15)
    {
      [lCopy description];
    }

    else
    {
      [lCopy lastPathComponent];
    }
    v16 = ;
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v16;

    objc_storeStrong(&v13->_preparedStatementsCache, cache);
    objc_storeStrong(&v13->_memoryMonitor, monitor);
    [(HMBSQLContext *)v13 _configureMemoryPressureHandler];
    v18 = v13;
  }

  return v13;
}

- (HMBSQLContext)initWithURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(HMBPreparedStatementsCache);
  memoryMonitor = [MEMORY[0x277D0F810] memoryMonitor];
  v7 = [(HMBSQLContext *)self initWithURL:lCopy preparedStatementsCache:v5 memoryMonitor:memoryMonitor];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20, &__block_literal_global_39);
  }

  v3 = logCategory__hmf_once_v21;

  return v3;
}

uint64_t __28__HMBSQLContext_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v21;
  logCategory__hmf_once_v21 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end