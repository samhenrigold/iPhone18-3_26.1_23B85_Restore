@interface BLSHAggregateProcessAssertion
+ (id)classLock_aggregateForProcessIdentity:(id)identity shouldCreate:(BOOL)create;
+ (void)acquireAggregatedAssertion:(id)assertion completion:(id)completion;
+ (void)invalidateAggregatedAssertion:(id)assertion;
- (BLSHAggregateProcessAssertion)initWithProcessIdentity:(id)identity;
- (BOOL)invalidateAggregatedAssertion:(id)assertion;
- (BOOL)isCurrentRBSAssertion:(id)assertion;
- (NSString)debugDescription;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints;
- (void)acquireAggregatedAssertion:(id)assertion completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BLSHAggregateProcessAssertion

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    [(RBSAssertion *)self->_lock_rbsAssertion invalidate];
    lock_rbsAssertion = self->_lock_rbsAssertion;
    self->_lock_rbsAssertion = 0;

    self->_lock_invalidated = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)acquireAggregatedAssertion:(id)assertion completion:(id)completion
{
  completionCopy = completion;
  assertionCopy = assertion;
  os_unfair_lock_lock(&_classLock_4);
  processIdentity = [assertionCopy processIdentity];
  v9 = [self classLock_aggregateForProcessIdentity:processIdentity shouldCreate:1];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__BLSHAggregateProcessAssertion_acquireAggregatedAssertion_completion___block_invoke;
  v11[3] = &unk_278420870;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 acquireAggregatedAssertion:assertionCopy completion:v11];

  os_unfair_lock_unlock(&_classLock_4);
}

void __71__BLSHAggregateProcessAssertion_acquireAggregatedAssertion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__BLSHAggregateProcessAssertion_acquireAggregatedAssertion_completion___block_invoke_2;
    v4[3] = &unk_278420318;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

+ (void)invalidateAggregatedAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&_classLock_4);
  processIdentity = [assertionCopy processIdentity];
  v5 = [self classLock_aggregateForProcessIdentity:? shouldCreate:?];
  v6 = [v5 invalidateAggregatedAssertion:assertionCopy];

  if ((v6 & 1) == 0)
  {
    [v5 invalidate];
    [_classLock_aggregates removeObjectForKey:processIdentity];
  }

  os_unfair_lock_unlock(&_classLock_4);
}

+ (id)classLock_aggregateForProcessIdentity:(id)identity shouldCreate:(BOOL)create
{
  createCopy = create;
  identityCopy = identity;
  if (!identityCopy)
  {
    [BLSHAggregateProcessAssertion classLock_aggregateForProcessIdentity:a2 shouldCreate:?];
  }

  v7 = identityCopy;
  os_unfair_lock_assert_owner(&_classLock_4);
  v8 = _classLock_aggregates;
  if (!_classLock_aggregates)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = _classLock_aggregates;
    _classLock_aggregates = dictionary;

    v8 = _classLock_aggregates;
  }

  v11 = [v8 objectForKey:v7];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !createCopy;
  }

  if (!v12)
  {
    v11 = [[BLSHAggregateProcessAssertion alloc] initWithProcessIdentity:v7];
    [_classLock_aggregates setObject:v11 forKey:v7];
  }

  return v11;
}

- (BLSHAggregateProcessAssertion)initWithProcessIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = BLSHAggregateProcessAssertion;
  v6 = [(BLSHAggregateProcessAssertion *)&v13 init];
  if (v6)
  {
    if (initWithProcessIdentity__onceToken != -1)
    {
      [BLSHAggregateProcessAssertion initWithProcessIdentity:];
    }

    BSContinuousMachTimeNow();
    v6->_initTimestamp = v7;
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_processIdentity, identity);
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:2];
    lock_aggregated = v6->_lock_aggregated;
    v6->_lock_aggregated = v8;

    objc_initWeak(&location, v6);
    objc_copyWeak(&v11, &location);
    v6->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v6;
}

uint64_t __57__BLSHAggregateProcessAssertion_initWithProcessIdentity___block_invoke()
{
  inactive = dispatch_workloop_create_inactive("BLSHAggregateProcessAssertion_rbs_acquisition");
  v1 = initWithProcessIdentity____workloop;
  initWithProcessIdentity____workloop = inactive;

  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(initWithProcessIdentity____workloop);
  v2 = dispatch_queue_create_with_target_V2("BLSHAggregateProcessAssertion_rbs_acquisition", 0, initWithProcessIdentity____workloop);
  v3 = __rbsAssertionAcquisitionQueue;
  __rbsAssertionAcquisitionQueue = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __57__BLSHAggregateProcessAssertion_initWithProcessIdentity___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateDataWithHints:a2];

  return v4;
}

- (void)acquireAggregatedAssertion:(id)assertion completion:(id)completion
{
  assertionCopy = assertion;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMapTable *)self->_lock_aggregated objectForKey:assertionCopy];

  if (v10)
  {
    [BLSHAggregateProcessAssertion acquireAggregatedAssertion:a2 completion:?];
  }

  if (self->_lock_invalidated)
  {
    [BLSHAggregateProcessAssertion acquireAggregatedAssertion:a2 completion:?];
  }

  [assertionCopy duration];
  v12 = v11;
  v13 = [[BLSHDurationCalculator alloc] initWithDuration:v11];
  if (!self->_lock_rbsAssertion)
  {
    [(NSMapTable *)self->_lock_aggregated setObject:v13 forKey:assertionCopy];
    goto LABEL_8;
  }

  [(BLSHDurationCalculator *)self->_lock_durationCalculator remainingDuration];
  v15 = v14;
  [(NSMapTable *)self->_lock_aggregated setObject:v13 forKey:assertionCopy];
  if (v15 < v12)
  {
LABEL_8:
    processIdentity = [assertionCopy processIdentity];
    createRBSAssertion = [assertionCopy createRBSAssertion];
    objc_initWeak(&location, self);
    v18 = self->_lock_rbsAssertion;
    objc_storeStrong(&self->_lock_rbsAssertion, createRBSAssertion);
    objc_storeStrong(&self->_lock_acquiredAssertion, assertion);
    objc_storeStrong(&self->_lock_durationCalculator, v13);
    v19 = __rbsAssertionAcquisitionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__BLSHAggregateProcessAssertion_acquireAggregatedAssertion_completion___block_invoke;
    block[3] = &unk_278420898;
    objc_copyWeak(&v29, &location);
    v24 = createRBSAssertion;
    v25 = processIdentity;
    v26 = assertionCopy;
    v27 = v18;
    v28 = completionCopy;
    v20 = v18;
    v21 = processIdentity;
    v22 = createRBSAssertion;
    dispatch_async(v19, block);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_9:
}

void __71__BLSHAggregateProcessAssertion_acquireAggregatedAssertion_completion___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v44 = 0;
  v4 = [v3 acquireWithError:&v44];
  v5 = v44;
  v6 = [WeakRetained isCurrentRBSAssertion:*(a1 + 32)];
  if (v5 || (v4 & 1) == 0)
  {
    v11 = [v5 domain];
    v12 = [v5 code];
    if ((v6 & 1) == 0 && ([v11 isEqual:*MEMORY[0x277D47050]] ? (v13 = v12 == 1) : (v13 = 0), v13))
    {
      v17 = bls_scenes_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        v33 = [*(a1 + 48) explanation];
        *buf = 134218754;
        v46 = WeakRetained;
        v47 = 2114;
        v48 = v31;
        v49 = 2114;
        v50 = v32;
        v51 = 2114;
        *v52 = v33;
        _os_log_impl(&dword_21FD11000, v17, OS_LOG_TYPE_INFO, "%p (already invalidated) did not acquire rb assertion:%{public}@ for process:%{public}@ explanation:%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v38 = v12;
      v14 = MEMORY[0x277D46FA8];
      v15 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:*(a1 + 40)];
      v43 = 0;
      v16 = [v14 statesForPredicate:v15 withDescriptor:0 error:&v43];
      v17 = v43;

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v57 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v40;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v40 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v21 |= [*(*(&v39 + 1) + 8 * i) isRunning];
          }

          v20 = [v18 countByEnumeratingWithState:&v39 objects:v57 count:16];
        }

        while (v20);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v24 = bls_scenes_log();
      if (v21)
      {
        if ([*(a1 + 48) shouldFaultOnFailureToAcquire])
        {
          v25 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v25 = OS_LOG_TYPE_ERROR;
        }
      }

      else
      {
        v25 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(v24, v25))
      {
        v26 = [v5 localizedDescription];
        v37 = v17;
        v27 = *(a1 + 32);
        v36 = *(a1 + 40);
        v28 = [*(a1 + 48) explanation];
        *buf = 134219522;
        v46 = WeakRetained;
        v47 = 2114;
        v48 = v11;
        v49 = 2048;
        v50 = v38;
        v51 = 2114;
        *v52 = v26;
        *&v52[8] = 2114;
        *&v52[10] = v27;
        v17 = v37;
        v53 = 2114;
        v54 = v36;
        v55 = 2114;
        v56 = v28;
        _os_log_impl(&dword_21FD11000, v24, v25, "%p error:%{public}@:%ld:%{public}@ failed to acquire rb assertion:%{public}@ for process:%{public}@ explanation:%{public}@", buf, 0x48u);
      }
    }
  }

  else
  {
    v7 = bls_scenes_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) explanation];
      *buf = 134219010;
      v46 = WeakRetained;
      v47 = 2114;
      v48 = v8;
      v49 = 2114;
      v50 = v9;
      v51 = 1024;
      *v52 = v6;
      *&v52[4] = 2114;
      *&v52[6] = v10;
      _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEFAULT, "%p acquired rbs assertion:%{public}@ for process:%{public}@ current:%{BOOL}u explanation:%{public}@", buf, 0x30u);
    }

    if ((v6 & 1) == 0)
    {
      [*(a1 + 32) invalidate];
    }
  }

  if (*(a1 + 56))
  {
    v29 = bls_scenes_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v34 = [*(a1 + 56) explanation];
      v35 = *(a1 + 40);
      *buf = 134218498;
      v46 = WeakRetained;
      v47 = 2114;
      v48 = v34;
      v49 = 2114;
      v50 = v35;
      _os_log_debug_impl(&dword_21FD11000, v29, OS_LOG_TYPE_DEBUG, "%p:acquireAggregatedAssertion: invalidating old RBS assertion %{public}@ for process:%{public}@", buf, 0x20u);
    }

    [*(a1 + 56) invalidate];
  }

  v30 = *(a1 + 64);
  if (v30)
  {
    (*(v30 + 16))(v30, v5);
  }
}

- (BOOL)isCurrentRBSAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_rbsAssertion == assertionCopy;

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)invalidateAggregatedAssertion:(id)assertion
{
  v57 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  p_lock_aggregated = &self->_lock_aggregated;
  v6 = [(NSMapTable *)self->_lock_aggregated objectForKey:assertionCopy];

  if (!v6)
  {
    goto LABEL_30;
  }

  [(NSMapTable *)self->_lock_aggregated removeObjectForKey:assertionCopy];
  lock_acquiredAssertion = self->_lock_acquiredAssertion;
  if (lock_acquiredAssertion != assertionCopy)
  {
    goto LABEL_30;
  }

  self->_lock_acquiredAssertion = 0;

  v8 = self->_lock_rbsAssertion;
  lock_rbsAssertion = self->_lock_rbsAssertion;
  self->_lock_rbsAssertion = 0;

  lock_durationCalculator = self->_lock_durationCalculator;
  self->_lock_durationCalculator = 0;

  if ([(NSMapTable *)self->_lock_aggregated count])
  {
    v42 = assertionCopy;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = *p_lock_aggregated;
    v12 = [(NSMapTable *)v11 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (!v12)
    {
      v15 = 0;
      v14 = 0;
LABEL_24:

      assertionCopy = v42;
      goto LABEL_25;
    }

    v13 = v12;
    p_lock_durationCalculator = &self->_lock_durationCalculator;
    location = &self->_lock_acquiredAssertion;
    v40 = v8;
    selfCopy = self;
    v14 = 0;
    v15 = 0;
    v16 = *v45;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        p_lock_durationCalculator = [(NSMapTable *)*p_lock_aggregated objectForKey:v18, p_lock_durationCalculator];
        [p_lock_durationCalculator remainingDuration];
        v21 = v20;
        [v14 remainingDuration];
        if (v21 > v22)
        {
          v23 = p_lock_durationCalculator;

          v24 = v18;
          v14 = v23;
          v15 = v24;
        }
      }

      v13 = [(NSMapTable *)v11 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v13);

    if (v15)
    {
      createRBSAssertion = [v15 createRBSAssertion];
      v43 = 0;
      v26 = [createRBSAssertion acquireWithError:&v43];
      v27 = v43;
      v28 = bls_scenes_log();
      v29 = v28;
      self = selfCopy;
      if (v27 || (v26 & 1) == 0)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          bls_loggingString = [v27 bls_loggingString];
          processIdentity = selfCopy->_processIdentity;
          *buf = 134218754;
          v49 = selfCopy;
          v50 = 2114;
          v51 = bls_loggingString;
          v52 = 2114;
          v53 = createRBSAssertion;
          v54 = 2114;
          v55 = processIdentity;
          _os_log_fault_impl(&dword_21FD11000, v29, OS_LOG_TYPE_FAULT, "%p error:%{public}@ failed to reacquire rb assertion:%{public}@ for process:%{public}@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = selfCopy->_processIdentity;
        *buf = 134218498;
        v49 = selfCopy;
        v50 = 2114;
        v51 = createRBSAssertion;
        v52 = 2114;
        v53 = v30;
        _os_log_impl(&dword_21FD11000, v29, OS_LOG_TYPE_DEFAULT, "%p (reacquire) acquired rbs assertion:%{public}@ for process:%{public}@", buf, 0x20u);
      }

      objc_storeStrong(location, v15);
      v31 = selfCopy->_lock_rbsAssertion;
      selfCopy->_lock_rbsAssertion = createRBSAssertion;
      v11 = createRBSAssertion;

      objc_storeStrong(p_lock_durationCalculator, v14);
      v8 = v40;
      goto LABEL_24;
    }

    self = selfCopy;
    assertionCopy = v42;
    v8 = v40;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

LABEL_25:
  if (v8)
  {
    v32 = bls_scenes_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [(BLSHAggregateProcessAssertion *)self invalidateAggregatedAssertion:v8, v32];
    }

    [(RBSAssertion *)v8 invalidate];
  }

LABEL_30:
  v33 = self->_lock_acquiredAssertion;
  if (!v33 && [(NSMapTable *)*p_lock_aggregated count])
  {
    v34 = bls_scenes_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [(BLSHAggregateProcessAssertion *)self invalidateAggregatedAssertion:v34];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v33 != 0;
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints
{
  v3 = [(BLSHAggregateProcessAssertion *)self debugDescription];
  v4 = BLSStateDataWithTitleDescriptionAndHints();

  return v4;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  os_unfair_lock_lock(&self->_lock);
  v4 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  BSContinuousMachTimeNow();
  v6 = [v3 appendDouble:@"elapsed" withName:3 decimalPrecision:v5 - self->_initTimestamp];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__BLSHAggregateProcessAssertion_debugDescription__block_invoke;
  v13 = &unk_27841E538;
  v14 = v3;
  selfCopy = self;
  v7 = v3;
  [v7 appendBodySectionWithName:0 multilinePrefix:0 block:&v10];
  os_unfair_lock_unlock(&self->_lock);
  build = [v7 build];

  return build;
}

void __49__BLSHAggregateProcessAssertion_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"RBSAssertion"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"acquiredAssertion"];
  v4 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 8) keyEnumerator];
  v5 = [v6 allObjects];
  [v4 appendArraySection:v5 withName:@"aggregatedAssertions" skipIfEmpty:0];
}

+ (void)classLock_aggregateForProcessIdentity:(char *)a1 shouldCreate:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"processIdentity != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireAggregatedAssertion:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_lock_aggregated objectForKey:assertion] == nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireAggregatedAssertion:(char *)a1 completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated == NO"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidateAggregatedAssertion:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 explanation];
  v6 = 134218242;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p invalidateAggregatedAssertion: invalidating RBS assertion %{public}@", &v6, 0x16u);
}

- (void)invalidateAggregatedAssertion:(NSObject *)a3 .cold.2(uint64_t a1, id *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [*a2 count];
  v7 = *a2;
  v8 = 134218498;
  v9 = a1;
  v10 = 1024;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_fault_impl(&dword_21FD11000, a3, OS_LOG_TYPE_FAULT, "%p shouldInvalidate but still has aggregated count:%d — %@", &v8, 0x1Cu);
}

@end