@interface SWScheduledSystemWake
- (BOOL)isScheduled;
- (NSString)description;
- (SWScheduledSystemWake)initWithIdentifier:(id)identifier;
- (double)wakeTime;
- (int64_t)leeway;
- (void)_cancelWakeAtDate:(void *)date identifier:;
- (void)cancelWake;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleWake:(double)wake leeway:(int64_t)leeway;
@end

@implementation SWScheduledSystemWake

- (SWScheduledSystemWake)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SWScheduledSystemWake;
  v6 = [(SWScheduledSystemWake *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p must invalidate before dealloc : %@", self, self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"SWScheduledSystemWake.m";
      v18 = 1024;
      v19 = 44;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C662100);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9.receiver = self;
  v9.super_class = SWScheduledSystemWake;
  [(SWScheduledSystemWake *)&v9 dealloc];
}

- (NSString)description
{
  mEMORY[0x277CF0BF0] = [MEMORY[0x277CF0BF0] sharedInstance];
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v4 appendString:self->_identifier withName:@"identifier"];
  v5 = [mEMORY[0x277CF0BF0] formatDateAsLongYMDHMSZPosixLocaleWithDate:self->_lock_wakeDate];
  [v4 appendString:v5 withName:@"wakeDate"];

  [(NSDate *)self->_lock_wakeDate timeIntervalSinceNow];
  v6 = [v4 appendTimeInterval:@"timeRemaining" withName:1 decomposeUnits:?];
  v7 = [v4 appendTimeInterval:@"leeway" withName:0 decomposeUnits:self->_lock_leeway];
  build = [v4 build];

  return build;
}

- (BOOL)isScheduled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_wakeDate != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)wakeTime
{
  os_unfair_lock_lock(&self->_lock);
  lock_wakeDate = self->_lock_wakeDate;
  if (lock_wakeDate)
  {
    [(NSDate *)lock_wakeDate timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)leeway
{
  os_unfair_lock_lock(&self->_lock);
  lock_wakeDate = self->_lock_wakeDate;
  if (lock_wakeDate)
  {
    [(NSDate *)lock_wakeDate timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)scheduleWake:(double)wake leeway:(int64_t)leeway
{
  v47 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p scheduled wake can not be rescheduled after invalidation : %@", self, self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      selfCopy3 = v26;
      v37 = 2114;
      selfCopy4 = v28;
      v39 = 2048;
      selfCopy = self;
      v41 = 2114;
      v42 = @"SWScheduledSystemWake.m";
      v43 = 1024;
      v44 = 84;
      v45 = 2114;
      v46 = v25;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v25;
    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C662718);
  }

  v8 = self->_lock_wakeDate;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:wake];
  lock_wakeDate = self->_lock_wakeDate;
  self->_lock_wakeDate = v9;

  self->_lock_leeway = leeway;
  v11 = self->_lock_wakeIdentifier;
  v12 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v16 = [v12 stringWithFormat:@"%@:%@", identifier, uUIDString];
  lock_wakeIdentifier = self->_lock_wakeIdentifier;
  self->_lock_wakeIdentifier = v16;

  v33[0] = @"scheduledby";
  v33[1] = @"time";
  v18 = self->_lock_wakeDate;
  v34[0] = self->_lock_wakeIdentifier;
  v34[1] = v18;
  v33[2] = @"leeway";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lock_leeway];
  v34[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v21 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SWScheduledSystemWake_scheduleWake_leeway___block_invoke;
  block[3] = &unk_279D43148;
  v22 = v20;
  v31 = v22;
  selfCopy2 = self;
  dispatch_async(v21, block);

  if (v8)
  {
    [(NSDate *)self->_lock_wakeDate timeIntervalSinceDate:v8];
    if (fabs(v23) < 1.0)
    {
      goto LABEL_7;
    }
  }

  v24 = SWLogTimer();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy3 = self;
    v37 = 2114;
    selfCopy4 = self;
    _os_log_impl(&dword_26C657000, v24, OS_LOG_TYPE_INFO, "%p scheduling system wake: %{public}@", buf, 0x16u);
  }

  if (v8)
  {
LABEL_7:
    [(SWScheduledSystemWake *)self _cancelWakeAtDate:v8 identifier:v11];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __45__SWScheduledSystemWake_scheduleWake_leeway___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (IOPMRequestSysWake())
  {
    v2 = SWLogTimer();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = 134218242;
      v6 = v3;
      v7 = 2114;
      v8 = v4;
      _os_log_error_impl(&dword_26C657000, v2, OS_LOG_TYPE_ERROR, "%p failed to request system wake:%{public}@", &v5, 0x16u);
    }
  }
}

- (void)_cancelWakeAtDate:(void *)date identifier:
{
  v5 = a2;
  dateCopy = date;
  if (self)
  {
    v7 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SWScheduledSystemWake__cancelWakeAtDate_identifier___block_invoke;
    block[3] = &unk_279D433F0;
    v9 = v5;
    v10 = dateCopy;
    selfCopy = self;
    dispatch_async(v7, block);
  }
}

- (void)cancelWake
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_wakeDate)
  {
    v3 = SWLogTimer();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_26C657000, v3, OS_LOG_TYPE_INFO, "%p canceling system wake: %{public}@", &v7, 0x16u);
    }

    lock_wakeDate = self->_lock_wakeDate;
    if (lock_wakeDate)
    {
      [(SWScheduledSystemWake *)self _cancelWakeAtDate:self->_lock_wakeIdentifier identifier:?];
      v5 = self->_lock_wakeDate;
      self->_lock_wakeDate = 0;

      lock_wakeIdentifier = self->_lock_wakeIdentifier;
      self->_lock_wakeIdentifier = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);

  [(SWScheduledSystemWake *)self cancelWake];
}

void __54__SWScheduledSystemWake__cancelWakeAtDate_identifier___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = IOPMCancelScheduledPowerEvent(*(a1 + 32), *(a1 + 40), @"wake");
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CF0BF0] sharedInstance];
    v5 = SWLogTimer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = [v4 formatDateAsLongYMDHMSZPosixLocaleWithDate:*(a1 + 32)];
      [*(a1 + 32) timeIntervalSinceNow];
      v9 = [v4 formatDuration:?];
      v10 = 134219010;
      v11 = v7;
      v12 = 1024;
      v13 = v3;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_error_impl(&dword_26C657000, v5, OS_LOG_TYPE_ERROR, "%p failed (%d) to cancel system wake id:%{public}@ date:%{public}@ (in %{public}@", &v10, 0x30u);
    }
  }
}

@end