@interface BLSHSystemWakeWaiter
+ (id)waiterWithIdentifier:(id)identifier osInterfaceProvider:(id)provider;
- (BLSHSystemWakeWaiter)initWithIdentifier:(id)identifier osInterfaceProvider:(id)provider;
- (void)_lock_invalidate;
- (void)dealloc;
- (void)invalidate;
- (void)runWhenAwakeWithCompletion:(id)completion;
- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep;
@end

@implementation BLSHSystemWakeWaiter

+ (id)waiterWithIdentifier:(id)identifier osInterfaceProvider:(id)provider
{
  providerCopy = provider;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy osInterfaceProvider:providerCopy];

  return v8;
}

- (BLSHSystemWakeWaiter)initWithIdentifier:(id)identifier osInterfaceProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = BLSHSystemWakeWaiter;
  v9 = [(BLSHSystemWakeWaiter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_osInterfaceProvider, provider);
  }

  return v10;
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
    v9 = @"BLSHSystemWakeWaiter.m";
    v10 = 1024;
    v11 = 47;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)runWhenAwakeWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = self->_osInterfaceProvider;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_waiting)
  {
    [(BLSHSystemWakeWaiter *)self runWhenAwakeWithCompletion:a2];
  }

  systemSleepMonitor = [(BLSHOSInterfaceProviding *)v6 systemSleepMonitor];
  if ([systemSleepMonitor isAwakeOrAbortingSleep] && (objc_msgSend(systemSleepMonitor, "hasSleepBeenRequested") & 1) == 0)
  {
    v12 = bls_backlight_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = identifier;
      _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_DEBUG, "%@:%@ asked to run block while system is awake, running now.", &v14, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy);
  }

  else
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_identifier;
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ asked to run block while system is asleep, waiting.", &v14, 0x16u);
    }

    self->_lock_waitStartTimestamp = mach_continuous_time();
    [systemSleepMonitor addObserver:self];
    self->_lock_waiting = 1;
    v10 = MEMORY[0x223D70730](completionCopy);
    lock_completion = self->_lock_completion;
    self->_lock_completion = v10;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated || !self->_lock_completion)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      if (self->_lock_invalidated)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = MEMORY[0x223D70730](self->_lock_completion);
      v12 = 138413058;
      selfCopy2 = self;
      v14 = 2112;
      v15 = identifier;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEBUG, "%@:%@ system did wake but waiter was invalidated (%@) or completion is nil (%@)", &v12, 0x2Au);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_didWakeTimestamp = mach_continuous_time();
    v4 = bls_backlight_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_identifier;
      BSTimeDifferenceFromMachTimeToMachTime();
      v12 = 138412802;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&dword_21FD11000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ system awake, running pending block, waited:%.4lfs.", &v12, 0x20u);
    }

    v7 = MEMORY[0x223D70730](self->_lock_completion);
    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      v7[2](v7);
    }
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(BLSHSystemWakeWaiter *)self _lock_invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_invalidate
{
  systemSleepMonitor = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  [systemSleepMonitor removeObserver:self];
  self->_lock_invalidated = 1;
  lock_completion = self->_lock_completion;
  self->_lock_completion = 0;
}

- (void)runWhenAwakeWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@ already waiting", a1, *(a1 + 8)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHSystemWakeWaiter.m";
    v10 = 1024;
    v11 = 55;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end