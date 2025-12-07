@interface SWPreventSystemSleepAssertion
+ (id)sharedHighPriorityQueue;
- (BOOL)isActive;
- (SWPreventSystemSleepAssertion)initWithIdentifier:(id)identifier;
- (void)acquireWithTimeout:(double)timeout handler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SWPreventSystemSleepAssertion

+ (id)sharedHighPriorityQueue
{
  if (qword_280D3F930 != -1)
  {
    dispatch_once(&qword_280D3F930, &__block_literal_global_2);
  }

  v3 = qword_280D3F928;

  return v3;
}

uint64_t __56__SWPreventSystemSleepAssertion_sharedHighPriorityQueue__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("SWPreventSystemSleepAssertion workloop");
  v1 = _MergedGlobals_2;
  _MergedGlobals_2 = inactive;

  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(_MergedGlobals_2);
  qword_280D3F928 = dispatch_queue_create_with_target_V2("SWPreventSystemSleepAssertionQueue", 0, _MergedGlobals_2);

  return MEMORY[0x2821F96F8]();
}

- (SWPreventSystemSleepAssertion)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SWPreventSystemSleepAssertion;
  v5 = [(SWPreventSystemSleepAssertion *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    *&v5->_lock_assertionID = 0;
    v5->_lock_timeoutTime = 0.0;
    v5->_invalidated = 0;
    v5->_lock_state = 0;
  }

  return v5;
}

- (void)acquireWithTimeout:(double)timeout handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state)
  {
    lock_state = [MEMORY[0x277CCACA8] stringWithFormat:@"SWPreventSystemSleepAssertion:%p id:%@ state:%u can only be acquired once", self, self->_identifier, lock_state];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      v23 = 2048;
      selfCopy = self;
      v25 = 2114;
      v26 = @"SWPreventSystemSleepAssertion.m";
      v27 = 1024;
      v28 = 69;
      v29 = 2114;
      v30 = lock_state;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = lock_state;
    [lock_state UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C663080);
  }

  self->_lock_state = 1;
  os_unfair_lock_unlock(&self->_lock);
  v9 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SWPreventSystemSleepAssertion_acquireWithTimeout_handler___block_invoke;
  block[3] = &unk_279D43308;
  timeoutCopy = timeout;
  block[4] = self;
  v17 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

void __60__SWPreventSystemSleepAssertion_acquireWithTimeout_handler___block_invoke(uint64_t a1)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_23;
  }

  AssertionID = 0;
  if (v1 <= 0.0)
  {
    v7 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, *(v2 + 8), &AssertionID);
  }

  else
  {
    v24[0] = @"AssertType";
    v24[1] = @"AssertName";
    v4 = *(v2 + 8);
    v25[0] = @"NoIdleSleepAssertion";
    v25[1] = v4;
    v24[2] = @"TimeoutSeconds";
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:v1];
    v24[3] = @"TimeoutAction";
    v25[2] = v5;
    v25[3] = @"TimeoutActionRelease";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

    v7 = IOPMAssertionCreateWithProperties(v6, &AssertionID);
  }

  os_unfair_lock_lock((v2 + 20));
  v8 = *(v2 + 32);
  if (v8 != 3)
  {
    if (!v7)
    {
      *(v2 + 16) = AssertionID;
      *(v2 + 32) = 2;
      if (v1 > 0.0)
      {
        BSContinuousMachTimeNow();
        *(v2 + 24) = v1 + v12;
      }

      os_unfair_lock_unlock((v2 + 20));
      v9 = SWLogPower();
      v10 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = *(v2 + 8);
        *buf = 134218498;
        v19 = v2;
        v20 = 2114;
        v21 = v13;
        v22 = 1024;
        LODWORD(v23) = AssertionID;
        _os_log_impl(&dword_26C657000, v9, OS_LOG_TYPE_INFO, "%p power assertion taken identifier:%{public}@ id:%d", buf, 0x1Cu);
      }

      goto LABEL_12;
    }

    *(v2 + 32) = 3;
    os_unfair_lock_unlock((v2 + 20));
LABEL_9:
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = *(v2 + 8);
      *buf = 134218498;
      v19 = v2;
      v20 = 2048;
      v21 = v7;
      v22 = 2114;
      v23 = v16;
      _os_log_error_impl(&dword_26C657000, v9, OS_LOG_TYPE_ERROR, "%p error:%ld creating power assertion identifier:%{public}@", buf, 0x20u);
    }

    v10 = 0;
LABEL_12:

    v11 = v8 == 3;
    if (!v3)
    {
      v11 = 1;
    }

    if (!v11)
    {
      v3[2](v3, v10);
    }

    goto LABEL_23;
  }

  os_unfair_lock_unlock((v2 + 20));
  if (v7)
  {
    goto LABEL_9;
  }

  v14 = SWLogPower();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(v2 + 8);
    *buf = 134218498;
    v19 = v2;
    v20 = 2112;
    v21 = v15;
    v22 = 1024;
    LODWORD(v23) = AssertionID;
    _os_log_impl(&dword_26C657000, v14, OS_LOG_TYPE_DEFAULT, "%p power assertion take complete after invalidation, will release immediately, identifier:%@ id:%d", buf, 0x1Cu);
  }

  IOPMAssertionRelease(AssertionID);
LABEL_23:
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_assertionID)
  {
    if (self->_lock_timeoutTime == 0.0)
    {
      v4 = 1;
    }

    else
    {
      BSContinuousMachTimeNow();
      v4 = v3 < self->_lock_timeoutTime;
    }
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)invalidate
{
  v36 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_assertionID = self->_lock_assertionID;
  self->_lock_assertionID = 0;
  lock_state = self->_lock_state;
  self->_lock_state = 3;
  if (lock_assertionID)
  {
    if (self->_lock_timeoutTime == 0.0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      BSContinuousMachTimeNow();
      v7 = v6;
      lock_timeoutTime = self->_lock_timeoutTime;
      os_unfair_lock_unlock(&self->_lock);
      if (v7 >= lock_timeoutTime)
      {
        v9 = SWLogPower();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          identifier = self->_identifier;
          *buf = 134218498;
          selfCopy6 = self;
          v26 = 2114;
          v27 = identifier;
          v28 = 1024;
          LODWORD(selfCopy5) = lock_assertionID;
          _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p power assertion timed out; identifier:%{public}@ id:%d", buf, 0x1Cu);
        }

LABEL_14:

        v11 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __43__SWPreventSystemSleepAssertion_invalidate__block_invoke;
        block[3] = &__block_descriptor_36_e5_v8__0l;
        v23 = lock_assertionID;
        dispatch_async(v11, block);
LABEL_15:

        return;
      }
    }

    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = self->_identifier;
      *buf = 134218498;
      selfCopy6 = self;
      v26 = 2114;
      v27 = v14;
      v28 = 1024;
      LODWORD(selfCopy5) = lock_assertionID;
      _os_log_impl(&dword_26C657000, v9, OS_LOG_TYPE_INFO, "%p will invalidate power assertion; identifier:%{public}@ id:%d", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (lock_state <= 1)
  {
    if (lock_state)
    {
      if (lock_state != 1)
      {
        return;
      }

      v11 = SWLogPower();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v12 = self->_identifier;
      *buf = 134218242;
      selfCopy6 = self;
      v26 = 2114;
      v27 = v12;
      v13 = "%p invalidated power assertion during acquisition identifier:%{public}@";
    }

    else
    {
      v11 = SWLogPower();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v16 = self->_identifier;
      *buf = 134218242;
      selfCopy6 = self;
      v26 = 2114;
      v27 = v16;
      v13 = "%p invalidated power assertion before starting acquisition identifier:%{public}@";
    }

    goto LABEL_23;
  }

  if (lock_state == 2)
  {
    if (self->_lock_state == 2)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"SWPreventSystemSleepAssertion:%p id:%@ state:%u acquired but assertionID null before invalidation", self, self->_identifier, 2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        selfCopy6 = v18;
        v26 = 2114;
        v27 = v20;
        v28 = 2048;
        selfCopy5 = self;
        v30 = 2114;
        v31 = @"SWPreventSystemSleepAssertion.m";
        v32 = 1024;
        v33 = 177;
        v34 = 2114;
        v35 = v17;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v21 = v17;
      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C6638D0);
    }
  }

  else if (lock_state == 3)
  {
    v11 = SWLogPower();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    v15 = self->_identifier;
    *buf = 134218242;
    selfCopy6 = self;
    v26 = 2114;
    v27 = v15;
    v13 = "%p already invalidated power assertion identifier:%{public}@";
LABEL_23:
    _os_log_debug_impl(&dword_26C657000, v11, OS_LOG_TYPE_DEBUG, v13, buf, 0x16u);
    goto LABEL_15;
  }
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state != 3)
  {
    lock_state = [MEMORY[0x277CCACA8] stringWithFormat:@"SWPreventSystemSleepAssertion:%p id:%@ state:%u dealloced before invalidation", self, self->_identifier, lock_state];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"SWPreventSystemSleepAssertion.m";
      v19 = 1024;
      v20 = 188;
      v21 = 2114;
      v22 = lock_state;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = lock_state;
    [lock_state UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C663AA0);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10.receiver = self;
  v10.super_class = SWPreventSystemSleepAssertion;
  [(SWPreventSystemSleepAssertion *)&v10 dealloc];
}

@end