@interface HDMaintenanceWorkCoordinator
- (BOOL)startNextOperationWithNameImmediately:(id)immediately;
- (BOOL)suspended;
- (HDMaintenanceWorkCoordinator)initWithAnalyticsCoordinator:(id)coordinator contentProtectionManager:(id)manager;
- (id)diagnosticDescription;
- (id)takeMaintenanceSuspensionAssertionForOwner:(id)owner;
- (unint64_t)pendingCount;
- (void)_lock_cancelActiveTimeoutTimer;
- (void)_lock_considerStartingNextPendingOperation;
- (void)_lock_moveOperationFromPendingToActive:(uint64_t)active;
- (void)_lock_prepareToStartOperationImmediately:(const os_unfair_lock *)immediately;
- (void)_lock_startTimeoutTimerForActiveOperations;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)cancelAllOperations;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)dealloc;
- (void)enqueueMaintenanceOperation:(id)operation;
- (void)operationDidFinish:(id)finish;
- (void)startOperationImmediately:(id)immediately;
@end

@implementation HDMaintenanceWorkCoordinator

- (HDMaintenanceWorkCoordinator)initWithAnalyticsCoordinator:(id)coordinator contentProtectionManager:(id)manager
{
  coordinatorCopy = coordinator;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = HDMaintenanceWorkCoordinator;
  v9 = [(HDMaintenanceWorkCoordinator *)&v23 init];
  if (v9)
  {
    v10 = HKCreateSerialDispatchQueue();
    managementQueue = v9->_managementQueue;
    v9->_managementQueue = v10;

    v12 = HKCreateConcurrentDispatchQueueWithQOSClass();
    maintenanceWorkQueue = v9->_maintenanceWorkQueue;
    v9->_maintenanceWorkQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingOperations = v9->_pendingOperations;
    v9->_pendingOperations = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingLockingOperations = v9->_pendingLockingOperations;
    v9->_pendingLockingOperations = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeOperations = v9->_activeOperations;
    v9->_activeOperations = v18;

    v20 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v9->_assertionManager;
    v9->_assertionManager = v20;

    [(HDAssertionManager *)v9->_assertionManager addObserver:v9 forAssertionIdentifier:@"_HDMaintenanceWorkCoordinatorSuspensionAssertion;" queue:v9->_managementQueue];
    objc_storeStrong(&v9->_analyticsCoordinator, coordinator);
    objc_storeWeak(&v9->_contentProtectionManager, managerCopy);
    [managerCopy addContentProtectionObserver:v9 withQueue:v9->_managementQueue];
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(HDMaintenanceWorkCoordinator *)self _lock_cancelActiveTimeoutTimer];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = HDMaintenanceWorkCoordinator;
  [(HDMaintenanceWorkCoordinator *)&v3 dealloc];
}

- (void)_lock_cancelActiveTimeoutTimer
{
  if (self)
  {
    v2 = *(self + 64);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 64);
      *(self + 64) = 0;
    }
  }
}

- (BOOL)suspended
{
  os_unfair_lock_lock(&self->_lock);
  suspended = self->_suspended;
  os_unfair_lock_unlock(&self->_lock);
  return suspended;
}

- (unint64_t)pendingCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_pendingOperations count];
  v4 = [(NSMutableArray *)self->_pendingLockingOperations count];
  os_unfair_lock_unlock(&self->_lock);
  return v4 + v3;
}

- (void)enqueueMaintenanceOperation:(id)operation
{
  v23 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  os_unfair_lock_lock(&self->_lock);
  [operationCopy setEnqueuedTime:CFAbsoluteTimeGetCurrent()];
  if (self->_suspended)
  {
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = 138543362;
    v16 = operationCopy;
    v6 = "%{public}@: Enqueued (suspended)";
  }

  else
  {
    v7 = [(NSMutableSet *)self->_activeOperations count];
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [(NSMutableArray *)self->_pendingOperations count];
      v10 = [(NSMutableArray *)self->_pendingLockingOperations count];
      activeOperations = self->_activeOperations;
      v15 = 138544130;
      v16 = operationCopy;
      v17 = 2050;
      v18 = v9;
      v19 = 2050;
      v20 = v10;
      v21 = 2114;
      v22 = activeOperations;
      v6 = "%{public}@: Enqueued (%{public}ld pending, %{public}ld locking pending, current active operations: %{public}@)";
      v12 = v5;
      v13 = 42;
      goto LABEL_10;
    }

    if (!v8)
    {
      goto LABEL_11;
    }

    v15 = 138543362;
    v16 = operationCopy;
    v6 = "%{public}@: Enqueued for immediate start";
  }

  v12 = v5;
  v13 = 12;
LABEL_10:
  _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, v6, &v15, v13);
LABEL_11:

  executionPoint = [operationCopy executionPoint];
  if (executionPoint == 1)
  {
    [(NSMutableArray *)self->_pendingLockingOperations addObject:operationCopy];
  }

  else if (!executionPoint)
  {
    [(NSMutableArray *)self->_pendingOperations addObject:operationCopy];
    [(HDMaintenanceWorkCoordinator *)self _lock_considerStartingNextPendingOperation];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_considerStartingNextPendingOperation
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    if (![*(self + 56) count] && (*(self + 32) & 1) == 0)
    {
      if ((WeakRetained = objc_loadWeakRetained((self + 88)), v3 = [WeakRetained observedState], WeakRetained, v3 == 3) && (objc_msgSend(*(self + 48), "firstObject"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(*(self + 40), "firstObject"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v5 = v4;
        [(HDMaintenanceWorkCoordinator *)self _lock_moveOperationFromPendingToActive:v4];
        [(HDMaintenanceWorkCoordinator *)self _lock_startTimeoutTimerForActiveOperations];
        v6 = *(self + 24);
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __74__HDMaintenanceWorkCoordinator__lock_considerStartingNextPendingOperation__block_invoke;
        v8[3] = &unk_278613920;
        v9 = v5;
        selfCopy = self;
        v7 = v5;
        dispatch_async(v6, v8);
      }
    }
  }
}

- (void)startOperationImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  os_unfair_lock_lock(&self->_lock);
  [(HDMaintenanceWorkCoordinator *)self _lock_prepareToStartOperationImmediately:immediatelyCopy];
  os_unfair_lock_unlock(&self->_lock);
  [immediatelyCopy startWithCompletionDelegate:self fromImmediateRequest:1];
}

- (void)_lock_prepareToStartOperationImmediately:(const os_unfair_lock *)immediately
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (immediately)
  {
    os_unfair_lock_assert_owner(immediately + 2);
    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Running immediately", &v5, 0xCu);
    }

    [(HDMaintenanceWorkCoordinator *)immediately _lock_moveOperationFromPendingToActive:v3];
    [(HDMaintenanceWorkCoordinator *)immediately _lock_startTimeoutTimerForActiveOperations];
  }
}

- (BOOL)startNextOperationWithNameImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  os_unfair_lock_lock(&self->_lock);
  pendingOperations = self->_pendingOperations;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HDMaintenanceWorkCoordinator_startNextOperationWithNameImmediately___block_invoke;
  v9[3] = &unk_278623AD8;
  v10 = immediatelyCopy;
  v6 = immediatelyCopy;
  v7 = [(NSMutableArray *)pendingOperations hk_firstObjectPassingTest:v9];
  if (v7)
  {
    [(HDMaintenanceWorkCoordinator *)self _lock_prepareToStartOperationImmediately:v7];
    os_unfair_lock_unlock(&self->_lock);
    [v7 startWithCompletionDelegate:self fromImmediateRequest:1];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v7 != 0;
}

uint64_t __70__HDMaintenanceWorkCoordinator_startNextOperationWithNameImmediately___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)cancelAllOperations
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_pendingOperations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_pendingOperations removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_pendingLockingOperations;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) cancel];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_pendingLockingOperations removeAllObjects];
  [(NSMutableSet *)self->_activeOperations removeAllObjects];
  [(HDMaintenanceWorkCoordinator *)self _lock_cancelActiveTimeoutTimer];
  [(HDMaintenanceWorkCoordinator *)self _lock_considerStartingNextPendingOperation];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_moveOperationFromPendingToActive:(uint64_t)active
{
  v6 = a2;
  os_unfair_lock_assert_owner((active + 8));
  [*(active + 56) addObject:v6];
  executionPoint = [v6 executionPoint];
  if (executionPoint == 1)
  {
    v4 = *(active + 48);
    goto LABEL_5;
  }

  if (!executionPoint)
  {
    v4 = *(active + 40);
LABEL_5:
    [v4 removeObject:v6];
    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:sel__lock_moveOperationFromPendingToActive_ object:active file:@"HDMaintenanceWorkCoordinator.m" lineNumber:301 description:@"Invalid HDMaintenanceOperation executionPoint"];

LABEL_7:
}

- (void)_lock_startTimeoutTimerForActiveOperations
{
  location[16] = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner((self + 8));
  if ([*(self + 56) count])
  {
    if (!*(self + 64))
    {
      v2 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(self + 16));
      v3 = *(self + 64);
      *(self + 64) = v2;

      objc_initWeak(location, self);
      v4 = *(self + 64);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __74__HDMaintenanceWorkCoordinator__lock_startTimeoutTimerForActiveOperations__block_invoke;
      handler[3] = &unk_278616F38;
      objc_copyWeak(&v17, location);
      dispatch_source_set_event_handler(v4, handler);
      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }

    os_unfair_lock_assert_owner((self + 8));
    Current = CFAbsoluteTimeGetCurrent();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(self + 56);
    v7 = [v6 countByEnumeratingWithState:&v18 objects:location count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      v10 = Current;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v18 + 1) + 8 * i) timeoutTime];
          if (v10 < v12)
          {
            v10 = v12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:location count:16];
      }

      while (v8);
    }

    else
    {
      v10 = Current;
    }

    v13 = v10 - Current;
    v14 = *(self + 64);
    v15 = dispatch_time(0, (v13 * 1000000000.0));
    dispatch_source_set_timer(v14, v15, (v13 * 1000000000.0), (v13 * 0.25 * 1000000000.0));
    dispatch_activate(*(self + 64));
  }

  else
  {

    [(HDMaintenanceWorkCoordinator *)self _lock_cancelActiveTimeoutTimer];
  }
}

void __74__HDMaintenanceWorkCoordinator__lock_startTimeoutTimerForActiveOperations__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v20 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *&v20[14]._os_unfair_lock_opaque;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __47__HDMaintenanceWorkCoordinator__timeoutDidFire__block_invoke;
    v25[3] = &__block_descriptor_40_e32_B16__0__HDMaintenanceOperation_8l;
    *&v25[4] = Current;
    v4 = [v3 hk_filter:v25];
    if ([v4 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v22;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            [v10 setDidTimeOut:1];
            v11 = [v10 faultOnTimeout];
            _HKInitializeLogging();
            v12 = HKLogInfrastructure();
            v13 = v12;
            if (v11)
            {
              if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
              {
                [v10 elapsedTime];
                v15 = v14;
                [v10 timeout];
                *buf = 138543874;
                v27 = v10;
                v28 = 2048;
                v29 = v15;
                v30 = 2048;
                v31 = v16;
                _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "%{public}@: Timeout exceeded (%02.lfs elapsed of %02.lfs allowed)", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              [v10 elapsedTime];
              v18 = v17;
              [v10 timeout];
              *buf = 138543874;
              v27 = v10;
              v28 = 2048;
              v29 = v18;
              v30 = 2048;
              v31 = v19;
              _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Timeout exceeded (%02.lfs elapsed of %02.lfs allowed)", buf, 0x20u);
            }

            [*&v20[14]._os_unfair_lock_opaque removeObject:v10];
          }

          v7 = [v5 countByEnumeratingWithState:&v21 objects:v32 count:16];
        }

        while (v7);
      }

      [(HDMaintenanceWorkCoordinator *)v20 _lock_startTimeoutTimerForActiveOperations];
      [(HDMaintenanceWorkCoordinator *)v20 _lock_considerStartingNextPendingOperation];
    }

    os_unfair_lock_unlock(v20 + 2);

    WeakRetained = v20;
  }
}

- (id)takeMaintenanceSuspensionAssertionForOwner:(id)owner
{
  v12 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  [(HDMaintenanceWorkCoordinator *)self willChangeValueForKey:@"suspended"];
  v5 = [objc_alloc(MEMORY[0x277D10AB8]) initWithAssertionIdentifier:@"_HDMaintenanceWorkCoordinatorSuspensionAssertion;" ownerIdentifier:ownerCopy];

  os_unfair_lock_lock(&self->_lock);
  self->_suspended = 1;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: HDMaintenanceWorkCoordinatorSuspensionAssertion taken. (%{public}@)", &v8, 0x16u);
  }

  [(HDAssertionManager *)self->_assertionManager takeAssertion:v5];
  os_unfair_lock_unlock(&self->_lock);
  [(HDMaintenanceWorkCoordinator *)self didChangeValueForKey:@"suspended"];

  return v5;
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_contentProtectionManager);
  observedState = [WeakRetained observedState];

  if (observedState == 3)
  {
    [(HDMaintenanceWorkCoordinator *)self _lock_considerStartingNextPendingOperation];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)operationDidFinish:(id)finish
{
  v56 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_activeOperations removeObject:finishCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = @"unknown";
  if (isKindOfClass)
  {
    v6 = @"protected";
  }

  v7 = v6;
  objc_opt_class();
  v8 = objc_opt_isKindOfClass() ^ 1;
  analyticsCoordinator = self->_analyticsCoordinator;
  if (analyticsCoordinator)
  {
    name = [finishCopy name];
    v35 = [(NSMutableArray *)self->_pendingOperations count];
    v34 = [(NSMutableSet *)self->_activeOperations count];
    [finishCopy startedTime];
    v12 = v11;
    [finishCopy enqueuedTime];
    v14 = ((v12 - v13) * 1000.0);
    wasCanceled = [finishCopy wasCanceled];
    didTimeOut = [finishCopy didTimeOut];
    [finishCopy elapsedTime];
    v18 = v7;
    v19 = (v17 * 1000.0);
    BYTE1(v33) = v8 & 1;
    LOBYTE(v33) = [finishCopy isImmediateRequest];
    v32 = v19;
    v7 = v18;
    LOBYTE(v31) = didTimeOut;
    [(HDAnalyticsSubmissionCoordinator *)analyticsCoordinator maintenanceCoordinator_reportCoreAnalyticsWithOperationName:name database:v18 pendingOperationsCount:v35 activeOperationsCount:v34 timeUntilStart:v14 canceled:wasCanceled timedOut:v31 elapsedTime:v32 isImmediateRequest:v33 async:?];
  }

  else
  {
    if (_HDIsUnitTesting)
    {
      goto LABEL_7;
    }

    _HKInitializeLogging();
    name = HKLogInfrastructure();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      name2 = [finishCopy name];
      v22 = [(NSMutableArray *)self->_pendingOperations count];
      v23 = [(NSMutableSet *)self->_activeOperations count];
      [finishCopy startedTime];
      v25 = v24;
      [finishCopy enqueuedTime];
      v27 = (v25 - v26) * 1000.0;
      wasCanceled2 = [finishCopy wasCanceled];
      didTimeOut2 = [finishCopy didTimeOut];
      [finishCopy elapsedTime];
      *buf = 138414594;
      v37 = name2;
      v38 = 2112;
      v39 = v7;
      v40 = 2048;
      v41 = v22;
      v42 = 2048;
      v43 = v23;
      v44 = 2048;
      v45 = v27;
      v46 = 1024;
      v47 = wasCanceled2;
      v48 = 1024;
      v49 = didTimeOut2;
      v50 = 2048;
      v51 = v30 * 1000.0;
      v52 = 1024;
      isImmediateRequest = [finishCopy isImmediateRequest];
      v54 = 1024;
      v55 = v8 & 1;
      _os_log_error_impl(&dword_228986000, name, OS_LOG_TYPE_ERROR, "Analytics coordinator unexpectedly nil\n                                                         Operation Name: %@\n                                                         Database Protection: %@\n                                                         Pending Operations Count: %lu\n                                                         Acitve Operations Count: %lu\n                                                         Time Until Start (sec): %.2f\n                                                         Was Canceled: %i\n                                                         Did Time Out: %i\n                                                         Elapsed Time: %.2f\n                                                         Is Immediate Request: %i\n                                                         Async: %i\n", buf, 0x56u);
    }
  }

LABEL_7:
  [(HDMaintenanceWorkCoordinator *)self _lock_considerStartingNextPendingOperation];
  daemonTransaction = [finishCopy daemonTransaction];
  [daemonTransaction invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v18 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  managerCopy = manager;
  [(HDMaintenanceWorkCoordinator *)self willChangeValueForKey:@"suspended"];
  os_unfair_lock_lock(&self->_lock);
  v8 = [managerCopy hasActiveAssertionForIdentifier:@"_HDMaintenanceWorkCoordinatorSuspensionAssertion;"];

  self->_suspended = v8;
  _HKInitializeLogging();
  v9 = HKLogInfrastructure();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    suspended = self->_suspended;
    v12 = 138543874;
    if (suspended)
    {
      v11 = @"still";
    }

    else
    {
      v11 = @"no longer";
    }

    selfCopy = self;
    v14 = 2114;
    v15 = invalidatedCopy;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: HDMaintenanceWorkCoordinatorSuspensionAssertion released. (%{public}@). MWC %{public}@ suspended.", &v12, 0x20u);
  }

  if (!self->_suspended)
  {
    [(HDMaintenanceWorkCoordinator *)self _lock_considerStartingNextPendingOperation];
  }

  os_unfair_lock_unlock(&self->_lock);
  [(HDMaintenanceWorkCoordinator *)self didChangeValueForKey:@"suspended"];
}

- (id)diagnosticDescription
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  if ([(NSMutableSet *)self->_activeOperations count])
  {
    v4 = "ACTIVE";
  }

  else
  {
    v4 = "quiescent";
  }

  v5 = [v3 initWithFormat:@"%s (%ld pending)", v4, -[NSMutableArray count](self->_pendingLockingOperations, "count") + -[NSMutableArray count](self->_pendingOperations, "count")];
  if (self->_suspended)
  {
    v6 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"_HDMaintenanceWorkCoordinatorSuspensionAssertion"];;
    v7 = [v6 hk_map:&__block_literal_global_131];
    allObjects = [v7 allObjects];
    v9 = [allObjects componentsJoinedByString:{@", "}];

    [v5 appendFormat:@" SUSPENDED (%@)", v9];
  }

  if ([(NSMutableSet *)self->_activeOperations count])
  {
    [v5 appendFormat:@"\n\tACTIVE (%ld):", -[NSMutableSet count](self->_activeOperations, "count")];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = self->_activeOperations;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v5 appendFormat:@"\n\t\t**: %@", *(*(&v24 + 1) + 8 * i)];
        }

        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }
  }

  if ([(NSMutableArray *)self->_pendingOperations count])
  {
    [v5 appendFormat:@"\n\tPending (%ld):", -[NSMutableArray count](self->_pendingOperations, "count")];
    if ([(NSMutableArray *)self->_pendingOperations count])
    {
      v15 = 0;
      do
      {
        v16 = v15 + 1;
        v17 = [(NSMutableArray *)self->_pendingOperations objectAtIndexedSubscript:?];
        [v5 appendFormat:@"\n\t\t%2ld: %@", v16, v17];

        v18 = [(NSMutableArray *)self->_pendingOperations count];
        v15 = v16;
      }

      while (v16 < v18);
    }
  }

  if ([(NSMutableArray *)self->_pendingLockingOperations count])
  {
    [v5 appendFormat:@"\n\tPendingLocking (%ld):", -[NSMutableArray count](self->_pendingLockingOperations, "count")];
    if ([(NSMutableArray *)self->_pendingLockingOperations count])
    {
      v19 = 0;
      do
      {
        v20 = v19 + 1;
        v21 = [(NSMutableArray *)self->_pendingLockingOperations objectAtIndexedSubscript:?];
        [v5 appendFormat:@"\n\t\t%2ld: %@", v20, v21];

        v22 = [(NSMutableArray *)self->_pendingLockingOperations count];
        v19 = v20;
      }

      while (v20 < v22);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end