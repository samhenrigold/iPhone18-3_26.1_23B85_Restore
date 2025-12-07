@interface HKCountryMonitorControl
+ (id)taskIdentifier;
+ (void)checkCurrentCountry;
+ (void)checkCurrentCountryWithHealthStore:(id)store;
- (HKCountryMonitorControl)initWithHealthStore:(id)store;
- (void)dealloc;
- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion;
@end

@implementation HKCountryMonitorControl

- (HKCountryMonitorControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKCountryMonitorControl;
  v5 = [(HKCountryMonitorControl *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (void)dealloc
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_14(v1);
  OUTLINED_FUNCTION_1_7(&dword_19197B000, v3, v4, "[%{public}@:%p] Deallocating", v5, v6, v7, v8);
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)checkCurrentCountry
{
  v3 = objc_alloc_init(HKHealthStore);
  [self checkCurrentCountryWithHealthStore:v3];
}

+ (void)checkCurrentCountryWithHealthStore:(id)store
{
  storeCopy = store;
  v5 = [[self alloc] initWithHealthStore:storeCopy];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKCountryMonitorControl_checkCurrentCountryWithHealthStore___block_invoke;
  v7[3] = &unk_1E737E2B8;
  v8 = v5;
  v6 = v5;
  [v6 fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:v7];
}

void __62__HKCountryMonitorControl_checkCurrentCountryWithHealthStore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  _HKInitializeLogging(v5, v6);
  v9 = HKLogInfrastructure(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v13 = 138543874;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    v17 = 2114;
    v18 = v5;
    v12 = v10;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Completed fetch of current ISO country code with error: %{public}@", &v13, 0x20u);
  }
}

- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging(completionCopy, v5);
  v8 = HKLogInfrastructure(v6, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v12 = HKLogInfrastructure(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [HKCountryMonitorControl fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:?];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke;
  aBlock[3] = &unk_1E737E308;
  aBlock[4] = self;
  v22 = completionCopy;
  v13 = completionCopy;
  v14 = _Block_copy(aBlock);
  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_3;
  v19[3] = &unk_1E737E330;
  v20 = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4;
  v17[3] = &unk_1E7376820;
  v17[4] = self;
  v18 = v20;
  v16 = v20;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v17];
}

void __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(*(a1 + 32) + 8) clientQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_2;
  v12[3] = &unk_1E737E2E0;
  v15 = *(a1 + 40);
  v16 = a3;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

uint64_t __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[7], a1[5]);
  }

  return result;
}

void __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging(v3, v4);
  v7 = HKLogInfrastructure(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4_cold_1(a1, v3, v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_14(v1);
  OUTLINED_FUNCTION_1_7(&dword_19197B000, v3, v4, "[%{public}@:%p] Fetching current country ISO country code and notifying observers", v5, v6, v7, v8);
}

void __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = *(a1 + 32);
  v9 = 138543874;
  v10 = v6;
  v11 = 2048;
  v12 = v7;
  v13 = 2114;
  v14 = a2;
  v8 = v6;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@:%p] Failed to communicate with task server to fetch current ISO country code and notify observers: %{public}@", &v9, 0x20u);
}

@end