@interface FCFetchedValueManager
- (FCFetchedValueManager)init;
- (FCFetchedValueManager)initWithDescriptor:(id)descriptor;
- (NFCopying)value;
- (id)_updateDependentManagersPromiseWithQualityOfService:(int64_t)service;
- (id)valuePromiseWithQualityOfService:(int64_t)service;
- (void)addObserver:(id)observer;
- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion;
- (void)fetchedObjectManager:(id)manager valueDidChange:(id)change;
- (void)fetchedValueDescriptorValueIsDirty:(id)dirty;
- (void)operationThrottler:(id)throttler performAsyncOperationWithQualityOfService:(int64_t)service completion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation FCFetchedValueManager

- (NFCopying)value
{
  observable = [(FCFetchedValueManager *)self observable];
  value = [observable value];

  return value;
}

- (FCFetchedValueManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFetchedValueManager init]";
    v10 = 2080;
    v11 = "FCFetchedValueManager.m";
    v12 = 1024;
    v13 = 38;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFetchedValueManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFetchedValueManager)initWithDescriptor:(id)descriptor
{
  v38 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if (!descriptorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "descriptor"];
    *buf = 136315906;
    v31 = "[FCFetchedValueManager initWithDescriptor:]";
    v32 = 2080;
    v33 = "FCFetchedValueManager.m";
    v34 = 1024;
    v35 = 43;
    v36 = 2114;
    v37 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v28.receiver = self;
  v28.super_class = FCFetchedValueManager;
  v5 = [(FCFetchedValueManager *)&v28 init];
  if (v5)
  {
    v6 = [descriptorCopy copy];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [[FCBoostableOperationThrottler alloc] initWithDelegate:v5];
    operationThrottler = v5->_operationThrottler;
    v5->_operationThrottler = v8;

    v10 = [FCFetchedValueObservable alloc];
    fastCachedValue = [descriptorCopy fastCachedValue];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __44__FCFetchedValueManager_initWithDescriptor___block_invoke;
    v26[3] = &unk_1E7C404F0;
    v12 = descriptorCopy;
    v27 = v12;
    v13 = [(FCFetchedValueObservable *)v10 initWithManager:v5 initialValue:fastCachedValue equalityTest:v26];
    observable = v5->_observable;
    v5->_observable = v13;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    inputManagers = [v12 inputManagers];
    v16 = [inputManagers countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(inputManagers);
          }

          [*(*(&v22 + 1) + 8 * i) addObserver:v5];
        }

        v17 = [inputManagers countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v17);
    }

    [v12 setObserver:v5];
  }

  return v5;
}

- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  v9 = [(FCFetchedValueManager *)self _optionsForCachePolicy:policy];
  operationThrottler = [(FCFetchedValueManager *)self operationThrottler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__FCFetchedValueManager_fetchValueWithCachePolicy_qualityOfService_completion___block_invoke;
  v12[3] = &unk_1E7C37BC0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [operationThrottler tickleWithQualityOfService:service data:v9 completion:v12];
}

void __79__FCFetchedValueManager_fetchValueWithCachePolicy_qualityOfService_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observable];
  v5 = 0;
  v3 = [v2 valueWithError:&v5];
  v4 = v5;

  (*(*(a1 + 40) + 16))();
}

- (void)addObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v8 = "[FCFetchedValueManager addObserver:]";
    v9 = 2080;
    v10 = "FCFetchedValueManager.m";
    v11 = 1024;
    v12 = 97;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  observable = [(FCFetchedValueManager *)self observable];
  [observable addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (!observerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer"];
    *buf = 136315906;
    v8 = "[FCFetchedValueManager removeObserver:]";
    v9 = 2080;
    v10 = "FCFetchedValueManager.m";
    v11 = 1024;
    v12 = 103;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  observable = [(FCFetchedValueManager *)self observable];
  [observable removeObserver:observerCopy];
}

- (void)fetchedValueDescriptorValueIsDirty:(id)dirty
{
  operationThrottler = [(FCFetchedValueManager *)self operationThrottler];
  [operationThrottler tickleWithQualityOfService:17 data:1 completion:0];
}

- (void)fetchedObjectManager:(id)manager valueDidChange:(id)change
{
  v4 = [(FCFetchedValueManager *)self operationThrottler:manager];
  [v4 tickleWithQualityOfService:17 data:1 completion:0];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithQualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  operationThrottler = [(FCFetchedValueManager *)self operationThrottler];
  mergedData = [operationThrottler mergedData];

  asVoid = [MEMORY[0x1E69B68F8] asVoid];
  if ((mergedData & 1) == 0)
  {
    v11 = zalgo();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke;
    v27[3] = &unk_1E7C40518;
    v27[4] = self;
    v27[5] = service;
    v12 = [asVoid thenOn:v11 then:v27];

    asVoid = v12;
  }

  v13 = zalgo();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke_2;
  v26[3] = &unk_1E7C40540;
  v26[4] = self;
  v26[5] = mergedData;
  v26[6] = service;
  v14 = [asVoid thenOn:v13 then:v26];

  v15 = zalgo();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke_3;
  v25[3] = &unk_1E7C40568;
  v25[4] = self;
  v16 = [v14 thenOn:v15 then:v25];
  v17 = zalgo();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke_4;
  v24[3] = &unk_1E7C36E50;
  v24[4] = self;
  v18 = [v16 errorOn:v17 error:v24];
  v19 = zalgo();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke_5;
  v22[3] = &unk_1E7C379C8;
  v23 = completionCopy;
  v20 = completionCopy;
  v21 = [v18 alwaysOn:v19 always:v22];
}

id __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachePolicyForOptions:*(a1 + 40)];
  v3 = [*(a1 + 32) descriptor];
  v4 = [v3 valuePromiseWithCachePolicy:v2 qualityOfService:*(a1 + 48)];

  return v4;
}

uint64_t __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 observable];
  [v4 setValue:v3];

  return 0;
}

void __97__FCFetchedValueManager_operationThrottler_performAsyncOperationWithQualityOfService_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 observable];
  [v4 handleError:v3];
}

- (id)_updateDependentManagersPromiseWithQualityOfService:(int64_t)service
{
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke;
  v8[3] = &unk_1E7C405B8;
  v8[4] = self;
  v8[5] = service;
  v6 = [v5 initWithResolver:v8];

  return v6;
}

void __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v27 = a3;
  v5 = objc_opt_new();
  v6 = dispatch_group_create();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [*(a1 + 32) descriptor];
  v8 = [v7 inputManagers];

  v9 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        [v13 removeObserver:*(a1 + 32)];
        dispatch_group_enter(v6);
        v14 = *(a1 + 40);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke_2;
        v37[3] = &unk_1E7C40590;
        v38 = v5;
        v39 = v13;
        v40 = *(a1 + 32);
        v41 = v6;
        [v13 fetchValueWithQualityOfService:v14 completion:v37];
      }

      v10 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v10);
  }

  if (FCDispatchGroupIsEmpty(v6))
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke_3;
    v33[3] = &unk_1E7C390B8;
    v15 = &v34;
    v16 = &v35;
    v18 = v27;
    v17 = v28;
    v34 = v5;
    v35 = v27;
    v19 = &v36;
    v36 = v28;
    v20 = v28;
    v21 = v27;
    v22 = v5;
    __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke_3(v33);
  }

  else
  {
    v23 = FCDispatchQueueForQualityOfService(*(a1 + 40));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke_4;
    block[3] = &unk_1E7C390B8;
    v15 = &v30;
    v16 = &v31;
    v18 = v27;
    v17 = v28;
    v30 = v5;
    v31 = v27;
    v19 = &v32;
    v32 = v28;
    v24 = v28;
    v25 = v27;
    v26 = v5;
    dispatch_group_notify(v6, v23, block);
  }
}

void __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) addObject:?];
  }

  [*(a1 + 40) addObserver:*(a1 + 48)];
  v4 = *(a1 + 56);

  dispatch_group_leave(v4);
}

void __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) readOnlyArray];
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      [v3 firstObject];
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:16 userInfo:0];
    }
    v2 = ;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __77__FCFetchedValueManager__updateDependentManagersPromiseWithQualityOfService___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) readOnlyArray];
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      [v3 firstObject];
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:16 userInfo:0];
    }
    v2 = ;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)valuePromiseWithQualityOfService:(int64_t)service
{
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__FCFetchedValueManager_Promise__valuePromiseWithQualityOfService___block_invoke;
  v8[3] = &unk_1E7C405B8;
  v8[4] = self;
  v8[5] = service;
  v6 = [v5 initWithResolver:v8];

  return v6;
}

void __67__FCFetchedValueManager_Promise__valuePromiseWithQualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__FCFetchedValueManager_Promise__valuePromiseWithQualityOfService___block_invoke_2;
  v11[3] = &unk_1E7C405E0;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  [v8 fetchValueWithQualityOfService:v7 completion:v11];
}

uint64_t __67__FCFetchedValueManager_Promise__valuePromiseWithQualityOfService___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

@end