@interface BLSHOnSystemSleepAction
+ (id)actionWithIdentifier:(id)identifier delegate:(id)delegate;
+ (id)actionWithIdentifier:(id)identifier delegate:(id)delegate osInterfaceProvider:(id)provider;
- (BLSHOnSystemSleepAction)initWithIdentifier:(id)identifier delegate:(id)delegate osInterfaceProvider:(id)provider;
- (NSString)description;
- (int64_t)state;
- (void)actionCompleted;
- (void)install;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result;
- (void)systemWillWakeForReason:(id)reason;
- (void)uninstall;
@end

@implementation BLSHOnSystemSleepAction

- (int64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state == 2)
  {
    systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
    if ([systemSleepMonitor isAwakeOrAbortingSleep])
    {
      self->_lock_state = 0;
      v5 = bls_backlight_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        identifier = self->_identifier;
        v8 = 134218242;
        selfCopy = self;
        v10 = 2114;
        v11 = identifier;
        _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "%p:%{public}@ sleep action state now waiting (idle), system activity likely aborted sleep", &v8, 0x16u);
      }

      lock_state = 0;
    }

    else
    {
      lock_state = 2;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return lock_state;
}

+ (id)actionWithIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v9 = +[BLSHBacklightOSInterfaceProvider sharedProvider];
  if (!v9)
  {
    [BLSHOnSystemSleepAction actionWithIdentifier:a2 delegate:self];
  }

  v10 = v9;
  v11 = [self actionWithIdentifier:identifierCopy delegate:delegateCopy osInterfaceProvider:v9];

  return v11;
}

+ (id)actionWithIdentifier:(id)identifier delegate:(id)delegate osInterfaceProvider:(id)provider
{
  providerCopy = provider;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithIdentifier:identifierCopy delegate:delegateCopy osInterfaceProvider:providerCopy];

  return v11;
}

- (BLSHOnSystemSleepAction)initWithIdentifier:(id)identifier delegate:(id)delegate osInterfaceProvider:(id)provider
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = BLSHOnSystemSleepAction;
  v12 = [(BLSHOnSystemSleepAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_osInterfaceProvider, provider);
    v13->_lock_state = 0;
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  build = [v3 build];

  return build;
}

- (void)install
{
  systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  [systemSleepMonitor addObserver:self];
  if ([systemSleepMonitor isSleepImminent])
  {
    v4 = bls_backlight_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BLSHOnSystemSleepAction install];
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    osInterfaceProvider = self->_osInterfaceProvider;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - install when about to sleep", self->_identifier];
    v15 = [(BLSHOSInterfaceProviding *)osInterfaceProvider createSystemActivityAssertionWithIdentifier:v6 configurator:&__block_literal_global_1];

    v7 = mach_continuous_time();
    v8 = v11[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __34__BLSHOnSystemSleepAction_install__block_invoke_2;
    v9[3] = &unk_27841E970;
    v9[5] = &v10;
    v9[6] = v7;
    v9[4] = self;
    [v8 acquireWithTimeout:v9 handler:0.0];
    _Block_object_dispose(&v10, 8);
  }
}

void __34__BLSHOnSystemSleepAction_install__block_invoke_2(void *a1, int a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = bls_backlight_log();
  v10 = v9;
  if (a2)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_FAULT;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = a1[4];
    v13 = *(v12 + 56);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v17 = 134219010;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    v21 = 2114;
    v22 = v8;
    v23 = 2048;
    v24 = v14;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_21FD11000, v10, v11, "%p:%{public}@ install sleep action system activity assertion callback details:%{public}@ elapsed:%.4lfs error:%{public}@", &v17, 0x34u);
  }

  [*(*(a1[5] + 8) + 40) invalidate];
  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;
}

- (void)uninstall
{
  systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  [systemSleepMonitor removeObserver:self];
}

- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result
{
  v37 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  resultCopy = result;
  isAwakeOrAbortingSleep = [monitorCopy isAwakeOrAbortingSleep];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  v11 = bls_backlight_log();
  v12 = v11;
  if (lock_state)
  {
    v13 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v13))
  {
    v14 = self->_lock_state;
    identifier = self->_identifier;
    v16 = @"Idle";
    if (v14 == 1)
    {
      v16 = @"Performing";
    }

    if (v14 == 2)
    {
      v17 = @"Completed";
    }

    else
    {
      v17 = v16;
    }

    v25 = a2;
    v18 = v17;
    aggregateState = [monitorCopy aggregateState];
    *buf = 134218754;
    selfCopy = self;
    v31 = 2114;
    v32 = identifier;
    v33 = 2114;
    v34 = v18;
    v35 = 2114;
    v36 = aggregateState;
    _os_log_impl(&dword_21FD11000, v12, v13, "%p:%{public}@ sleepRequested state:%{public}@ %{public}@ ", buf, 0x2Au);

    a2 = v25;
  }

  BSContinuousMachTimeNow();
  self->_lock_sleepRequestedTime = v20;
  if ((lock_state != 0) | isAwakeOrAbortingSleep & 1)
  {
    os_unfair_lock_unlock(&self->_lock);
    v21 = resultCopy[2](resultCopy, 1, 0);
  }

  else
  {
    if (self->_lock_proceedWithSleepBlock)
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:a2 sleepRequestedWithResult:self];
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__BLSHOnSystemSleepAction_systemSleepMonitor_sleepRequestedWithResult___block_invoke;
    v27[3] = &unk_27841E998;
    v28 = resultCopy;
    v22 = MEMORY[0x223D70730](v27);
    lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
    self->_lock_proceedWithSleepBlock = v22;

    self->_lock_state = 1;
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __71__BLSHOnSystemSleepAction_systemSleepMonitor_sleepRequestedWithResult___block_invoke_2;
    v26[3] = &unk_27841E650;
    v26[4] = self;
    [WeakRetained systemSleepAction:self performWithCompletion:v26];
  }
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  monitorCopy = monitor;
  completionCopy = completion;
  isAwakeOrAbortingSleep = [monitorCopy isAwakeOrAbortingSleep];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  v11 = bls_backlight_log();
  v12 = v11;
  if (lock_state == 2)
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v13 = 16 * (lock_state != 0);
  }

  if (os_log_type_enabled(v11, v13))
  {
    v14 = isAwakeOrAbortingSleep;
    v15 = a2;
    v16 = self->_lock_state;
    identifier = self->_identifier;
    v18 = @"Idle";
    if (v16 == 1)
    {
      v18 = @"Performing";
    }

    if (v16 == 2)
    {
      v19 = @"Completed";
    }

    else
    {
      v19 = v18;
    }

    v20 = v19;
    [monitorCopy aggregateState];
    v21 = v28 = monitorCopy;
    *buf = 134218754;
    selfCopy = self;
    v34 = 2114;
    v35 = identifier;
    a2 = v15;
    isAwakeOrAbortingSleep = v14;
    v36 = 2114;
    v37 = v20;
    v38 = 2114;
    v39 = v21;
    _os_log_impl(&dword_21FD11000, v12, v13, "%p:%{public}@ prepareForSleep state:%{public}@ %{public}@", buf, 0x2Au);

    monitorCopy = v28;
  }

  v22 = MEMORY[0x223D70730](self->_lock_proceedWithSleepBlock);
  lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = 0;

  if (v22)
  {
    v24 = bls_backlight_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:prepareForSleepWithCompletion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v22);
  }

  if (lock_state == 2)
  {
    if (self->_lock_proceedWithSleepBlock)
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:a2 prepareForSleepWithCompletion:self];
    }

    goto LABEL_19;
  }

  if (isAwakeOrAbortingSleep)
  {
LABEL_19:
    os_unfair_lock_unlock(&self->_lock);
    dispatch_async(MEMORY[0x277D85CD0], completionCopy);
    goto LABEL_20;
  }

  if (!lock_state)
  {
    self->_lock_state = 1;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __76__BLSHOnSystemSleepAction_systemSleepMonitor_prepareForSleepWithCompletion___block_invoke;
  v30[3] = &unk_27841E998;
  v31 = completionCopy;
  v25 = MEMORY[0x223D70730](v30);
  v26 = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = v25;

  os_unfair_lock_unlock(&self->_lock);
  if (!lock_state)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __76__BLSHOnSystemSleepAction_systemSleepMonitor_prepareForSleepWithCompletion___block_invoke_2;
    v29[3] = &unk_27841E650;
    v29[4] = self;
    [WeakRetained systemSleepAction:self performWithCompletion:v29];
  }

LABEL_20:
}

- (void)systemWillWakeForReason:(id)reason
{
  v30 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x223D70730](self->_lock_proceedWithSleepBlock);
  lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = 0;

  lock_state = self->_lock_state;
  v8 = bls_backlight_log();
  v9 = v8;
  if (lock_state == 2)
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v10 = 16 * (lock_state != 0);
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = self->_lock_state;
    identifier = self->_identifier;
    v13 = @"Idle";
    if (v11 == 1)
    {
      v13 = @"Performing";
    }

    if (v11 == 2)
    {
      v14 = @"Completed";
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;
    systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
    aggregateState = [systemSleepMonitor aggregateState];
    v20 = 134219010;
    selfCopy = self;
    v22 = 2114;
    v23 = identifier;
    v24 = 2114;
    v25 = reasonCopy;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = aggregateState;
    _os_log_impl(&dword_21FD11000, v9, v10, "%p:%{public}@ systemWillWakeForReason%{public}@ state:%{public}@ %{public}@", &v20, 0x34u);
  }

  self->_lock_state = 0;
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemSleepAction:self systemWillWakeForReason:reasonCopy];

  if (v5)
  {
    v19 = bls_backlight_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:prepareForSleepWithCompletion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)actionCompleted
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  v4 = MEMORY[0x223D70730](self->_lock_proceedWithSleepBlock);
  lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = 0;

  v6 = bls_backlight_log();
  v7 = v6;
  if (lock_state == 1)
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = self->_lock_state;
    identifier = self->_identifier;
    v11 = @"Idle";
    if (v9 == 1)
    {
      v11 = @"Performing";
    }

    if (v9 == 2)
    {
      v12 = @"Completed";
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
    v14 = MEMORY[0x223D70730](v4);
    systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
    aggregateState = [systemSleepMonitor aggregateState];
    v17 = 134219010;
    selfCopy = self;
    v19 = 2114;
    v20 = identifier;
    v21 = 2114;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    v25 = 2114;
    v26 = aggregateState;
    _os_log_impl(&dword_21FD11000, v7, v8, "%p:%{public}@ actionCompleted state:%{public}@ proceedWithSleepBlock=%p %{public}@", &v17, 0x34u);
  }

  if (lock_state == 1)
  {
    self->_lock_state = 2;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v4[2](v4);
  }
}

+ (void)actionWithIdentifier:(const char *)a1 delegate:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"sharedProvider != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)systemSleepMonitor:(const char *)a1 sleepRequestedWithResult:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_proceedWithSleepBlock == nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)systemSleepMonitor:(const char *)a1 prepareForSleepWithCompletion:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_proceedWithSleepBlock == nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end