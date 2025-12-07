@interface LACSharedModeDataSourceDefaultsDecorator
- (BOOL)_shouldUseMockedResponse;
- (LACSharedModeDataSourceDefaultsDecorator)initWithDataSource:(id)source replyQueue:(id)queue;
- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion;
@end

@implementation LACSharedModeDataSourceDefaultsDecorator

- (BOOL)_shouldUseMockedResponse
{
  if (!+[LACGlobalDomain osVariantAllowsDomainOverrides])
  {
    return 0;
  }

  v2 = +[LACGlobalDomain isSharedModeActive];
  v3 = v2 != 0;

  return v3;
}

- (LACSharedModeDataSourceDefaultsDecorator)initWithDataSource:(id)source replyQueue:(id)queue
{
  sourceCopy = source;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = LACSharedModeDataSourceDefaultsDecorator;
  v9 = [(LACSharedModeDataSourceDefaultsDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_replyQueue, queue);
  }

  return v10;
}

- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  _shouldUseMockedResponse = [(LACSharedModeDataSourceDefaultsDecorator *)self _shouldUseMockedResponse];
  if (_shouldUseMockedResponse)
  {
    v9 = LACLogSharedMode(_shouldUseMockedResponse);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
    }

    v10 = +[LACGlobalDomain isSharedModeActive];
    bOOLValue = [v10 BOOLValue];

    v12 = [[LACSharedMode alloc] initWithActive:bOOLValue confirmed:0];
    v13 = +[LACGlobalDomain sharedModeLatency];
    [v13 doubleValue];
    v15 = v14;

    v16 = dispatch_time(0, (v15 * 1000000000.0));
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__LACSharedModeDataSourceDefaultsDecorator_fetchSharedModeWithOptions_completion___block_invoke;
    block[3] = &unk_1E7A953B0;
    block[4] = self;
    v20 = v12;
    v21 = completionCopy;
    v18 = v12;
    dispatch_after(v16, replyQueue, block);
  }

  else
  {
    [(LACSharedModeDataSource *)self->_dataSource fetchSharedModeWithOptions:optionsCopy completion:completionCopy];
  }
}

uint64_t __82__LACSharedModeDataSourceDefaultsDecorator_fetchSharedModeWithOptions_completion___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = LACLogSharedMode(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query %{public}@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

@end