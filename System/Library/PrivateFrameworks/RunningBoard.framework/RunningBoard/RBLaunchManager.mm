@interface RBLaunchManager
- (BOOL)_checkLaunchForBackoff:(id)backoff error:(id *)error;
- (RBLaunchManager)init;
- (RBLaunchManager)initWithJobManager:(id)manager timeProvider:(id)provider delegate:(id)delegate;
- (id)_resolveNewProcessForInstance:(id)instance requestIdentity:(id)identity context:(id)context withError:(id *)error;
- (id)executeLaunchRequest:(id)request existingProcess:(id)process requestIdentity:(id)identity withError:(id *)error;
- (void)_validateBundleIDForProcess:(id)process launchedWithContext:(id)context;
@end

@implementation RBLaunchManager

- (RBLaunchManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBLaunchManager.m" lineNumber:114 description:@"-init is not allowed on RBProcessManager"];

  return 0;
}

- (RBLaunchManager)initWithJobManager:(id)manager timeProvider:(id)provider delegate:(id)delegate
{
  managerCopy = manager;
  providerCopy = provider;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = RBLaunchManager;
  v12 = [(RBLaunchManager *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_jobManager, manager);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = [[RBLaunchTracker alloc] initWithTimeProvider:providerCopy];
    launchTracker = v13->_launchTracker;
    v13->_launchTracker = v14;

    v16 = v13;
  }

  return v13;
}

- (void)_validateBundleIDForProcess:(id)process launchedWithContext:(id)context
{
  processCopy = process;
  bundleIdentifier = [context bundleIdentifier];
  bundleProperties = [processCopy bundleProperties];

  bundleIdentifier2 = [bundleProperties bundleIdentifier];

  if (bundleIdentifier && bundleIdentifier2 && ([bundleIdentifier2 isEqualToString:bundleIdentifier] & 1) == 0)
  {
    v9 = rbs_process_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchManager _validateBundleIDForProcess:launchedWithContext:];
    }
  }
}

- (BOOL)_checkLaunchForBackoff:(id)backoff error:(id *)error
{
  backoffCopy = backoff;
  [(RBLaunchTracker *)self->_launchTracker nextAllowedLaunchOfIdentity:backoffCopy];
  v8 = v7;
  if (v7 != 0.0)
  {
    v9 = rbs_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(RBLaunchManager *)backoffCopy _checkLaunchForBackoff:v9 error:v8];
    }

    if (error)
    {
      v10 = *MEMORY[0x277D47088];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __48__RBLaunchManager__checkLaunchForBackoff_error___block_invoke;
      v15[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
      *&v15[4] = v8;
      v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v11 setObject:@"Launch Request throttled." forKey:*MEMORY[0x277CCA470]];
      __48__RBLaunchManager__checkLaunchForBackoff_error___block_invoke(v15, v11);
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:6 userInfo:v11];

      v13 = v12;
      *error = v12;
    }
  }

  return v8 == 0.0;
}

void __48__RBLaunchManager__checkLaunchForBackoff_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithDouble:v3];
  [v4 setObject:v5 forKey:*MEMORY[0x277D470A0]];
}

- (id)_resolveNewProcessForInstance:(id)instance requestIdentity:(id)identity context:(id)context withError:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  identityCopy = identity;
  contextCopy = context;
  identifier = [instanceCopy identifier];
  v14 = +[RBLaunchdProperties propertiesForPid:](RBLaunchdProperties, "propertiesForPid:", [identifier pid]);

  if (!v14)
  {
    v15 = rbs_general_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchManager _resolveNewProcessForInstance:requestIdentity:context:withError:];
    }
  }

  if ([v14 hasBackoff])
  {
    launchTracker = self->_launchTracker;
    identity = [instanceCopy identity];
    [(RBLaunchTracker *)launchTracker trackLaunchOfIdentity:identity];
  }

  if ([identityCopy osServiceType] == 3 && v14 && (objc_msgSend(v14, "isAngel") & 1) == 0)
  {
    v28 = rbs_general_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchManager _resolveNewProcessForInstance:requestIdentity:context:withError:];
    }

    [(RBLaunchdJobManager *)self->_jobManager removeJobWithInstance:instanceCopy error:0];
    if (error)
    {
      v29 = *MEMORY[0x277D47088];
      v30 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v30 setObject:@"Unsupported Angel launch request." forKey:*MEMORY[0x277CCA470]];
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:v29 code:5 userInfo:v30];

      v32 = v31;
      v19 = 0;
      *error = v31;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = [WeakRetained _lifecycleQueue_addProcessWithInstance:instanceCopy properties:v14];

    if (v19)
    {
      [(RBLaunchManager *)self _validateBundleIDForProcess:v19 launchedWithContext:contextCopy];
      launchAssertionIdentifier = [contextCopy launchAssertionIdentifier];
      [v19 setLaunchAssertionIdentifier:launchAssertionIdentifier];

      v21 = v19;
    }

    else
    {
      v22 = rbs_general_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 138543362;
        v34 = instanceCopy;
        _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "Failed to create process object for %{public}@", &v33, 0xCu);
      }

      [(RBLaunchdJobManager *)self->_jobManager removeJobWithInstance:instanceCopy error:0];
      if (error)
      {
        v23 = *MEMORY[0x277D47088];
        v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        [v24 setObject:@"Launched process exited during launch." forKey:*MEMORY[0x277CCA470]];
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:v23 code:5 userInfo:v24];

        v26 = v25;
        *error = v25;
      }
    }
  }

  return v19;
}

- (id)executeLaunchRequest:(id)request existingProcess:(id)process requestIdentity:(id)identity withError:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  processCopy = process;
  identityCopy = identity;
  isExtension = [identityCopy isExtension];
  if (processCopy && (isExtension & 1) == 0)
  {
    v14 = rbs_process_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v53 = identityCopy;
      v54 = 2114;
      v55 = processCopy;
      _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_INFO, "%{public}@ is already running as %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v15 = *MEMORY[0x277D47088];
      v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v16 setObject:@"The process was already running." forKey:*MEMORY[0x277CCA470]];
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:2 userInfo:v16];

      v18 = v17;
      *error = v17;
    }

    v19 = processCopy;
    goto LABEL_40;
  }

  v20 = identityCopy;
  if (([v20 isEmbeddedApplication] & 1) != 0 || (objc_msgSend(v20, "hasConsistentLaunchdJob") & 1) != 0 || objc_msgSend(v20, "isExtension"))
  {
  }

  else
  {
    isDext = [v20 isDext];

    if ((isDext & 1) == 0)
    {
      v42 = rbs_process_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v53 = v20;
        _os_log_impl(&dword_262485000, v42, OS_LOG_TYPE_INFO, "%{public}@ could not be launched", buf, 0xCu);
      }

      if (error)
      {
        v43 = *MEMORY[0x277D47088];
        v44 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        [v44 setObject:@"Launch prevented due to invalid parameters; only apps forKey:{extensions or daemons can be launched by RunningBoard", *MEMORY[0x277CCA470]}];
        v45 = [MEMORY[0x277CCA9B8] errorWithDomain:v43 code:1 userInfo:v44];

        v46 = v45;
        v19 = 0;
        *error = v45;
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  if (!processCopy && ![(RBLaunchManager *)self _checkLaunchForBackoff:v20 error:error])
  {
LABEL_37:
    v19 = 0;
    goto LABEL_40;
  }

  _additionalEnvironment = [requestCopy _additionalEnvironment];
  v22 = RBSStringForKey();

  if (v22)
  {
    [requestCopy setHomeDirectory:v22];
  }

  v50 = identityCopy;
  _additionalEnvironment2 = [requestCopy _additionalEnvironment];
  v24 = RBSStringForKey();

  if (v24)
  {
    [requestCopy setTmpDirectory:v24];
  }

  jobManager = self->_jobManager;
  v51 = 0;
  v26 = [(RBLaunchdJobManager *)jobManager createAndLaunchWithIdentity:v20 context:requestCopy error:&v51];
  v27 = v51;
  v28 = v27;
  if (v26)
  {
    v49 = v27;
    if (processCopy && ([processCopy identifier], v29 = v24, v30 = error, v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "identifier"), v48 = v22, v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "isEqual:", v32), v32, v22 = v48, v31, error = v30, v24 = v29, v33))
    {
      v34 = rbs_process_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        identifier = [processCopy identifier];
        *buf = 138543618;
        v53 = v20;
        v54 = 2114;
        v55 = identifier;
        _os_log_impl(&dword_262485000, v34, OS_LOG_TYPE_INFO, "returning existing extension %{public}@ already running as pid %{public}@", buf, 0x16u);
      }

      identityCopy = v50;
      if (error)
      {
        v36 = *MEMORY[0x277D47088];
        v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        [v37 setObject:@"The process was already running." forKey:*MEMORY[0x277CCA470]];
        v38 = [MEMORY[0x277CCA9B8] errorWithDomain:v36 code:2 userInfo:v37];

        v22 = v48;
        v39 = v38;
        *error = v38;
      }

      v19 = processCopy;
    }

    else
    {
      v19 = [(RBLaunchManager *)self _resolveNewProcessForInstance:v26 requestIdentity:v20 context:requestCopy withError:error];
      identityCopy = v50;
    }

    v28 = v49;
  }

  else
  {
    v40 = rbs_general_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchManager executeLaunchRequest:existingProcess:requestIdentity:withError:];
    }

    if (error)
    {
      _errorWithRequestCodeAndInfoBuilder(*MEMORY[0x277D47088], 5, @"Launch failed.", v28, 0);
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

LABEL_40:

  return v19;
}

- (void)_validateBundleIDForProcess:launchedWithContext:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_262485000, v1, OS_LOG_TYPE_FAULT, "RunningBoard launch requested for identifier %{public}@ launched process with different identifier %{public}@", v2, 0x16u);
}

- (void)_checkLaunchForBackoff:(double)a3 error:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Launch throttled for %{public}@ until %lf", &v3, 0x16u);
}

- (void)_resolveNewProcessForInstance:requestIdentity:context:withError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_262485000, v0, OS_LOG_TYPE_ERROR, "New process launch resulted in nil properties for %{public}@", v1, 0xCu);
}

- (void)_resolveNewProcessForInstance:requestIdentity:context:withError:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_262485000, v0, OS_LOG_TYPE_FAULT, "Angel launch attempted for non-angel %{public}@", v1, 0xCu);
}

- (void)executeLaunchRequest:existingProcess:requestIdentity:withError:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_262485000, v0, OS_LOG_TYPE_ERROR, "Launch failed with %{public}@", v1, 0xCu);
}

@end