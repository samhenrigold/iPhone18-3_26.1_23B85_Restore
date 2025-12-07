@interface SWSystemSleepMonitorProvider
- (SWSystemSleepMonitorProvider)init;
- (void)allowPowerChange:(int64_t)change;
- (void)cancelPowerChange:(int64_t)change;
- (void)dealloc;
- (void)invalidate;
- (void)registerForSystemPowerOnQueue:(id)queue withDelegate:(id)delegate;
@end

@implementation SWSystemSleepMonitorProvider

- (SWSystemSleepMonitorProvider)init
{
  v3.receiver = self;
  v3.super_class = SWSystemSleepMonitorProvider;
  result = [(SWSystemSleepMonitorProvider *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)registerForSystemPowerOnQueue:(id)queue withDelegate:(id)delegate
{
  v37 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_registered)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_registered"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      selfCopy3 = v18;
      v29 = 2114;
      v30 = v20;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"SWSystemSleepMonitor.m";
      v35 = 1024;
      *v36 = 557;
      *&v36[4] = 2114;
      *&v36[6] = v17;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C07CLL);
  }

  objc_storeStrong(&self->_lock_queue, queue);
  self->_lock_registered = 1;
  v10 = [MEMORY[0x277CF0D30] referenceWithObject:delegateCopy];
  lock_weakDelegateWrapper = self->_lock_weakDelegateWrapper;
  self->_lock_weakDelegateWrapper = v10;

  v12 = IORegisterForSystemPower(self->_lock_weakDelegateWrapper, &self->_lock_systemPowerPort, SWSystemPowerCallback, &self->_lock_systemPowerNotifier);
  self->_lock_systemPowerConnection = v12;
  if (!v12)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_systemPowerConnection != IO_OBJECT_NULL"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      selfCopy3 = v23;
      v29 = 2114;
      v30 = v25;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"SWSystemSleepMonitor.m";
      v35 = 1024;
      *v36 = 567;
      *&v36[4] = 2114;
      *&v36[6] = v22;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C180);
  }

  IONotificationPortSetDispatchQueue(self->_lock_systemPowerPort, queueCopy);
  v13 = SWLogPower();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    lock_systemPowerConnection = self->_lock_systemPowerConnection;
    lock_systemPowerPort = self->_lock_systemPowerPort;
    lock_systemPowerNotifier = self->_lock_systemPowerNotifier;
    *buf = 134219264;
    selfCopy3 = self;
    v29 = 2048;
    v30 = queueCopy;
    v31 = 2048;
    selfCopy2 = delegateCopy;
    v33 = 2048;
    v34 = lock_systemPowerConnection;
    v35 = 2048;
    *v36 = lock_systemPowerPort;
    *&v36[8] = 2048;
    *&v36[10] = lock_systemPowerNotifier;
    _os_log_debug_impl(&dword_26C657000, v13, OS_LOG_TYPE_DEBUG, "%p registerForSystemPowerOnQueue:%p withDelegate:%p -- connection:%llu port:%llu notifier:%llu", buf, 0x3Eu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v16 = v8;
      v17 = 2114;
      v18 = v10;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"SWSystemSleepMonitor.m";
      v23 = 1024;
      v24 = 583;
      v25 = 2114;
      v26 = v7;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C3F4);
  }

  v4 = self->_lock_weakDelegateWrapper;
  os_unfair_lock_unlock(&self->_lock);
  lock_queue = self->_lock_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SWSystemSleepMonitorProvider_dealloc__block_invoke;
  block[3] = &unk_279D430F8;
  v14 = v4;
  v6 = v4;
  dispatch_async(lock_queue, block);

  v12.receiver = self;
  v12.super_class = SWSystemSleepMonitorProvider;
  [(SWSystemSleepMonitorProvider *)&v12 dealloc];
}

- (void)invalidate
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  self->_lock_invalidated = 1;
  if (!lock_invalidated)
  {
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      lock_systemPowerConnection = self->_lock_systemPowerConnection;
      lock_systemPowerPort = self->_lock_systemPowerPort;
      lock_systemPowerNotifier = self->_lock_systemPowerNotifier;
      v12 = 134218752;
      selfCopy2 = self;
      v14 = 2048;
      v15 = lock_systemPowerConnection;
      v16 = 2048;
      v17 = lock_systemPowerPort;
      v18 = 2048;
      v19 = lock_systemPowerNotifier;
      _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p unregisterForSystemPower -- connection:%llu port:%llu notifier:%llu", &v12, 0x2Au);
    }

    IODeregisterForSystemPower(&self->_lock_systemPowerNotifier);
    IONotificationPortDestroy(self->_lock_systemPowerPort);
    IOServiceClose(self->_lock_systemPowerConnection);
    self->_lock_systemPowerConnection = 0;
    v5 = SWLogPower();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      object = [(BSZeroingWeakReference *)self->_lock_weakDelegateWrapper object];
      v8 = SWLogPower();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218240;
        selfCopy2 = self;
        v14 = 2048;
        v15 = object;
        _os_log_debug_impl(&dword_26C657000, v8, OS_LOG_TYPE_DEBUG, "%p invalidated sleep monitor: %p", &v12, 0x16u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)allowPowerChange:(int64_t)change
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"SWSystemSleepMonitor.m";
      v19 = 1024;
      v20 = 614;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C7B8);
  }

  IOAllowPowerChange(self->_lock_systemPowerConnection, change);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancelPowerChange:(int64_t)change
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"SWSystemSleepMonitor.m";
      v19 = 1024;
      v20 = 621;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C980);
  }

  IOCancelPowerChange(self->_lock_systemPowerConnection, change);

  os_unfair_lock_unlock(&self->_lock);
}

@end