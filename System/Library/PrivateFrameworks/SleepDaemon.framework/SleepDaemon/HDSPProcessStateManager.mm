@interface HDSPProcessStateManager
- (BOOL)isProcessSuspended:(int)suspended;
- (HDSPProcessStateManager)init;
- (HDSPProcessStateManager)initWithProcessStateProvider:(id)provider;
- (HDSPProcessStateManagerDelegate)delegate;
- (void)_process:(id)_process didUpdateFromState:(id)state toState:(id)toState;
- (void)_updateConfiguration;
- (void)dealloc;
- (void)startMonitoringProcessState:(int)state;
- (void)stopMonitoringProcessState:(int)state;
@end

@implementation HDSPProcessStateManager

- (void)_updateConfiguration
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  v3 = self->_processIdentifiers;
  objc_sync_enter(v3);
  allObjects = [(NSMutableSet *)self->_processIdentifiers allObjects];
  v5 = v13[5];
  v13[5] = allObjects;

  objc_sync_exit(v3);
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = v13[5];
    *buf = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    v9 = v7;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_INFO, "[%{public}@] updating monitor configuration for processes: %{public}@", buf, 0x16u);
  }

  processStateMonitor = self->_processStateMonitor;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__HDSPProcessStateManager__updateConfiguration__block_invoke;
  v11[3] = &unk_279C7C960;
  v11[4] = self;
  v11[5] = &v12;
  [(RBSProcessMonitor *)processStateMonitor updateConfiguration:v11];
  _Block_object_dispose(&v12, 8);
}

void __47__HDSPProcessStateManager__updateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 40) + 8) + 40) na_map:&__block_literal_global_17];
  [v3 setPredicates:v4];
  v5 = objc_alloc_init(MEMORY[0x277D46FB0]);
  [v5 setValues:1];
  [v3 setStateDescriptor:v5];
  objc_initWeak(&location, *(a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HDSPProcessStateManager__updateConfiguration__block_invoke_3;
  v6[3] = &unk_279C7C938;
  objc_copyWeak(&v7, &location);
  [v3 setUpdateHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__HDSPProcessStateManager__updateConfiguration__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 previousState];
  v9 = [v6 state];

  [WeakRetained _process:v7 didUpdateFromState:v8 toState:v9];
}

- (HDSPProcessStateManager)init
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__HDSPProcessStateManager_init__block_invoke;
  v5[3] = &unk_279C7C8F0;
  objc_copyWeak(&v6, &location);
  v3 = [(HDSPProcessStateManager *)self initWithProcessStateProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  return v3;
}

id __31__HDSPProcessStateManager_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277D46F50] identifierWithPid:a2];
  v12 = 0;
  v5 = [MEMORY[0x277D46F48] handleForIdentifier:v4 error:&v12];
  v6 = v12;
  if (!v5)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to fetch handle with error: %{public}@", buf, 0x16u);
    }
  }

  v8 = [v5 currentState];

  return v8;
}

- (HDSPProcessStateManager)initWithProcessStateProvider:(id)provider
{
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = HDSPProcessStateManager;
  v5 = [(HDSPProcessStateManager *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D46F80]);
    processStateMonitor = v5->_processStateMonitor;
    v5->_processStateMonitor = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    processIdentifiers = v5->_processIdentifiers;
    v5->_processIdentifiers = v8;

    v10 = [providerCopy copy];
    processStateProvider = v5->_processStateProvider;
    v5->_processStateProvider = v10;

    objc_initWeak(&location, v5);
    v12 = objc_alloc(MEMORY[0x277D62540]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__HDSPProcessStateManager_initWithProcessStateProvider___block_invoke;
    v17[3] = &unk_279C7C2A8;
    objc_copyWeak(&v18, &location);
    v13 = [v12 initWithInterval:v17 executeBlock:0.25];
    updateThrottler = v5->_updateThrottler;
    v5->_updateThrottler = v13;

    v15 = v5;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__HDSPProcessStateManager_initWithProcessStateProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateConfiguration];
}

- (BOOL)isProcessSuspended:(int)suspended
{
  v3 = (*(self->_processStateProvider + 2))();
  v4 = [v3 taskState] == 3;

  return v4;
}

- (void)startMonitoringProcessState:(int)state
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D46F50] identifierWithPid:*&state];
  v5 = self->_processIdentifiers;
  objc_sync_enter(v5);
  if (([(NSMutableSet *)self->_processIdentifiers containsObject:v4]& 1) != 0)
  {
    objc_sync_exit(v5);
  }

  else
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v4;
      v7 = v9;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_INFO, "[%{public}@] monitoring process: %{public}@", &v8, 0x16u);
    }

    [(NSMutableSet *)self->_processIdentifiers addObject:v4];
    objc_sync_exit(v5);

    [(HKSPThrottler *)self->_updateThrottler execute];
  }
}

- (void)stopMonitoringProcessState:(int)state
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D46F50] identifierWithPid:*&state];
  v5 = self->_processIdentifiers;
  objc_sync_enter(v5);
  if (([(NSMutableSet *)self->_processIdentifiers containsObject:v4]& 1) != 0)
  {
    objc_sync_exit(v5);
  }

  else
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v4;
      v7 = v9;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_INFO, "[%{public}@] no longer monitoring process: %{public}@", &v8, 0x16u);
    }

    [(NSMutableSet *)self->_processIdentifiers removeObject:v4];
    objc_sync_exit(v5);

    [(HKSPThrottler *)self->_updateThrottler execute];
  }
}

- (void)_process:(id)_process didUpdateFromState:(id)state toState:(id)toState
{
  v24 = *MEMORY[0x277D85DE8];
  _processCopy = _process;
  stateCopy = state;
  toStateCopy = toState;
  if ([stateCopy taskState] == 3 && objc_msgSend(toStateCopy, "taskState") != 3)
  {
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = v17;
      name = [_processCopy name];
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = name;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_INFO, "[%{public}@] process %{public}@ no longer suspended", &v20, 0x16u);
    }

    delegate = [(HDSPProcessStateManager *)self delegate];
    [delegate processNoLongerSuspended:{objc_msgSend(_processCopy, "pid")}];
    goto LABEL_11;
  }

  if ([stateCopy taskState] != 3 && objc_msgSend(toStateCopy, "taskState") == 3)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = v12;
      name2 = [_processCopy name];
      v20 = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = name2;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_INFO, "[%{public}@] process %{public}@ is suspended", &v20, 0x16u);
    }

    delegate = [(HDSPProcessStateManager *)self delegate];
    [delegate processDidBecomeSuspended:{objc_msgSend(_processCopy, "pid")}];
LABEL_11:
  }
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_processStateMonitor invalidate];
  processStateMonitor = self->_processStateMonitor;
  self->_processStateMonitor = 0;

  v4.receiver = self;
  v4.super_class = HDSPProcessStateManager;
  [(HDSPProcessStateManager *)&v4 dealloc];
}

- (HDSPProcessStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end