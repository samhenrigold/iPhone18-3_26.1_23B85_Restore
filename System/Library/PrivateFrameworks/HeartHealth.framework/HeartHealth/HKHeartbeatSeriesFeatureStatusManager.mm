@interface HKHeartbeatSeriesFeatureStatusManager
+ (id)taskIdentifier;
- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)store;
- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)store heartNotificationsUserDefaults:(id)defaults;
- (id)_synchronouslyStartObservingWithError:(id *)error;
- (void)_handleAutomaticProxyReconnection;
- (void)_notifyObserversForFailureToUpdateWithError:(id)error;
- (void)_notifyObserversForPredominantFeatureUpdate:(int64_t)update;
- (void)_startObservingWithActivationHandler:(id)handler;
- (void)_updateAndNotifyAllObservers;
- (void)client_heartbeatSeriesFeatureStatusManagerDidFailToUpdateWithError:(id)error;
- (void)client_heartbeatSeriesFeatureStatusManagerDidUpdatePredominantFeature:(int64_t)feature;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerObserver:(id)observer queue:(id)queue activationHandler:(id)handler;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKHeartbeatSeriesFeatureStatusManager

- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)store
{
  v4 = MEMORY[0x277CBEBD0];
  storeCopy = store;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE458]];
  v8 = [(HKHeartbeatSeriesFeatureStatusManager *)self initWithHealthStore:storeCopy heartNotificationsUserDefaults:v7];

  return v8;
}

- (HKHeartbeatSeriesFeatureStatusManager)initWithHealthStore:(id)store heartNotificationsUserDefaults:(id)defaults
{
  storeCopy = store;
  defaultsCopy = defaults;
  v23.receiver = self;
  v23.super_class = HKHeartbeatSeriesFeatureStatusManager;
  v9 = [(HKHeartbeatSeriesFeatureStatusManager *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithName:v13 loggingCategory:*MEMORY[0x277CCC2D0]];
    observers = v10->_observers;
    v10->_observers = v14;

    v16 = objc_alloc(MEMORY[0x277CCDAA0]);
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v19 = [v16 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v10 taskUUID:uUID];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v19;

    [(HKTaskServerProxyProvider *)v10->_proxyProvider setShouldRetryOnInterruption:0];
    v21 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v21];

    objc_storeStrong(&v10->_heartNotificationsUserDefaults, defaults);
    [(HKHeartbeatSeriesFeatureStatusManager *)v10 _startObservingHeartNotificationsUserDefaults];
  }

  return v10;
}

- (void)dealloc
{
  [(NSUserDefaults *)self->_heartNotificationsUserDefaults removeObserver:self forKeyPath:*MEMORY[0x277CCE430] context:HeartNotificationsUserDefaultsContext];
  v3.receiver = self;
  v3.super_class = HKHeartbeatSeriesFeatureStatusManager;
  [(HKHeartbeatSeriesFeatureStatusManager *)&v3 dealloc];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)registerObserver:(id)observer queue:(id)queue activationHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  handlerCopy = handler;
  queueCopy = queue;
  _HKInitializeLogging();
  v11 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = objc_opt_class();
    v23 = 2048;
    selfCopy = self;
    v25 = 2112;
    v26 = observerCopy;
    v12 = v22;
    _os_log_impl(&dword_228942000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Registering observer %@", buf, 0x20u);
  }

  observers = self->_observers;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke;
  v20[3] = &unk_27860AE60;
  v20[4] = self;
  [(HKObserverSet *)observers registerObserver:observerCopy queue:queueCopy runIfFirstObserver:v20];

  v14 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:handlerCopy];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_3;
  v17[3] = &unk_27860B480;
  v17[4] = self;
  v18 = observerCopy;
  v19 = v14;
  v15 = v14;
  v16 = observerCopy;
  [(HKHeartbeatSeriesFeatureStatusManager *)self _startObservingWithActivationHandler:v17];
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x277D85DD0];
  v3 = 3221225472;
  v4 = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_2;
  v5 = &unk_27860ADE8;
  objc_copyWeak(&v6, &location);
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:&v2];
  [*(*(a1 + 32) + 24) setShouldRetryOnInterruption:{1, v2, v3, v4, v5}];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutomaticProxyReconnection];
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(v7 + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_4;
  v12[3] = &unk_27860B458;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  [v9 notifyObserver:v8 handler:v12];
  (*(a1[6] + 16))();
}

void __82__HKHeartbeatSeriesFeatureStatusManager_registerObserver_queue_activationHandler___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = v3;
  if (v4)
  {
    [v3 heartbeatSeriesFeatureStatusManager:v5 didUpdatePredominantFeature:{objc_msgSend(v4, "integerValue")}];
  }

  else if (a1[6])
  {
    [v3 heartbeatSeriesFeatureStatusManager:v5 didFailToUpdateWithError:?];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:2000 description:@"Unknown error starting observation"];
    [v7 heartbeatSeriesFeatureStatusManager:v5 didFailToUpdateWithError:v6];
  }
}

- (void)unregisterObserver:(id)observer
{
  v15 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v10 = objc_opt_class();
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = observerCopy;
    v6 = v10;
    _os_log_impl(&dword_228942000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Unregistering observer %@", buf, 0x20u);
  }

  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke;
  v8[3] = &unk_27860AE60;
  v8[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observerCopy runIfLastObserver:v8];
}

uint64_t __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAutomaticProxyReconnectionHandler:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3;
  v5[3] = &unk_27860AE38;
  v5[4] = v2;
  return [v3 fetchProxyWithHandler:&__block_literal_global_8 errorHandler:v5];
}

void __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3_cold_1();
  }
}

- (void)_startObservingWithActivationHandler:(id)handler
{
  handlerCopy = handler;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke;
  v9[3] = &unk_27860B4C8;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2;
  v7[3] = &unk_27860B100;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_synchronouslyStartObservingWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke;
  v11[3] = &unk_27860B4F0;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3;
  v10[3] = &unk_27860AEA8;
  v10[4] = self;
  v10[5] = &v12;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v13[5];
  v6 = v5;
  if (v5)
  {
    if (error)
    {
      v7 = v5;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_2;
  v3[3] = &unk_27860B038;
  v4 = *(a1 + 32);
  return [a2 remote_startObservingChangesWithCompletion:v3];
}

void __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_handleAutomaticProxyReconnection
{
  OUTLINED_FUNCTION_2_1();
  *v9 = 138543874;
  *&v9[4] = objc_opt_class();
  *&v9[12] = 2048;
  *&v9[14] = v1;
  *&v9[22] = 2114;
  v10 = v0;
  v2 = *&v9[4];
  OUTLINED_FUNCTION_1_4(&dword_228942000, v3, v4, "[%{public}@:%p] Failed to resume observation on server reconnection: %{public}@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16], v10);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v14 = *MEMORY[0x277D85DE8];
  if (HeartNotificationsUserDefaultsContext == context)
  {
    _HKInitializeLogging();
    v7 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = objc_opt_class();
      v12 = 2048;
      selfCopy = self;
      v8 = v11;
      _os_log_impl(&dword_228942000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received KVO notification of notification settings change", buf, 0x16u);
    }

    [(HKHeartbeatSeriesFeatureStatusManager *)self _updateAndNotifyAllObservers];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HKHeartbeatSeriesFeatureStatusManager;
    [(HKHeartbeatSeriesFeatureStatusManager *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_updateAndNotifyAllObservers
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(HKObserverSet *)self->_observers count])
  {
    proxyProvider = self->_proxyProvider;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2;
    v6[3] = &unk_27860AE38;
    v6[4] = self;
    [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_331 errorHandler:v6];
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = objc_opt_class();
      v5 = v8;
      _os_log_impl(&dword_228942000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping a manual update and notify because we have no observers", buf, 0xCu);
    }
  }
}

void __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2_cold_1();
  }
}

- (void)client_heartbeatSeriesFeatureStatusManagerDidUpdatePredominantFeature:(int64_t)feature
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromHKHeartbeatSeriesFeature(feature);
    v9 = HKSensitiveLogItem();
    v10 = 138543874;
    v11 = v6;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_228942000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received server notification of predominant feature update: %{public}@", &v10, 0x20u);
  }

  [(HKHeartbeatSeriesFeatureStatusManager *)self _notifyObserversForPredominantFeatureUpdate:feature];
}

- (void)client_heartbeatSeriesFeatureStatusManagerDidFailToUpdateWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v11 = 2114;
    v12 = errorCopy;
    v6 = v8;
    _os_log_impl(&dword_228942000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Received server notification of update error: %{public}@", &v7, 0x20u);
  }

  [(HKHeartbeatSeriesFeatureStatusManager *)self _notifyObserversForFailureToUpdateWithError:errorCopy];
}

- (void)_notifyObserversForPredominantFeatureUpdate:(int64_t)update
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__HKHeartbeatSeriesFeatureStatusManager__notifyObserversForPredominantFeatureUpdate___block_invoke;
  v4[3] = &unk_27860B518;
  v4[4] = self;
  v4[5] = update;
  [(HKObserverSet *)observers notifyObservers:v4];
}

- (void)_notifyObserversForFailureToUpdateWithError:(id)error
{
  errorCopy = error;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HKHeartbeatSeriesFeatureStatusManager__notifyObserversForFailureToUpdateWithError___block_invoke;
  v7[3] = &unk_27860B540;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

void __60__HKHeartbeatSeriesFeatureStatusManager_unregisterObserver___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_6(v0);
  OUTLINED_FUNCTION_1_4(&dword_228942000, v2, v3, "[%{public}@:%p] Failed to communicate with task server for observation stop: %{public}@", v4, v5, v6, v7);
}

void __78__HKHeartbeatSeriesFeatureStatusManager__startObservingWithActivationHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_6(v0);
  OUTLINED_FUNCTION_1_4(&dword_228942000, v2, v3, "[%{public}@:%p] Failed to communicate with task server for observation start: %{public}@", v4, v5, v6, v7);
}

void __79__HKHeartbeatSeriesFeatureStatusManager__synchronouslyStartObservingWithError___block_invoke_3_cold_1(uint64_t a1)
{
  *v9 = 138543874;
  *&v9[4] = objc_opt_class();
  *&v9[12] = 2048;
  *&v9[14] = *(a1 + 32);
  *&v9[22] = 2114;
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v2 = *&v9[4];
  OUTLINED_FUNCTION_1_4(&dword_228942000, v3, v4, "[%{public}@:%p] Failed to communicate with task server for observation start: %{public}@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16], v10);
}

void __69__HKHeartbeatSeriesFeatureStatusManager__updateAndNotifyAllObservers__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_6(v0);
  OUTLINED_FUNCTION_1_4(&dword_228942000, v2, v3, "[%{public}@:%p] Failed to communicate with task server for update and notify: %{public}@", v4, v5, v6, v7);
}

@end