@interface PBFPosterExtensionReloadDescriptorsOperation
- (BOOL)hasUniqueSessionInfo;
- (NSArray)postRefreshPosterDescriptors;
- (NSString)description;
- (PBFPosterExtensionReloadDescriptorsOperation)initWithUpdatingService:(id)service extensionBundleIdentifier:(id)identifier sessionInfo:(id)info preRefreshPosterDescriptors:(id)descriptors runtimeAssertionProvider:(id)provider timeout:(double)timeout powerLogReason:(int64_t)reason;
- (double)_lock_executionTime;
- (double)executionTime;
- (id)_userInfoForErrors;
- (void)_finishWithError:(id)error postRefreshPosterPathsAssertion:(id)assertion;
- (void)_fireCompletionObservers:(id)observers instance:(id)instance error:(id)error;
- (void)_setup;
- (void)addCompletionObserver:(id)observer;
- (void)cancel;
- (void)dealloc;
- (void)invalidateAssertionsWithCompletion:(id)completion;
@end

@implementation PBFPosterExtensionReloadDescriptorsOperation

- (BOOL)hasUniqueSessionInfo
{
  sessionInfo = self->_sessionInfo;
  if (sessionInfo)
  {
    LOBYTE(sessionInfo) = [(PRSPosterUpdateSessionInfo *)sessionInfo isEmpty]^ 1;
  }

  return sessionInfo;
}

- (NSArray)postRefreshPosterDescriptors
{
  os_unfair_recursive_lock_lock_with_options();
  paths = [(PFPosterPathsAssertion *)self->_lock_postRefreshPosterPathsAssertion paths];
  os_unfair_recursive_lock_unlock();

  return paths;
}

- (PBFPosterExtensionReloadDescriptorsOperation)initWithUpdatingService:(id)service extensionBundleIdentifier:(id)identifier sessionInfo:(id)info preRefreshPosterDescriptors:(id)descriptors runtimeAssertionProvider:(id)provider timeout:(double)timeout powerLogReason:(int64_t)reason
{
  serviceCopy = service;
  identifierCopy = identifier;
  infoCopy = info;
  descriptorsCopy = descriptors;
  providerCopy = provider;
  v21 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v21)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v22 = infoCopy;
  if (v22)
  {
    NSClassFromString(&cfstr_Prsposterupdat_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
    }
  }

  v23 = descriptorsCopy;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v23)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v24 = serviceCopy;
  NSClassFromString(&cfstr_Prupdatingserv.isa);
  if (!v24)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v25 = providerCopy;
  if (!v25)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v26 = v25;
  if (([v25 conformsToProtocol:&unk_282D45FB0] & 1) == 0)
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  if (BSFloatLessThanOrEqualToFloat())
  {
    [PBFPosterExtensionReloadDescriptorsOperation initWithUpdatingService:a2 extensionBundleIdentifier:? sessionInfo:? preRefreshPosterDescriptors:? runtimeAssertionProvider:? timeout:? powerLogReason:?];
  }

  v36.receiver = self;
  v36.super_class = PBFPosterExtensionReloadDescriptorsOperation;
  v27 = [(NSBlockOperation *)&v36 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_updatingService, service);
    v29 = [v21 copy];
    extensionBundleIdentifier = v28->_extensionBundleIdentifier;
    v28->_extensionBundleIdentifier = v29;

    objc_storeStrong(&v28->_sessionInfo, info);
    v31 = [v23 copy];
    preRefreshPosterDescriptors = v28->_preRefreshPosterDescriptors;
    v28->_preRefreshPosterDescriptors = v31;

    v28->_timeoutInterval = timeout;
    objc_storeStrong(&v28->_runtimeAssertionProvider, provider);
    v28->_powerLogReason = reason;
    v28->_lock = 0;
    [(PBFPosterExtensionReloadDescriptorsOperation *)v28 _setup];
  }

  return v28;
}

- (void)invalidateAssertionsWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_recursive_lock_lock_with_options();
  v5 = self->_lock_posterBoardPosterUpdateRuntimeAssertion;
  lock_posterBoardPosterUpdateRuntimeAssertion = self->_lock_posterBoardPosterUpdateRuntimeAssertion;
  self->_lock_posterBoardPosterUpdateRuntimeAssertion = 0;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PBFPosterExtensionReloadDescriptorsOperation_invalidateAssertionsWithCompletion___block_invoke;
  aBlock[3] = &unk_2782C6310;
  v7 = completionCopy;
  v30 = v7;
  v8 = v5;
  v29 = v8;
  v9 = _Block_copy(aBlock);
  lock_extensionPosterUpdateRuntimeAssertion = self->_lock_extensionPosterUpdateRuntimeAssertion;
  if (self->_lock_postRefreshPosterPathsAssertion)
  {
    v11 = lock_extensionPosterUpdateRuntimeAssertion;
    v12 = self->_lock_extensionPosterUpdateRuntimeAssertion;
    self->_lock_extensionPosterUpdateRuntimeAssertion = 0;

    v13 = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    lock_extensionPosterUpdateEntitledMemoryAssertion = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    self->_lock_extensionPosterUpdateEntitledMemoryAssertion = 0;

    if (v11 | v13)
    {
      v15 = MEMORY[0x277CF0B60];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __83__PBFPosterExtensionReloadDescriptorsOperation_invalidateAssertionsWithCompletion___block_invoke_2;
      v24[3] = &unk_2782C7BB0;
      v25 = v11;
      v26 = v13;
      v27 = v9;
      v16 = [v15 responderWithHandler:v24];
      [v16 setTimeout:{dispatch_time(0, 120)}];
      v17 = dispatch_get_global_queue(25, 0);
      [v16 setQueue:v17];

      v18 = v25;
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadDescriptorsOperation invalidateAssertionsWithCompletion:]"];
      PBFDispatchAsyncWithString(v18, QOS_CLASS_USER_INITIATED, v9);
      v16 = 0;
    }

    v22 = self->_lock_postRefreshPosterPathsAssertion;
    os_unfair_recursive_lock_unlock();
    [(PFPosterPathsAssertion *)v22 invalidateWithResponder:v16];
  }

  else
  {
    if (!lock_extensionPosterUpdateRuntimeAssertion)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadDescriptorsOperation invalidateAssertionsWithCompletion:]"];
      PBFDispatchAsyncWithString(v23, QOS_CLASS_USER_INITIATED, v9);

      os_unfair_recursive_lock_unlock();
      goto LABEL_9;
    }

    self->_lock_extensionPosterUpdateRuntimeAssertion = 0;
    v11 = lock_extensionPosterUpdateRuntimeAssertion;

    v19 = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    self->_lock_extensionPosterUpdateEntitledMemoryAssertion = 0;
    v20 = v19;

    os_unfair_recursive_lock_unlock();
    [v11 invalidate];
    [(RBSAssertion *)v20 invalidate];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadDescriptorsOperation invalidateAssertionsWithCompletion:]"];
    PBFDispatchAsyncWithString(v21, QOS_CLASS_USER_INITIATED, v9);
  }

LABEL_9:
}

uint64_t __83__PBFPosterExtensionReloadDescriptorsOperation_invalidateAssertionsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

uint64_t __83__PBFPosterExtensionReloadDescriptorsOperation_invalidateAssertionsWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)dealloc
{
  v22[4] = *MEMORY[0x277D85DE8];
  [(PBFPosterExtensionReloadDescriptorsOperation *)self invalidateAssertionsWithCompletion:0];
  os_unfair_recursive_lock_lock_with_options();
  lock_extensionPosterUpdateRuntimeAssertion = self->_lock_extensionPosterUpdateRuntimeAssertion;
  if (lock_extensionPosterUpdateRuntimeAssertion)
  {
    [(RBSAssertion *)lock_extensionPosterUpdateRuntimeAssertion invalidate];
    v4 = self->_lock_extensionPosterUpdateRuntimeAssertion;
    self->_lock_extensionPosterUpdateRuntimeAssertion = 0;
  }

  lock_extensionPosterUpdateEntitledMemoryAssertion = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
  if (lock_extensionPosterUpdateEntitledMemoryAssertion)
  {
    [(RBSAssertion *)lock_extensionPosterUpdateEntitledMemoryAssertion invalidate];
    v6 = self->_lock_extensionPosterUpdateEntitledMemoryAssertion;
    self->_lock_extensionPosterUpdateEntitledMemoryAssertion = 0;
  }

  if ([(NSMutableArray *)self->_lock_completionObservers count])
  {
    error = [(PBFPosterExtensionReloadDescriptorsOperation *)self error];
    if (error)
    {
    }

    else if (!self->_lock_isFinished)
    {
      v21[0] = *MEMORY[0x277CCA470];
      v21[1] = @"extensionBundleIdentifier";
      extensionBundleIdentifier = self->_extensionBundleIdentifier;
      if (!extensionBundleIdentifier)
      {
        extensionBundleIdentifier = @"(unknown extension)";
      }

      v22[0] = @"Operation failed to finish in time";
      v22[1] = extensionBundleIdentifier;
      v21[2] = @"operationClass";
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v22[2] = v10;
      v21[3] = @"executionTime";
      v11 = MEMORY[0x277CCABB0];
      [(PBFPosterExtensionReloadDescriptorsOperation *)self _lock_executionTime];
      v12 = [v11 numberWithDouble:?];
      v22[3] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

      v14 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:0 userInfo:v13];
      [(PBFPosterExtensionReloadDescriptorsOperation *)self setError:v14];
    }

    v15 = [(NSMutableArray *)self->_lock_completionObservers copy];
    error2 = [(PBFPosterExtensionReloadDescriptorsOperation *)self error];
    [(PBFPosterExtensionReloadDescriptorsOperation *)self _fireCompletionObservers:v15 instance:0 error:error2];

    [(NSMutableArray *)self->_lock_completionObservers removeAllObjects];
    lock_completionObservers = self->_lock_completionObservers;
    self->_lock_completionObservers = 0;
  }

  lock_posterBoardPosterUpdateRuntimeAssertion = self->_lock_posterBoardPosterUpdateRuntimeAssertion;
  if (lock_posterBoardPosterUpdateRuntimeAssertion)
  {
    [(RBSAssertion *)lock_posterBoardPosterUpdateRuntimeAssertion invalidate];
    v19 = self->_lock_posterBoardPosterUpdateRuntimeAssertion;
    self->_lock_posterBoardPosterUpdateRuntimeAssertion = 0;
  }

  os_unfair_recursive_lock_unlock();
  v20.receiver = self;
  v20.super_class = PBFPosterExtensionReloadDescriptorsOperation;
  [(NSBlockOperation *)&v20 dealloc];
}

- (void)_setup
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__PBFPosterExtensionReloadDescriptorsOperation__setup__block_invoke;
  v3[3] = &unk_2782C6D48;
  objc_copyWeak(&v4, &location);
  [(NSBlockOperation *)self addExecutionBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__PBFPosterExtensionReloadDescriptorsOperation__setup__block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v2, "isFinished") & 1) == 0)
  {
    v3 = [v2 updatingService];
    v4 = v3;
    if (!v3 || ([v3 isValid] & 1) == 0)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [v2 _userInfoForErrors];
      v5 = [v11 pbf_dataStoreErrorWithCode:-2211 userInfo:v12];

      [v2 _finishWithError:v5 postRefreshPosterPathsAssertion:0];
LABEL_32:

      goto LABEL_33;
    }

    v5 = [v4 auditToken];
    if (!v5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [v2 _userInfoForErrors];
      v6 = [v13 pbf_dataStoreErrorWithCode:-2210 userInfo:v14];

      [v2 _finishWithError:v6 postRefreshPosterPathsAssertion:0];
LABEL_31:

      goto LABEL_32;
    }

    v6 = [v4 target];
    if (!v6)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [v2 _userInfoForErrors];
      v7 = [v15 pbf_dataStoreErrorWithCode:-2209 userInfo:v16];

      [v2 _finishWithError:v7 postRefreshPosterPathsAssertion:0];
LABEL_30:

      goto LABEL_31;
    }

    v7 = [v4 bundleIdentifier];
    v8 = os_unfair_recursive_lock_lock_with_options();
    if (*(v2 + 280) == 1)
    {
      v9 = os_unfair_recursive_lock_unlock();
      v10 = PBFLogReloadDescriptors(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = v2;
        _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Invalidated before operation started", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v17 = PBFLogReloadDescriptors(v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v2[47];
      *buf = 138412546;
      v49 = v2;
      v50 = 2112;
      v51 = v18;
      _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "(%@)  Starting reload operation for %@", buf, 0x16u);
    }

    v19 = BSAbsoluteMachTimeNow();
    v2[45] = v20;
    v21 = PBFLogReloadDescriptors(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v2[50];
      *buf = 138412546;
      v49 = v2;
      v50 = 2112;
      v51 = v22;
      _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "(%@)  Current understanding of paths: %@", buf, 0x16u);
    }

    v23 = [v2[49] acquirePosterUpdateRuntimeAssertionForReason:@"reloadDescriptors" target:v6];
    v24 = v2[41];
    v2[41] = v23;

    v25 = [v2[49] acquirePosterUpdateMemoryAssertionForReason:@"reloadDescriptors entitled update" target:v6 auditToken:v5 posterProviderBundleIdentifier:v7];
    v26 = v2[42];
    v2[42] = v25;

    v27 = v2[49];
    v28 = [@"reloadDescriptors for " stringByAppendingString:v7];
    v29 = [MEMORY[0x277D47008] currentProcess];
    v30 = [v27 acquirePosterUpdateRuntimeAssertionForReason:v28 target:v29];
    v31 = v2[40];
    v2[40] = v30;

    v32 = dispatch_group_create();
    v33 = v2[38];
    v2[38] = v32;

    v10 = v32;
    dispatch_group_enter(v10);
    os_unfair_recursive_lock_unlock();
    [v4 addUpdatingServiceObserver:v2];
    [PBFPowerLogger logUpdate:1 reason:v2[37] inServiceOfBundleIdentifier:v7];
    v34 = [v4 invalidationError];
    if (v34)
    {
    }

    else if ([v4 isValid])
    {
      v35 = v2[50];
      v36 = v2[36];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __54__PBFPosterExtensionReloadDescriptorsOperation__setup__block_invoke_122;
      v47[3] = &unk_2782C7BD8;
      v47[4] = v2;
      [v4 updateDescriptors:v35 sessionInfo:v36 completion:v47];
      os_unfair_recursive_lock_lock_with_options();
      v37 = *(v2 + 280);
      v38 = os_unfair_recursive_lock_unlock();
      if (v37 == 1)
      {
        v39 = PBFLogReloadDescriptors(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v49 = v2;
          _os_log_impl(&dword_21B526000, v39, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Abort timeout check; operation has already finished.", buf, 0xCu);
        }

        goto LABEL_28;
      }

      [v2 timeoutInterval];
      v43 = dispatch_time(0, (v42 * 1000000000.0));
      if (!dispatch_group_wait(v10, v43))
      {
        goto LABEL_29;
      }

      v44 = MEMORY[0x277CCA9B8];
      v45 = [v2 _userInfoForErrors];
      v39 = [v44 pbf_dataStoreErrorWithCode:-2221 userInfo:v45];

      v41 = PBFLogReloadDescriptors(v46);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v2;
        _os_log_impl(&dword_21B526000, v41, OS_LOG_TYPE_DEFAULT, "(%@)  Timed out!", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v39 = [v4 invalidationError];
    if (v39)
    {
LABEL_27:
      [v2 _finishWithError:v39 postRefreshPosterPathsAssertion:0];
LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    v40 = MEMORY[0x277CCA9B8];
    v41 = [v2 _userInfoForErrors];
    v39 = [v40 pbf_generalErrorWithCode:3 userInfo:v41];
LABEL_26:

    goto LABEL_27;
  }

LABEL_33:
}

void __54__PBFPosterExtensionReloadDescriptorsOperation__setup__block_invoke_122(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PBFLogReloadDescriptors(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__PBFPosterExtensionReloadDescriptorsOperation__setup__block_invoke_122_cold_1(a1, v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [v5 paths];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)  finished with paths %{public}@", &v11, 0x16u);
  }

  [*(a1 + 32) _finishWithError:v6 postRefreshPosterPathsAssertion:v5];
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = PBFLogReloadDescriptors(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Cancel!", buf, 0xCu);
  }

  v4 = MEMORY[0x277CCA9B8];
  _userInfoForErrors = [(PBFPosterExtensionReloadDescriptorsOperation *)self _userInfoForErrors];
  v6 = [v4 pbf_generalErrorWithCode:4 userInfo:_userInfoForErrors];
  [(PBFPosterExtensionReloadDescriptorsOperation *)self _finishWithError:v6 postRefreshPosterPathsAssertion:0];

  v7.receiver = self;
  v7.super_class = PBFPosterExtensionReloadDescriptorsOperation;
  [(PBFPosterExtensionReloadDescriptorsOperation *)&v7 cancel];
}

- (double)executionTime
{
  os_unfair_recursive_lock_lock_with_options();
  [(PBFPosterExtensionReloadDescriptorsOperation *)self _lock_executionTime];
  v4 = v3;
  os_unfair_recursive_lock_unlock();
  return v4;
}

- (double)_lock_executionTime
{
  lock_executionFinishDate = self->_lock_executionFinishDate;
  if (lock_executionFinishDate == 0.0)
  {
    BSAbsoluteMachTimeNow();
  }

  return lock_executionFinishDate - self->_lock_executionStateDate;
}

- (void)addCompletionObserver:(id)observer
{
  v12[1] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (self->_lock_isFinished)
    {
      os_unfair_recursive_lock_unlock();
      v5 = _Block_copy(observerCopy);
      v12[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      error = [(PBFPosterExtensionReloadDescriptorsOperation *)self error];
      [(PBFPosterExtensionReloadDescriptorsOperation *)self _fireCompletionObservers:v6 instance:self error:error];
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
      [(NSMutableArray *)lock_completionObservers addObject:v11];

      os_unfair_recursive_lock_unlock();
    }
  }
}

- (void)_finishWithError:(id)error postRefreshPosterPathsAssertion:(id)assertion
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  assertionCopy = assertion;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_isFinished)
  {
    v8 = 0;
  }

  else
  {
    lock_group = self->_lock_group;
    if (lock_group)
    {
      dispatch_group_leave(lock_group);
      v10 = self->_lock_group;
      self->_lock_group = 0;
    }

    self->_lock_isFinished = 1;
    v11 = BSAbsoluteMachTimeNow();
    self->_lock_executionFinishDate = v12;
    v13 = PBFLogReloadDescriptors(v11);
    v14 = v13;
    if (errorCopy)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PBFPosterExtensionReloadDescriptorsOperation *)self _finishWithError:errorCopy postRefreshPosterPathsAssertion:v14];
      }

      [(PBFPosterExtensionReloadDescriptorsOperation *)self setError:errorCopy];
      [(PBFPosterExtensionReloadDescriptorsOperation *)self invalidateAssertionsWithCompletion:0];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        paths = [assertionCopy paths];
        preRefreshPosterDescriptors = [(PBFPosterExtensionReloadDescriptorsOperation *)self preRefreshPosterDescriptors];
        v17 = [paths isEqual:preRefreshPosterDescriptors] ^ 1;
        [(PBFPosterExtensionReloadDescriptorsOperation *)self executionTime];
        v19 = 138544130;
        selfCopy = self;
        v21 = 1024;
        v22 = v17;
        v23 = 2114;
        v24 = assertionCopy;
        v25 = 2048;
        v26 = v18;
        _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@)  Finished SUCCESSFULLY; Has modified paths? %{BOOL}d -- '%{public}@' -- execution time: %f", &v19, 0x26u);
      }

      objc_storeStrong(&self->_lock_postRefreshPosterPathsAssertion, assertion);
    }

    v8 = [(NSMutableArray *)self->_lock_completionObservers copy];
    [(NSMutableArray *)self->_lock_completionObservers removeAllObjects];
  }

  os_unfair_recursive_lock_unlock();
  [(PBFPosterExtensionReloadDescriptorsOperation *)self _fireCompletionObservers:v8 instance:self error:errorCopy];
}

- (id)_userInfoForErrors
{
  v13[3] = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v12[0] = @"extensionBundleIdentifier";
  v3 = [(NSString *)self->_extensionBundleIdentifier copy];
  v4 = v3;
  v5 = @"(null)";
  if (v3)
  {
    v5 = v3;
  }

  v13[0] = v5;
  v12[1] = @"timeoutInterval";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeoutInterval];
  v13[1] = v6;
  v12[2] = @"preRefreshPosterDescriptors";
  v7 = [(NSArray *)self->_preRefreshPosterDescriptors description];
  v8 = v7;
  v9 = @"null";
  if (v7)
  {
    v9 = v7;
  }

  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  os_unfair_recursive_lock_unlock();

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, self->_extensionBundleIdentifier];

  return v6;
}

- (void)_fireCompletionObservers:(id)observers instance:(id)instance error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  instanceCopy = instance;
  errorCopy = error;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [observersCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(observersCopy);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFPosterExtensionReloadDescriptorsOperation _fireCompletionObservers:instance:error:]"];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __88__PBFPosterExtensionReloadDescriptorsOperation__fireCompletionObservers_instance_error___block_invoke;
        v16[3] = &unk_2782C6180;
        v19 = v14;
        v17 = instanceCopy;
        v18 = errorCopy;
        PBFDispatchAsyncWithString(v15, QOS_CLASS_DEFAULT, v16);
      }

      v11 = [observersCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRSPosterUpdateSessionInfoClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSArrayClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRUpdatingServiceClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object conformsToProtocol:@protocol(PBFRuntimeAssertionProviding)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"__objc_no == BSFloatLessThanOrEqualToFloat(timeoutInterval, 0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.8(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.9(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUpdatingService:(char *)a1 extensionBundleIdentifier:sessionInfo:preRefreshPosterDescriptors:runtimeAssertionProvider:timeout:powerLogReason:.cold.10(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PBFPosterExtensionReloadDescriptorsOperation__setup__block_invoke_122_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "(%{public}@)  finished with error: %{public}@", &v4, 0x16u);
}

- (void)_finishWithError:(NSObject *)a3 postRefreshPosterPathsAssertion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  [a1 executionTime];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = a2;
  v11 = 2048;
  v12 = v6;
  _os_log_error_impl(&dword_21B526000, a3, OS_LOG_TYPE_ERROR, "(%{public}@)  Finished unsuccessfully; error: '%{public}@' -- execution time: %f", &v7, 0x20u);
}

@end