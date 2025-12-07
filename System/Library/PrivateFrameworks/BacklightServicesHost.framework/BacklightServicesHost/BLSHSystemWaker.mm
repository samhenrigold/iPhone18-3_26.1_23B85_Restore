@interface BLSHSystemWaker
+ (id)sharedSystemActivityFactory;
+ (id)wakerWithIdentifier:(id)identifier osInterfaceProvider:(id)provider;
- (BLSHSystemWaker)initWithIdentifier:(id)identifier osInterfaceProvider:(id)provider;
- (NSString)description;
- (void)callCompletionForReason:(id)reason;
- (void)dealloc;
- (void)invalidate;
- (void)startWatchdogTimer;
- (void)wakeWithCompletion:(id)completion;
- (void)watchdogTimerFired:(id)fired;
@end

@implementation BLSHSystemWaker

+ (id)sharedSystemActivityFactory
{
  if (sharedSystemActivityFactory_onceToken != -1)
  {
    +[BLSHSystemWaker sharedSystemActivityFactory];
  }

  v3 = sharedSystemActivityFactory___aggregatedAssertionFactory;

  return v3;
}

uint64_t __46__BLSHSystemWaker_sharedSystemActivityFactory__block_invoke()
{
  v0 = objc_alloc_init(BLSHAggregatedSystemActivityAssertionFactory);
  v1 = sharedSystemActivityFactory___aggregatedAssertionFactory;
  sharedSystemActivityFactory___aggregatedAssertionFactory = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)wakerWithIdentifier:(id)identifier osInterfaceProvider:(id)provider
{
  providerCopy = provider;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy osInterfaceProvider:providerCopy];

  return v8;
}

- (BLSHSystemWaker)initWithIdentifier:(id)identifier osInterfaceProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = BLSHSystemWaker;
  v8 = [(BLSHSystemWaker *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"waking system for: %@", identifierCopy];
    identifier = v9->_identifier;
    v9->_identifier = identifierCopy;

    objc_storeStrong(&v9->_osInterfaceProvider, provider);
    v12 = +[BLSHSystemWaker sharedSystemActivityFactory];
    objc_initWeak(&location, v9);
    objc_copyWeak(&v14, &location);
    v9->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v9;
}

uint64_t __58__BLSHSystemWaker_initWithIdentifier_osInterfaceProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained description];
  v4 = BLSStateDataWithTitleDescriptionAndHints();

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"must invalidate %@ before dealloc", self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHSystemWaker.m";
    v10 = 1024;
    v11 = 66;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (NSString)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __30__BLSHSystemWaker_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

id __30__BLSHSystemWaker_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"id"];
  mach_continuous_time();
  v3 = *(a1 + 32);
  BSTimeDifferenceFromMachTimeToMachTime();
  v4 = [v3 appendTimeInterval:@"elapsed" withName:0 decomposeUnits:?];
  v5 = *(a1 + 40);
  if (*(v5 + 81) == 1)
  {
    v6 = *(a1 + 32);
    BSTimeDifferenceFromMachTimeToMachTime();
    v7 = [v6 appendTimeInterval:@"sinceCompletionCalled" withName:0 decomposeUnits:?];
    v5 = *(a1 + 40);
  }

  result = [*(v5 + 24) isActive];
  if (result)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"systemActivity"];
  }

  return result;
}

- (void)wakeWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = self->_osInterfaceProvider;
  v7 = self->_identifier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_waking)
  {
    [(BLSHSystemWaker *)&self->_identifier wakeWithCompletion:a2];
  }

  self->_lock_waking = 1;
  v8 = MEMORY[0x223D70730](completionCopy);
  lock_completion = self->_lock_completion;
  self->_lock_completion = v8;

  v10 = mach_continuous_time();
  self->_lock_waitStartTimestamp = v10;
  objc_initWeak(&location, self);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__13;
  v29 = __Block_byref_object_dispose__13;
  v11 = +[BLSHSystemWaker sharedSystemActivityFactory];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __38__BLSHSystemWaker_wakeWithCompletion___block_invoke;
  v23[3] = &unk_278420B00;
  v12 = v6;
  v24 = v12;
  v13 = [v11 createAggregatedSystemActivityAssertionWithIdentifier:v7 configurator:v23];
  lock_systemActivity = self->_lock_systemActivity;
  self->_lock_systemActivity = v13;

  v30 = v13;
  os_unfair_lock_unlock(&self->_lock);
  v15 = v26[5];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__BLSHSystemWaker_wakeWithCompletion___block_invoke_2;
  v18[3] = &unk_278420B28;
  objc_copyWeak(v22, &location);
  v16 = v12;
  v19 = v16;
  v17 = v7;
  v22[1] = v10;
  v20 = v17;
  v21 = &v25;
  [v15 acquireWithTimeout:v18 handler:0.0];

  objc_destroyWeak(v22);
  _Block_object_dispose(&v25, 8);

  objc_destroyWeak(&location);
}

void __38__BLSHSystemWaker_wakeWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = [*(a1 + 32) systemSleepMonitor];
    v11 = bls_backlight_log();
    if (a2)
    {
      if ([v8 afterPendingSleepWasAlreadyInitiated])
      {
        v12 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v12 = OS_LOG_TYPE_DEBUG;
      }
    }

    else
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    if (os_log_type_enabled(v11, v12))
    {
      v15 = *(a1 + 40);
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      v17 = v16;
      v18 = [v10 aggregateState];
      v19 = [v7 bls_loggingString];
      v20 = 134219010;
      v21 = WeakRetained;
      v22 = 2114;
      v23 = v15;
      v24 = 2048;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      _os_log_impl(&dword_21FD11000, v11, v12, "%p system waker activity acquired:%{public}@ elapsed:%.4lfs %{public}@ error:%{public}@", &v20, 0x34u);
    }

    [WeakRetained startWatchdogTimer];
    [WeakRetained callCompletionForReason:@"systemActivityActive"];
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) invalidate];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

- (void)startWatchdogTimer
{
  os_unfair_lock_lock(&self->_lock);
  objc_initWeak(&location, self);
  [(BSTimerScheduleQuerying *)self->_lock_wakeWatchdogTimer invalidate];
  osInterfaceProvider = self->_osInterfaceProvider;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"watchdog for: %@", self->_identifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__BLSHSystemWaker_startWatchdogTimer__block_invoke;
  v7[3] = &unk_27841F898;
  objc_copyWeak(&v8, &location);
  v5 = [(BLSHOSInterfaceProviding *)osInterfaceProvider scheduledTimerWithIdentifier:v4 interval:v7 leewayInterval:90.0 handler:30.0];
  lock_wakeWatchdogTimer = self->_lock_wakeWatchdogTimer;
  self->_lock_wakeWatchdogTimer = v5;

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __37__BLSHSystemWaker_startWatchdogTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained watchdogTimerFired:v3];
  [v3 invalidate];
}

- (void)callCompletionForReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  v6 = MEMORY[0x223D70730](self->_lock_completion);
  lock_completion = self->_lock_completion;
  self->_lock_completion = 0;

  v8 = self->_lock_systemActivity;
  self->_lock_didWakeTimestamp = mach_continuous_time();
  self->_lock_didCallCompletion = 1;
  os_unfair_lock_unlock(&self->_lock);
  systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  v10 = systemSleepMonitor;
  if (!lock_invalidated && v6)
  {
    isAwakeOrAbortingSleep = [systemSleepMonitor isAwakeOrAbortingSleep];
    v12 = bls_backlight_log();
    v13 = v12;
    if (isAwakeOrAbortingSleep)
    {
      v14 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v14 = OS_LOG_TYPE_FAULT;
    }

    if (os_log_type_enabled(v12, v14))
    {
      identifier = self->_identifier;
      BSTimeDifferenceFromMachTimeToMachTime();
      v17 = v16;
      aggregateState = [v10 aggregateState];
      v19 = 134219266;
      selfCopy = self;
      v21 = 2114;
      v22 = identifier;
      v23 = 2114;
      v24 = reasonCopy;
      v25 = 2048;
      v26 = v17;
      v27 = 2114;
      v28 = aggregateState;
      v29 = 1024;
      isActive = [(BLSHSystemActivityAsserting *)v8 isActive];
      _os_log_impl(&dword_21FD11000, v13, v14, "%p waited for system awake :%{public}@ details:%{public}@ elapsed:%.4lfs %{public}@ activityActive:%{BOOL}u", &v19, 0x3Au);
    }

    v6[2](v6);
  }
}

- (void)watchdogTimerFired:(id)fired
{
  v44 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  v6 = self->_identifier;
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  v8 = self->_lock_systemActivity;
  if (!lock_invalidated && (lock_wakeWatchdogTimer = self->_lock_wakeWatchdogTimer, lock_wakeWatchdogTimer == firedCopy))
  {
    self->_lock_wakeWatchdogTimer = 0;

    lock_systemActivity = self->_lock_systemActivity;
    self->_lock_systemActivity = 0;

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  lock_didCallCompletion = self->_lock_didCallCompletion;
  isActive = [(BLSHSystemActivityAsserting *)v8 isActive];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v14 = v13;
    if (lock_didCallCompletion)
    {
      BSTimeDifferenceFromMachTimeToMachTime();
      v16 = v15;
      if (os_variant_has_internal_diagnostics())
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system waker not invalidated after elapsed:%.4lfs sinceCompletionCalled:%.4lfs systemActivityIsActive:%u identifier:%@", self, v14, v16, isActive, v6];
        BLSHRecordCriticalAssertFailure(v17, 1, 0);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __38__BLSHSystemWaker_watchdogTimerFired___block_invoke;
        v30[3] = &unk_278420B50;
        v30[4] = self;
        v32 = v14;
        v33 = v16;
        v35 = isActive;
        v31 = v6;
        v34 = a2;
        v18 = MEMORY[0x223D70730](v30);
        if (BLSHIsUnitTestRunning())
        {
          v18[2](v18);
        }

        else
        {
          v23 = dispatch_time(0, 1000000000);
          dispatch_after(v23, MEMORY[0x277D85CD0], v18);
        }
      }

      else
      {
        v22 = bls_backlight_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 134219010;
          selfCopy2 = self;
          v38 = 2048;
          v39 = v14;
          v40 = 2048;
          *v41 = v16;
          *&v41[8] = 1024;
          *&v41[10] = isActive;
          v42 = 2114;
          v43 = v6;
          _os_log_fault_impl(&dword_21FD11000, v22, OS_LOG_TYPE_FAULT, "%p system waker not invalidated after elapsed:%.4lfs sinceCompletionCalled:%.4lfs systemActivityIsActive:%{BOOL}u identifier:%{public}@", buf, 0x30u);
        }
      }
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system waker did not wake after elapsed:%.4lfs systemActivityIsActive:%u identifier:%@", self, v14, isActive, v6];
        BLSHRecordCriticalAssertFailure(v19, 1, 0);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __38__BLSHSystemWaker_watchdogTimerFired___block_invoke_107;
        v25[3] = &unk_278420B78;
        v25[4] = self;
        v27 = v14;
        v29 = isActive;
        v26 = v6;
        v28 = a2;
        v20 = MEMORY[0x223D70730](v25);
        if (BLSHIsUnitTestRunning())
        {
          v20[2](v20);
        }

        else
        {
          v24 = dispatch_time(0, 1000000000);
          dispatch_after(v24, MEMORY[0x277D85CD0], v20);
        }
      }

      else
      {
        v19 = bls_backlight_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218754;
          selfCopy2 = self;
          v38 = 2048;
          v39 = v14;
          v40 = 1024;
          *v41 = isActive;
          *&v41[4] = 2114;
          *&v41[6] = v6;
          _os_log_fault_impl(&dword_21FD11000, v19, OS_LOG_TYPE_FAULT, "%p system waker did not wake after elapsed:%.4lfs systemActivityIsActive:%{BOOL}u identifier:%{public}@", buf, 0x26u);
        }
      }

      [(BLSHSystemWaker *)self callCompletionForReason:@"watchdogFired"];
    }

    [(BLSHSystemActivityAsserting *)v8 invalidate];
  }
}

void __38__BLSHSystemWaker_watchdogTimerFired___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system waker not invalidated after elapsed:%.4lfs sinceCompletionCalled:%.4lfs systemActivityIsActive:%u identifier:%@", *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 64));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    *buf = 138544642;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"BLSHSystemWaker.m";
    v16 = 1024;
    v17 = 199;
    v18 = 2114;
    v19 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __38__BLSHSystemWaker_watchdogTimerFired___block_invoke_107(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p system waker did not wake after elapsed:%.4lfs systemActivityIsActive:%u identifier:%@", *(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 56));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    *buf = 138544642;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"BLSHSystemWaker.m";
    v16 = 1024;
    v17 = 205;
    v18 = 2114;
    v19 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  lock_systemActivity = self->_lock_systemActivity;
  self->_lock_systemActivity = 0;
  v6 = lock_systemActivity;

  lock_wakeWatchdogTimer = self->_lock_wakeWatchdogTimer;
  self->_lock_wakeWatchdogTimer = 0;
  v5 = lock_wakeWatchdogTimer;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHSystemActivityAsserting *)v6 invalidate];
  [(BSTimerScheduleQuerying *)v5 invalidate];
}

- (void)wakeWithCompletion:(const char *)a3 .cold.1(void *a1, uint64_t a2, const char *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@ already waking", a2, *a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a3);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_0();
    v11 = @"BLSHSystemWaker.m";
    v12 = 1024;
    v13 = 107;
    v14 = v8;
    v15 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v9 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end