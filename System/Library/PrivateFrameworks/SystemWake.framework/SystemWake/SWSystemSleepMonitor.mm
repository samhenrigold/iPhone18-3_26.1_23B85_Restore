@interface SWSystemSleepMonitor
+ (id)monitorUsingMainQueue;
- (BOOL)hasSleepBeenRequested;
- (BOOL)isAwakeOrAbortingSleep;
- (BOOL)isSleepImminent;
- (NSString)description;
- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue;
- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue allowsInvalidation:(BOOL)invalidation monitorProvider:(id)provider sleepAssertionProvider:(id)assertionProvider activeSystemActivityRegistry:(id)registry;
- (SWSystemSleepMonitorAggregateState)aggregateState;
- (id)observersRespondingToSelector:(uint64_t)selector;
- (void)_lock_setSleepSlateAbortingSleepForSystemActivity;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
- (void)observersOfSelector:(void *)selector performObserverBlock:(void *)block completion:;
- (void)removeObserver:(id)observer;
- (void)setSleepSlate:(__CFString *)slate forPowerManagementNotificationID:(uint64_t)d notificationTimestamp:;
- (void)setSleepSlate:(uint64_t)slate powerManagementPhase:(uint64_t)phase notificationID:;
- (void)systemActivityRegistryCountDidDecrementToZero:(id)zero;
- (void)systemActivityRegistryCountDidIncrementToOne:(id)one;
- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d;
@end

@implementation SWSystemSleepMonitor

+ (id)monitorUsingMainQueue
{
  if (qword_280D3F8E8 != -1)
  {
    dispatch_once(&qword_280D3F8E8, &__block_literal_global);
  }

  v3 = _MergedGlobals;

  return v3;
}

- (BOOL)isAwakeOrAbortingSleep
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state < 3;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isSleepImminent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state > 3;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasSleepBeenRequested
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state > 2;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

void __45__SWSystemSleepMonitor_monitorUsingMainQueue__block_invoke()
{
  v0 = [SWSystemSleepMonitor alloc];
  v1 = MEMORY[0x277D85CD0];
  v2 = objc_alloc_init(SWSystemSleepMonitorProvider);
  v3 = +[SWSystemSleepAssertionProvider sharedProvider];
  v4 = +[SWActiveSystemActivityRegistry sharedRegistry];
  v5 = [(SWSystemSleepMonitor *)v0 initWithIdentifier:@"SWSystemSleepMonitor-mainQueue" queue:MEMORY[0x277D85CD0] allowsInvalidation:0 monitorProvider:v2 sleepAssertionProvider:v3 activeSystemActivityRegistry:v4];
  v6 = _MergedGlobals;
  _MergedGlobals = v5;

  v7 = MEMORY[0x277D85CD0];
}

- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v8 = objc_alloc_init(SWSystemSleepMonitorProvider);
  v9 = +[SWSystemSleepAssertionProvider sharedProvider];
  v10 = +[SWActiveSystemActivityRegistry sharedRegistry];
  v11 = [(SWSystemSleepMonitor *)self initWithIdentifier:identifierCopy queue:queueCopy allowsInvalidation:1 monitorProvider:v8 sleepAssertionProvider:v9 activeSystemActivityRegistry:v10];

  return v11;
}

- (SWSystemSleepMonitor)initWithIdentifier:(id)identifier queue:(id)queue allowsInvalidation:(BOOL)invalidation monitorProvider:(id)provider sleepAssertionProvider:(id)assertionProvider activeSystemActivityRegistry:(id)registry
{
  identifierCopy = identifier;
  queueCopy = queue;
  providerCopy = provider;
  assertionProviderCopy = assertionProvider;
  registryCopy = registry;
  v29.receiver = self;
  v29.super_class = SWSystemSleepMonitor;
  v17 = [(SWSystemSleepMonitor *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    v18->_allowsInvalidation = invalidation;
    objc_storeStrong(&v18->_queue, queue);
    v18->_lock._os_unfair_lock_opaque = 0;
    v19 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    lock_observers = v18->_lock_observers;
    v18->_lock_observers = v19;

    objc_storeStrong(&v18->_sleepAssertionProvider, assertionProvider);
    objc_storeStrong(&v18->_monitorProvider, provider);
    objc_storeStrong(&v18->_activeSystemActivityRegistry, registry);
    [(SWActiveSystemActivityRegistry *)v18->_activeSystemActivityRegistry addObserver:v18];
    [providerCopy registerForSystemPowerOnQueue:queueCopy withDelegate:v18];
    objc_initWeak(&location, v18);
    objc_copyWeak(&v27, &location);
    v21 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandler = v18->_stateCaptureHandler;
    v18->_stateCaptureHandler = v21;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v18;
}

id __136__SWSystemSleepMonitor_initWithIdentifier_queue_allowsInvalidation_monitorProvider_sleepAssertionProvider_activeSystemActivityRegistry___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(SWActiveSystemActivityRegistry *)self->_activeSystemActivityRegistry removeObserver:self];
  [(BSInvalidatable *)self->_stateCaptureHandler invalidate];
  v3.receiver = self;
  v3.super_class = SWSystemSleepMonitor;
  [(SWSystemSleepMonitor *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  mach_continuous_time();
  v4 = self->_lock_state - 1;
  if (v4 > 4)
  {
    v5 = @"waking";
  }

  else
  {
    v5 = off_279D43230[v4];
  }

  [v3 appendString:v5 withName:@"state"];
  BSTimeDifferenceFromMachTimeToMachTime();
  v6 = [v3 appendTimeInterval:@"elapsedState" withName:1 decomposeUnits:?];
  v7 = __ROR8__(self->_lock_powerManagementPhase - 3758097008u, 4);
  if (v7 > 0xB)
  {
    v8 = @"initialized";
  }

  else
  {
    v8 = off_279D43258[v7];
  }

  [v3 appendString:v8 withName:@"phase"];
  BSTimeDifferenceFromMachTimeToMachTime();
  v9 = [v3 appendTimeInterval:@"elapsedPhase" withName:1 decomposeUnits:?];
  v10 = self->_lock_systemActivityAbortSleepPhase - 1;
  if (v10 > 2)
  {
    v11 = @"idle";
  }

  else
  {
    v11 = off_279D431F8[v10];
  }

  [v3 appendString:v11 withName:@"systemActivityAborting"];
  v12 = [v3 appendUnsignedInteger:-[NSHashTable count](self->_lock_observers withName:{"count"), @"observerCount"}];
  os_unfair_lock_unlock(&self->_lock);
  build = [v3 build];

  return build;
}

- (void)systemActivityRegistryCountDidIncrementToOne:(id)one
{
  v40 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_systemActivitiesAreActive = 1;
  if (self->_lock_systemActivityAbortSleepPhase > 1)
  {
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = self->_lock_state - 1;
      if (v5 > 4)
      {
        v6 = @"waking";
      }

      else
      {
        v6 = off_279D43230[v5];
      }

      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      v19 = v18;
      lock_powerManagementPhase = self->_lock_powerManagementPhase;
      v21 = __ROR8__(lock_powerManagementPhase - 3758097008u, 4);
      if (v21 > 0xB)
      {
        v22 = @"initialized";
      }

      else
      {
        v22 = off_279D43258[v21];
      }

      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      v24 = self->_lock_systemActivityAbortSleepPhase - 1;
      if (v24 > 2)
      {
        v25 = @"idle";
      }

      else
      {
        v25 = off_279D431F8[v24];
      }

      v26 = 134219522;
      selfCopy2 = self;
      v28 = 2114;
      v29 = v6;
      v30 = 2048;
      v31 = v19;
      v32 = 2114;
      v33 = v22;
      v34 = 1024;
      v35 = lock_powerManagementPhase;
      v36 = 2048;
      v37 = v23;
      v38 = 2114;
      v39 = v25;
      _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p state:%{public}@ elapsed:%.3lfs phase:%{public}@(%u) elapsedPhase:%.3lfs systemActivityAborting:%{public}@", &v26, 0x44u);
    }

LABEL_18:

    goto LABEL_19;
  }

  self->_lock_systemActivityAbortSleepPhase = 2;
  if (self->_lock_state < 3)
  {
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v8 = v7;
    BSTimeDifferenceFromMachTimeToMachTime();
    v10 = v9;
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = self->_lock_state - 1;
      if (v11 > 4)
      {
        v12 = @"waking";
      }

      else
      {
        v12 = off_279D43230[v11];
      }

      v13 = self->_lock_powerManagementPhase;
      v14 = __ROR8__(v13 - 3758097008u, 4);
      if (v14 > 0xB)
      {
        v15 = @"initialized";
      }

      else
      {
        v15 = off_279D43258[v14];
      }

      v16 = self->_lock_systemActivityAbortSleepPhase - 1;
      if (v16 > 2)
      {
        v17 = @"idle";
      }

      else
      {
        v17 = off_279D431F8[v16];
      }

      v26 = 134219522;
      selfCopy2 = self;
      v28 = 2114;
      v29 = v12;
      v30 = 2048;
      v31 = v10;
      v32 = 2114;
      v33 = v15;
      v34 = 1024;
      v35 = v13;
      v36 = 2048;
      v37 = v8;
      v38 = 2114;
      v39 = v17;
      _os_log_impl(&dword_26C657000, v4, OS_LOG_TYPE_INFO, "%p state:%{public}@ elapsed:%.3lfs phase:%{public}@(%u) elapsedPhase:%.3lfs systemActivityAborting:%{public}@", &v26, 0x44u);
    }

    goto LABEL_18;
  }

  [(SWSystemSleepMonitor *)self _lock_setSleepSlateAbortingSleepForSystemActivity];
LABEL_19:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setSleepSlateAbortingSleepForSystemActivity
{
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = mach_continuous_time();
    v3 = self[11];
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ((v3 - 1) > 4)
      {
        v5 = @"waking";
      }

      else
      {
        v5 = off_279D43230[v3 - 1];
      }

      BSTimeDifferenceFromMachTimeToMachTime();
      v7 = self[14] - 1;
      if (v7 > 2)
      {
        v8 = @"idle";
      }

      else
      {
        v8 = off_279D431F8[v7];
      }

      v9 = 134219010;
      selfCopy = self;
      v11 = 2114;
      v12 = v5;
      v13 = 2114;
      v14 = @"abortingSleep";
      v15 = 2048;
      v16 = v6;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEFAULT, "%p state:%{public}@->%{public}@ elapsed:%.3lfs systemActivityAborting:%{public}@->aborting", &v9, 0x34u);
    }

    self[11] = 2;
    self[9] = v2;
    self[14] = 3;
  }
}

- (void)systemActivityRegistryCountDidDecrementToZero:(id)zero
{
  v35 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_systemActivityAbortSleepPhase = self->_lock_systemActivityAbortSleepPhase;
  self->_lock_systemActivitiesAreActive = 0;
  v5 = lock_systemActivityAbortSleepPhase - 1;
  if (lock_systemActivityAbortSleepPhase - 1 <= 1)
  {
    self->_lock_systemActivityAbortSleepPhase = 0;
  }

  v6 = SWLogPower();
  v7 = 2 * (lock_systemActivityAbortSleepPhase == 0);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = self->_lock_state - 1;
    if (v8 > 4)
    {
      v9 = @"waking";
    }

    else
    {
      v9 = off_279D43230[v8];
    }

    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v11 = v10;
    lock_powerManagementPhase = self->_lock_powerManagementPhase;
    v13 = __ROR8__(lock_powerManagementPhase - 3758097008u, 4);
    if (v13 > 0xB)
    {
      v14 = @"initialized";
    }

    else
    {
      v14 = off_279D43258[v13];
    }

    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    if (v5 > 2)
    {
      v16 = @"idle";
    }

    else
    {
      v16 = off_279D431F8[v5];
    }

    v17 = self->_lock_systemActivityAbortSleepPhase - 1;
    if (v17 > 2)
    {
      v18 = @"idle";
    }

    else
    {
      v18 = off_279D431F8[v17];
    }

    v19 = 134219778;
    selfCopy = self;
    v21 = 2114;
    v22 = v9;
    v23 = 2048;
    v24 = v11;
    v25 = 2114;
    v26 = v14;
    v27 = 1024;
    v28 = lock_powerManagementPhase;
    v29 = 2048;
    v30 = v15;
    v31 = 2114;
    v32 = v16;
    v33 = 2114;
    v34 = v18;
    _os_log_impl(&dword_26C657000, v6, v7, "%p (zero active system activities) state:%{public}@ elapsed:%.3lfs phase:%{public}@(%u) elapsedPhase:%.3lfs systemActivityAborting:%{public}@->%{public}@", &v19, 0x4Eu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (SWSystemSleepMonitorAggregateState)aggregateState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [[SWSystemSleepMonitorAggregateState alloc] initWithSleepMonitorState:self->_lock_state stateTimestamp:self->_lock_stateTimestamp powerManagementPhase:self->_lock_powerManagementPhase phaseTimestamp:self->_powerManagementPhaseTimestamp];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invalidate
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_allowsInvalidation)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_allowsInvalidation"];
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
      v20 = 203;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C6594B4);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(SWSystemSleepMonitorProviding *)self->_monitorProvider invalidate];
  monitorProvider = self->_monitorProvider;
  self->_monitorProvider = 0;

  [(SWActiveSystemActivityRegistry *)self->_activeSystemActivityRegistry removeObserver:self];
  activeSystemActivityRegistry = self->_activeSystemActivityRegistry;
  self->_activeSystemActivityRegistry = 0;
}

- (void)setSleepSlate:(uint64_t)slate powerManagementPhase:(uint64_t)phase notificationID:
{
  v67 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  os_unfair_lock_lock((self + 40));
  v8 = mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v10 = v9;
  BSTimeDifferenceFromMachTimeToMachTime();
  v12 = v11;
  v13 = *(self + 88);
  v14 = *(self + 96);
  v15 = *(self + 112);
  if (!v15)
  {
    v18 = SWLogPower();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = __ROR8__(slate - 3758097008, 4);
      if (v19 > 0xB)
      {
        v20 = @"initialized";
      }

      else
      {
        v20 = off_279D43258[v19];
      }

      v23 = __ROR8__(v14 - 3758097008, 4);
      if (v23 > 0xB)
      {
        v24 = @"initialized";
      }

      else
      {
        v24 = off_279D43258[v23];
      }

      if ((v13 - 1) > 4)
      {
        v25 = @"waking";
      }

      else
      {
        v25 = off_279D43230[v13 - 1];
      }

      if ((a2 - 1) > 3)
      {
        v26 = @"waking";
      }

      else
      {
        v26 = off_279D431D8[a2 - 1];
      }

      *buf = 134220290;
      selfCopy3 = self;
      v52 = 2114;
      v53 = v20;
      v54 = 1024;
      *v55 = slate;
      *&v55[4] = 2114;
      *&v55[6] = v24;
      *&v55[14] = 1024;
      *&v55[16] = v14;
      *v56 = 2048;
      *&v56[2] = v10;
      *&v56[10] = 2114;
      *&v56[12] = v25;
      v57 = 2114;
      v58 = v26;
      v59 = 2048;
      v60 = v12;
      v61 = 2048;
      phaseCopy3 = phase;
      _os_log_impl(&dword_26C657000, v18, OS_LOG_TYPE_DEFAULT, "%p systemPowerChanged:%{public}@(%u) previous:%{public}@(%u) elapsedPhase:%.3lfs state:%{public}@->%{public}@ elapsedState:%.3lfs notificationID:%ld", buf, 0x5Eu);
    }

    v16 = 0;
    goto LABEL_74;
  }

  v16 = 0;
  if (slate <= 3758097039)
  {
    if (slate != 3758097008 && slate != 3758097024)
    {
      if (!slate)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"powerManagementPhase != SWSystemSleepPowerManagementPhaseInitialized"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v28 = NSStringFromSelector(sel_setSleepSlate_powerManagementPhase_notificationID_);
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138544642;
          selfCopy3 = v28;
          v52 = 2114;
          v53 = v30;
          v54 = 2048;
          *v55 = self;
          *&v55[8] = 2114;
          *&v55[10] = @"SWSystemSleepMonitor.m";
          *&v55[18] = 1024;
          *v56 = 229;
          *&v56[4] = 2114;
          *&v56[6] = v27;
          _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v31 = v27;
        [v27 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x26C6598ACLL);
      }

      goto LABEL_42;
    }

    if (v15 >= 2)
    {
      if (v15 != 2)
      {
        v16 = 0;
        if (v13 == 2)
        {
          a2 = 2;
        }

        goto LABEL_42;
      }

      v16 = 1;
      v17 = 2;
      goto LABEL_20;
    }

    v17 = 0;
  }

  else
  {
    if (slate != 3758097040 && slate != 3758097152 && slate != 3758097184)
    {
      goto LABEL_42;
    }

    if (v15 != 3)
    {
      v16 = 0;
      goto LABEL_42;
    }

    v17 = 1;
  }

  v16 = 0;
  *(self + 112) = v17;
LABEL_20:
  if (v17 != v15)
  {
    v18 = SWLogPower();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __ROR8__(slate - 3758097008, 4);
      if (v21 > 0xB)
      {
        v22 = @"initialized";
      }

      else
      {
        v22 = off_279D43258[v21];
      }

      v43 = __ROR8__(v14 - 3758097008, 4);
      if (v43 > 0xB)
      {
        v44 = @"initialized";
      }

      else
      {
        v44 = off_279D43258[v43];
      }

      if ((v13 - 1) > 4)
      {
        v45 = @"waking";
      }

      else
      {
        v45 = off_279D43230[v13 - 1];
      }

      if ((a2 - 1) > 3)
      {
        v46 = @"waking";
      }

      else
      {
        v46 = off_279D431D8[a2 - 1];
      }

      v47 = off_279D431F8[v15 - 1];
      v48 = *(self + 112) - 1;
      if (v48 > 2)
      {
        v49 = @"idle";
      }

      else
      {
        v49 = off_279D431F8[v48];
      }

      *buf = 134220802;
      selfCopy3 = self;
      v52 = 2114;
      v53 = v22;
      v54 = 1024;
      *v55 = slate;
      *&v55[4] = 2114;
      *&v55[6] = v44;
      *&v55[14] = 1024;
      *&v55[16] = v14;
      *v56 = 2048;
      *&v56[2] = v10;
      *&v56[10] = 2114;
      *&v56[12] = v45;
      v57 = 2114;
      v58 = v46;
      v59 = 2048;
      v60 = v12;
      v61 = 2048;
      phaseCopy3 = phase;
      v63 = 2114;
      v64 = v47;
      v65 = 2114;
      v66 = v49;
      v40 = "%p systemPowerChanged:%{public}@(%u) previous:%{public}@(%u) elapsedPhase:%.3lfs state:%{public}@->%{public}@ elapsedState:%.3lfs notificationID:%ld systemActivityAborting:%{public}@->%{public}@";
      v41 = v18;
      v42 = 114;
LABEL_73:
      _os_log_impl(&dword_26C657000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
      goto LABEL_74;
    }

    goto LABEL_74;
  }

LABEL_42:
  v18 = SWLogPower();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v32 = __ROR8__(slate - 3758097008, 4);
    if (v32 > 0xB)
    {
      v33 = @"initialized";
    }

    else
    {
      v33 = off_279D43258[v32];
    }

    v34 = __ROR8__(v14 - 3758097008, 4);
    if (v34 > 0xB)
    {
      v35 = @"initialized";
    }

    else
    {
      v35 = off_279D43258[v34];
    }

    if ((v13 - 1) > 4)
    {
      v36 = @"waking";
    }

    else
    {
      v36 = off_279D43230[v13 - 1];
    }

    if ((a2 - 1) > 3)
    {
      v37 = @"waking";
    }

    else
    {
      v37 = off_279D431D8[a2 - 1];
    }

    v38 = *(self + 112) - 1;
    if (v38 > 2)
    {
      v39 = @"idle";
    }

    else
    {
      v39 = off_279D431F8[v38];
    }

    *buf = 134220546;
    selfCopy3 = self;
    v52 = 2114;
    v53 = v33;
    v54 = 1024;
    *v55 = slate;
    *&v55[4] = 2114;
    *&v55[6] = v35;
    *&v55[14] = 1024;
    *&v55[16] = v14;
    *v56 = 2048;
    *&v56[2] = v10;
    *&v56[10] = 2114;
    *&v56[12] = v36;
    v57 = 2114;
    v58 = v37;
    v59 = 2048;
    v60 = v12;
    v61 = 2048;
    phaseCopy3 = phase;
    v63 = 2114;
    v64 = v39;
    v40 = "%p systemPowerChanged:%{public}@(%u) previous:%{public}@(%u) elapsedPhase:%.3lfs state:%{public}@->%{public}@ elapsedState:%.3lfs notificationID:%ld systemActivityAborting:%{public}@";
    v41 = v18;
    v42 = 104;
    goto LABEL_73;
  }

LABEL_74:

  *(self + 96) = slate;
  *(self + 104) = phase;
  if (a2 != v13)
  {
    *(self + 88) = a2;
    *(self + 72) = v8;
  }

  *(self + 80) = v8;
  if (v16)
  {
    [(SWSystemSleepMonitor *)self _lock_setSleepSlateAbortingSleepForSystemActivity];
  }

  os_unfair_lock_unlock((self + 40));
}

- (void)setSleepSlate:(__CFString *)slate forPowerManagementNotificationID:(uint64_t)d notificationTimestamp:
{
  v42 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v7 = mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v9 = v8;
    BSTimeDifferenceFromMachTimeToMachTime();
    v11 = v10;
    v12 = *(self + 88);
    v14 = *(self + 104);
    v13 = *(self + 112);
    if (v14 == slate)
    {
      v15 = SWLogPower();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v13 != 3)
      {
        if (v16)
        {
          if ((v12 - 1) > 4)
          {
            v19 = @"waking";
          }

          else
          {
            v19 = off_279D43230[v12 - 1];
          }

          v20 = off_279D43210[a2 - 2];
          v21 = @"idle";
          if (v13 == 1)
          {
            v21 = @"aborted";
          }

          if (v13 == 2)
          {
            v21 = @"pending";
          }

          v22 = v21;
          v26 = 134219266;
          selfCopy3 = self;
          v28 = 2114;
          v29 = v19;
          v30 = 2114;
          slateCopy3 = v20;
          v32 = 2048;
          v33 = v9;
          v34 = 2048;
          v35 = v11;
          v36 = 2114;
          v37 = v22;
          _os_log_impl(&dword_26C657000, v15, OS_LOG_TYPE_DEFAULT, "%p state:%{public}@->%{public}@ elapsed:%.3lfs(%.3lfs) systemActivityAborting:%{public}@", &v26, 0x3Eu);
        }

        *(self + 88) = a2;
        *(self + 72) = v7;
        goto LABEL_22;
      }

      if (v16)
      {
        v17 = off_279D43210[a2 - 2];
        if ((v12 - 1) > 4)
        {
          v18 = @"waking";
        }

        else
        {
          v18 = off_279D43230[v12 - 1];
        }

        v26 = 134219778;
        selfCopy3 = self;
        v28 = 2114;
        v29 = v17;
        v30 = 2048;
        slateCopy3 = slate;
        v32 = 2048;
        v33 = v11;
        v34 = 2114;
        v35 = v18;
        v36 = 2048;
        v37 = v9;
        v38 = 2048;
        slateCopy2 = slate;
        v40 = 2114;
        v41 = @"aborting";
        _os_log_impl(&dword_26C657000, v15, OS_LOG_TYPE_DEFAULT, "%p obsolete request to update to state:%{public}@ forID:%ld elapsed:%.3lfs – currentState:%{public}@ elapsed:%.3lfs currentID:%ld systemActivityAborting:%{public}@", &v26, 0x52u);
      }
    }

    else
    {
      v15 = SWLogPower();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if ((v12 - 1) > 4)
        {
          v23 = @"waking";
        }

        else
        {
          v23 = off_279D43230[v12 - 1];
        }

        v24 = off_279D43210[a2 - 2];
        if ((v13 - 1) > 2)
        {
          v25 = @"idle";
        }

        else
        {
          v25 = off_279D431F8[v13 - 1];
        }

        v26 = 134219778;
        selfCopy3 = self;
        v28 = 2114;
        v29 = v24;
        v30 = 2048;
        slateCopy3 = slate;
        v32 = 2048;
        v33 = v11;
        v34 = 2114;
        v35 = v23;
        v36 = 2048;
        v37 = v9;
        v38 = 2048;
        slateCopy2 = v14;
        v40 = 2114;
        v41 = v25;
        _os_log_error_impl(&dword_26C657000, v15, OS_LOG_TYPE_ERROR, "%p stale request to update to state:%{public}@ forID:%ld elapsed:%.3lfs – currentState:%{public}@ elapsed:%.3lfs currentID:%ld systemActivityAborting:%{public}@", &v26, 0x52u);
      }
    }

LABEL_22:
    os_unfair_lock_unlock((self + 40));
  }
}

- (void)systemPowerChanged:(unsigned int)changed notificationID:(void *)d
{
  v32 = *MEMORY[0x277D85DE8];
  HIDWORD(v8) = changed + 536870288;
  LODWORD(v8) = changed + 536870288;
  v7 = v8 >> 4;
  if (v7 > 1)
  {
    switch(v7)
    {
      case 2:
        [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
        if (!self)
        {
          return;
        }

        [(SWSystemSleepMonitor *)self observersRespondingToSelector:?];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v9 = v25 = 0u;
        v15 = [v9 countByEnumeratingWithState:&v24 objects:buf count:16];
        if (v15)
        {
          v16 = *v25;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v24 + 1) + 8 * i) systemSleepMonitorSleepRequestAborted:{self, v24}];
            }

            v15 = [v9 countByEnumeratingWithState:&v24 objects:buf count:16];
          }

          while (v15);
        }

        goto LABEL_37;
      case 9:
        [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
        if (!self)
        {
          return;
        }

        [(SWSystemSleepMonitor *)self observersRespondingToSelector:?];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v9 = v25 = 0u;
        v18 = [v9 countByEnumeratingWithState:&v24 objects:buf count:16];
        if (v18)
        {
          v19 = *v25;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v24 + 1) + 8 * j) systemSleepMonitorDidWakeFromSleep:{self, v24}];
            }

            v18 = [v9 countByEnumeratingWithState:&v24 objects:buf count:16];
          }

          while (v18);
        }

        goto LABEL_37;
      case 11:
        [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
        if (!self)
        {
          return;
        }

        [(SWSystemSleepMonitor *)self observersRespondingToSelector:?];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v9 = v25 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:buf count:16];
        if (v10)
        {
          v11 = *v25;
          do
          {
            for (k = 0; k != v10; ++k)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v24 + 1) + 8 * k) systemSleepMonitorWillWakeFromSleep:{self, v24}];
            }

            v10 = [v9 countByEnumeratingWithState:&v24 objects:buf count:16];
          }

          while (v10);
        }

LABEL_37:

        return;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    if (v7 != 1)
    {
LABEL_42:
      v23 = SWLogPower();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = changed;
        *&buf[18] = 2048;
        *&buf[20] = d;
        _os_log_error_impl(&dword_26C657000, v23, OS_LOG_TYPE_ERROR, "%p unexpected powerChangedMessage:%u notificationID:%p", buf, 0x1Cu);
      }

      return;
    }

    [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
    if (self)
    {
      v13 = SWLogPower();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = d;
        _os_log_debug_impl(&dword_26C657000, v13, OS_LOG_TYPE_DEBUG, "%p prepareForSleepWithNotificationID:%ld", buf, 0x16u);
      }

      v14 = mach_continuous_time();
      *&v24 = MEMORY[0x277D85DD0];
      *(&v24 + 1) = 3221225472;
      *&v25 = __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke;
      *(&v25 + 1) = &unk_279D42FC8;
      *&v26 = self;
      *(&v26 + 1) = d;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_60;
      *&buf[24] = &unk_279D42FF0;
      selfCopy2 = self;
      dCopy2 = d;
      v31 = v14;
      [(SWSystemSleepMonitor *)self observersOfSelector:&v24 performObserverBlock:buf completion:?];
    }
  }

  else
  {
    [(SWSystemSleepMonitor *)self setSleepSlate:changed powerManagementPhase:d notificationID:?];
    if (self)
    {
      v21 = SWLogPower();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = d;
        _os_log_debug_impl(&dword_26C657000, v21, OS_LOG_TYPE_DEBUG, "%p sleepRequestedWithNotificationID:%ld", buf, 0x16u);
      }

      v22 = mach_continuous_time();
      *&v24 = MEMORY[0x277D85DD0];
      *(&v24 + 1) = 3221225472;
      *&v25 = __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke;
      *(&v25 + 1) = &unk_279D42FC8;
      *&v26 = self;
      *(&v26 + 1) = d;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_55;
      *&buf[24] = &unk_279D42FF0;
      selfCopy2 = self;
      dCopy2 = d;
      v31 = v22;
      [(SWSystemSleepMonitor *)self observersOfSelector:&v24 performObserverBlock:buf completion:?];
    }
  }
}

void __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SWLogPower();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    *buf = 134218498;
    v19 = v12;
    v20 = 2114;
    v21 = v5;
    v22 = 2048;
    v23 = v13;
    _os_log_debug_impl(&dword_26C657000, v7, OS_LOG_TYPE_DEBUG, "%p sleepRequested observer:%{public}@ notificationID:%ld", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_52;
  v14[3] = &unk_279D42FA0;
  v14[4] = v8;
  v9 = v5;
  v10 = *(a1 + 40);
  v15 = v9;
  v17 = v10;
  v11 = v6;
  v16 = v11;
  [v9 systemSleepMonitor:v8 sleepRequestedWithResult:v14];
}

id __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_52(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SWLogPower();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a1[7];
    v17 = 134218754;
    v18 = v11;
    v19 = 1024;
    *v20 = a2;
    *&v20[4] = 2114;
    *&v20[6] = v12;
    *&v20[14] = 2048;
    *&v20[16] = v13;
    _os_log_debug_impl(&dword_26C657000, v6, OS_LOG_TYPE_DEBUG, "%p sleepRequested response allowSystemSleep:%{BOOL}u observer:%{public}@ notificationID:%ld", &v17, 0x26u);
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(a1[4] + 32) acquirePreventSystemSleepAssertionWithIdentifier:v5];
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = a1[4];
      v15 = a1[5];
      v16 = a1[7];
      v17 = 134218754;
      v18 = v14;
      v19 = 2112;
      *v20 = v8;
      *&v20[8] = 2114;
      *&v20[10] = v15;
      *&v20[18] = 2048;
      *&v20[20] = v16;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p sleepRequested response assertion:%{BOOL}@ observer:%{public}@ notificationID:%ld", &v17, 0x2Au);
    }

    v7 = v8;
  }

  (*(a1[6] + 16))();

  return v7;
}

uint64_t __57__SWSystemSleepMonitor_sleepRequestedWithNotificationID___block_invoke_55(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = SWLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134218496;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2048;
    v14 = v8;
    _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p sleepRequested preventSystemSleep:%{BOOL}u notificationID:%ld", &v9, 0x1Cu);
  }

  v5 = *(a1 + 32);
  if (!a2)
  {
    return [*(v5 + 24) allowPowerChange:*(a1 + 40)];
  }

  [(SWSystemSleepMonitor *)v5 setSleepSlate:*(a1 + 40) forPowerManagementNotificationID:*(a1 + 48) notificationTimestamp:?];
  return [*(*(a1 + 32) + 24) cancelPowerChange:*(a1 + 40)];
}

- (void)observersOfSelector:(void *)selector performObserverBlock:(void *)block completion:
{
  v55 = *MEMORY[0x277D85DE8];
  selectorCopy = selector;
  blockCopy = block;
  os_unfair_lock_lock((self + 40));
  v8 = *(self + 64) + 1;
  *(self + 64) = v8;
  os_unfair_lock_unlock((self + 40));
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy_;
  v52 = __Block_byref_object_dispose_;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke;
  v44[3] = &unk_279D43040;
  v25 = v8;
  selfCopy = self;
  v44[4] = self;
  v46 = v8;
  v21 = blockCopy;
  v45 = v21;
  v47 = a2;
  v53 = MEMORY[0x26D6A63C0](v44);
  v22 = [(SWSystemSleepMonitor *)self observersRespondingToSelector:a2];
  if ([v22 count])
  {
    v9 = MEMORY[0x277CF0BA0];
    v10 = *(self + 8);
    v11 = [v22 count];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_64;
    v43[3] = &unk_279D43068;
    v43[4] = self;
    v43[5] = &v48;
    v43[6] = v8;
    v43[7] = a2;
    v24 = [v9 sentinelWithQueue:v10 signalCount:v11 signalHandler:v43];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v22;
    v12 = [obj countByEnumeratingWithState:&v39 objects:v54 count:16];
    if (v12)
    {
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v37[0] = 0;
          v37[1] = v37;
          v37[2] = 0x2020000000;
          v38 = 0;
          v16 = objc_alloc(MEMORY[0x277CF0CE8]);
          v17 = NSStringFromSelector(a2);
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"response from <%@: %p> must be made exactly once", objc_opt_class(), v15];
          v19 = [v16 initWithIdentifier:v17 forReason:v18 invalidationBlock:&__block_literal_global_75];

          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_2;
          v28[3] = &unk_279D430B0;
          v20 = v19;
          v29 = v20;
          v30 = selfCopy;
          v34 = sel_observersOfSelector_performObserverBlock_completion_;
          v35 = v25;
          v36 = a2;
          v33 = v37;
          v31 = v15;
          v32 = v24;
          selectorCopy[2](selectorCopy, v15, v28);

          _Block_object_dispose(v37, 8);
        }

        v12 = [obj countByEnumeratingWithState:&v39 objects:v54 count:16];
      }

      while (v12);
    }
  }

  else
  {
    (*(v49[5] + 16))();
  }

  _Block_object_dispose(&v48, 8);
}

void __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SWLogPower();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    *buf = 134218498;
    v19 = v12;
    v20 = 2114;
    v21 = v5;
    v22 = 2048;
    v23 = v13;
    _os_log_debug_impl(&dword_26C657000, v7, OS_LOG_TYPE_DEBUG, "%p prepareForSleep observer:%{public}@ notificationID:%ld", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_59;
  v14[3] = &unk_279D43018;
  v14[4] = v8;
  v9 = v5;
  v10 = *(a1 + 40);
  v15 = v9;
  v17 = v10;
  v11 = v6;
  v16 = v11;
  [v9 systemSleepMonitor:v8 prepareForSleepWithCompletion:v14];
}

uint64_t __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_59(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SWLogPower();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[7];
    v7 = 134218498;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_debug_impl(&dword_26C657000, v2, OS_LOG_TYPE_DEBUG, "%p prepareForSleep response observer:%{public}@ notificationID:%ld", &v7, 0x20u);
  }

  return (*(a1[6] + 16))();
}

uint64_t __58__SWSystemSleepMonitor_prepareForSleepWithNotificationID___block_invoke_60(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SWLogPower();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 134218240;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_debug_impl(&dword_26C657000, v2, OS_LOG_TYPE_DEBUG, "%p prepareForSleep complete notificationID:%ld", &v6, 0x16u);
  }

  [(SWSystemSleepMonitor *)*(a1 + 32) setSleepSlate:*(a1 + 40) forPowerManagementNotificationID:*(a1 + 48) notificationTimestamp:?];
  return [*(*(a1 + 32) + 24) allowPowerChange:*(a1 + 40)];
}

void __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  os_unfair_lock_unlock((v5 + 40));
  if (v4 == v6)
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }

  else
  {
    v8 = SWLogPower();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = NSStringFromSelector(*(a1 + 56));
      v12 = 134218754;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 1024;
      v17 = a2 ^ 1;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_26C657000, v8, OS_LOG_TYPE_DEFAULT, "%p (%llu) final response(%{BOOL}u) to %{public}@ came too late", &v12, 0x26u);
    }
  }
}

- (id)observersRespondingToSelector:(uint64_t)selector
{
  os_unfair_lock_lock((selector + 40));
  allObjects = [*(selector + 48) allObjects];
  os_unfair_lock_unlock((selector + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SWSystemSleepMonitor_observersRespondingToSelector___block_invoke;
  v8[3] = &__block_descriptor_40_e40_B32__0___SWSystemSleepObserver__8Q16_B24l;
  v8[4] = a2;
  v5 = [allObjects indexesOfObjectsPassingTest:v8];
  v6 = [allObjects objectsAtIndexes:v5];

  return v6;
}

void __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_64(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 context];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0 && ([v4 BOOLValue] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    if (![v3 isComplete])
    {
      goto LABEL_12;
    }

    v5 = 0;
  }

  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  else
  {
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = NSStringFromSelector(*(a1 + 56));
      v13 = 134218754;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      v17 = 1024;
      v18 = v5 ^ 1;
      v19 = 2114;
      v20 = v12;
      _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p (%llu) response(%{BOOL}u) to %{public}@ after early completion", &v13, 0x26u);
    }
  }

LABEL_12:
}

uint64_t __76__SWSystemSleepMonitor_observersOfSelector_performObserverBlock_completion___block_invoke_2(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) invalidate];
  v4 = (*(*(a1 + 64) + 8) + 24);
  __swp(v4, v4);
  if (v4)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!hadBeenCalled"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(*(a1 + 72));
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = *(a1 + 40);
      *buf = 138544642;
      v22 = v16;
      v23 = 2114;
      v24 = v18;
      v25 = 2048;
      *v26 = v19;
      *&v26[8] = 2114;
      *&v26[10] = @"SWSystemSleepMonitor.m";
      *&v26[18] = 1024;
      *&v26[20] = 468;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v15;
    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65B900);
  }

  os_unfair_lock_lock((*(a1 + 40) + 40));
  v5 = *(a1 + 80);
  v6 = *(a1 + 40);
  v7 = *(v6 + 64);
  os_unfair_lock_unlock((v6 + 40));
  if (v5 != v7)
  {
    v8 = SWLogPower();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 80);
      v13 = NSStringFromSelector(*(a1 + 88));
      v14 = *(a1 + 48);
      *buf = 134219010;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 1024;
      *v26 = a2 ^ 1;
      *&v26[4] = 2114;
      *&v26[6] = v13;
      *&v26[14] = 2114;
      *&v26[16] = v14;
      _os_log_error_impl(&dword_26C657000, v8, OS_LOG_TYPE_ERROR, "%p (%llu) response(%{BOOL}u to %{public}@ from:%{public}@ came too late", buf, 0x30u);
    }
  }

  v9 = *(a1 + 56);
  if (a2)
  {
    return [v9 signalWithContext:MEMORY[0x277CBEC38]];
  }

  else
  {
    return [v9 signal];
  }
}

- (void)addObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (!observerCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != nil"];
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
      v18 = @"SWSystemSleepMonitor.m";
      v19 = 1024;
      v20 = 509;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65BAD8);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (!observerCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != nil"];
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
      v18 = @"SWSystemSleepMonitor.m";
      v19 = 1024;
      v20 = 516;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65BCB8);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

@end