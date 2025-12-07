@interface FCFetchedValueObservable
- (FCFetchedValueManager)manager;
- (FCFetchedValueObservable)init;
- (FCFetchedValueObservable)initWithManager:(id)manager initialValue:(id)value equalityTest:(id)test;
- (id)valueWithError:(id *)error;
- (void)addObserver:(id)observer;
- (void)handleError:(id)error;
- (void)removeObserver:(id)observer;
- (void)setValue:(id)value;
@end

@implementation FCFetchedValueObservable

- (FCFetchedValueManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (FCFetchedValueObservable)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFetchedValueObservable init]";
    v10 = 2080;
    v11 = "FCFetchedValueObservable.m";
    v12 = 1024;
    v13 = 33;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFetchedValueObservable init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFetchedValueObservable)initWithManager:(id)manager initialValue:(id)value equalityTest:(id)test
{
  v33 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  valueCopy = value;
  testCopy = test;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "manager != nil"];
    *buf = 136315906;
    v26 = "[FCFetchedValueObservable initWithManager:initialValue:equalityTest:]";
    v27 = 2080;
    v28 = "FCFetchedValueObservable.m";
    v29 = 1024;
    v30 = 40;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (testCopy)
    {
      goto LABEL_6;
    }
  }

  else if (testCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "equalityTest != nil"];
    *buf = 136315906;
    v26 = "[FCFetchedValueObservable initWithManager:initialValue:equalityTest:]";
    v27 = 2080;
    v28 = "FCFetchedValueObservable.m";
    v29 = 1024;
    v30 = 41;
    v31 = 2114;
    v32 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v24.receiver = self;
  v24.super_class = FCFetchedValueObservable;
  v11 = [(FCFetchedValueObservable *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_manager, managerCopy);
    v13 = [valueCopy copy];
    value = v12->_value;
    v12->_value = v13;

    v15 = _Block_copy(testCopy);
    equalityTest = v12->_equalityTest;
    v12->_equalityTest = v15;

    v17 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v12->_observers;
    v12->_observers = v17;

    v19 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v12->_lock;
    v12->_lock = v19;
  }

  return v12;
}

- (void)setValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (!valueCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "value"];
    *buf = 136315906;
    *&buf[4] = "[FCFetchedValueObservable setValue:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCFetchedValueObservable.m";
    *&buf[22] = 1024;
    LODWORD(v18) = 58;
    WORD2(v18) = 2114;
    *(&v18 + 6) = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v18 = __Block_byref_object_copy__14;
  *(&v18 + 1) = __Block_byref_object_dispose__14;
  v19 = 0;
  lock = [(FCFetchedValueObservable *)self lock];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__FCFetchedValueObservable_setValue___block_invoke;
  v14[3] = &unk_1E7C37408;
  v14[4] = self;
  v6 = valueCopy;
  v15 = v6;
  v16 = buf;
  [lock performWithLockSync:v14];

  manager = [(FCFetchedValueObservable *)self manager];
  if (manager)
  {
    v8 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__FCFetchedValueObservable_setValue___block_invoke_2;
    block[3] = &unk_1E7C37138;
    v13 = buf;
    v11 = manager;
    v12 = v6;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(buf, 8);
}

void __37__FCFetchedValueObservable_setValue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = [v2 equalityTest];
    v4 = v3[2](v3, *(*(a1 + 32) + 8), *(a1 + 40)) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [*(a1 + 40) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = 0;

  if (v4)
  {
    v13 = [*(a1 + 32) observers];
    v10 = [v13 allObjects];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void __37__FCFetchedValueObservable_setValue___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) fetchedObjectManager:a1[4] valueDidChange:{a1[5], v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)handleError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "error"];
    *buf = 136315906;
    v11 = "[FCFetchedValueObservable handleError:]";
    v12 = 2080;
    v13 = "FCFetchedValueObservable.m";
    v14 = 1024;
    v15 = 90;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  lock = [(FCFetchedValueObservable *)self lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__FCFetchedValueObservable_handleError___block_invoke;
  v8[3] = &unk_1E7C36C58;
  v8[4] = self;
  v9 = errorCopy;
  v6 = errorCopy;
  [lock performWithLockSync:v8];
}

uint64_t __40__FCFetchedValueObservable_handleError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) copy];
    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)valueWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  lock = [(FCFetchedValueObservable *)self lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__FCFetchedValueObservable_valueWithError___block_invoke;
  v8[3] = &unk_1E7C39DB0;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  [lock performWithLockSync:v8];

  if (error)
  {
    *error = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __43__FCFetchedValueObservable_valueWithError___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 8));
  v2 = *(a1[4] + 48);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)addObserver:(id)observer
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v11 = "[FCFetchedValueObservable addObserver:]";
    v12 = 2080;
    v13 = "FCFetchedValueObservable.m";
    v14 = 1024;
    v15 = 134;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  lock = [(FCFetchedValueObservable *)self lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__FCFetchedValueObservable_addObserver___block_invoke;
  v8[3] = &unk_1E7C36C58;
  v8[4] = self;
  v9 = observerCopy;
  v6 = observerCopy;
  [lock performWithLockSync:v8];
}

void __40__FCFetchedValueObservable_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v11 = "[FCFetchedValueObservable removeObserver:]";
    v12 = 2080;
    v13 = "FCFetchedValueObservable.m";
    v14 = 1024;
    v15 = 144;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  lock = [(FCFetchedValueObservable *)self lock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__FCFetchedValueObservable_removeObserver___block_invoke;
  v8[3] = &unk_1E7C36C58;
  v8[4] = self;
  v9 = observerCopy;
  v6 = observerCopy;
  [lock performWithLockSync:v8];
}

void __43__FCFetchedValueObservable_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

@end