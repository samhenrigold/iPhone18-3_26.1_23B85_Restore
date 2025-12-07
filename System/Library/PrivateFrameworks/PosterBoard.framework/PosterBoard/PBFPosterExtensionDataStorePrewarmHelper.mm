@interface PBFPosterExtensionDataStorePrewarmHelper
- (PBFPosterExtensionDataStorePrewarmHelper)initWithPlan:(id)plan;
- (id)_executePhase:(id)phase executionBlock:(id)block context:(id)context timeout:(double)timeout;
- (void)_fireCompletionHandler:(id)handler reason:(id)reason;
- (void)_markAsDoneAndFireCompletionHandlers;
- (void)appendCompletionObserver:(id)observer;
- (void)dealloc;
- (void)executePrewarmWithExecutor:(id)executor completion:(id)completion;
- (void)finishedWithError:(id)error;
- (void)invalidate;
- (void)noteNonFatalError:(id)error;
@end

@implementation PBFPosterExtensionDataStorePrewarmHelper

- (PBFPosterExtensionDataStorePrewarmHelper)initWithPlan:(id)plan
{
  v43 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  if (!planCopy)
  {
    [(PBFPosterExtensionDataStorePrewarmHelper *)a2 initWithPlan:?];
  }

  v6 = planCopy;
  v41.receiver = self;
  v41.super_class = PBFPosterExtensionDataStorePrewarmHelper;
  v7 = [(PBFPosterExtensionDataStorePrewarmHelper *)&v41 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [v6 copy];
    plan = v8->_plan;
    v8->_plan = v9;

    v11 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v8->_invalidationFlag;
    v8->_invalidationFlag = v11;

    v13 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    finishedFlag = v8->_finishedFlag;
    v8->_finishedFlag = v13;

    v15 = objc_opt_new();
    lock_fatalErrorForPhase = v8->_lock_fatalErrorForPhase;
    v8->_lock_fatalErrorForPhase = v15;

    v17 = objc_opt_new();
    lock_nonFatalErrorsForPhase = v8->_lock_nonFatalErrorsForPhase;
    v8->_lock_nonFatalErrorsForPhase = v17;

    v19 = objc_opt_new();
    v20 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v6;
    prewarmPhasePlan = [v6 prewarmPhasePlan];
    v22 = [prewarmPhasePlan countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        v25 = 0;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(prewarmPhasePlan);
          }

          v26 = *(*(&v37 + 1) + 8 * v25);
          v27 = dispatch_group_create();
          [v19 setObject:v27 forKeyedSubscript:v26];

          v28 = objc_opt_new();
          [v20 setObject:v28 forKeyedSubscript:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [prewarmPhasePlan countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v23);
    }

    v29 = [v19 copy];
    dispatchGroupForPhase = v8->_dispatchGroupForPhase;
    v8->_dispatchGroupForPhase = v29;

    v31 = [v20 copy];
    completionFlagForPhase = v8->_completionFlagForPhase;
    v8->_completionFlagForPhase = v31;

    [(PBFPosterExtensionDataStorePrewarmHelper *)v8 setActivePhase:@"PBFPrewarmPhaseNull"];
    inactive = dispatch_workloop_create_inactive("com.apple.PosterBoard.prewarmWorkloop");
    workloop = v8->_workloop;
    v8->_workloop = inactive;

    dispatch_workloop_set_autorelease_frequency(v8->_workloop, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = v36;
  }

  return v8;
}

- (void)dealloc
{
  [(PBFPosterExtensionDataStorePrewarmHelper *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBFPosterExtensionDataStorePrewarmHelper;
  [(PBFPosterExtensionDataStorePrewarmHelper *)&v3 dealloc];
}

- (void)executePrewarmWithExecutor:(id)executor completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  executorCopy = executor;
  completionCopy = completion;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    plan = [(PBFPosterExtensionDataStorePrewarmHelper *)self plan];
    activePhase = [(PBFPosterExtensionDataStorePrewarmHelper *)self activePhase];
    v10 = [activePhase isEqual:@"PBFPrewarmPhaseNull"];

    if (v10)
    {
      prewarmPhasePlan = [plan prewarmPhasePlan];
      v12 = [prewarmPhasePlan count];

      if (!v12)
      {
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 1, 0, 0);
        }

        goto LABEL_16;
      }

      os_unfair_lock_lock(&self->_lock);
      v13 = [completionCopy copy];
      lock_completion = self->_lock_completion;
      self->_lock_completion = v13;

      BSAbsoluteMachTimeNow();
      self->_lock_startTime = v15;
      os_unfair_lock_unlock(&self->_lock);
      v17 = PBFLogPrewarm(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [plan identifier];
        *buf = 138543362;
        v36 = identifier;
        _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "(%{public}@) Executing prewarm", buf, 0xCu);
      }

      v20 = PBFLogPrewarm(v19);
      v21 = os_signpost_id_generate(v20);

      v23 = PBFLogPrewarm(v22);
      v24 = v23;
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        prewarmPhasePlan2 = [plan prewarmPhasePlan];
        *buf = 138543362;
        v36 = prewarmPhasePlan2;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "ExecutePrewarm", "Phases: %{public}@", buf, 0xCu);
      }

      v26 = self->_invalidationFlag;
      v27 = self->_workloop;
      dispatch_activate(v27);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__PBFPosterExtensionDataStorePrewarmHelper_executePrewarmWithExecutor_completion___block_invoke;
      block[3] = &unk_2782C9400;
      v30 = plan;
      v31 = v26;
      v34 = v21;
      selfCopy = self;
      v33 = executorCopy;
      v28 = v26;
      dispatch_async(v27, block);
    }

    else
    {
      if (!completionCopy)
      {
LABEL_16:

        goto LABEL_17;
      }

      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:PBFPosterExtensionDataStorePrewarmHelperErrorDomain code:-31339 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v28);
    }

    goto LABEL_16;
  }

  if (completionCopy)
  {
    plan = [MEMORY[0x277CCA9B8] errorWithDomain:PBFPosterExtensionDataStorePrewarmHelperErrorDomain code:-31342 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, plan);
    goto LABEL_16;
  }

LABEL_17:
}

void __82__PBFPosterExtensionDataStorePrewarmHelper_executePrewarmWithExecutor_completion___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = _os_activity_create(&dword_21B526000, "prewarm", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DETACHED);
  v46 = objc_opt_new();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [*(a1 + 32) prewarmPhasePlan];
  v3 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v48;
    v44 = v2;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v48 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * v6);
        v8 = PBFLogPrewarm(v3);
        v9 = v8;
        v10 = *(a1 + 64);
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          *buf = 138543362;
          v53 = v7;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ExecutePrewarmPhase", "Phase: %{public}@", buf, 0xCu);
        }

        v11 = BSAbsoluteMachTimeNow();
        v13 = v12;
        v14 = PBFLogPrewarm(v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*(a1 + 32) identifier];
          *buf = 138543618;
          v53 = v15;
          v54 = 2114;
          v55 = v7;
          _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Start phase %{public}@", buf, 0x16u);
        }

        v16 = [*(a1 + 40) getFlag];
        if (v16)
        {
          v21 = PBFLogPrewarm(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [*(a1 + 32) identifier];
            *buf = 138543618;
            v53 = v32;
            v54 = 2114;
            v55 = v7;
            _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@) Prewarm invalidated @ phase %{public}@", buf, 0x16u);
          }

          v2 = v44;
          goto LABEL_34;
        }

        [*(a1 + 48) setActivePhase:v7];
        [*(a1 + 32) timeoutIntervalForPhase:v7];
        v18 = v17;
        v19 = [*(a1 + 32) executionBlockForPhase:v7];
        v20 = v19;
        if (!v19)
        {
          v19 = *(a1 + 56);
        }

        v21 = _Block_copy(v19);

        [*(a1 + 48) _executePhase:v7 executionBlock:v21 context:v46 timeout:v18];
        v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v23 = BSAbsoluteMachTimeNow();
        v25 = v24;
        v26 = PBFLogPrewarm(v23);
        v27 = v26;
        v28 = *(a1 + 64);
        if (v22 != 0.0)
        {
          if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
          {
            *buf = 138543362;
            v53 = v7;
            _os_signpost_emit_with_name_impl(&dword_21B526000, v27, OS_SIGNPOST_INTERVAL_END, v28, "ExecutePrewarmPhase", "Phase: %{public}@", buf, 0xCu);
          }

          v34 = PBFLogPrewarm(v33);
          v2 = v44;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v43 = [*(a1 + 32) identifier];
            *buf = 138543874;
            v53 = v43;
            v54 = 2114;
            v55 = v7;
            v56 = 2114;
            v57 = v22;
            _os_log_error_impl(&dword_21B526000, v34, OS_LOG_TYPE_ERROR, "(%{public}@) Fatal error @ phase %{public}@: %{public}@", buf, 0x20u);
          }

          v36 = PBFLogPrewarm(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [*(a1 + 32) identifier];
            *buf = 138543874;
            v53 = v37;
            v54 = 2114;
            v55 = v7;
            v56 = 2048;
            v57 = v25 - v13;
            _os_log_impl(&dword_21B526000, v36, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ execution time: %f seconds", buf, 0x20u);
          }

LABEL_34:
          goto LABEL_35;
        }

        if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *buf = 138543362;
          v53 = v7;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v27, OS_SIGNPOST_INTERVAL_END, v28, "ExecutePrewarmPhase", "Phase: %{public}@", buf, 0xCu);
        }

        v30 = PBFLogPrewarm(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [*(a1 + 32) identifier];
          *buf = 138543874;
          v53 = v31;
          v54 = 2114;
          v55 = v7;
          v56 = 2048;
          v57 = v25 - v13;
          _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "(%{public}@) Finished phase %{public}@; execution time: %f seconds", buf, 0x20u);
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
      v4 = v3;
      v2 = v44;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_35:

  [*(a1 + 48) setActivePhase:@"PBFPrewarmPhaseNull"];
  [*(a1 + 48) _markAsDoneAndFireCompletionHandlers];
  os_activity_scope_leave(&state);
  v39 = PBFLogPrewarm(v38);
  v40 = v39;
  v41 = *(a1 + 64);
  if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    v42 = [*(a1 + 32) prewarmPhasePlan];
    *buf = 138543362;
    v53 = v42;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v40, OS_SIGNPOST_INTERVAL_END, v41, "ExecutePrewarm", "Phases: %{public}@", buf, 0xCu);
  }
}

- (void)appendCompletionObserver:(id)observer
{
  v15 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    if (([(BSAtomicFlag *)self->_finishedFlag getFlag]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
      v6 = PBFLogPrewarm(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v13 = 138543362;
        v14 = identifier;
        _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Firing completion observer after finish", &v13, 0xCu);
      }

      [(PBFPosterExtensionDataStorePrewarmHelper *)self _fireCompletionHandler:observerCopy reason:@"Post finish fire completion handler for prewarmer"];
    }

    else
    {
      lock_completionObservers = self->_lock_completionObservers;
      if (!lock_completionObservers)
      {
        v9 = objc_opt_new();
        v10 = self->_lock_completionObservers;
        self->_lock_completionObservers = v9;

        lock_completionObservers = self->_lock_completionObservers;
      }

      v11 = [observerCopy copy];
      v12 = _Block_copy(v11);
      [(NSMutableArray *)lock_completionObservers bs_safeAddObject:v12];

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (id)_executePhase:(id)phase executionBlock:(id)block context:(id)context timeout:(double)timeout
{
  v52[1] = *MEMORY[0x277D85DE8];
  phaseCopy = phase;
  blockCopy = block;
  contextCopy = context;
  v13 = contextCopy;
  if (phaseCopy && blockCopy)
  {
    v14 = [(NSDictionary *)self->_dispatchGroupForPhase objectForKeyedSubscript:phaseCopy];
    dispatch_group_enter(v14);
    v15 = blockCopy[2](blockCopy, phaseCopy, v13, self);
    v16 = [v15 copy];

    os_unfair_lock_lock(&self->_lock);
    v17 = _Block_copy(v16);
    lock_cancellationHandlerForCurrentPhase = self->_lock_cancellationHandlerForCurrentPhase;
    self->_lock_cancellationHandlerForCurrentPhase = v17;

    os_unfair_lock_unlock(&self->_lock);
    v19 = dispatch_time(0, (timeout * 1000000000.0));
    if (dispatch_group_wait(v14, v19))
    {
      if (v16)
      {
        v20 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:phaseCopy];
        getFlag = [v20 getFlag];

        if ((getFlag & 1) == 0)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __89__PBFPosterExtensionDataStorePrewarmHelper__executePhase_executionBlock_context_timeout___block_invoke;
          block[3] = &unk_2782C6068;
          v42 = v16;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = PBFPosterExtensionDataStorePrewarmHelperErrorDomain;
      v49 = @"phase";
      v50 = phaseCopy;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v25 = [v22 errorWithDomain:v23 code:-31340 userInfo:v24];
      [(PBFPosterExtensionDataStorePrewarmHelper *)self noteNonFatalError:v25];

      v27 = PBFLogPrewarm(v26);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
      *buf = 138543874;
      v44 = identifier;
      v45 = 2114;
      v46 = phaseCopy;
      v47 = 2048;
      timeoutCopy = timeout;
      _os_log_error_impl(&dword_21B526000, v27, OS_LOG_TYPE_ERROR, "(%{public}@) phase %{public}@ exceeded timeout of %f seconds", buf, 0x20u);
    }

    else
    {
      v27 = PBFLogPrewarm(0);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        os_unfair_lock_lock(&self->_lock);
        v34 = self->_lock_cancellationHandlerForCurrentPhase;
        self->_lock_cancellationHandlerForCurrentPhase = 0;

        v33 = [(NSMutableDictionary *)self->_lock_fatalErrorForPhase objectForKeyedSubscript:phaseCopy];
        v35 = [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase objectForKey:phaseCopy];
        v36 = [v35 count];
        if (v36)
        {
          v37 = PBFLogPrewarm(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
            *buf = 138543874;
            v44 = identifier2;
            v45 = 2114;
            v46 = phaseCopy;
            v47 = 2114;
            timeoutCopy = *&v35;
            _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ received non fatal errors: %{public}@", buf, 0x20u);
          }
        }

        v39 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:phaseCopy];
        [v39 setFlag:1];

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_23;
      }

      identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
      *buf = 138543618;
      v44 = identifier;
      v45 = 2114;
      v46 = phaseCopy;
      _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ received completion", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v29 = PBFLogPrewarm(contextCopy);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [PBFPosterExtensionDataStorePrewarmHelper _executePhase:executionBlock:context:timeout:];
  }

  v30 = MEMORY[0x277CCA9B8];
  v31 = PBFPosterExtensionDataStorePrewarmHelperErrorDomain;
  if (phaseCopy)
  {
    v32 = phaseCopy;
  }

  else
  {
    v32 = @"(unknown phase)";
  }

  v51 = @"phase";
  v52[0] = v32;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v33 = [v30 errorWithDomain:v31 code:-31341 userInfo:v14];
LABEL_23:

  return v33;
}

- (void)_markAsDoneAndFireCompletionHandlers
{
  OUTLINED_FUNCTION_5_5();
  identifier = [OUTLINED_FUNCTION_4_5(v0) identifier];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_fireCompletionHandler:(id)handler reason:(id)reason
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    reasonCopy = reason;
    os_unfair_lock_lock(&self->_lock);
    v8 = self->_lock_finalizedAmalgamtedNonfatalErrors;
    v9 = self->_lock_finalizedError;
    os_unfair_lock_unlock(&self->_lock);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__PBFPosterExtensionDataStorePrewarmHelper__fireCompletionHandler_reason___block_invoke;
    v12[3] = &unk_2782C6180;
    v14 = v8;
    v15 = handlerCopy;
    v13 = v9;
    v10 = v8;
    v11 = v9;
    PBFDispatchAsyncWithString(reasonCopy, QOS_CLASS_USER_INITIATED, v12);
  }
}

- (void)invalidate
{
  identifier = [OUTLINED_FUNCTION_4_5(self) identifier];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)noteNonFatalError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    activePhase = [(PBFPosterExtensionDataStorePrewarmHelper *)self activePhase];
    getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
    v7 = getFlag;
    v8 = PBFLogPrewarm(getFlag);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v16 = 138543874;
        v17 = identifier;
        v18 = 2114;
        v19 = activePhase;
        v20 = 2114;
        v21 = errorCopy;
        _os_log_error_impl(&dword_21B526000, v8, OS_LOG_TYPE_ERROR, "(%{public}@) Received non fatal error after invalidation for phase %{public}@: %{public}@", &v16, 0x20u);
      }
    }

    else
    {
      if (v9)
      {
        identifier2 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v16 = 138543874;
        v17 = identifier2;
        v18 = 2114;
        v19 = activePhase;
        v20 = 2114;
        v21 = errorCopy;
        _os_log_error_impl(&dword_21B526000, v8, OS_LOG_TYPE_ERROR, "(%{public}@) Received non fatal error for phase %{public}@: %{public}@", &v16, 0x20u);
      }

      v11 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:activePhase];
      getFlag2 = [v11 getFlag];

      if (getFlag2)
      {
        goto LABEL_12;
      }

      v13 = [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase objectForKeyedSubscript:activePhase];

      if (!v13)
      {
        v14 = objc_opt_new();
        [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase setObject:v14 forKeyedSubscript:activePhase];
      }

      v8 = [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase objectForKeyedSubscript:activePhase];
      [v8 addObject:errorCopy];
    }

LABEL_12:
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)finishedWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  activePhase = [(PBFPosterExtensionDataStorePrewarmHelper *)self activePhase];
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (getFlag)
  {
    v7 = PBFLogPrewarm(getFlag);
    v8 = v7;
    if (errorCopy)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v16 = 138543874;
        v17 = identifier;
        v18 = 2114;
        v19 = activePhase;
        v20 = 2114;
        v21 = errorCopy;
        _os_log_error_impl(&dword_21B526000, v8, OS_LOG_TYPE_ERROR, "(%{public}@) Received fatal error after invalidation for phase %{public}@: %{public}@", &v16, 0x20u);
LABEL_13:
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
      v16 = 138543618;
      v17 = identifier;
      v18 = 2114;
      v19 = activePhase;
      _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@) Finished %{public}@ but prewarmer was invalidated", &v16, 0x16u);
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v10 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:activePhase];
  v11 = [v10 setFlag:1];

  if (!v11)
  {
LABEL_15:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_16;
  }

  if (errorCopy)
  {
    [(NSMutableDictionary *)self->_lock_fatalErrorForPhase setObject:errorCopy forKeyedSubscript:activePhase];
  }

  v12 = [(NSDictionary *)self->_dispatchGroupForPhase objectForKeyedSubscript:activePhase];
  v13 = PBFLogPrewarm(v12);
  v14 = v13;
  if (errorCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterExtensionDataStorePrewarmHelper finishedWithError:];
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
    v16 = 138543618;
    v17 = identifier2;
    v18 = 2114;
    v19 = activePhase;
    _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) received finish for phase %{public}@", &v16, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    dispatch_group_leave(v12);
  }

LABEL_16:
}

- (void)initWithPlan:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"plan"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_executePhase:executionBlock:context:timeout:.cold.1()
{
  OUTLINED_FUNCTION_5_5();
  v1 = [OUTLINED_FUNCTION_4_5(v0) identifier];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)finishedWithError:.cold.1()
{
  OUTLINED_FUNCTION_5_5();
  v1 = [OUTLINED_FUNCTION_4_5(v0) identifier];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end