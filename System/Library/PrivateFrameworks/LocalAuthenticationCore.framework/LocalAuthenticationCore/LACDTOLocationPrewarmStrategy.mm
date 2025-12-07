@interface LACDTOLocationPrewarmStrategy
- (LACDTOLocationPrewarmStrategy)initWithFeatureStateProvider:(id)provider trustStateProvider:(id)stateProvider device:(id)device keybag:(id)keybag;
- (void)checkNeedsPrewarmWithCompletion:(id)completion;
@end

@implementation LACDTOLocationPrewarmStrategy

- (LACDTOLocationPrewarmStrategy)initWithFeatureStateProvider:(id)provider trustStateProvider:(id)stateProvider device:(id)device keybag:(id)keybag
{
  providerCopy = provider;
  stateProviderCopy = stateProvider;
  deviceCopy = device;
  keybagCopy = keybag;
  v18.receiver = self;
  v18.super_class = LACDTOLocationPrewarmStrategy;
  v15 = [(LACDTOLocationPrewarmStrategy *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_featureStateProvider, provider);
    objc_storeStrong(&v16->_trustStateProvider, stateProvider);
    objc_storeStrong(&v16->_device, device);
    objc_storeStrong(&v16->_keybag, keybag);
  }

  return v16;
}

- (void)checkNeedsPrewarmWithCompletion:(id)completion
{
  completionCopy = completion;
  state = [(LACKeyBag *)self->_keybag state];
  if (state != 5)
  {
    v8 = LACLogDTOLocation(state);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v9 = "Prewarm skipped because keybag is not unlocked";
LABEL_8:
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, v9, location, 2u);
    }

LABEL_9:

    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

  hasCompletedSetup = [(LACDTODeviceSetupInfoProvider *)self->_device hasCompletedSetup];
  if ((hasCompletedSetup & 1) == 0)
  {
    v8 = LACLogDTOLocation(hasCompletedSetup);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v9 = "Prewarm skipped because device has not finished setup";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  objc_initWeak(location, self);
  featureStateProvider = self->_featureStateProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke;
  v10[3] = &unk_1E7A95838;
  objc_copyWeak(&v12, location);
  v11 = completionCopy;
  [(LACDTOFeatureStateProviding *)featureStateProvider fetchStateWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
LABEL_10:
}

void __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 isEnabled];
    if (v5)
    {
      v6 = [v3 isStrictModeEnabled];
      if (!v6)
      {
        v9 = WeakRetained[2];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke_1;
        v10[3] = &unk_1E7A95810;
        objc_copyWeak(&v12, (a1 + 40));
        v11 = *(a1 + 32);
        [v9 fetchSensorTrustStateWithCompletion:v10];

        objc_destroyWeak(&v12);
        goto LABEL_11;
      }

      v7 = LACLogDTOLocation(v6);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v8 = "Prewarm skipped because strict mode is enabled";
    }

    else
    {
      v7 = LACLogDTOLocation(v5);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        (*(*(a1 + 32) + 16))();
        goto LABEL_11;
      }

      *buf = 0;
      v8 = "Prewarm skipped because feature is disabled";
    }

    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    goto LABEL_9;
  }

LABEL_11:
}

void __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 isDisapproved];
    if (v5)
    {
      v6 = *(*(a1 + 32) + 16);
    }

    else
    {
      v7 = LACLogDTOLocation(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Prewarm skipped because sensor is trusted", v8, 2u);
      }

      v6 = *(*(a1 + 32) + 16);
    }

    v6();
  }
}

@end