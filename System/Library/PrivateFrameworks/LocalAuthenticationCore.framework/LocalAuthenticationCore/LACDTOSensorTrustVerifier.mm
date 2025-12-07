@interface LACDTOSensorTrustVerifier
- (LACDTOSensorTrustVerifier)initWithTrustStateProvider:(id)provider featureStateProvider:(id)stateProvider repairStateProvider:(id)repairStateProvider;
- (void)verifySensorTrustWithCompletion:(id)completion;
@end

@implementation LACDTOSensorTrustVerifier

- (LACDTOSensorTrustVerifier)initWithTrustStateProvider:(id)provider featureStateProvider:(id)stateProvider repairStateProvider:(id)repairStateProvider
{
  providerCopy = provider;
  stateProviderCopy = stateProvider;
  repairStateProviderCopy = repairStateProvider;
  v15.receiver = self;
  v15.super_class = LACDTOSensorTrustVerifier;
  v12 = [(LACDTOSensorTrustVerifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_trustStateProvider, provider);
    objc_storeStrong(&v13->_featureStateProvider, stateProvider);
    objc_storeStrong(&v13->_repairStateProvider, repairStateProvider);
  }

  return v13;
}

- (void)verifySensorTrustWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(LACDTOSensorTrustVerifyService);
  featureStateProvider = self->_featureStateProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke;
  v9[3] = &unk_1E7A962C8;
  objc_copyWeak(&v12, &location);
  v7 = completionCopy;
  v11 = v7;
  v8 = v5;
  v10 = v8;
  [(LACDTOFeatureStateProviding *)featureStateProvider fetchStateWithCompletion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7A962A0;
    objc_copyWeak(&v11, a1 + 6);
    v10 = a1[5];
    v8 = a1[4];
    v9 = v3;
    [v6 fetchSensorTrustStateWithCompletion:v7];

    objc_destroyWeak(&v11);
  }
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *(a1[6] + 2);
LABEL_9:
      v8();
      goto LABEL_10;
    }

    v9 = [a1[4] shouldVerifySensorTrustWithFeatureState:a1[5] trustState:v5];
    if ((v9 & 1) == 0)
    {
      v11 = LACLogDTOSensor(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Skipping redundant repair checks", buf, 2u);
      }

      v8 = *(a1[6] + 2);
      goto LABEL_9;
    }

    v10 = WeakRetained[3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1;
    v12[3] = &unk_1E7A96278;
    objc_copyWeak(&v17, a1 + 7);
    v16 = a1[6];
    v13 = a1[4];
    v14 = a1[5];
    v15 = v5;
    [v10 fetchRepairStateWithCompletion:v12];

    objc_destroyWeak(&v17);
  }

LABEL_10:
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      v13 = *MEMORY[0x1E696AA08];
      v14[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v9 = [LACError errorWithCode:-1 subcode:31 userInfo:v8];

      v11 = LACLogDTOSensor(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1_cold_1(v6, v9, v11);
      }

      v12 = *(*(a1 + 56) + 16);
    }

    else
    {
      v9 = [*(a1 + 32) verifySensorTrustWithFeatureState:*(a1 + 40) trustState:*(a1 + 48) repairState:v5];
      v12 = *(*(a1 + 56) + 16);
    }

    v12();
  }
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "Mapping %{public}@ into %{public}@", &v3, 0x16u);
}

@end