@interface LACDTOLostModeProviderKVSAdapter
- (LACDTOLostModeProviderKVSAdapter)initWithKVStore:(id)store;
- (void)lostModeStateWithCompletion:(id)completion;
@end

@implementation LACDTOLostModeProviderKVSAdapter

- (LACDTOLostModeProviderKVSAdapter)initWithKVStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = LACDTOLostModeProviderKVSAdapter;
  v6 = [(LACDTOLostModeProviderKVSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kvStore, store);
  }

  return v7;
}

- (void)lostModeStateWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
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
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__LACDTOLostModeProviderKVSAdapter_lostModeStateWithCompletion___block_invoke;
  v8[3] = &unk_1E7A959C0;
  objc_copyWeak(&v10, buf);
  v7 = completionCopy;
  v9 = v7;
  [(LACDTOKVStore *)kvStore valueForKey:2 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __64__LACDTOLostModeProviderKVSAdapter_lostModeStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = LACLogDTOLostMode(WeakRetained);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3_cold_1(v8, v6, v10);
      }

      v11 = *(a1 + 32);
      v12 = +[LACDTOLostModeState nullInstance];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v8;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query", &v14, 0xCu);
      }

      v11 = *(a1 + 32);
      v12 = -[LACDTOLostModeState initWithIsInLostMode:]([LACDTOLostModeState alloc], "initWithIsInLostMode:", [v5 BOOLValue]);
    }

    v13 = v12;
    (*(v11 + 16))(v11, v12);
  }
}

@end