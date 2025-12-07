@interface FCKeyedOperationQueue
- (FCKeyedOperationQueue)init;
- (FCKeyedOperationQueue)initWithDelegate:(id)delegate maxConcurrentOperationCount:(int64_t)count;
- (FCKeyedOperationQueueDelegate)delegate;
- (NSOrderedSet)keyQueue;
- (void)_enqueueOperationIfNeeded;
- (void)notifyWhenAllOperationsAreFinishedUsingBlock:(id)block;
- (void)setKeyQueue:(id)queue;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation FCKeyedOperationQueue

- (void)_enqueueOperationIfNeeded
{
  v44 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if ([self isSuspended])
    {
      v2 = [self log];

      if (!v2)
      {
        return;
      }

      v3 = [self log];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "KOQ will not revisit queue because it's currently suspended", buf, 2u);
      }

      goto LABEL_42;
    }

    v3 = *(self + 48);
    v4 = *(self + 40);
    v5 = *(self + 56);
    v6 = [self log];

    if (v6)
    {
      v7 = [self log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = v3;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "KOQ will revisit queue, executing=%{public}@", buf, 0xCu);
      }
    }

    v8 = [v3 count];
    if (v5 == -1)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v5;
    }

    if (v8 >= v9)
    {
      v16 = [self log];

      if (!v16)
      {
LABEL_41:

LABEL_42:
        return;
      }

      v17 = [self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v43 = v5;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "KOQ is already executing as many operations as it can, max=%lu", buf, 0xCu);
      }

LABEL_40:

      goto LABEL_41;
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke;
    v40[3] = &unk_1E7C46410;
    v10 = v3;
    v41 = v10;
    v11 = [v4 indexOfObjectPassingTest:v40];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      v13 = 0;
    }

    else
    {
      v13 = [v4 objectAtIndexedSubscript:v11];
      v18 = objc_loadWeakRetained((self + 16));
      WeakRetained = v18;
      if (v13 && v18)
      {
        [v10 addObject:v13];
        v19 = *(self + 64);
        dispatch_group_enter(*(self + 72));
        v20 = objc_alloc_init(FCKeyedOperation);
        v21 = [self log];
        if (v20)
        {
          objc_storeStrong(&v20->_log, v21);
        }

        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_2;
        v32 = &unk_1E7C37E08;
        v33 = v20;
        selfCopy = self;
        WeakRetained = WeakRetained;
        v35 = WeakRetained;
        v13 = v13;
        v36 = v13;
        v37 = v4;
        v38 = v10;
        v15 = v19;
        v39 = v15;
        v22 = v20;
        v23 = _Block_copy(&v29);
        executionQueue = [self executionQueue];

        v25 = [self log];

        if (executionQueue)
        {
          if (v25)
          {
            v26 = [self log];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v43 = v13;
              _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "KOQ will execute next operation on execution queue, key=%{public}@", buf, 0xCu);
            }
          }

          executionQueue2 = [self executionQueue];
          dispatch_async(executionQueue2, v23);
        }

        else
        {
          if (v25)
          {
            v28 = [self log];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v43 = v13;
              _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "KOQ will execute next operation, key=%{public}@", buf, 0xCu);
            }
          }

          v23[2](v23);
        }

        [v15 setObject:v22 forKeyedSubscript:v13];
        [(FCKeyedOperationQueue *)self _enqueueOperationIfNeeded];

        goto LABEL_38;
      }
    }

    v14 = [self log];

    if (!v14)
    {
LABEL_39:

      v17 = v41;
      goto LABEL_40;
    }

    v15 = [self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "KOQ found no keys that need to be executed", buf, 2u);
    }

LABEL_38:

    goto LABEL_39;
  }
}

- (FCKeyedOperationQueue)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCKeyedOperationQueue init]";
    v10 = 2080;
    v11 = "FCKeyedOperationQueue.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCKeyedOperationQueue init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCKeyedOperationQueue)initWithDelegate:(id)delegate maxConcurrentOperationCount:(int64_t)count
{
  v28 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (!delegateCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "delegate"];
    *buf = 136315906;
    v21 = "[FCKeyedOperationQueue initWithDelegate:maxConcurrentOperationCount:]";
    v22 = 2080;
    v23 = "FCKeyedOperationQueue.m";
    v24 = 1024;
    v25 = 45;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v19.receiver = self;
  v19.super_class = FCKeyedOperationQueue;
  v7 = [(FCKeyedOperationQueue *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = objc_opt_new();
    keysForExecutingOperations = v8->_keysForExecutingOperations;
    v8->_keysForExecutingOperations = v9;

    v8->_maxConcurrentOperationCount = count;
    v11 = objc_opt_new();
    mutableKeyQueue = v8->_mutableKeyQueue;
    v8->_mutableKeyQueue = v11;

    v13 = objc_opt_new();
    cancelHandlersByKey = v8->_cancelHandlersByKey;
    v8->_cancelHandlersByKey = v13;

    v15 = dispatch_group_create();
    operationExecutionGroup = v8->_operationExecutionGroup;
    v8->_operationExecutionGroup = v15;
  }

  return v8;
}

- (void)setKeyQueue:(id)queue
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF00];
  queueCopy = queue;
  [v4 isMainThread];
  if (self)
  {
    v6 = self->_mutableKeyQueue;
    [(NSMutableOrderedSet *)v6 removeAllObjects];
    array = [queueCopy array];

    [(NSMutableOrderedSet *)v6 addObjectsFromArray:array];
    [MEMORY[0x1E696AF00] isMainThread];
    v8 = self->_mutableKeyQueue;
    v9 = self->_cancelHandlersByKey;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(NSMutableSet *)self->_keysForExecutingOperations copy];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (([(NSMutableOrderedSet *)v8 containsObject:v15]& 1) == 0)
          {
            v16 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v15];
            v17 = v16;
            if (v16)
            {
              [v16 cancel];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [0 removeAllObjects];
    array2 = [queueCopy array];

    [0 addObjectsFromArray:array2];
  }

  [(FCKeyedOperationQueue *)self _enqueueOperationIfNeeded];
}

- (NSOrderedSet)keyQueue
{
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = MEMORY[0x1E695DFB8];
  if (self)
  {
    mutableKeyQueue = self->_mutableKeyQueue;
  }

  else
  {
    mutableKeyQueue = 0;
  }

  return [v3 orderedSetWithOrderedSet:mutableKeyQueue];
}

- (void)notifyWhenAllOperationsAreFinishedUsingBlock:(id)block
{
  if (self)
  {
    self = self->_operationExecutionGroup;
  }

  dispatch_group_notify(&self->super, MEMORY[0x1E69E96A0], block);
}

- (void)setSuspended:(BOOL)suspended
{
  [MEMORY[0x1E696AF00] isMainThread];
  self->_suspended = suspended;

  [(FCKeyedOperationQueue *)self _enqueueOperationIfNeeded];
}

void __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_3;
  v19[3] = &unk_1E7C46438;
  v6 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v20 = v11;
  v21 = v10;
  v22 = *(a1 + 40);
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v15 = v19;
  if (v2)
  {
    if (*(v2 + 8))
    {
      v16 = *(v2 + 24);
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "KOQ will not execute operation because it's been cancelled, key=%{public}@", &buf, 0xCu);
      }
    }

    else
    {
      v17 = [v13 keyedOperationQueue:v12 performAsyncOperationForKey:v14 completion:v15];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v24 = __60__FCKeyedOperation_executeForQueue_delegate_key_completion___block_invoke;
      v25 = &unk_1E7C36C58;
      v26 = v2;
      v27 = v17;
      v18 = v17;
      FCPerformBlockOnMainThread(&buf);
    }
  }
}

void __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_3(uint64_t a1, char a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_4;
  v9[3] = &unk_1E7C39470;
  v13 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    [*(a1 + 32) removeObject:*(a1 + 40)];
  }

  [*(a1 + 48) removeObject:*(a1 + 40)];
  [*(a1 + 56) removeObjectForKey:*(a1 + 40)];
  [(FCKeyedOperationQueue *)*(a1 + 64) _enqueueOperationIfNeeded];
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  dispatch_group_leave(v3);
}

- (FCKeyedOperationQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end