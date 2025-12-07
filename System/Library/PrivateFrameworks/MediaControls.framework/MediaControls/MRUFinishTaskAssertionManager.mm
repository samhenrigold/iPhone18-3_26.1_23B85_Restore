@interface MRUFinishTaskAssertionManager
+ (id)sharedManager;
- (MRUFinishTaskAssertionManager)init;
- (void)acquireForTaskToken:(id)token withReason:(id)reason invalidationHandler:(id)handler;
- (void)dealloc;
- (void)releaseForTaskToken:(id)token;
@end

@implementation MRUFinishTaskAssertionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MRUFinishTaskAssertionManager sharedManager];
  }

  v3 = sharedManager___shared;

  return v3;
}

uint64_t __46__MRUFinishTaskAssertionManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager___shared;
  sharedManager___shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUFinishTaskAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = MRUFinishTaskAssertionManager;
  v2 = [(MRUFinishTaskAssertionManager *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    tokenMap = v2->_tokenMap;
    v2->_tokenMap = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (void)dealloc
{
  [(RBSAssertion *)self->_taskAssertion invalidate];
  v3.receiver = self;
  v3.super_class = MRUFinishTaskAssertionManager;
  [(MRUFinishTaskAssertionManager *)&v3 dealloc];
}

- (void)acquireForTaskToken:(id)token withReason:(id)reason invalidationHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  reasonCopy = reason;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  tokenMap = [(MRUFinishTaskAssertionManager *)self tokenMap];
  v12 = _Block_copy(handlerCopy);
  [tokenMap setObject:v12 forKey:tokenCopy];

  v14 = MCLogCategoryDefault(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v33 = tokenCopy;
    v34 = 2112;
    v35 = reasonCopy;
    _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "[MRUFinishTaskAssertionManager] Acquiring for token: %p with reason: %@", buf, 0x16u);
  }

  taskAssertion = [(MRUFinishTaskAssertionManager *)self taskAssertion];
  v16 = taskAssertion == 0;

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69C7548]);
    currentProcess = [MEMORY[0x1E69C7640] currentProcess];
    v19 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
    v31 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v21 = [v17 initWithExplanation:@"MediaRemote UI pre-suspend cleanup." target:currentProcess attributes:v20];
    [(MRUFinishTaskAssertionManager *)self setTaskAssertion:v21];

    taskAssertion2 = [(MRUFinishTaskAssertionManager *)self taskAssertion];
    v30 = 0;
    [taskAssertion2 acquireWithError:&v30];
    v23 = v30;

    if (v23)
    {
      v25 = MCLogCategoryDefault(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&dword_1A20FC000, v25, OS_LOG_TYPE_ERROR, "[MRUFinishTaskAssertionManager] FinishTask assertion acquisition failed with error: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v26 = MEMORY[0x1E69B14D8];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __84__MRUFinishTaskAssertionManager_acquireForTaskToken_withReason_invalidationHandler___block_invoke;
      v28[3] = &unk_1E7663AE8;
      objc_copyWeak(&v29, buf);
      v27 = [v26 timerWithInterval:0 repeats:MEMORY[0x1E69E96A0] queue:v28 block:5.0];
      [(MRUFinishTaskAssertionManager *)self setAutoInvalidationTimer:v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }
  }
}

void __84__MRUFinishTaskAssertionManager_acquireForTaskToken_withReason_invalidationHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained tokenMap];
    v4 = [v3 count];
    if (v4)
    {
      v5 = MCLogCategoryDefault(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 keyEnumerator];
        v7 = [v6 allObjects];
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_ERROR, "[MRUFinishTaskAssertionManager] Task tokens after timeout: %@", buf, 0xCu);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v3;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v8 objectForKey:{*(*(&v15 + 1) + 8 * v12), v15}];
            v13[2]();

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      [v8 removeAllObjects];
    }

    v14 = [v2 taskAssertion];
    [v14 invalidate];

    [v2 setTaskAssertion:0];
  }
}

- (void)releaseForTaskToken:(id)token
{
  v16 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  tokenMap = [(MRUFinishTaskAssertionManager *)self tokenMap];
  v6 = [tokenMap objectForKey:tokenCopy];

  if (v6)
  {
    v8 = MCLogCategoryDefault(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = tokenCopy;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRUFinishTaskAssertionManager] Releasing for token: %p", &v14, 0xCu);
    }

    tokenMap2 = [(MRUFinishTaskAssertionManager *)self tokenMap];
    [tokenMap2 removeObjectForKey:tokenCopy];

    tokenMap3 = [(MRUFinishTaskAssertionManager *)self tokenMap];
    v11 = [tokenMap3 count];

    if (!v11)
    {
      autoInvalidationTimer = [(MRUFinishTaskAssertionManager *)self autoInvalidationTimer];
      [autoInvalidationTimer invalidate];

      [(MRUFinishTaskAssertionManager *)self setAutoInvalidationTimer:0];
      taskAssertion = [(MRUFinishTaskAssertionManager *)self taskAssertion];
      [taskAssertion invalidate];

      [(MRUFinishTaskAssertionManager *)self setTaskAssertion:0];
    }
  }
}

@end