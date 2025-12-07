@interface LACDTOLocationProviderCRAdapter
- (LACDTOLocationProviderCRAdapter)initWithWorkQueue:(id)queue;
- (int64_t)_locationStateRawValueFromLocationEnum:(int64_t)enum;
- (void)_checkIsInFamiliarLocationWithCompletion:(id)completion;
- (void)checkIsInFamiliarLocationWithCompletion:(id)completion;
@end

@implementation LACDTOLocationProviderCRAdapter

- (LACDTOLocationProviderCRAdapter)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = LACDTOLocationProviderCRAdapter;
  v6 = [(LACDTOLocationProviderCRAdapter *)&v14 init];
  if (v6)
  {
    if (getRTRoutineManagerClass())
    {
      defaultManager = [getRTRoutineManagerClass() defaultManager];
      manager = v6->_manager;
      v6->_manager = defaultManager;
    }

    objc_storeStrong(&v6->_replyQueue, queue);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v10];
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v11;
  }

  return v6;
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_manager)
  {
    locationState = self->_locationState;
    if (locationState)
    {
      v7 = [MEMORY[0x1E695DF00] now];
      v8 = [(LACDTOLocationState *)locationState isValid:v7];

      if (v8)
      {
        v10 = LACLogDTOLocation(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_locationState;
          *buf = 138543618;
          selfCopy = self;
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ will use cached value %@", buf, 0x16u);
        }

        (v5)[2](v5, self->_locationState);
        goto LABEL_13;
      }

      v14 = self->_locationState;
    }

    else
    {
      v14 = 0;
    }

    self->_locationState = 0;

    objc_initWeak(buf, self);
    internalQueue = self->_internalQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke;
    v16[3] = &unk_1E7A957E8;
    objc_copyWeak(&v18, buf);
    v17 = v5;
    dispatch_async(internalQueue, v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
    goto LABEL_13;
  }

  v12 = LACLogDTOLocation(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(LACDTOLocationProviderCRAdapter *)self checkIsInFamiliarLocationWithCompletion:v12];
  }

  v13 = +[LACDTOLocationState nullInstance];
  (v5)[2](v5, v13);

LABEL_13:
}

void __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2;
    v3[3] = &unk_1E7A958A8;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained _checkIsInFamiliarLocationWithCompletion:v3];

    objc_destroyWeak(&v5);
  }
}

void __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_3;
    block[3] = &unk_1E7A95568;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)_checkIsInFamiliarLocationWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LACLogDTOLocation(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = +[LACDTOSignpostEvent locationStatusQueryWillStart];
  [v6 send];

  manager = self->_manager;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__LACDTOLocationProviderCRAdapter__checkIsInFamiliarLocationWithCompletion___block_invoke;
  v9[3] = &unk_1E7A97090;
  objc_copyWeak(&v11, buf);
  v8 = completionCopy;
  v10 = v8;
  [(RTRoutineManager *)manager fetchAuthorizedLocationStatus:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __76__LACDTOLocationProviderCRAdapter__checkIsInFamiliarLocationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[LACDTOSignpostEvent locationStatusQueryDidFinish];
  [v7 send];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = LACLogDTOLocation(WeakRetained);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2_cold_1(v9, v6, v11);
      }

      v12 = *(a1 + 32);
      v13 = +[LACDTOLocationState nullInstance];
      (*(v12 + 16))(v12, v13);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v9;
        _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query", &v16, 0xCu);
      }

      v14 = -[LACDTOLocationState initWithRawValue:confirmed:]([LACDTOLocationState alloc], "initWithRawValue:confirmed:", [v9 _locationStateRawValueFromLocationEnum:{objc_msgSend(v5, "eStatus")}], 1);
      v15 = v9[2];
      v9[2] = v14;
      v13 = v14;

      (*(*(a1 + 32) + 16))(*(a1 + 32), v13);
    }
  }
}

- (int64_t)_locationStateRawValueFromLocationEnum:(int64_t)enum
{
  if (enum > 3)
  {
    v3 = &LACDTOLocationStateRawValueAwayFromFamiliarLocation;
  }

  else
  {
    v3 = off_1E7A970C8[enum];
  }

  return *v3;
}

- (void)checkIsInFamiliarLocationWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Missing required RTRoutineManager dependency", &v2, 0xCu);
}

@end