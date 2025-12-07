@interface LACSharedModeDataSourceFTRCAdapter
+ (id)_callCenter;
+ (id)_workQueue;
- (LACSharedModeDataSourceFTRCAdapter)initWithReplyQueue:(id)queue;
- (void)_performFetchSharedModeWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion;
@end

@implementation LACSharedModeDataSourceFTRCAdapter

+ (id)_callCenter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__LACSharedModeDataSourceFTRCAdapter__callCenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_callCenter_onceToken != -1)
  {
    dispatch_once(&_callCenter_onceToken, block);
  }

  v2 = _callCenter__center;

  return v2;
}

+ (id)_workQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__LACSharedModeDataSourceFTRCAdapter__workQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_workQueue_onceToken != -1)
  {
    dispatch_once(&_workQueue_onceToken, block);
  }

  v2 = _workQueue__queue;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ deallocated", &v2, 0xCu);
}

- (LACSharedModeDataSourceFTRCAdapter)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LACSharedModeDataSourceFTRCAdapter;
  v6 = [(LACSharedModeDataSourceFTRCAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, queue);
  }

  return v7;
}

- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[LACFlags sharedInstance];
  featureFlagEssoniteClickEnabled = [v8 featureFlagEssoniteClickEnabled];

  if ((featureFlagEssoniteClickEnabled & 1) == 0)
  {
    v13 = +[LACSharedMode defaultSharedMode];
    v14 = LACLogSharedMode(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [LACSharedModeDataSourceFTRCAdapter fetchSharedModeWithOptions:completion:];
    }

    goto LABEL_12;
  }

  if (!getTUCallCenterClass() || (TUUIXPCClientConnectionClass = getTUUIXPCClientConnectionClass()) == 0)
  {
    v13 = +[LACSharedMode defaultSharedMode];
    v14 = LACLogSharedMode(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [LACSharedModeDataSourceFTRCAdapter fetchSharedModeWithOptions:completion:];
    }

LABEL_12:

    completionCopy[2](completionCopy, v13);
    goto LABEL_13;
  }

  v11 = LACLogSharedMode(TUUIXPCClientConnectionClass);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  _workQueue = [objc_opt_class() _workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__LACSharedModeDataSourceFTRCAdapter_fetchSharedModeWithOptions_completion___block_invoke;
  block[3] = &unk_1E7A95DC0;
  block[4] = self;
  objc_copyWeak(&v17, buf);
  v16 = completionCopy;
  dispatch_async(_workQueue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
LABEL_13:
}

void __76__LACSharedModeDataSourceFTRCAdapter_fetchSharedModeWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__LACSharedModeDataSourceFTRCAdapter_fetchSharedModeWithOptions_completion___block_invoke_2;
  v3[3] = &unk_1E7A95D98;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 _performFetchSharedModeWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __76__LACSharedModeDataSourceFTRCAdapter_fetchSharedModeWithOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__LACSharedModeDataSourceFTRCAdapter_fetchSharedModeWithOptions_completion___block_invoke_3;
    block[3] = &unk_1E7A95D70;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = v3;
    v9 = *(a1 + 32);
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

uint64_t __76__LACSharedModeDataSourceFTRCAdapter_fetchSharedModeWithOptions_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = LACLogSharedMode(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = WeakRetained;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_performFetchSharedModeWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _callCenter = [objc_opt_class() _callCenter];
  v6 = [_callCenter countOfCallsPassingTest:&__block_literal_global_5];

  if (v6)
  {
    objc_initWeak(location, self);
    _callCenter2 = [objc_opt_class() _callCenter];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__LACSharedModeDataSourceFTRCAdapter__performFetchSharedModeWithCompletion___block_invoke_28;
    v10[3] = &unk_1E7A95E30;
    objc_copyWeak(&v12, location);
    v11 = completionCopy;
    [_callCenter2 fetchAnonymousXPCEndpoint:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = [[LACSharedMode alloc] initWithActive:0 confirmed:1];
    v9 = LACLogSharedMode(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138543618;
      *&location[4] = self;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ falling back to %{public}@ because the TUCallCenter has no active calls", location, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, v8);
  }
}

uint64_t __76__LACSharedModeDataSourceFTRCAdapter__performFetchSharedModeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 status] == 1)
  {
    v3 = [v2 isConversation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __76__LACSharedModeDataSourceFTRCAdapter__performFetchSharedModeWithCompletion___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = +[LACSharedMode defaultSharedMode];
      v10 = LACLogSharedMode(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v23 = v8;
        v24 = 2114;
        v25 = v6;
        v26 = 2114;
        v27 = v9;
        _os_log_error_impl(&dword_1B0233000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Unable to determine current shared mode status %{public}@. Falling back to : %{public}@", buf, 0x20u);
      }

LABEL_12:

      (*(*(a1 + 32) + 16))();
      goto LABEL_13;
    }

    if (!v5)
    {
      v9 = [[LACSharedMode alloc] initWithActive:0 confirmed:1];
      v10 = LACLogSharedMode(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_loadWeakRetained((a1 + 40));
        *buf = 138543618;
        v23 = v18;
        v24 = 2114;
        v25 = v9;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ falling back to %{public}@ because the TUCallCenter endpoint was nil", buf, 0x16u);
      }

      goto LABEL_12;
    }

    v11 = LACLogSharedMode(WeakRetained);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_loadWeakRetained((a1 + 40));
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Obtained TUCallCenter endpoint %@", buf, 0x16u);
    }

    v13 = objc_alloc(getTUUIXPCClientConnectionClass());
    v14 = [objc_opt_class() _callCenter];
    v15 = [v13 initWithListenerEndpoint:v5 callCenter:v14];
    v16 = v8[2];
    v8[2] = v15;

    v17 = v8[2];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__LACSharedModeDataSourceFTRCAdapter__performFetchSharedModeWithCompletion___block_invoke_29;
    v19[3] = &unk_1E7A95E08;
    objc_copyWeak(&v21, (a1 + 40));
    v20 = *(a1 + 32);
    [v17 fetchRemoteControlStatus:v19];

    objc_destroyWeak(&v21);
  }

LABEL_13:
}

void __76__LACSharedModeDataSourceFTRCAdapter__performFetchSharedModeWithCompletion___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = +[LACSharedMode defaultSharedMode];
      v8 = LACLogSharedMode(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138543874;
        v10 = WeakRetained;
        v11 = 2114;
        v12 = v5;
        v13 = 2114;
        v14 = v7;
        _os_log_error_impl(&dword_1B0233000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Unable to determine current shared mode status %{public}@. Falling back to : %{public}@", &v9, 0x20u);
      }
    }

    else
    {
      v7 = [[LACSharedMode alloc] initWithActive:a2 == 2 confirmed:1];
      v8 = LACLogSharedMode(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543618;
        v10 = WeakRetained;
        v11 = 2114;
        v12 = v7;
        _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v9, 0x16u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __49__LACSharedModeDataSourceFTRCAdapter__callCenter__block_invoke(uint64_t a1)
{
  if (getTUCallCenterClass())
  {
    v2 = objc_alloc(getTUCallCenterClass());
    v7 = [*(a1 + 32) _workQueue];
    v3 = [v2 initWithQueue:v7];
    v4 = _callCenter__center;
    _callCenter__center = v3;
  }

  else
  {
    v5 = LACLogSharedMode(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__LACSharedModeDataSourceFTRCAdapter__callCenter__block_invoke_cold_1(a1, v5);
    }

    v6 = _callCenter__center;
    _callCenter__center = 0;
  }
}

void __48__LACSharedModeDataSourceFTRCAdapter__workQueue__block_invoke(uint64_t a1)
{
  v1 = objc_opt_class();
  v4 = NSStringFromClass(v1);
  v2 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v4];
  v3 = _workQueue__queue;
  _workQueue__queue = v2;
}

void __49__LACSharedModeDataSourceFTRCAdapter__callCenter__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Unable to determine shared mode status due to missing dependencies", &v3, 0xCu);
}

@end