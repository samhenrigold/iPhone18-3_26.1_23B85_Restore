@interface HDSPSleepStoreServer
- (HDSPEnvironment)environment;
- (HDSPSleepStoreServer)initWithEnvironment:(id)environment;
- (HDSPSleepStoreServer)initWithEnvironment:(id)environment connectionListenerProvider:(id)provider processStateManager:(id)manager;
- (id)_checkForSuspendedBlock;
- (id)diagnosticDescription;
- (id)diagnosticInfo;
- (id)eventIdentifiers;
- (void)_notifyClient:(id)client forMissedMessagesWithSyncAnchorContainer:(id)container;
- (void)_performWhenClientIsReady:(id)ready block:(id)block;
- (void)_performWhenCurrentClientIsReady:(id)ready;
- (void)_performWhenEnvironmentIsReady:(id)ready;
- (void)_performWhenEnvironmentIsReady:(id)ready withContext:(id)context;
- (void)checkInWithSyncAnchorContainer:(id)container completion:(id)completion;
- (void)clearWidgetOverrideWithCompletion:(id)completion;
- (void)configureSleepFocusWithState:(unint64_t)state completion:(id)completion;
- (void)confirmAwakeWithCompletion:(id)completion;
- (void)connectWithCompletion:(id)completion;
- (void)connectionListenerDidAddClient:(id)client;
- (void)connectionListenerDidRemoveClient:(id)client;
- (void)createSleepFocusInState:(unint64_t)state completion:(id)completion;
- (void)deleteSleepFocusModeWithCompletion:(id)completion;
- (void)dismissGoodMorningWithCompletion:(id)completion;
- (void)dismissSleepLockWithCompletion:(id)completion;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)environmentWillInvalidate:(id)invalidate;
- (void)getSleepEventRecordWithCompletion:(id)completion;
- (void)getSleepModeWithCompletion:(id)completion;
- (void)getSleepScheduleModelWithCompletion:(id)completion;
- (void)getSleepScheduleStateWithCompletion:(id)completion;
- (void)getSleepScheduleWithCompletion:(id)completion;
- (void)getSleepSettingsWithCompletion:(id)completion;
- (void)getSleepWidgetStateWithCompletion:(id)completion;
- (void)processDidBecomeSuspended:(int)suspended;
- (void)processNoLongerSuspended:(int)suspended;
- (void)publishNotificationWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion;
- (void)publishWakeUpResultsNotificationWithCompletion:(id)completion;
- (void)saveSleepEventRecord:(id)record completion:(id)completion;
- (void)saveSleepSchedule:(id)schedule completion:(id)completion;
- (void)saveSleepSettings:(id)settings completion:(id)completion;
- (void)setLockScreenOverrideState:(int64_t)state userInfo:(id)info completion:(id)completion;
- (void)setSleepMode:(int64_t)mode reason:(unint64_t)reason completion:(id)completion;
- (void)setWidgetOverrideState:(int64_t)state completion:(id)completion;
- (void)sleepAlarmWasDismissedOnDate:(id)date source:(unint64_t)source completion:(id)completion;
- (void)sleepAlarmWasModifiedFromSource:(unint64_t)source completion:(id)completion;
- (void)sleepAlarmWasSnoozedUntilDate:(id)date source:(unint64_t)source completion:(id)completion;
- (void)sleepEventIsDue:(id)due;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepEventRecord:(id)record;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSchedule:(id)schedule;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSettings:(id)settings;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)startListening;
@end

@implementation HDSPSleepStoreServer

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepStoreServer)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = objc_alloc_init(HDSPProcessStateManager);
  v6 = [(HDSPSleepStoreServer *)self initWithEnvironment:environmentCopy connectionListenerProvider:&__block_literal_global_5 processStateManager:v5];

  return v6;
}

id __44__HDSPSleepStoreServer_initWithEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D62548];
  v3 = *MEMORY[0x277D622B8];
  v4 = a2;
  v5 = HKSPSleepClientInterface();
  v6 = HKSPSleepServerInterface();
  v7 = [v2 infoForMachServiceName:v3 remoteObjectInterface:v5 exportedObject:v4 exportedObjectInterface:v6 lifecycleNotification:*MEMORY[0x277D62250] requiredEntitlement:*MEMORY[0x277D621A8] options:0];

  v8 = [MEMORY[0x277D62550] listenerWithConnectionInfo:v7];

  return v8;
}

- (HDSPSleepStoreServer)initWithEnvironment:(id)environment connectionListenerProvider:(id)provider processStateManager:(id)manager
{
  v31 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  providerCopy = provider;
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = HDSPSleepStoreServer;
  v11 = [(HDSPSleepStoreServer *)&v26 init];
  if (v11)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v28 = v13;
      v29 = 2048;
      v30 = v11;
      v14 = v13;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v11->_environment, environmentCopy);
    if (providerCopy)
    {
      v15 = providerCopy[2](providerCopy, v11);
    }

    else
    {
      v15 = 0;
    }

    connectionListener = v11->_connectionListener;
    v11->_connectionListener = v15;

    [(HKSPXPCConnectionListener *)v11->_connectionListener setDelegate:v11];
    objc_storeStrong(&v11->_processStateManager, manager);
    [(HDSPProcessStateManager *)v11->_processStateManager setDelegate:v11];
    v17 = objc_alloc(MEMORY[0x277D624A8]);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    WeakRetained = objc_loadWeakRetained(&v11->_environment);
    userDefaults = [WeakRetained userDefaults];
    v22 = [v17 initWithIdentifier:v19 defaults:userDefaults];
    syncAnchorContainer = v11->_syncAnchorContainer;
    v11->_syncAnchorContainer = v22;

    v24 = v11;
  }

  return v11;
}

- (void)startListening
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] startListening", &v5, 0xCu);
  }

  [(HKSPXPCConnectionListener *)self->_connectionListener startListening];
}

- (void)_performWhenCurrentClientIsReady:(id)ready
{
  readyCopy = ready;
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  currentClient = [connectionListener currentClient];

  [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:readyCopy];
}

- (void)_performWhenClientIsReady:(id)ready block:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  blockCopy = block;
  if (readyCopy)
  {
    v8 = [HDSPEnvironmentContext contextWithSource:readyCopy];
    clientIdentifierProvider = [readyCopy clientIdentifierProvider];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke;
    v19[3] = &unk_279C7BCC0;
    v19[4] = self;
    v22 = blockCopy;
    v20 = readyCopy;
    v21 = v8;
    v10 = v8;
    v11 = blockCopy;
    v12 = [clientIdentifierProvider addCompletionBlock:v19];
  }

  else
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = objc_opt_class();
      v15 = v24;
      _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] client was nil!", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke_302;
    v16[3] = &unk_279C7BC98;
    v17 = 0;
    v18 = blockCopy;
    v14 = blockCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v16];

    v10 = v18;
  }
}

void __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__HDSPSleepStoreServer__performWhenClientIsReady_block___block_invoke_2;
  v3[3] = &unk_279C7BC98;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  [v2 _performWhenEnvironmentIsReady:v3 withContext:*(a1 + 48)];
}

- (void)_performWhenEnvironmentIsReady:(id)ready
{
  readyCopy = ready;
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  currentClient = [connectionListener currentClient];

  v6 = [HDSPEnvironmentContext contextWithSource:currentClient];
  [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:readyCopy withContext:v6];
}

- (void)_performWhenEnvironmentIsReady:(id)ready withContext:(id)context
{
  readyCopy = ready;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HDSPSleepStoreServer__performWhenEnvironmentIsReady_withContext___block_invoke;
  v10[3] = &unk_279C7BCE8;
  v11 = readyCopy;
  v9 = readyCopy;
  [WeakRetained performWhenEnvironmentIsReady:v10 withContext:contextCopy];
}

uint64_t __67__HDSPSleepStoreServer__performWhenEnvironmentIsReady_withContext___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)environmentWillBecomeReady:(id)ready
{
  v14 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", &v12, 0xCu);
  }

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventHandler:self];

  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  diagnostics = [readyCopy diagnostics];

  [diagnostics addProvider:self];
}

- (void)environmentDidBecomeReady:(id)ready
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", &v5, 0xCu);
  }
}

- (void)environmentWillInvalidate:(id)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Environment will become invalid", &v7, 0xCu);
  }

  connectionListener = self->_connectionListener;
  self->_connectionListener = 0;
}

- (void)connectWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  currentClient = [connectionListener currentClient];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = currentClient;
    v8 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] connect received from %{public}@", &v11, 0x16u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  inMemoryCopy = [syncAnchorContainer inMemoryCopy];
  completionCopy[2](completionCopy, inMemoryCopy, 0);
}

- (void)checkInWithSyncAnchorContainer:(id)container completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = currentClient;
      v23 = 2114;
      v24 = containerCopy;
      v14 = v20;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] check in received from %{public}@ with sync anchor container: %{public}@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__HDSPSleepStoreServer_checkInWithSyncAnchorContainer_completion___block_invoke;
    v16[3] = &unk_279C7BD10;
    v16[4] = self;
    v17 = containerCopy;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v16];
  }
}

uint64_t __66__HDSPSleepStoreServer_checkInWithSyncAnchorContainer_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _notifyClient:a2 forMissedMessagesWithSyncAnchorContainer:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)getSleepScheduleWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep schedule from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__HDSPSleepStoreServer_getSleepScheduleWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __55__HDSPSleepStoreServer_getSleepScheduleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v5 = v13;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep schedule from: %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepScheduleModelManager];
  v8 = [v7 sleepSchedule];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v3;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep schedule from: %{public}@", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)saveSleepSchedule:(id)schedule completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = scheduleCopy;
      v23 = 2114;
      v24 = currentClient;
      v14 = v20;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to save current sleep schedule: %{public}@ from: %{public}@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__HDSPSleepStoreServer_saveSleepSchedule_completion___block_invoke;
    v16[3] = &unk_279C7BD10;
    v16[4] = self;
    v17 = scheduleCopy;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v16];
  }
}

void __53__HDSPSleepStoreServer_saveSleepSchedule_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    *buf = 138543874;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v3;
    v7 = v5;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request to save current sleep schedule: %{public}@ from: %{public}@", buf, 0x20u);
  }

  v8 = [*(a1 + 32) environment];
  v9 = [v8 sleepScheduleModelManager];
  v10 = *(a1 + 40);
  v19 = 0;
  v11 = [v9 saveSleepSchedule:v10 error:&v19];
  v12 = v19;

  v13 = HKSPLogForCategory();
  v14 = v13;
  if (!v11 || v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v18 = objc_opt_class();
    *buf = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v12;
    v17 = v18;
    _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] request received to save current sleep schedule failed: %{public}@", buf, 0x16u);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = *(a1 + 40);
    *buf = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v3;
    v17 = v15;
    _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to save current sleep schedule: %{public}@ from: %{public}@", buf, 0x20u);
LABEL_7:
  }

LABEL_9:

  (*(*(a1 + 48) + 16))();
}

- (void)getSleepSettingsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep settings from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__HDSPSleepStoreServer_getSleepSettingsWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __55__HDSPSleepStoreServer_getSleepSettingsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v5 = v13;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep settings from: %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepScheduleModelManager];
  v8 = [v7 sleepSettings];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v3;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep settings from: %{public}@", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)saveSleepSettings:(id)settings completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = settingsCopy;
      v23 = 2114;
      v24 = currentClient;
      v14 = v20;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to save current sleep settings: %{public}@ from: %{public}@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__HDSPSleepStoreServer_saveSleepSettings_completion___block_invoke;
    v16[3] = &unk_279C7BD10;
    v16[4] = self;
    v17 = settingsCopy;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v16];
  }
}

void __53__HDSPSleepStoreServer_saveSleepSettings_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    *buf = 138543874;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v3;
    v7 = v5;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request to save current sleep settings: %{public}@ from: %{public}@", buf, 0x20u);
  }

  v8 = [*(a1 + 32) environment];
  v9 = [v8 sleepScheduleModelManager];
  v10 = *(a1 + 40);
  v19 = 0;
  v11 = [v9 saveSleepSettings:v10 error:&v19];
  v12 = v19;

  v13 = HKSPLogForCategory();
  v14 = v13;
  if (!v11 || v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v18 = objc_opt_class();
    *buf = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v12;
    v17 = v18;
    _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] request received to save current sleep settings failed: %{public}@", buf, 0x16u);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = *(a1 + 40);
    *buf = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v3;
    v17 = v15;
    _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to save current sleep settings: %{public}@ from: %{public}@", buf, 0x20u);
LABEL_7:
  }

LABEL_9:

  (*(*(a1 + 48) + 16))();
}

- (void)getSleepEventRecordWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep event record from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HDSPSleepStoreServer_getSleepEventRecordWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __58__HDSPSleepStoreServer_getSleepEventRecordWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v5 = v13;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep event record from: %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepScheduleModelManager];
  v8 = [v7 sleepEventRecord];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v3;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep event record from: %{public}@", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)saveSleepEventRecord:(id)record completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = recordCopy;
      v23 = 2114;
      v24 = currentClient;
      v14 = v20;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to save current sleep event record: %{public}@ from: %{public}@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__HDSPSleepStoreServer_saveSleepEventRecord_completion___block_invoke;
    v16[3] = &unk_279C7BD10;
    v16[4] = self;
    v17 = recordCopy;
    v18 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v16];
  }
}

void __56__HDSPSleepStoreServer_saveSleepEventRecord_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    *buf = 138543874;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v3;
    v7 = v5;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request to save current sleep event record: %{public}@ from: %{public}@", buf, 0x20u);
  }

  v8 = [*(a1 + 32) environment];
  v9 = [v8 sleepScheduleModelManager];
  v10 = *(a1 + 40);
  v19 = 0;
  v11 = [v9 saveSleepEventRecord:v10 error:&v19];
  v12 = v19;

  v13 = HKSPLogForCategory();
  v14 = v13;
  if (!v11 || v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v18 = objc_opt_class();
    *buf = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v12;
    v17 = v18;
    _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] request received to save current sleep event record failed: %{public}@", buf, 0x16u);
    goto LABEL_7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = *(a1 + 40);
    *buf = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v3;
    v17 = v15;
    _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to save current sleep event record: %{public}@ from: %{public}@", buf, 0x20u);
LABEL_7:
  }

LABEL_9:

  (*(*(a1 + 48) + 16))();
}

- (void)getSleepScheduleModelWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep schedule model from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HDSPSleepStoreServer_getSleepScheduleModelWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __60__HDSPSleepStoreServer_getSleepScheduleModelWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v5 = v13;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep schedule model from: %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepScheduleModelManager];
  v8 = [v7 sleepScheduleModel];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v3;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep schedule model from: %{public}@", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getSleepModeWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep mode on from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__HDSPSleepStoreServer_getSleepModeWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __51__HDSPSleepStoreServer_getSleepModeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v3;
    v5 = v13;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep mode on from: %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepModeManager];
  [v7 sleepMode];

  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromHKSPSleepMode();
    v12 = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep mode: %{public}@ from: %{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setSleepMode:(int64_t)mode reason:(unint64_t)reason completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = objc_opt_class();
      v19 = v25;
      _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromHKSPSleepMode();
      v18 = NSStringFromHKSPSleepModeChangeReason();
      *buf = 138544130;
      v25 = v15;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      v30 = 2114;
      v31 = currentClient;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received to set sleep mode: %{public}@ (%{public}@) from: %{public}@", buf, 0x2Au);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__HDSPSleepStoreServer_setSleepMode_reason_completion___block_invoke;
    v20[3] = &unk_279C7BD60;
    v20[4] = self;
    modeCopy = mode;
    reasonCopy = reason;
    v21 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v20];
  }
}

void __55__HDSPSleepStoreServer_setSleepMode_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromHKSPSleepMode();
    v8 = NSStringFromHKSPSleepModeChangeReason();
    v16 = 138544130;
    v17 = v5;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v3;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request set sleep mode: %{public}@ (%{public}@) from: %{public}@", &v16, 0x2Au);
  }

  v9 = [*(a1 + 32) environment];
  v10 = [v9 sleepModeManager];
  [v10 setSleepMode:*(a1 + 48) reason:*(a1 + 56)];

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = NSStringFromHKSPSleepMode();
    v15 = NSStringFromHKSPSleepModeChangeReason();
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    v22 = 2114;
    v23 = v3;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request to set sleep mode: %{public}@ (%{public}@) from: %{public}@", &v16, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getSleepScheduleStateWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep schedule state", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__HDSPSleepStoreServer_getSleepScheduleStateWithCompletion___block_invoke;
    v12[3] = &unk_279C7BD38;
    v12[4] = self;
    v13 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v12];
  }
}

void __60__HDSPSleepStoreServer_getSleepScheduleStateWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v3 = v11;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep schedule state", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepCoordinator];
  [v5 currentSleepScheduleState];

  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromHKSPSleepScheduleState();
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep schedule state: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getSleepWidgetStateWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] request received for sleep widget state", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__HDSPSleepStoreServer_getSleepWidgetStateWithCompletion___block_invoke;
    v12[3] = &unk_279C7BD38;
    v12[4] = self;
    v13 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v12];
  }
}

void __58__HDSPSleepStoreServer_getSleepWidgetStateWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v3 = v11;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing request for sleep widget state", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepWidgetManager];
  [v5 currentSleepWidgetState];

  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromHKSPSleepWidgetState();
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] completing request for sleep widget state: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)publishNotificationWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v13 = HKSPLogForCategory();
  v14 = v13;
  if (isDisabled)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = objc_opt_class();
      v17 = v23;
      _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = identifierCopy;
      v16 = v23;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to publish notification: %@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__HDSPSleepStoreServer_publishNotificationWithIdentifier_userInfo_completion___block_invoke;
    v18[3] = &unk_279C7BD88;
    v18[4] = self;
    v19 = identifierCopy;
    v20 = infoCopy;
    v21 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v18];
  }
}

void __78__HDSPSleepStoreServer_publishNotificationWithIdentifier_userInfo_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    *buf = 138543618;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    v5 = v3;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to publish notification: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = MEMORY[0x277D624D0];
  v8 = *(a1 + 40);
  v9 = [v6 currentDateProvider];
  v10 = v9[2]();
  v11 = [v7 sleepEventWithIdentifier:v8 dueDate:v10 context:*(a1 + 48)];

  v12 = [v6 sleepScheduler];
  v18 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [v12 notifyForOverdueEvents:v13];

  v14 = HKSPLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = *(a1 + 40);
    *buf = 138543618;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    v17 = v15;
    _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to publish notification: %@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)publishWakeUpResultsNotificationWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to publish wake up results notification", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke;
    v12[3] = &unk_279C7BD38;
    v12[4] = self;
    v13 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v12];
  }
}

void __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = objc_opt_class();
    v3 = v15;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to publish wake up results notification", buf, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 wakeUpResultsNotificationManager];

  if (v5)
  {
    v6 = [v4 wakeUpResultsNotificationManager];
    v7 = [v6 performImmediateQueryForNotification];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke_307;
    v11[3] = &unk_279C7BDB0;
    v13 = *(a1 + 40);
    v12 = v4;
    v8 = [v7 addCompletionBlock:v11];

    v9 = v13;
  }

  else
  {
    v10 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v10 + 16))(v10, 0, v9);
  }
}

void __71__HDSPSleepStoreServer_publishWakeUpResultsNotificationWithCompletion___block_invoke_307(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a2 buildNotification];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x277D624D0];
      v6 = [v3 identifier];
      v7 = [*(a1 + 32) currentDateProvider];
      v8 = v7[2]();
      v9 = [v4 userInfo];
      v10 = [v5 sleepEventWithIdentifier:v6 dueDate:v8 context:v9];

      v11 = [*(a1 + 32) sleepScheduler];
      v16[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [v11 notifyForOverdueEvents:v12];

      v13 = *(a1 + 40);
      v14 = [v10 context];
      (*(v13 + 16))(v13, v14, 0);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v15 = *(*(a1 + 40) + 16);

    v15();
  }
}

- (void)setLockScreenOverrideState:(int64_t)state userInfo:(id)info completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v12 = HKSPLogForCategory();
  v13 = v12;
  if (isDisabled)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = objc_opt_class();
      v18 = v24;
      _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = NSStringFromHKSPSleepLockScreenState();
      *buf = 138543874;
      v24 = v15;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = infoCopy;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to override lock screen state: %@ (userInfo: %@)", buf, 0x20u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__HDSPSleepStoreServer_setLockScreenOverrideState_userInfo_completion___block_invoke;
    v19[3] = &unk_279C7BDD8;
    v19[4] = self;
    stateCopy = state;
    v20 = infoCopy;
    v21 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v19];
  }
}

void __71__HDSPSleepStoreServer_setLockScreenOverrideState_userInfo_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = NSStringFromHKSPSleepLockScreenState();
    v17 = 138543618;
    v18 = v3;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request override lock screen state: %@", &v17, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepLockScreenManager];

  if (v7)
  {
    v8 = [v6 sleepLockScreenManager];
    [v8 overrideLockScreenState:*(a1 + 56) userInfo:*(a1 + 40)];
  }

  else
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v17 = 138543362;
      v18 = v15;
      v16 = v15;
      _os_log_error_impl(&dword_269B11000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] lock screen not supported on this device", &v17, 0xCu);
    }

    v10 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v10 + 16))(v10, 0, v8);
  }

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = NSStringFromHKSPSleepLockScreenState();
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request override lock screen state: %@", &v17, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)setWidgetOverrideState:(int64_t)state completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v9 = HKSPLogForCategory();
  v10 = v9;
  if (isDisabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPSleepWidgetState();
      *buf = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to override sleep widget state: %@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__HDSPSleepStoreServer_setWidgetOverrideState_completion___block_invoke;
    v16[3] = &unk_279C7BE00;
    v16[4] = self;
    stateCopy = state;
    v17 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v16];
  }
}

void __58__HDSPSleepStoreServer_setWidgetOverrideState_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = NSStringFromHKSPSleepWidgetState();
    v17 = 138543618;
    v18 = v3;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to override sleep widget state: %@", &v17, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepWidgetManager];

  if (v7)
  {
    v8 = [v6 sleepWidgetManager];
    [v8 overrideWidgetState:*(a1 + 48)];
  }

  else
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v17 = 138543362;
      v18 = v15;
      v16 = v15;
      _os_log_error_impl(&dword_269B11000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] widgets not supported on this device", &v17, 0xCu);
    }

    v10 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v10 + 16))(v10, 0, v8);
  }

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = NSStringFromHKSPSleepWidgetState();
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to override sleep widget state: %@", &v17, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clearWidgetOverrideWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to clear sleep widget override", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__HDSPSleepStoreServer_clearWidgetOverrideWithCompletion___block_invoke;
    v12[3] = &unk_279C7BD38;
    v12[4] = self;
    v13 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v12];
  }
}

void __58__HDSPSleepStoreServer_clearWidgetOverrideWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v3 = v15;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request clear sleep widget override", &v14, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepWidgetManager];

  if (v5)
  {
    v6 = [v4 sleepWidgetManager];
    [v6 clearWidgetOverrideState];
  }

  else
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v14 = 138543362;
      v15 = v12;
      v13 = v12;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] widgets not supported on this device", &v14, 0xCu);
    }

    v8 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:2 userInfo:0];
    (*(v8 + 16))(v8, 0, v6);
  }

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v14 = 138543362;
    v15 = v10;
    v11 = v10;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to clear sleep widget override", &v14, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)createSleepFocusInState:(unint64_t)state completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v9 = HKSPLogForCategory();
  v10 = v9;
  if (isDisabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPSleepFocusConfigurationState();
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to create sleep focus mode (%{public}@)", buf, 0x16u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__HDSPSleepStoreServer_createSleepFocusInState_completion___block_invoke;
    v16[3] = &unk_279C7BE00;
    v16[4] = self;
    stateCopy = state;
    v17 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v16];
  }
}

void __59__HDSPSleepStoreServer_createSleepFocusInState_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = NSStringFromHKSPSleepFocusConfigurationState();
    *buf = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to create sleep focus mode (%{public}@)", buf, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 sleepModeManager];
  v8 = *(a1 + 48);
  v14 = 0;
  [v7 createFocusModeInState:v8 error:&v14];
  v9 = v14;

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = NSStringFromHKSPSleepFocusConfigurationState();
    *buf = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to create sleep focus mode (%{public}@)", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteSleepFocusModeWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v7 = HKSPLogForCategory();
  v8 = v7;
  if (isDisabled)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to delete sleep focus mode", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__HDSPSleepStoreServer_deleteSleepFocusModeWithCompletion___block_invoke;
    v12[3] = &unk_279C7BD38;
    v12[4] = self;
    v13 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v12];
  }
}

void __59__HDSPSleepStoreServer_deleteSleepFocusModeWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v3 = v12;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to delete sleep focus mode", buf, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepModeManager];
  v10 = 0;
  [v5 deleteFocusModeWithError:&v10];
  v6 = v10;

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    *buf = 138543362;
    v12 = v8;
    v9 = v8;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to delete sleep focus mode", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)configureSleepFocusWithState:(unint64_t)state completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  v9 = HKSPLogForCategory();
  v10 = v9;
  if (isDisabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPSleepFocusConfigurationState();
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to configure sleep focus mode (state: %{public}@)", buf, 0x16u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__HDSPSleepStoreServer_configureSleepFocusWithState_completion___block_invoke;
    v16[3] = &unk_279C7BE00;
    v16[4] = self;
    stateCopy = state;
    v17 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenCurrentClientIsReady:v16];
  }
}

void __64__HDSPSleepStoreServer_configureSleepFocusWithState_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v3 = v13;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to configure sleep focus mode", buf, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepModeManager];
  v6 = *(a1 + 48);
  v11 = 0;
  [v5 configureFocusModeWithState:v6 error:&v11];
  v7 = v11;

  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    *buf = 138543362;
    v13 = v9;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to configure sleep focus mode", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)confirmAwakeWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to confirm awake from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__HDSPSleepStoreServer_confirmAwakeWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __51__HDSPSleepStoreServer_confirmAwakeWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v3 = v10;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to confirm awake", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 actionManager];

  [v5 confirmWakeUp:1];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v9 = 138543362;
    v10 = v7;
    v8 = v7;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to confirm awake", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)dismissGoodMorningWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to dismiss good morning from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__HDSPSleepStoreServer_dismissGoodMorningWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __57__HDSPSleepStoreServer_dismissGoodMorningWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v3 = v10;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to dismiss good morning", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 actionManager];

  [v5 dismissGoodMorning];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v9 = 138543362;
    v10 = v7;
    v8 = v7;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to dismiss good morning", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)dismissSleepLockWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = currentClient;
      v11 = v16;
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received to dismiss sleep lock from: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__HDSPSleepStoreServer_dismissSleepLockWithCompletion___block_invoke;
    v13[3] = &unk_279C7BD38;
    v13[4] = self;
    v14 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenClientIsReady:currentClient block:v13];
  }
}

void __55__HDSPSleepStoreServer_dismissSleepLockWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v3 = v10;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request to dismiss sleep lock", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 actionManager];

  [v5 dismissSleepLock];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v9 = 138543362;
    v10 = v7;
    v8 = v7;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request to dismiss sleep lock", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sleepAlarmWasDismissedOnDate:(id)date source:(unint64_t)source completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = objc_opt_class();
      v19 = v25;
      _os_log_error_impl(&dword_269B11000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromHKSPAlarmSource();
      *buf = 138544130;
      v25 = v16;
      v26 = 2114;
      v27 = dateCopy;
      v28 = 2114;
      v29 = v18;
      v30 = 2114;
      v31 = currentClient;
      _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received for sleep alarm dismissal on %{public}@ (%{public}@) from: %{public}@", buf, 0x2Au);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HDSPSleepStoreServer_sleepAlarmWasDismissedOnDate_source_completion___block_invoke;
    v20[3] = &unk_279C7BE28;
    v20[4] = self;
    v21 = dateCopy;
    sourceCopy = source;
    v22 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v20];
  }
}

void __71__HDSPSleepStoreServer_sleepAlarmWasDismissedOnDate_source_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v12 = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v5 = v3;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request for sleep alarm dismissal on %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 actionManager];

  [v7 sleepAlarmDismissedOnDate:*(a1 + 40) source:*(a1 + 56)];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v11 = v9;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request for sleep alarm dismissal on %{public}@", &v12, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)sleepAlarmWasSnoozedUntilDate:(id)date source:(unint64_t)source completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = objc_opt_class();
      v19 = v25;
      _os_log_error_impl(&dword_269B11000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = NSStringFromHKSPAlarmSource();
      *buf = 138544130;
      v25 = v16;
      v26 = 2114;
      v27 = dateCopy;
      v28 = 2114;
      v29 = v18;
      v30 = 2114;
      v31 = currentClient;
      _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received for sleep alarm snooze until %{public}@ (%{public}@) from: %{public}@", buf, 0x2Au);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HDSPSleepStoreServer_sleepAlarmWasSnoozedUntilDate_source_completion___block_invoke;
    v20[3] = &unk_279C7BE28;
    v20[4] = self;
    v21 = dateCopy;
    sourceCopy = source;
    v22 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v20];
  }
}

void __72__HDSPSleepStoreServer_sleepAlarmWasSnoozedUntilDate_source_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v12 = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v5 = v3;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request for sleep alarm snooze until %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 32) environment];
  v7 = [v6 actionManager];

  [v7 sleepAlarmSnoozedUntilDate:*(a1 + 40) source:*(a1 + 56)];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v11 = v9;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request for sleep alarm snooze until %{public}@", &v12, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)sleepAlarmWasModifiedFromSource:(unint64_t)source completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDisabled = [WeakRetained isDisabled];

  if (isDisabled)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = objc_opt_class();
      v15 = v19;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] server disabled", buf, 0xCu);
    }

    currentClient = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep.HDSPSleepStoreServer" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, currentClient);
  }

  else
  {
    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    currentClient = [connectionListener currentClient];

    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKSPAlarmSource();
      *buf = 138543874;
      v19 = v12;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = currentClient;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request received for sleep alarm modified (%{public}@) from: %{public}@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__HDSPSleepStoreServer_sleepAlarmWasModifiedFromSource_completion___block_invoke;
    v16[3] = &unk_279C7BE50;
    v16[4] = self;
    v17 = completionCopy;
    [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v16];
  }
}

void __67__HDSPSleepStoreServer_sleepAlarmWasModifiedFromSource_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v3 = v10;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Performing request for sleep alarm modified", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) environment];
  v5 = [v4 actionManager];

  [v5 sleepAlarmWasModified];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v9 = 138543362;
    v10 = v7;
    v8 = v7;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completing request for sleep alarm modified", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSchedule:(id)schedule
{
  v34 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  environment = [(HDSPSleepStoreServer *)self environment];
  currentSource = [environment currentSource];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSchedule___block_invoke;
  v26[3] = &unk_279C7BE78;
  v10 = currentSource;
  v27 = v10;
  v11 = [connectedClients na_firstObjectPassingTest:v26];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138543874;
    v29 = v13;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = scheduleCopy;
    v14 = v13;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] source: %{public}@ didUpdateSleepSchedule: %{public}@", buf, 0x20u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepScheduleSyncAnchor = [syncAnchorContainer incrementSleepScheduleSyncAnchor];

  connectionListener2 = [(HDSPSleepStoreServer *)self connectionListener];
  v22 = MEMORY[0x277D85DD0];
  v23 = scheduleCopy;
  v24 = incrementSleepScheduleSyncAnchor;
  v25 = v11;
  v18 = v11;
  v19 = incrementSleepScheduleSyncAnchor;
  v20 = scheduleCopy;
  v21 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v22];
  [connectionListener2 performRemoteBlockOnClients:&v22 passingTest:v21];
}

void __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSchedule___block_invoke_310(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = HKSPSleepScheduleWrapWithSyncAnchor();
  v4 = [*(a1 + 48) clientIdentifier];
  [v3 sleepScheduleChanged:v5 clientIdentifier:v4];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepSettings:(id)settings
{
  v34 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  environment = [(HDSPSleepStoreServer *)self environment];
  currentSource = [environment currentSource];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke;
  v26[3] = &unk_279C7BE78;
  v10 = currentSource;
  v27 = v10;
  v11 = [connectedClients na_firstObjectPassingTest:v26];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138543874;
    v29 = v13;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = settingsCopy;
    v14 = v13;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] source: %{public}@ didUpdateSleepSettings: %{public}@", buf, 0x20u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepSettingsSyncAnchor = [syncAnchorContainer incrementSleepSettingsSyncAnchor];

  connectionListener2 = [(HDSPSleepStoreServer *)self connectionListener];
  v22 = MEMORY[0x277D85DD0];
  v23 = settingsCopy;
  v24 = incrementSleepSettingsSyncAnchor;
  v25 = v11;
  v18 = v11;
  v19 = incrementSleepSettingsSyncAnchor;
  v20 = settingsCopy;
  v21 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v22];
  [connectionListener2 performRemoteBlockOnClients:&v22 passingTest:v21];
}

void __73__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepSettings___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 objectWithSyncAnchor:v4];
  v6 = [*(a1 + 48) clientIdentifier];
  [v5 sleepSettingsChanged:v7 clientIdentifier:v6];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepEventRecord:(id)record
{
  v34 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  environment = [(HDSPSleepStoreServer *)self environment];
  currentSource = [environment currentSource];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepEventRecord___block_invoke;
  v26[3] = &unk_279C7BE78;
  v10 = currentSource;
  v27 = v10;
  v11 = [connectedClients na_firstObjectPassingTest:v26];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    *buf = 138543874;
    v29 = v13;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = recordCopy;
    v14 = v13;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] source: %{public}@ didUpdateSleepEventRecord: %{public}@", buf, 0x20u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepEventRecordSyncAnchor = [syncAnchorContainer incrementSleepEventRecordSyncAnchor];

  connectionListener2 = [(HDSPSleepStoreServer *)self connectionListener];
  v22 = MEMORY[0x277D85DD0];
  v23 = recordCopy;
  v24 = incrementSleepEventRecordSyncAnchor;
  v25 = v11;
  v18 = v11;
  v19 = incrementSleepEventRecordSyncAnchor;
  v20 = recordCopy;
  v21 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v22];
  [connectionListener2 performRemoteBlockOnClients:&v22 passingTest:v21];
}

void __76__HDSPSleepStoreServer_sleepScheduleModelManager_didUpdateSleepEventRecord___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 objectWithSyncAnchor:v4];
  v6 = [*(a1 + 48) clientIdentifier];
  [v5 sleepEventRecordChanged:v7 clientIdentifier:v6];
}

- (void)sleepEventIsDue:(id)due
{
  v20 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = dueCopy;
    v6 = v17;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepEventIsDue: %{public}@", buf, 0x16u);
  }

  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  incrementSleepEventSyncAnchor = [syncAnchorContainer incrementSleepEventSyncAnchor];

  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  v13 = MEMORY[0x277D85DD0];
  v14 = dueCopy;
  v15 = incrementSleepEventSyncAnchor;
  v10 = incrementSleepEventSyncAnchor;
  v11 = dueCopy;
  v12 = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock:v13];
  [connectionListener performRemoteBlockOnClients:&v13 passingTest:v12];
}

void __40__HDSPSleepStoreServer_sleepEventIsDue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 objectWithSyncAnchor:v3];
  [v4 sleepEventOccurred:v5];
}

- (id)eventIdentifiers
{
  v6[1] = *MEMORY[0x277D85DE8];
  standardEventIdentifiers = [MEMORY[0x277D624D0] standardEventIdentifiers];
  v6[0] = *MEMORY[0x277D621D8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [standardEventIdentifiers setByAddingObjectsFromArray:v3];

  return v4;
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKSPSleepScheduleState();
    v13 = NSStringFromHKSPSleepScheduleStateChangeReason();
    *buf = 138543874;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateDidChange: %{public}@ (%{public}@)", buf, 0x20u);
  }

  if (change != state)
  {
    syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
    incrementSleepScheduleStateSyncAnchor = [syncAnchorContainer incrementSleepScheduleStateSyncAnchor];

    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__HDSPSleepStoreServer_sleepScheduleStateDidChange_previousState_reason___block_invoke;
    v19[3] = &unk_279C7BEF0;
    changeCopy = change;
    reasonCopy = reason;
    v20 = incrementSleepScheduleStateSyncAnchor;
    v17 = incrementSleepScheduleStateSyncAnchor;
    _checkForSuspendedBlock = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock];
    [connectionListener performRemoteBlockOnClients:v19 passingTest:_checkForSuspendedBlock];
  }
}

void __73__HDSPSleepStoreServer_sleepScheduleStateDidChange_previousState_reason___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x277D62518];
  v4 = a2;
  v5 = [[v3 alloc] initWithScheduleState:a1[5] changeReason:a1[6] syncAnchor:a1[4]];
  [v4 sleepScheduleStateChanged:v5];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromHKSPSleepModeChangeReason();
    *buf = 138544130;
    v23 = v10;
    v24 = 2048;
    changeCopy = change;
    v26 = 2048;
    modeCopy = mode;
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepModeDidChange: %ld previousMode: %ld reason: %{public}@", buf, 0x2Au);
  }

  if (change != mode)
  {
    syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
    incrementSleepModeSyncAnchor = [syncAnchorContainer incrementSleepModeSyncAnchor];

    connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__HDSPSleepStoreServer_sleepModeDidChange_previousMode_reason___block_invoke;
    v18[3] = &unk_279C7BEF0;
    changeCopy2 = change;
    reasonCopy = reason;
    v19 = incrementSleepModeSyncAnchor;
    v16 = incrementSleepModeSyncAnchor;
    _checkForSuspendedBlock = [(HDSPSleepStoreServer *)self _checkForSuspendedBlock];
    [connectionListener performRemoteBlockOnClients:v18 passingTest:_checkForSuspendedBlock];
  }
}

void __63__HDSPSleepStoreServer_sleepModeDidChange_previousMode_reason___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x277D624F0];
  v4 = a2;
  v5 = [[v3 alloc] initWithSleepMode:a1[5] changeReason:a1[6] syncAnchor:a1[4]];
  [v4 sleepModeChanged:v5];
}

- (id)_checkForSuspendedBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HDSPSleepStoreServer__checkForSuspendedBlock__block_invoke;
  v4[3] = &unk_279C7BE78;
  v4[4] = self;
  v2 = MEMORY[0x26D64B6C0](v4, a2);

  return v2;
}

uint64_t __47__HDSPSleepStoreServer__checkForSuspendedBlock__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) isProcessSuspended:{objc_msgSend(v3, "processID")}];
  if (v4)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v3;
      v6 = v9;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping notification to suspended client: %{public}@", &v8, 0x16u);
    }
  }

  return v4 ^ 1u;
}

- (void)_notifyClient:(id)client forMissedMessagesWithSyncAnchorContainer:(id)container
{
  clientCopy = client;
  containerCopy = container;
  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke;
  v20[3] = &unk_279C7BF18;
  v20[4] = self;
  v21 = clientCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_3;
  v18[3] = &unk_279C7BF18;
  v18[4] = self;
  v19 = v21;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_5;
  v16[3] = &unk_279C7BF18;
  v16[4] = self;
  v17 = v19;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_7;
  v14[3] = &unk_279C7BF18;
  v14[4] = self;
  v15 = v17;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_9;
  v12[3] = &unk_279C7BF18;
  v12[4] = self;
  v13 = v15;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_11;
  v10[3] = &unk_279C7BF18;
  v10[4] = self;
  v11 = v13;
  v9 = v13;
  [syncAnchorContainer compareWithContainer:containerCopy sleepScheduleSyncAnchorOutOfDate:v20 sleepSettingsSyncAnchorOutOfDate:v18 sleepEventRecordSyncAnchorOutOfDate:v16 sleepScheduleStateSyncAnchorOutOfDate:v14 sleepModeSyncAnchorOutOfDate:v12 sleepEventSyncAnchorOutOfDate:v10];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_2;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v2 environment];
  v4 = [v7 sleepScheduleModelManager];
  v5 = [v4 sleepSchedule];
  v6 = HKSPSleepScheduleWrapWithSyncAnchor();
  [v3 sleepScheduleChanged:v6 clientIdentifier:0];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_4;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 environment];
  v5 = [v8 sleepScheduleModelManager];
  v6 = [v5 sleepSettings];
  v7 = [v6 objectWithSyncAnchor:*(a1 + 40)];
  [v4 sleepSettingsChanged:v7 clientIdentifier:0];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_6;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 environment];
  v5 = [v8 sleepScheduleModelManager];
  v6 = [v5 sleepEventRecord];
  v7 = [v6 objectWithSyncAnchor:*(a1 + 40)];
  [v4 sleepEventRecordChanged:v7 clientIdentifier:0];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_8;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D62518];
  v4 = a2;
  v5 = [v3 alloc];
  v8 = [*(a1 + 32) environment];
  v6 = [v8 sleepCoordinator];
  v7 = [v5 initWithScheduleState:objc_msgSend(v6 changeReason:"currentSleepScheduleState") syncAnchor:{6, *(a1 + 40)}];
  [v4 sleepScheduleStateChanged:v7];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_10;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D624F0];
  v4 = a2;
  v5 = [v3 alloc];
  v8 = [*(a1 + 32) environment];
  v6 = [v8 sleepModeManager];
  v7 = [v5 initWithSleepMode:objc_msgSend(v6 changeReason:"sleepMode") syncAnchor:{10, *(a1 + 40)}];
  [v4 sleepModeChanged:v7];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_12;
  v8[3] = &unk_279C7BEC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 performRemoteBlock:v8 onClient:v6];
}

void __79__HDSPSleepStoreServer__notifyClient_forMissedMessagesWithSyncAnchorContainer___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 environment];
  v5 = [v8 sleepScheduler];
  v6 = [v5 lastStandardSleepEvent];
  v7 = [v6 objectWithSyncAnchor:*(a1 + 40)];
  [v4 sleepEventOccurred:v7];
}

- (void)processNoLongerSuspended:(int)suspended
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke;
  v3[3] = &unk_279C7B958;
  v3[4] = self;
  suspendedCopy = suspended;
  [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v3];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionListener];
  v3 = [v2 connectedClientsWithPID:*(a1 + 40)];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2;
  v4[3] = &unk_279C7BF68;
  v4[4] = *(a1 + 32);
  [v3 na_each:v4];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v3;
    v5 = v11;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] asking newly running client to check in: %{public}@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) connectionListener];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_317;
  v8[3] = &unk_279C7BEC8;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v6 performRemoteBlock:v8 onClient:v7];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_317(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2_318;
  v6[3] = &unk_279C7BF40;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 clientShouldCheckInWithCompletion:v6];
}

void __49__HDSPSleepStoreServer_processNoLongerSuspended___block_invoke_2_318(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v3;
    v7 = v5;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] check in received from %{public}@ with container: %{public}@", &v8, 0x20u);
  }

  [*(a1 + 32) _notifyClient:*(a1 + 48) forMissedMessagesWithSyncAnchorContainer:v3];
}

- (void)processDidBecomeSuspended:(int)suspended
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke;
  v3[3] = &unk_279C7B958;
  v3[4] = self;
  suspendedCopy = suspended;
  [(HDSPSleepStoreServer *)self _performWhenEnvironmentIsReady:v3];
}

void __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionListener];
  v3 = [v2 connectedClientsWithPID:*(a1 + 40)];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke_2;
  v4[3] = &unk_279C7BF68;
  v4[4] = *(a1 + 32);
  [v3 na_each:v4];
}

void __50__HDSPSleepStoreServer_processDidBecomeSuspended___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2114;
    v8 = v2;
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] client did become suspended: %{public}@", &v5, 0x16u);
  }
}

- (void)connectionListenerDidAddClient:(id)client
{
  processStateManager = self->_processStateManager;
  processID = [client processID];

  [(HDSPProcessStateManager *)processStateManager startMonitoringProcessState:processID];
}

- (void)connectionListenerDidRemoveClient:(id)client
{
  processStateManager = self->_processStateManager;
  processID = [client processID];

  [(HDSPProcessStateManager *)processStateManager stopMonitoringProcessState:processID];
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  syncAnchorContainer = [(HDSPSleepStoreServer *)self syncAnchorContainer];
  v5 = [syncAnchorContainer description];
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];
  v8 = [v3 stringWithFormat:@"Sync Anchor Container: %@\nConnected Clients: %@", v5, connectedClients];

  return v8;
}

- (id)diagnosticInfo
{
  v10[1] = *MEMORY[0x277D85DE8];
  connectionListener = [(HDSPSleepStoreServer *)self connectionListener];
  connectedClients = [connectionListener connectedClients];

  v4 = [connectedClients na_map:&__block_literal_global_326];
  v5 = [v4 componentsJoinedByString:{@", "}];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"none";
  }

  v9 = @"Connected Clients";
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v7;
}

id __38__HDSPSleepStoreServer_diagnosticInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 processID];
  v5 = [v3 clientIdentifier];

  v6 = [v5 loggingIdentifier];
  v7 = [v2 stringWithFormat:@"(pid: %ul, id: %@)", v4, v6];

  return v7;
}

@end