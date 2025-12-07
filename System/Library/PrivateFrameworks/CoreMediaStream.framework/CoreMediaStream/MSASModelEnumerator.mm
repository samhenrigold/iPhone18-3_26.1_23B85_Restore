@interface MSASModelEnumerator
+ (id)enumeratorWithDatabase:(sqlite3 *)database query:(id)query stepBlock:(id)block;
- (MSASModelEnumerator)initWithDatabase:(sqlite3 *)database query:(id)query stepBlock:(id)block;
- (id)nextObject;
- (void)dealloc;
@end

@implementation MSASModelEnumerator

- (id)nextObject
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6801;
  v12 = __Block_byref_object_dispose__6802;
  v13 = 0;
  if ([(MSASModelEnumerator *)self stmt])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__MSASModelEnumerator_nextObject__block_invoke;
    v7[3] = &unk_278E92700;
    v7[4] = self;
    v7[5] = &v8;
    v3 = MEMORY[0x245D7BA50](v7);
    queue = self->_queue;
    if (queue)
    {
      dispatch_sync(queue, v3);
    }

    else
    {
      v3[2](v3);
    }
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__MSASModelEnumerator_nextObject__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sqlite3_step([*(a1 + 32) stmt]);
  if (v2 == 101)
  {
    sqlite3_finalize([*(a1 + 32) stmt]);
    [*(a1 + 32) setStmt:0];
    v6 = *(a1 + 32);

    [v6 setStepBlock:0];
  }

  else if (v2 == 100)
  {
    v8 = [*(a1 + 32) stepBlock];
    v3 = v8[2](v8, [*(a1 + 32) stmt]);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v10 = v7;
    v11 = 2082;
    v12 = sqlite3_errmsg([v7 db]);
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Can't enumerate the next object in the model. Error: %{public}s", buf, 0x16u);
  }
}

- (void)dealloc
{
  if (self->_stmt)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__MSASModelEnumerator_dealloc__block_invoke;
    v6[3] = &unk_278E926D8;
    v6[4] = self;
    v3 = MEMORY[0x245D7BA50](v6, a2);
    queue = self->_queue;
    if (queue)
    {
      dispatch_sync(queue, v3);
    }

    else
    {
      v3[2](v3);
    }
  }

  v5.receiver = self;
  v5.super_class = MSASModelEnumerator;
  [(MSASModelEnumerator *)&v5 dealloc];
}

- (MSASModelEnumerator)initWithDatabase:(sqlite3 *)database query:(id)query stepBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = MSASModelEnumerator;
  v10 = [(MSASModelEnumerator *)&v15 init];
  if (v10)
  {
    if (sqlite3_prepare_v2(database, [queryCopy UTF8String], -1, &v10->_stmt, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg(database);
        *buf = 138543874;
        v17 = v10;
        v18 = 2114;
        v19 = queryCopy;
        v20 = 2082;
        v21 = v14;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not compile SQL query: “%{public}@”. sqlite error: %{public}s", buf, 0x20u);
      }

      stepBlock = v10;
      v10 = 0;
    }

    else
    {
      v10->_db = database;
      v12 = [blockCopy copy];
      stepBlock = v10->_stepBlock;
      v10->_stepBlock = v12;
    }
  }

  return v10;
}

+ (id)enumeratorWithDatabase:(sqlite3 *)database query:(id)query stepBlock:(id)block
{
  blockCopy = block;
  queryCopy = query;
  v9 = [[MSASModelEnumerator alloc] initWithDatabase:database query:queryCopy stepBlock:blockCopy];

  return v9;
}

@end