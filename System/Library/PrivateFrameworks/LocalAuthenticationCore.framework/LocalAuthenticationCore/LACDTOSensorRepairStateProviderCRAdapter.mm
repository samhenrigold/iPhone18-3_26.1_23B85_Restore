@interface LACDTOSensorRepairStateProviderCRAdapter
- (LACDTOSensorRepairStateProviderCRAdapter)initWithReplyQueue:(id)queue;
- (void)_fetchRepairStateWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchRepairStateWithCompletion:(id)completion;
@end

@implementation LACDTOSensorRepairStateProviderCRAdapter

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ will dealloc", &v2, 0xCu);
}

- (LACDTOSensorRepairStateProviderCRAdapter)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = LACDTOSensorRepairStateProviderCRAdapter;
  v6 = [(LACDTOSensorRepairStateProviderCRAdapter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, queue);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v9];
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;
  }

  return v7;
}

- (void)fetchRepairStateWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LACDTOSensorRepairStateProviderCRAdapter_fetchRepairStateWithCompletion___block_invoke;
  block[3] = &unk_1E7A957E8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __75__LACDTOSensorRepairStateProviderCRAdapter_fetchRepairStateWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __75__LACDTOSensorRepairStateProviderCRAdapter_fetchRepairStateWithCompletion___block_invoke_2;
    v3[3] = &unk_1E7A96B58;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained _fetchRepairStateWithCompletion:v3];

    objc_destroyWeak(&v5);
  }
}

void __75__LACDTOSensorRepairStateProviderCRAdapter_fetchRepairStateWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__LACDTOSensorRepairStateProviderCRAdapter_fetchRepairStateWithCompletion___block_invoke_3;
    v10[3] = &unk_1E7A96B30;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, v10);

    objc_destroyWeak(&v14);
  }
}

void __75__LACDTOSensorRepairStateProviderCRAdapter_fetchRepairStateWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 48) + 16))();
    WeakRetained = v3;
  }
}

- (void)_fetchRepairStateWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (CoreRepairCoreLibraryCore(0) && CoreRepairCoreLibraryCore(0) && (CRIsSelfRepairedComponentSymbolLoc = getCRIsSelfRepairedComponentSymbolLoc()) != 0)
  {
    v6 = LACLogDTOSensor(CRIsSelfRepairedComponentSymbolLoc);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will start self-repair query", &v16, 0xCu);
    }

    v7 = +[LACDTOSignpostEvent repairStatusQueryWillStart];
    [v7 send];

    v8 = __76__LACDTOSensorRepairStateProviderCRAdapter__fetchRepairStateWithCompletion___block_invoke();
    v9 = +[LACDTOSignpostEvent repairStatusQueryDidFinish];
    [v9 send];

    v11 = LACLogDTOSensor(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      v16 = 138543618;
      selfCopy2 = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish self-repair query with result %@", &v16, 0x16u);
    }

    if (v8)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    v14 = [[LACDTOMutableSensorRepairState alloc] initWithFlag:v13];
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v14 = [LACError errorWithCode:-1020 debugDescription:@"Required Core Repair dependency was not found"];
    v15 = LACLogDTOSensor(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(LACDTOSensorRepairStateProviderCRAdapter *)self _fetchRepairStateWithCompletion:v14, v15];
    }

    (completionCopy)[2](completionCopy, 0, v14);
  }
}

uint64_t __76__LACDTOSensorRepairStateProviderCRAdapter__fetchRepairStateWithCompletion___block_invoke()
{
  if (+[LACMobileGestalt deviceHasFaceID])
  {
    v0 = 1027;
  }

  else
  {
    result = +[LACMobileGestalt deviceHasTouchID];
    if (!result)
    {
      return result;
    }

    v0 = 1028;
  }

  return soft_CRIsSelfRepairedComponent(v0);
}

- (void)_fetchRepairStateWithCompletion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed %{public}@", &v3, 0x16u);
}

@end