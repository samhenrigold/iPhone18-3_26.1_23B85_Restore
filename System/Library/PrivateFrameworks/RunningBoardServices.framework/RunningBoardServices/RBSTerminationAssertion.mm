@interface RBSTerminationAssertion
- (BOOL)acquireWithError:(id *)error;
- (BOOL)invalidateWithError:(id *)error;
- (BOOL)isValid;
- (BOOL)processExists;
- (RBSTerminationAssertion)initWithPredicate:(id)predicate context:(id)context;
- (RBSTerminationAssertion)initWithPredicate:(id)predicate context:(id)context allowLaunch:(id)launch;
- (RBSTerminationAssertion)initWithPredicate:(id)predicate context:(id)context allowLaunch:(id)launch service:(id)service;
- (RBSTerminationAssertion)initWithTarget:(id)target context:(id)context;
- (void)_notifyObserversOfProcessExit;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)setupMonitor;
@end

@implementation RBSTerminationAssertion

- (RBSTerminationAssertion)initWithTarget:(id)target context:(id)context
{
  contextCopy = context;
  targetCopy = target;
  processIdentity = [targetCopy processIdentity];
  isEmbeddedApplication = [processIdentity isEmbeddedApplication];

  if (isEmbeddedApplication)
  {
    processIdentity2 = [targetCopy processIdentity];

    embeddedApplicationIdentifier = [processIdentity2 embeddedApplicationIdentifier];
    v12 = [RBSProcessPredicate predicateMatchingBundleIdentifier:embeddedApplicationIdentifier];
    v13 = [(RBSTerminationAssertion *)self initWithPredicate:v12 context:contextCopy];

    v14 = v13;
  }

  else
  {
    processIdentity2 = [RBSProcessPredicate predicateMatchingTarget:targetCopy];

    v15 = [(RBSTerminationAssertion *)self initWithPredicate:processIdentity2 context:contextCopy];
    v14 = v15;
  }

  return v14;
}

void __39__RBSTerminationAssertion_setupMonitor__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:5];
  [v3 setStateDescriptor:v4];
  v5 = *(a1 + 32);
  a1 += 32;
  v10[0] = *(v5 + 40);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 setPredicates:v6];

  objc_initWeak(&location, *a1);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__RBSTerminationAssertion_setupMonitor__block_invoke_2;
  v7[3] = &unk_1E7276A78;
  objc_copyWeak(&v8, &location);
  v7[4] = *a1;
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __39__RBSTerminationAssertion_setupMonitor__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    if (*&v7[16]._os_unfair_lock_opaque == 1)
    {
      v8 = [v5 previousState];
      v9 = [v8 terminationResistance];
      if (v9 <= [*&v7[8]._os_unfair_lock_opaque maximumTerminationResistance])
      {
      }

      else
      {
        v10 = [v5 state];
        v11 = [v10 terminationResistance];
        v12 = [*&v7[8]._os_unfair_lock_opaque maximumTerminationResistance];

        if (v11 <= v12)
        {
          v13 = [[RBSTerminateRequest alloc] initWithPredicate:*&v7[8]._os_unfair_lock_opaque context:*(*(a1 + 32) + 48) allowLaunch:*&v7[14]._os_unfair_lock_opaque service:?];
          v14 = 0;
          [v13 execute:&v14];
        }
      }
    }

    os_unfair_lock_unlock(v7 + 2);
  }
}

- (RBSTerminationAssertion)initWithPredicate:(id)predicate context:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  v8 = +[RBSConnection sharedInstance];
  v9 = [(RBSTerminationAssertion *)self initWithPredicate:predicateCopy context:contextCopy allowLaunch:0 service:v8];

  return v9;
}

- (RBSTerminationAssertion)initWithPredicate:(id)predicate context:(id)context allowLaunch:(id)launch
{
  launchCopy = launch;
  contextCopy = context;
  predicateCopy = predicate;
  v11 = +[RBSConnection sharedInstance];
  v12 = [(RBSTerminationAssertion *)self initWithPredicate:predicateCopy context:contextCopy allowLaunch:launchCopy service:v11];

  return v12;
}

- (RBSTerminationAssertion)initWithPredicate:(id)predicate context:(id)context allowLaunch:(id)launch service:(id)service
{
  predicateCopy = predicate;
  contextCopy = context;
  launchCopy = launch;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = RBSTerminationAssertion;
  v15 = [(RBSTerminationAssertion *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_predicate, predicate);
    objc_storeStrong(&v16->_allow, launch);
    v16->_processExists = 1;
    v16->_state = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v16->_observers;
    v16->_observers = weakObjectsHashTable;

    objc_storeStrong(&v16->_terminateContext, context);
    objc_storeStrong(&v16->_service, service);
  }

  return v16;
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  isValid = [(RBSAssertion *)self->_assertion isValid];
  os_unfair_lock_unlock(&self->_lock);
  return isValid;
}

- (BOOL)processExists
{
  os_unfair_lock_lock(&self->_lock);
  processExists = self->_processExists;
  os_unfair_lock_unlock(&self->_lock);
  return processExists;
}

- (BOOL)acquireWithError:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  self->_observersHaveBeenNotified = 0;
  if (!self->_state)
  {
    v28 = [[RBSTerminateRequest alloc] initWithPredicate:self->_terminateContext context:self->_allow allowLaunch:self->_service service:?];
    [(RBSTerminationAssertion *)&self->super.isa setupMonitor];
    v49 = 0;
    v50 = 0;
    v29 = [v28 execute:&v50 error:&v49];
    v30 = v50;
    v31 = v50;
    v7 = v49;
    p_assertion = &self->_assertion;
    objc_storeStrong(&self->_assertion, v30);
    v9 = 1;
    self->_state = 1;
    if (v29)
    {
      v10 = 0;
      goto LABEL_42;
    }

    if (*p_assertion)
    {
      if ([v7 code] == 4)
      {

        v7 = 0;
        v10 = 0;
LABEL_39:
        v9 = 1;
        goto LABEL_42;
      }

      if ([v7 code] == 3)
      {

        monitor = self->_monitor;
        self->_processExists = 0;
        [(RBSProcessMonitor *)monitor invalidate];
        v34 = self->_monitor;
        self->_monitor = 0;

        v7 = 0;
        v10 = 1;
        goto LABEL_39;
      }

      [(RBSAssertion *)self->_assertion invalidate];
      assertion = self->_assertion;
      self->_assertion = 0;

      [(RBSProcessMonitor *)self->_monitor invalidate];
      v36 = self->_monitor;
      self->_monitor = 0;
    }

    else
    {
      [(RBSProcessMonitor *)self->_monitor invalidate];
      v32 = self->_monitor;
      self->_monitor = 0;
    }

    v10 = 0;
    v9 = 0;
    self->_state = 2;
LABEL_42:

    if (!*p_assertion)
    {
      goto LABEL_24;
    }

    goto LABEL_4;
  }

  v5 = MEMORY[0x1E696ABC0];
  v54 = *MEMORY[0x1E696A588];
  v55[0] = @"Assertion is in wrong state to be acquired";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v7 = [v5 errorWithDomain:@"RBSAssertionErrorDomain" code:2 userInfo:v6];

  p_assertion = &self->_assertion;
  if (!self->_assertion)
  {
    os_unfair_lock_unlock(&self->_lock);
    v9 = 0;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
LABEL_4:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = self->_observers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v12)
  {
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*p_assertion addObserver:*(*(&v45 + 1) + 8 * i)];
      }

      v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v12);
  }

  if (!*p_assertion || !self->_monitor || v7)
  {
    os_unfair_lock_unlock(&self->_lock);
    if (!v10)
    {
      goto LABEL_28;
    }

LABEL_27:
    [(RBSTerminationAssertion *)self _notifyObserversOfProcessExit];
    goto LABEL_28;
  }

  predicate = self->_predicate;
  v16 = +[RBSProcessStateDescriptor descriptor];
  service = self->_service;
  v44 = 0;
  v18 = [RBSProcessState statesForPredicate:predicate withDescriptor:v16 service:service error:&v44];
  v19 = v44;

  if (v19)
  {
    v20 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A588];
    v52 = @"Could not get list of running apps";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v7 = [v20 errorWithDomain:@"RBSAssertionErrorDomain" code:2 userInfo:v21];

    v23 = rbs_assertion_log(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(RBSTerminationAssertion *)self acquireWithError:v23];
    }
  }

  else
  {
    v7 = 0;
  }

  v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  runningHandles = self->_runningHandles;
  self->_runningHandles = v24;

  self->_deathMonitorsSetUp = 0;
  objc_initWeak(&location, self);
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __44__RBSTerminationAssertion_acquireWithError___block_invoke;
  v40 = &unk_1E7276AF0;
  selfCopy = self;
  objc_copyWeak(&v42, &location);
  [v18 enumerateObjectsUsingBlock:&v37];
  self->_deathMonitorsSetUp = 1;
  if (![(NSMutableSet *)self->_runningHandles count:v37])
  {
    self->_processExists = 0;
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_27;
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);

LABEL_24:
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (error)
  {
    v26 = v7;
    *error = v7;
  }

  return v9;
}

void __44__RBSTerminationAssertion_acquireWithError___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isRunning])
  {
    v4 = [v3 process];
    v5 = rbs_assertion_log([*(*(a1 + 32) + 80) addObject:v4]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Setting up death monitor for %@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__RBSTerminationAssertion_acquireWithError___block_invoke_16;
    v6[3] = &unk_1E7276AC8;
    objc_copyWeak(&v7, (a1 + 40));
    [v4 monitorForDeath:v6];
    objc_destroyWeak(&v7);
  }
}

void __44__RBSTerminationAssertion_acquireWithError___block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v6 = rbs_assertion_log([*(v5 + 80) removeObject:v3]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_DEFAULT, "Death monitor triggered for %@", &v8, 0xCu);
    }

    if (*(v5 + 88) == 1)
    {
      v7 = [*(v5 + 80) count];
      os_unfair_lock_unlock((v5 + 8));
      if (!v7)
      {
        *(v5 + 72) = 0;
        [(RBSTerminationAssertion *)v5 _notifyObserversOfProcessExit];
      }
    }

    else
    {
      os_unfair_lock_unlock((v5 + 8));
    }
  }
}

- (BOOL)invalidateWithError:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_state == 1)
  {
    v6 = [(RBSAssertion *)self->_assertion invalidateWithError:error];
  }

  else
  {
    if (error)
    {
      v7 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A588];
      v13[0] = @"Assertion is in wrong state to be invalidated";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *error = [v7 errorWithDomain:@"RBSAssertionErrorDomain" code:2 userInfo:v8];
    }

    v9 = rbs_assertion_log(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RBSTerminationAssertion invalidateWithError:v9];
    }

    v6 = 0;
  }

  [(RBSProcessMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(RBSAssertion *)self->_assertion invalidate];
  [(RBSProcessMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  [(RBSAssertion *)self->_assertion addObserver:observerCopy];
  processExists = self->_processExists;
  os_unfair_lock_unlock(&self->_lock);
  if (!processExists)
  {
    [observerCopy assertionTargetProcessDidExit:self];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  [(RBSAssertion *)self->_assertion removeObserver:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

void __56__RBSTerminationAssertion__notifyObserversOfProcessExit__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) assertionTargetProcessDidExit:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setupMonitor
{
  if (result)
  {
    v1 = result;
    v2 = [[RBSProcessMonitor alloc] _initWithService:?];
    v3 = v1[3];
    v1[3] = v2;

    v4 = v1[3];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__RBSTerminationAssertion_setupMonitor__block_invoke;
    v5[3] = &unk_1E7276AA0;
    v5[4] = v1;
    return [v4 updateConfiguration:v5];
  }

  return result;
}

- (void)_notifyObserversOfProcessExit
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = [*(self + 96) copy];
    v3 = *(self + 89);
    *(self + 89) = 1;
    os_unfair_lock_unlock((self + 8));
    if ((v3 & 1) == 0)
    {
      v5 = rbs_assertion_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Notify termination observers of process exit", buf, 2u);
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __56__RBSTerminationAssertion__notifyObserversOfProcessExit__block_invoke;
      v6[3] = &unk_1E7276418;
      v7 = v2;
      selfCopy = self;
      [RBSWorkloop performCallout:v6];
    }
  }
}

- (void)acquireWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "Could not get list of running states for %@", &v2, 0xCu);
}

@end