@interface LACDTOLocationProviderKVSAdapter
- (LACDTOLocationProviderKVSAdapter)initWithKVStore:(id)store;
- (void)checkIsInFamiliarLocationWithCompletion:(id)completion;
@end

@implementation LACDTOLocationProviderKVSAdapter

- (LACDTOLocationProviderKVSAdapter)initWithKVStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = LACDTOLocationProviderKVSAdapter;
  v6 = [(LACDTOLocationProviderKVSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kvStore, store);
  }

  return v7;
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LACLogDTOLostMode(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  kvStore = self->_kvStore;
  v7 = __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2;
  v9[3] = &unk_1E7A959C0;
  objc_copyWeak(&v11, buf);
  v8 = completionCopy;
  v10 = v8;
  [(LACDTOKVStore *)kvStore processReadRequest:v7 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

LACDTOMutableKVStoreReadRequest *__76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke()
{
  v0 = [[LACDTOMutableKVStoreReadRequest alloc] initWithKey:1];
  [(LACDTOMutableKVStoreReadRequest *)v0 setBypassEntitlements:1];

  return v0;
}

void __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LACLogDTOLocation(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2_cold_1(v8, v6, v9);
      }

      v10 = *(a1 + 32);
      v11 = +[LACDTOLocationState nullInstance];
      (*(v10 + 16))(v10, v11);
    }

    else
    {
      v12 = LACLogDTOLostMode(WeakRetained);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v8;
        _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query", &v16, 0xCu);
      }

      if (v5)
      {
        v13 = [v5 data];
        if ([v13 length])
        {
          v14 = [v5 integerValue];
        }

        else
        {
          v14 = -1;
        }
      }

      else
      {
        v14 = -1;
      }

      v15 = *(a1 + 32);
      v11 = [[LACDTOLocationState alloc] initWithRawValue:v14 confirmed:0];
      (*(v15 + 16))(v15, v11);
    }
  }
}

void __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@ did finish query with error: (%{public}@)", &v3, 0x16u);
}

@end