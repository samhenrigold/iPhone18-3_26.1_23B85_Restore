@interface FBProcess
+ (OS_dispatch_queue)calloutQueue;
+ (OS_dispatch_workloop)userInitiatedWorkloop;
+ (id)_currentProcess;
- (BOOL)_setSceneLifecycleState:(unsigned __int8)state;
- (BOOL)_shouldWatchdogWithDeclineReason:(id *)reason;
- (BOOL)_startWatchdogTimerForContext:(id)context;
- (BOOL)_watchdog:(id)_watchdog shouldTerminateWithDeclineReason:(id *)reason;
- (BOOL)bootstrapWithDelegate:(id)delegate;
- (BOOL)executableLivesOnSystemPartition;
- (BOOL)isBeingDebugged;
- (BOOL)isFinishedLaunching;
- (BOOL)isForeground;
- (BOOL)isPendingExit;
- (BOOL)isPlatformBinary;
- (BOOL)isRunning;
- (BOOL)matchesProcess:(id)process;
- (FBProcess)init;
- (FBProcessDelegate)delegate;
- (FBProcessExitContext)exitContext;
- (FBProcessState)state;
- (FBSApplicationInfo)applicationInfo;
- (NSString)description;
- (id)_createBootstrapContext;
- (id)_initWithProcessManager:(id)manager identity:(id)identity handle:(id)handle executionContext:(id)context;
- (id)_newWatchdogForContext:(id)context completion:(id)completion;
- (id)_observers;
- (id)_watchdog:(id)_watchdog terminationRequestForError:(id)error;
- (id)_watchdogProvider;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)processPredicate;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_watchdogReportType;
- (int64_t)taskState;
- (int64_t)visibility;
- (void)_bootstrapAndExec;
- (void)_configureBundleInfo;
- (void)_configureIntrinsicsFromHandle:(id)handle;
- (void)_executeBlockAfterBootstrap:(id)bootstrap;
- (void)_executeBlockAfterLaunchCompletes:(id)completes;
- (void)_executeBlockAsCurrentProcess:(id)process;
- (void)_killForReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion;
- (void)_launchDidComplete:(BOOL)complete finalizeBlock:(id)block;
- (void)_lock_consumeLock_executeTerminationRequest;
- (void)_lock_consumeLock_performGracefulKill;
- (void)_noteAssertionStateDidChange;
- (void)_notePendingExitForReason:(id)reason;
- (void)_noteStateDidUpdate:(id)update;
- (void)_processDidExitWithContext:(id)context;
- (void)_rebuildState;
- (void)_rebuildState:(id)state;
- (void)_terminateWithRequest:(id)request completion:(id)completion;
- (void)_terminateWithRequest:(id)request forWatchdog:(id)watchdog;
- (void)_updateStateWithBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)bootstrapLock:(id)lock;
- (void)dealloc;
- (void)invalidate;
- (void)logProem;
- (void)removeObserver:(id)observer;
- (void)setWatchdogProvider:(id)provider;
@end

@implementation FBProcess

- (void)logProem
{
  if (self)
  {
    v2 = self[13];
    if (v2)
    {
      self = v2;
    }

    else
    {
      self = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@:-1]", self[12]];
    }

    v1 = vars8;
  }

  return self;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBProcess *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)_bootstrapAndExec
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have either a handle or an error, but not both: %@ // %@", 0, 0];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_configureBundleInfo
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_rbsHandle != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = MEMORY[0x1E696AEC0];
  identityDescription = self->_identityDescription;
  v6 = NSStringFromBSVersionedPID();
  v7 = [v4 stringWithFormat:@"%@:%@", identityDescription, v6];
  [v3 appendString:v7 withName:0];

  return v3;
}

- (id)_createBootstrapContext
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69C7590]);
  [v3 setIdentity:self->_identity];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setExplanation:v5];

  overrideExecutablePath = [(FBProcessExecutionContext *)self->_executionContext overrideExecutablePath];
  [v3 _setOverrideExecutablePath:overrideExecutablePath];

  overrideExecutableSlice = [(FBProcessExecutionContext *)self->_executionContext overrideExecutableSlice];
  v8 = overrideExecutableSlice;
  if (overrideExecutableSlice)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(overrideExecutableSlice, "type")}];
    v16[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v3 setLsBinpref:v10];

    if ([v8 subtype] != -1)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "subtype")}];
      v15 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [v3 setLsBinprefSubtype:v12];
    }
  }

  v13 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E699F9C0]];
  [v3 setManagedEndpointLaunchIdentifiers:v13];

  return v3;
}

void __30__FBProcess__bootstrapAndExec__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 setPid:v3];
  [v4 setTaskState:2];
  [v4 setVisibility:*(a1 + 40)];

  v5 = [*(*(a1 + 32) + 48) currentState];
  if ([v5 isRunning])
  {
    [*(a1 + 32) _rebuildState:v5];
  }
}

- (id)_watchdogProvider
{
  os_unfair_lock_lock(&self->_watchdogProviderLock);
  v3 = self->_watchdogProvider;
  os_unfair_lock_unlock(&self->_watchdogProviderLock);
  if (v3)
  {
    delegate = v3;
  }

  else
  {
    delegate = [(FBProcess *)self delegate];
  }

  v5 = delegate;

  return v5;
}

- (FBSApplicationInfo)applicationInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lock_applicationInfo;
  if (v3)
  {
    v4 = v3;
    os_unfair_recursive_lock_unlock();
    goto LABEL_13;
  }

  isApplicationProcess = [(FBProcess *)self isApplicationProcess];
  os_unfair_recursive_lock_unlock();
  if (!isApplicationProcess)
  {
    v4 = 0;
    goto LABEL_13;
  }

  v6 = +[FBSystemService sharedInstanceIfExists];
  _applicationInfoProvider = [v6 _applicationInfoProvider];

  if (self->_auditToken && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [_applicationInfoProvider applicationInfoForAuditToken:self->_auditToken];
  }

  else
  {
    if (!self->_bundleIdentifier)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v8 = [_applicationInfoProvider applicationInfoForBundleIdentifier:?];
  }

  v4 = v8;
LABEL_12:
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong(&self->_lock_applicationInfo, v4);
  os_unfair_recursive_lock_unlock();

LABEL_13:

  return v4;
}

- (id)_observers
{
  os_unfair_lock_lock(&self->_observerLock);
  v3 = [(NSMutableSet *)self->_observerLock_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);

  return v3;
}

- (void)_noteAssertionStateDidChange
{
  delegate = [(FBProcess *)self delegate];
  [delegate noteProcessAssertionStateDidChange:self];
}

void __30__FBProcess__bootstrapAndExec__block_invoke_118(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 noteProcessDidLaunch:*(a1 + 32)];

  os_unfair_recursive_lock_lock_with_options();
  v3 = *(*(a1 + 32) + 176);
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = 0;

  os_unfair_recursive_lock_unlock();
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__FBProcess__bootstrapAndExec__block_invoke_2_119;
  v8[3] = &unk_1E783B240;
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v6 _executeBlockAsCurrentProcess:v8];
}

void __30__FBProcess__bootstrapAndExec__block_invoke_2_119(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v16 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 40) isApplicationProcess])
  {
    *(*(a1 + 40) + 330) = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [*(a1 + 40) _observers];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) applicationProcessWillLaunch:*(a1 + 40)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

+ (OS_dispatch_workloop)userInitiatedWorkloop
{
  if (userInitiatedWorkloop_onceToken != -1)
  {
    +[FBProcess userInitiatedWorkloop];
  }

  v3 = userInitiatedWorkloop_queue;

  return v3;
}

- (NSString)description
{
  description = self->_description;
  if (description)
  {
    succinctDescription = description;
  }

  else
  {
    succinctDescription = [(FBProcess *)self succinctDescription];
  }

  return succinctDescription;
}

- (FBProcessDelegate)delegate
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

- (BOOL)isForeground
{
  os_unfair_recursive_lock_lock_with_options();
  isForeground = [(FBProcessState *)self->_lock_state isForeground];
  os_unfair_recursive_lock_unlock();
  return isForeground;
}

- (BOOL)isPendingExit
{
  os_unfair_recursive_lock_lock_with_options();
  lock_pendingExit = self->_lock_pendingExit;
  os_unfair_recursive_lock_unlock();
  return lock_pendingExit;
}

- (BOOL)isRunning
{
  os_unfair_recursive_lock_lock_with_options();
  isRunning = [(FBProcessState *)self->_lock_state isRunning];
  os_unfair_recursive_lock_unlock();
  return isRunning;
}

+ (OS_dispatch_queue)calloutQueue
{
  if (calloutQueue_onceToken != -1)
  {
    +[FBProcess calloutQueue];
  }

  v3 = calloutQueue_queue;

  return v3;
}

- (BOOL)isBeingDebugged
{
  os_unfair_recursive_lock_lock_with_options();
  isDebugging = [(FBProcessState *)self->_lock_state isDebugging];
  os_unfair_recursive_lock_unlock();
  if (isDebugging)
  {
    return 1;
  }

  return BSPIDIsBeingDebugged();
}

- (BOOL)isFinishedLaunching
{
  os_unfair_recursive_lock_lock_with_options();
  lock_launchSuccess = self->_lock_launchSuccess;
  os_unfair_recursive_lock_unlock();
  return lock_launchSuccess;
}

- (FBProcessState)state
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(FBProcessState *)self->_lock_state copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

+ (id)_currentProcess
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"FBProcess"];

  return v4;
}

void __25__FBProcess_calloutQueue__block_invoke()
{
  v3 = [MEMORY[0x1E698E698] serial];
  v0 = [v3 serviceClass:33];
  v1 = BSDispatchQueueCreate();
  v2 = calloutQueue_queue;
  calloutQueue_queue = v1;
}

void __34__FBProcess_userInitiatedWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.frontboard.process.user-initiated");
  v1 = userInitiatedWorkloop_queue;
  userInitiatedWorkloop_queue = inactive;

  dispatch_set_qos_class_floor(userInitiatedWorkloop_queue, QOS_CLASS_USER_INITIATED, 0);
  v2 = userInitiatedWorkloop_queue;

  dispatch_activate(v2);
}

- (BOOL)executableLivesOnSystemPartition
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_executableLivesOnSystemPartition == 0x7FFFFFFFFFFFFFFFLL && self->_executablePath)
  {
    BSPathExistsOnSystemPartition();
    self->_lock_executableLivesOnSystemPartition = BSSettingFlagForBool();
  }

  IsYes = BSSettingFlagIsYes();
  os_unfair_recursive_lock_unlock();
  return IsYes;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated == YES"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)processPredicate
{
  if (self->_pid < 1)
  {
    v4 = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69C7610];
    v3 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v4 = [v2 predicateMatchingIdentifier:v3];
  }

  return v4;
}

- (void)invalidate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (FBProcessExitContext)exitContext
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lock_exitContext;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (FBProcess)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[FBProcess init] is not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBProcess.m";
    v17 = 1024;
    v18 = 170;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithProcessManager:(id)manager identity:(id)identity handle:(id)handle executionContext:(id)context
{
  managerCopy = manager;
  identityCopy = identity;
  handleCopy = handle;
  contextCopy = context;
  if (!identityCopy)
  {
    [FBProcess _initWithProcessManager:handleCopy identity:a2 handle:? executionContext:?];
  }

  v15 = contextCopy;
  if ((handleCopy == 0) == (contextCopy != 0))
  {
    v68.receiver = self;
    v68.super_class = FBProcess;
    v16 = [(FBProcess *)&v68 init];
    v17 = v16;
    if (v16)
    {
      objc_storeWeak(&v16->_processManager, managerCopy);
      v17->_lock = 0;
      *&v17->_observerLock._os_unfair_lock_opaque = 0;
      v17->_pid = -1;
      v17->_versionedPID = -1;
      objc_storeStrong(&v17->_identity, identity);
      v18 = [identityCopy description];
      identityDescription = v17->_identityDescription;
      v17->_identityDescription = v18;

      v20 = [v15 copy];
      executionContext = v17->_executionContext;
      v17->_executionContext = v20;

      watchdogProvider = [(FBProcessExecutionContext *)v17->_executionContext watchdogProvider];
      watchdogProvider = v17->_watchdogProvider;
      v17->_watchdogProvider = watchdogProvider;

      embeddedApplicationIdentifier = [identityCopy embeddedApplicationIdentifier];
      bundleIdentifier = v17->_bundleIdentifier;
      v17->_bundleIdentifier = embeddedApplicationIdentifier;

      v17->_lock_executableLivesOnSystemPartition = 0x7FFFFFFFFFFFFFFFLL;
      v17->_lock_platformBinary = 0x7FFFFFFFFFFFFFFFLL;
      v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      observerLock_observers = v17->_observerLock_observers;
      v17->_observerLock_observers = v26;

      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      lock_bootstrapBlocks = v17->_lock_bootstrapBlocks;
      v17->_lock_bootstrapBlocks = v28;

      v30 = objc_autoreleasePoolPush();
      v31 = [(NSString *)v17->_identityDescription rangeOfString:@"{"];
      v32 = [(NSString *)v17->_identityDescription rangeOfString:@"}" options:4];
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = v32;
        if (v32 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = v33;
          v36 = [(NSString *)v17->_identityDescription substringToIndex:v31];
          v37 = [(NSString *)v17->_identityDescription substringFromIndex:v34 + v35];
          v38 = [v36 stringByAppendingString:v37];
          v39 = v17->_identityDescription;
          v17->_identityDescription = v38;
        }
      }

      v40 = -[NSString rangeOfString:](v17->_identityDescription, "rangeOfString:", @"(");
      v41 = [(NSString *)v17->_identityDescription rangeOfString:@"" options:?], 4);
      if (v40 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = v41;
        if (v41 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v44 = v42;
          v45 = [(NSString *)v17->_identityDescription substringToIndex:v40];
          v46 = [(NSString *)v17->_identityDescription substringFromIndex:v43 + v44];
          v47 = [v45 stringByAppendingString:v46];
          v48 = v17->_identityDescription;
          v17->_identityDescription = v47;
        }
      }

      v49 = [(NSString *)v17->_identityDescription rangeOfString:@"["];
      v50 = [(NSString *)v17->_identityDescription rangeOfString:@"]" options:4];
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v52 = v50;
        if (v50 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v53 = v51;
          v54 = [(NSString *)v17->_identityDescription substringToIndex:v49];
          v55 = [(NSString *)v17->_identityDescription substringFromIndex:v52 + v53];
          v56 = [v54 stringByAppendingString:v55];
          v57 = v17->_identityDescription;
          v17->_identityDescription = v56;
        }
      }

      objc_autoreleasePoolPop(v30);
      if (handleCopy)
      {
        [(FBProcess *)v17 _configureIntrinsicsFromHandle:handleCopy];
      }

      v58 = [[FBProcessState alloc] initWithPid:v17->_pid];
      lock_state = v17->_lock_state;
      v17->_lock_state = v58;

      [(FBProcess *)v17 _finishInit];
      v60 = [FBWorkspace alloc];
      eventDispatcher = [managerCopy eventDispatcher];
      v62 = [(FBWorkspace *)v60 _initWithDispatcher:eventDispatcher process:v17];
      workspace = v17->_workspace;
      v17->_workspace = v62;

      if (!v17->_executionContext)
      {
        v64 = [[FBProcessExecutionContext alloc] initWithIdentity:identityCopy];
        v65 = v17->_executionContext;
        v17->_executionContext = v64;
      }
    }

    return v17;
  }

  else
  {
    contextCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"must have either a handle or a context, but not both: %@ // %@", handleCopy, contextCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBProcess _initWithProcessManager:identity:handle:executionContext:];
    }

    [contextCopy UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  return result;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    v5 = [[FBProcessObserver alloc] initWithObserver:observerCopy];

    os_unfair_lock_lock(&self->_observerLock);
    if (v5 && ([(NSMutableSet *)self->_observerLock_observers containsObject:v5]& 1) == 0)
    {
      [(NSMutableSet *)self->_observerLock_observers addObject:v5];
      os_unfair_lock_unlock(&self->_observerLock);
      v6 = +[FBProcess calloutQueue];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __25__FBProcess_addObserver___block_invoke;
      v7[3] = &unk_1E783B240;
      v7[4] = self;
      v8 = v5;
      dispatch_async(v6, v7);
    }

    else
    {
      os_unfair_lock_unlock(&self->_observerLock);
      [(FBProcessObserver *)v5 invalidate];
    }
  }
}

id *__25__FBProcess_addObserver___block_invoke(id *result)
{
  v1 = result;
  v2 = result[4];
  if (v2[328] == 1)
  {
    result = [result[5] processWillExit:?];
    v2 = v1[4];
  }

  if (v2[329] == 1)
  {
    result = [v1[5] processDidExit:?];
    v2 = v1[4];
  }

  if (v2[330] == 1)
  {
    result = [v1[5] applicationProcessWillLaunch:?];
    v2 = v1[4];
  }

  if (v2[331] == 1)
  {
    v3 = v1[5];

    return [v3 applicationProcessDidLaunch:?];
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  v19 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock(&self->_observerLock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSMutableSet *)self->_observerLock_observers copy];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          observer = [v10 observer];
          v12 = observer;
          if (observer)
          {
            v13 = observer == observerCopy;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            [(NSMutableSet *)self->_observerLock_observers removeObject:v10];
            [v10 invalidate];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_observerLock);
  }
}

- (void)setWatchdogProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&self->_watchdogProviderLock);
  watchdogProvider = self->_watchdogProvider;
  self->_watchdogProvider = providerCopy;

  os_unfair_lock_unlock(&self->_watchdogProviderLock);
}

- (void)bootstrapLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_bootstrapLock);
  if (lockCopy)
  {
    lockCopy[2](lockCopy, self);
  }

  os_unfair_lock_unlock(&self->_bootstrapLock);
}

- (BOOL)bootstrapWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    [FBProcess bootstrapWithDelegate:a2];
  }

  v6 = delegateCopy;
  os_unfair_lock_assert_owner(&self->_bootstrapLock);
  os_unfair_recursive_lock_lock_with_options();
  lock_attemptedBootstrap = self->_lock_attemptedBootstrap;
  if (lock_attemptedBootstrap)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    self->_lock_attemptedBootstrap = 1;
    objc_storeWeak(&self->_lock_delegate, v6);
    os_unfair_recursive_lock_unlock();
    [(FBProcess *)self _bootstrapAndExec];
  }

  return !lock_attemptedBootstrap;
}

- (int64_t)taskState
{
  os_unfair_recursive_lock_lock_with_options();
  taskState = [(FBProcessState *)self->_lock_state taskState];
  os_unfair_recursive_lock_unlock();
  return taskState;
}

- (int64_t)visibility
{
  os_unfair_recursive_lock_lock_with_options();
  visibility = [(FBProcessState *)self->_lock_state visibility];
  os_unfair_recursive_lock_unlock();
  return visibility;
}

- (BOOL)isPlatformBinary
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_platformBinary == 0x7FFFFFFFFFFFFFFFLL)
  {
    applicationInfo = [(FBProcess *)self applicationInfo];
    v4 = applicationInfo;
    if (!applicationInfo || [applicationInfo type] == 2)
    {
      rbsHandle = self->_rbsHandle;
      if (rbsHandle)
      {
        objc_msgSend_auditToken(rbsHandle);
      }

      BSAuditTokenRepresentsPlatformBinary();
    }

    self->_lock_platformBinary = BSSettingFlagForBool();
  }

  IsYes = BSSettingFlagIsYes();
  os_unfair_recursive_lock_unlock();
  return IsYes;
}

- (void)_executeBlockAfterBootstrap:(id)bootstrap
{
  bootstrapCopy = bootstrap;
  if (bootstrapCopy)
  {
    os_unfair_recursive_lock_lock_with_options();
    lock_bootstrapBlocks = self->_lock_bootstrapBlocks;
    if (lock_bootstrapBlocks)
    {
      v6 = [bootstrapCopy copy];
      v7 = MEMORY[0x1AC572E40]();
      [(NSMutableArray *)lock_bootstrapBlocks addObject:v7];
    }

    else
    {
      v8 = +[FBProcess calloutQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __41__FBProcess__executeBlockAfterBootstrap___block_invoke;
      v9[3] = &unk_1E783B328;
      v9[4] = self;
      v10 = bootstrapCopy;
      dispatch_async(v8, v9);
    }

    os_unfair_recursive_lock_unlock();
  }
}

void __41__FBProcess__executeBlockAfterBootstrap___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__FBProcess__executeBlockAfterBootstrap___block_invoke_2;
  v4[3] = &unk_1E783C368;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _executeBlockAsCurrentProcess:v4];
}

void __41__FBProcess__executeBlockAfterBootstrap___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 48))
  {
    v3 = *(v1 + 16);
    v4 = *(a1 + 40);

    v3(v4, v2, 0);
  }

  else
  {
    v6 = [*(a1 + 32) exitContext];
    v5 = [v6 createError];
    (*(v1 + 16))(v1, v2, v5);
  }
}

- (void)_executeBlockAfterLaunchCompletes:(id)completes
{
  completesCopy = completes;
  if (completesCopy)
  {
    v11 = completesCopy;
    os_unfair_recursive_lock_lock_with_options();
    if (self->_lock_launchFinalized)
    {
      lock_launchSuccess = self->_lock_launchSuccess;
      os_unfair_recursive_lock_unlock();
      v11[2](v11, lock_launchSuccess);
    }

    else
    {
      lock_launchCompletionBlocks = self->_lock_launchCompletionBlocks;
      if (lock_launchCompletionBlocks)
      {
        v7 = [v11 copy];
        v8 = MEMORY[0x1AC572E40]();
        [(NSMutableArray *)lock_launchCompletionBlocks addObject:v8];
      }

      else
      {
        v9 = MEMORY[0x1E695DF70];
        v7 = [v11 copy];
        v10 = [v9 arrayWithObject:v7];
        v8 = self->_lock_launchCompletionBlocks;
        self->_lock_launchCompletionBlocks = v10;
      }

      os_unfair_recursive_lock_unlock();
    }

    completesCopy = v11;
  }
}

- (void)_notePendingExitForReason:(id)reason
{
  reasonCopy = reason;
  v5 = os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_pendingExit)
  {
    v6 = FBLogProcess(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _notePendingExitForReason:?];
    }

    self->_lock_pendingExit = 1;
    v7 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__FBProcess__notePendingExitForReason___block_invoke;
    block[3] = &unk_1E783B580;
    block[4] = self;
    dispatch_async(v7, block);

    if (self->_rbsHandle)
    {
      if ([(FBProcess *)self isApplicationProcess])
      {
        currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
        fb_canTaskSuspend = [currentProcess fb_canTaskSuspend];

        if ((fb_canTaskSuspend & 1) == 0)
        {
          date = [MEMORY[0x1E695DF00] date];
          logProem = [(FBProcess *)self logProem];
          v22[0] = 0;
          v22[1] = v22;
          v22[2] = 0x2020000000;
          v22[3] = 0;
          v12 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:logProem];
          lock_exitTimer = self->_lock_exitTimer;
          self->_lock_exitTimer = v12;

          v14 = self->_lock_exitTimer;
          v15 = +[FBProcess userInitiatedWorkloop];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __39__FBProcess__notePendingExitForReason___block_invoke_2;
          v18[3] = &unk_1E783C390;
          v18[4] = self;
          v16 = date;
          v19 = v16;
          v21 = v22;
          v17 = logProem;
          v20 = v17;
          [(BSAbsoluteMachTimer *)v14 scheduleRepeatingWithFireInterval:v15 repeatInterval:v18 leewayInterval:10.0 queue:1.0 handler:0.1];

          _Block_object_dispose(v22, 8);
        }
      }
    }
  }

  os_unfair_recursive_lock_unlock();
}

void __39__FBProcess__notePendingExitForReason___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 328) = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) _observers];
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

        [*(*(&v7 + 1) + 8 * v6++) processWillExit:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __39__FBProcess__notePendingExitForReason___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 304))
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(v4 + 48) lastExitContext];
  }

  if ([v5 type])
  {
    v6 = [[FBProcessExitContext alloc] initWithUnderlyingContext:v5];
    [*(a1 + 32) _processDidExitWithContext:v6];
LABEL_15:

    goto LABEL_16;
  }

  v7 = [*(a1 + 40) timeIntervalSinceNow];
  v9 = v8;
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 24) + 1;
  *(v10 + 24) = v11;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v11, 1) >= 0x199999999999999AuLL)
  {
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v12 = OS_LOG_TYPE_ERROR;
  }

  v13 = FBLogProcess(v7);
  if (os_log_type_enabled(v13, v12))
  {
    v14 = *(a1 + 48);
    v26 = 138543618;
    v27 = v14;
    v28 = 2048;
    v29 = -v9;
    _os_log_impl(&dword_1A89DD000, v13, v12, "%{public}@: Still waiting on exit context after %.1f seconds", &v26, 0x16u);
  }

  if (v9 <= -300.0)
  {
    v16 = FBLogProcess(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __39__FBProcess__notePendingExitForReason___block_invoke_2_cold_1(a1, v16, v17);
    }

    v6 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBProcessTermination" code:2 configuration:&__block_literal_global_80];
    v18 = [[FBProcessExitContext alloc] initWithTerminationError:v6];
    [*(a1 + 32) _processDidExitWithContext:v18];
    v19 = objc_alloc(MEMORY[0x1E69C7650]);
    v20 = [(FBProcessExitContext *)v6 userInfo];
    v21 = [v20 objectForKey:*MEMORY[0x1E696A588]];
    v22 = [v19 initWithExplanation:v21];

    [v22 setReportType:0];
    [v22 setExceptionDomain:10];
    [v22 setExceptionCode:4196196013];
    [v22 setMaximumTerminationResistance:40];
    v23 = objc_alloc(MEMORY[0x1E69C7660]);
    v24 = [MEMORY[0x1E69C7610] predicateMatching:*(*(a1 + 32) + 48)];
    v25 = [v23 initWithPredicate:v24 context:v22];

    [v25 execute:0];
    goto LABEL_15;
  }

LABEL_16:
}

void __39__FBProcess__notePendingExitForReason___block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFailureDescription:@"Timed out waiting for process termination"];
  [v2 setFailureReason:@"No exit notification received after 5 minutes"];
  [v2 setCodeDescription:@"timed-out"];
}

- (void)_updateStateWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_didExit)
  {
    if (self->_lock_updatingState)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy, self->_lock_state);
      }
    }

    else
    {
      p_lock_state = &self->_lock_state;
      lock_state = self->_lock_state;
      self->_lock_updatingState = 1;
      v7 = [(FBProcessState *)lock_state copy];
      if (blockCopy)
      {
        blockCopy[2](blockCopy, *p_lock_state);
      }

      taskState = [v7 taskState];
      taskState2 = [(FBProcessState *)*p_lock_state taskState];
      if (taskState != taskState2)
      {
        v10 = FBLogProcess(taskState2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          [FBProcess _updateStateWithBlock:];
        }
      }

      visibility = [v7 visibility];
      visibility2 = [(FBProcessState *)*p_lock_state visibility];
      if (visibility != visibility2)
      {
        v13 = FBLogProcess(visibility2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          [FBProcess _updateStateWithBlock:];
        }
      }

      isDebugging = [v7 isDebugging];
      isDebugging2 = [(FBProcessState *)*p_lock_state isDebugging];
      v16 = isDebugging ^ isDebugging2;
      if ((isDebugging ^ isDebugging2) == 1)
      {
        v17 = FBLogProcess(isDebugging2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          [FBProcess _updateStateWithBlock:];
        }
      }

      if (([v7 isEqual:*p_lock_state] & 1) == 0)
      {
        v18 = [(FBProcessState *)self->_lock_state copy];
        v19 = +[FBProcess calloutQueue];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __35__FBProcess__updateStateWithBlock___block_invoke;
        v21[3] = &unk_1E783C3B8;
        v21[4] = self;
        v22 = v7;
        v23 = v18;
        v24 = v16;
        v20 = v18;
        dispatch_async(v19, v21);
      }

      self->_lock_updatingState = 0;
    }
  }

  os_unfair_recursive_lock_unlock();
}

void __35__FBProcess__updateStateWithBlock___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) _observers];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) process:*(a1 + 32) stateDidChangeFromState:*(a1 + 40) toState:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  if (*(a1 + 56) == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [*(a1 + 32) _observers];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) applicationProcessDebuggingStateDidChange:*(a1 + 32)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)_configureIntrinsicsFromHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    [FBProcess _configureIntrinsicsFromHandle:a2];
  }

  v7 = handleCopy;
  p_rbsHandle = &self->_rbsHandle;
  rbsHandle = self->_rbsHandle;
  if (rbsHandle != handleCopy)
  {
    if (rbsHandle)
    {
      v10 = MEMORY[0x1E698E620];
      objc_msgSend_auditToken(handleCopy);
      v11 = [v10 tokenFromAuditToken:v38];
      if ([v11 isEqual:self->_auditToken])
      {
        identity = [(RBSProcessHandle *)*p_rbsHandle identity];
        identity2 = [(RBSProcessHandle *)v7 identity];
        v14 = [identity isEqual:identity2];

        if ((v14 & 1) == 0)
        {
          v29 = MEMORY[0x1E696AEC0];
          identity3 = [(RBSProcessHandle *)*p_rbsHandle identity];
          identity4 = [(RBSProcessHandle *)v7 identity];
          v32 = [v29 stringWithFormat:@"identity mismatch : existing=%@ new=%@", identity3, identity4];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [FBProcess _configureIntrinsicsFromHandle:];
          }

          [v32 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1A8A0E668);
        }

        goto LABEL_14;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"auditToken mismatch : existing=%@ new=%@", self->_auditToken, v11];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBProcess _configureIntrinsicsFromHandle:];
      }

LABEL_30:
      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0E5E0);
    }

    objc_storeStrong(&self->_rbsHandle, handle);
    self->_pid = [(RBSProcessHandle *)self->_rbsHandle pid];
    v15 = MEMORY[0x1E698E620];
    v16 = self->_rbsHandle;
    if (v16)
    {
      objc_msgSend_auditToken(v16);
    }

    else
    {
      memset(v38, 0, sizeof(v38));
    }

    v17 = [v15 tokenFromAuditToken:v38];
    auditToken = self->_auditToken;
    self->_auditToken = v17;

    self->_versionedPID = [(BSAuditToken *)self->_auditToken versionedPID];
    v19 = [MEMORY[0x1E69C7640] targetWithPid:self->_pid];
    target = self->_target;
    self->_target = v19;

    succinctDescription = [(FBProcess *)self succinctDescription];
    description = self->_description;
    self->_description = succinctDescription;

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@:%d]", self->_identityDescription, self->_pid];
    handleDescription = self->_handleDescription;
    self->_handleDescription = v23;

    pid = self->_pid;
    if (pid != [(BSAuditToken *)self->_auditToken pid])
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RBSProcessHandle %@ gave us a pid (%d) and an audit token with pid (%d) that don't match", self->_rbsHandle, self->_pid, -[BSAuditToken pid](self->_auditToken, "pid")];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBProcess _configureIntrinsicsFromHandle:];
      }

      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0E6D8);
    }

    if ([(BSAuditToken *)self->_auditToken isInvalid])
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RBSProcessHandle %@ gave us a bogus audit token: %@", self->_rbsHandle, self->_auditToken];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBProcess _configureIntrinsicsFromHandle:];
      }

      [v34 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A0E738);
    }

    if (([(RBSProcessIdentity *)self->_identity isXPCService]& 1) == 0)
    {
      identity = self->_identity;
      identity5 = [(RBSProcessHandle *)v7 identity];
      LOBYTE(identity) = [(RBSProcessIdentity *)identity isEqual:identity5];

      if ((identity & 1) == 0)
      {
        v35 = MEMORY[0x1E696AEC0];
        v36 = self->_identity;
        identity6 = [(RBSProcessHandle *)v7 identity];
        v28 = [v35 stringWithFormat:@"processIdentity %@ is not equal to handleIdentity %@", v36, identity6];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBProcess _configureIntrinsicsFromHandle:];
        }

        goto LABEL_30;
      }
    }
  }

LABEL_14:
}

- (BOOL)_setSceneLifecycleState:(unsigned __int8)state
{
  stateCopy = state;
  os_unfair_recursive_lock_lock_with_options();
  lock_sceneState = self->_lock_sceneState;
  if (lock_sceneState != stateCopy)
  {
    self->_lock_sceneState = stateCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__FBProcess__setSceneLifecycleState___block_invoke;
    v7[3] = &__block_descriptor_33_e24_v16__0__FBProcessState_8l;
    v8 = stateCopy;
    [(FBProcess *)self _updateStateWithBlock:v7];
  }

  os_unfair_recursive_lock_unlock();
  return lock_sceneState != stateCopy;
}

uint64_t __37__FBProcess__setSceneLifecycleState___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (v2 == 2);
  }

  return [a2 setVisibility:v3];
}

- (void)_noteStateDidUpdate:(id)update
{
  updateCopy = update;
  state = [updateCopy state];
  v6 = [state copy];

  taskState = [v6 taskState];
  if (taskState)
  {
    [(FBProcess *)self _rebuildState:v6];
  }

  else
  {
    v8 = FBLogProcess(taskState);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBProcess _noteStateDidUpdate:updateCopy];
    }
  }
}

- (void)_executeBlockAsCurrentProcess:(id)process
{
  v4 = MEMORY[0x1E696AF00];
  processCopy = process;
  currentThread = [v4 currentThread];
  threadDictionary = [currentThread threadDictionary];

  v7 = [threadDictionary objectForKey:@"FBProcess"];
  [threadDictionary setObject:self forKey:@"FBProcess"];
  processCopy[2](processCopy);

  if (v7)
  {
    [threadDictionary setObject:v7 forKey:@"FBProcess"];
  }

  else
  {
    [threadDictionary removeObjectForKey:@"FBProcess"];
  }
}

- (void)_processDidExitWithContext:(id)context
{
  contextCopy = context;
  [(FBProcess *)self _launchDidComplete:0 finalizeBlock:0];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_didExit)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v5 = [(FBProcess *)self _notePendingExitForReason:@"process exited"];
    if (!contextCopy)
    {
      if (!self->_bootstrapError || (v5 = [[FBProcessExitContext alloc] initWithLaunchError:self->_bootstrapError], (contextCopy = v5) == 0))
      {
        v6 = FBLogProcess(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [FBProcess _processDidExitWithContext:];
        }

        v7 = [FBProcessExitContext alloc];
        v8 = objc_alloc_init(MEMORY[0x1E69C75B8]);
        contextCopy = [(FBProcessExitContext *)v7 initWithUnderlyingContext:v8];
      }
    }

    [(FBProcessExitContext *)contextCopy setTerminationRequest:self->_lock_terminationRequest];
    [(FBProcessExitContext *)contextCopy setWatchdogContext:self->_lock_terminationWatchdogContext];
    [(FBProcessExitContext *)contextCopy setTerminationReason:self->_terminationReason];
    [(FBProcessExitContext *)contextCopy setStateBeforeExiting:self->_lock_state];
    objc_storeStrong(&self->_lock_exitContext, contextCopy);
    [(FBSProcessWatchdog *)self->_lock_watchdog invalidate];
    [(BSAbsoluteMachTimer *)self->_lock_exitTimer invalidate];
    lock_exitTimer = self->_lock_exitTimer;
    self->_lock_exitTimer = 0;

    [(RBSAssertion *)self->_lock_gracefulExitAssertion invalidate];
    lock_gracefulExitAssertion = self->_lock_gracefulExitAssertion;
    self->_lock_gracefulExitAssertion = 0;

    v12 = FBLogProcess(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _processDidExitWithContext:];
    }

    [(FBProcess *)self _updateStateWithBlock:&__block_literal_global_158];
    self->_lock_didExit = 1;
    v13 = self->_lock_terminateRequestCompletionBlocks;
    lock_terminateRequestCompletionBlocks = self->_lock_terminateRequestCompletionBlocks;
    self->_lock_terminateRequestCompletionBlocks = 0;

    v15 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FBProcess__processDidExitWithContext___block_invoke_2;
    block[3] = &unk_1E783B300;
    block[4] = self;
    contextCopy = contextCopy;
    v18 = contextCopy;
    v19 = v13;
    v16 = v13;
    dispatch_async(v15, block);

    os_unfair_recursive_lock_unlock();
  }
}

void __40__FBProcess__processDidExitWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTaskState:1];
  [v2 setVisibility:0];
}

void __40__FBProcess__processDidExitWithContext___block_invoke_2(id *a1)
{
  v2 = [a1[4] delegate];
  [v2 noteProcessDidExit:a1[4]];

  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1[4] + 22);
  v4 = a1[4];
  v5 = v4[22];
  v4[22] = 0;

  os_unfair_recursive_lock_unlock();
  *(a1[4] + 329) = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__FBProcess__processDidExitWithContext___block_invoke_3;
  v11[3] = &unk_1E783B2D8;
  v12 = v3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[4];
  v13 = v7;
  v14 = v8;
  v15 = a1[6];
  v9 = v3;
  [v6 _executeBlockAsCurrentProcess:v11];
  v10 = FBAnalyticsLogHangTracerEvent(a1[4], 3);
}

void __40__FBProcess__processDidExitWithContext___block_invoke_3(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a1[4] count])
  {
    v2 = [a1[5] createError];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v3 = a1[4];
    v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v27;
      do
      {
        v7 = 0;
        do
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v26 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v5);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a1[6] _observers];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v22 + 1) + 8 * v12++) processDidExit:a1[6]];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = a1[7];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v15);
  }
}

- (void)_rebuildState
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_rbsState)
  {
    [(FBProcess *)self _rebuildState:?];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)_rebuildState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    [FBProcess _rebuildState:a2];
  }

  v7 = stateCopy;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong(&self->_lock_rbsState, state);
  taskState = [(FBProcessState *)self->_lock_state taskState];
  v9 = [v7 taskState] - 2;
  if (v9 <= 2)
  {
    taskState = qword_1A8A71FA0[v9];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__FBProcess__rebuildState___block_invoke;
  v11[3] = &unk_1E783C448;
  selfCopy = self;
  v14 = taskState;
  v12 = v7;
  v10 = v7;
  [(FBProcess *)self _updateStateWithBlock:v11];
  os_unfair_recursive_lock_unlock();
}

void __27__FBProcess__rebuildState___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTaskState:*(a1 + 48)];
  if ([*(a1 + 32) isDebugging] & 1) != 0 || (*(*(a1 + 40) + 299))
  {
    v3 = 1;
  }

  else
  {
    v3 = BSPIDIsBeingDebugged();
  }

  [v4 setDebugging:v3];
}

- (void)_launchDidComplete:(BOOL)complete finalizeBlock:(id)block
{
  completeCopy = complete;
  v45 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_launchFinalized)
  {
    self->_lock_launchFinalized = 1;
    self->_lock_launchSuccess = completeCopy;
    v9 = FBLogProcess(v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (completeCopy)
    {
      if (v10)
      {
        [FBProcess _launchDidComplete:? finalizeBlock:?];
      }
    }

    else if (v10)
    {
      [FBProcess _launchDidComplete:? finalizeBlock:?];
    }

    v11 = self->_lock_launchCompletionBlocks;
    lock_launchCompletionBlocks = self->_lock_launchCompletionBlocks;
    self->_lock_launchCompletionBlocks = 0;

    if ([(FBProcessWatchdog *)self->_lock_watchdog event]== 1)
    {
      [(FBProcessWatchdog *)self->_lock_watchdog deactivate];
      if (completeCopy)
      {
        v28 = v11;
        v29 = completeCopy;
        array = [MEMORY[0x1E695DF70] array];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        policy = [(FBSProcessWatchdog *)self->_lock_watchdog policy];
        provisions = [policy provisions];

        v16 = [provisions countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v39;
          do
          {
            v19 = 0;
            do
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(provisions);
              }

              v20 = *(*(&v38 + 1) + 8 * v19);
              v36 = 0uLL;
              v37 = 0;
              if ([v20 isResourceProvision] && objc_msgSend(v20, "allowanceRemaining:", &v36))
              {
                *buf = v36;
                *&buf[16] = v37;
                v21 = [MEMORY[0x1E699FBA8] provisionWithAllowance:buf];
                if (v21)
                {
                  v22 = FBLogWatchdog();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    logProem = [(FBProcess *)self logProem];
                    *buf = 138543874;
                    *&buf[4] = logProem;
                    *&buf[12] = 2114;
                    *&buf[14] = v20;
                    *&buf[22] = 2114;
                    v43 = v21;
                    _os_log_impl(&dword_1A89DD000, v22, OS_LOG_TYPE_INFO, "%{public}@ Provision %{public}@ has remainder %{public}@", buf, 0x20u);
                  }

                  [array addObject:v21];
                }
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [provisions countByEnumeratingWithState:&v38 objects:v44 count:16];
          }

          while (v17);
        }

        if ([array count])
        {
          v23 = [MEMORY[0x1E699FBB8] policyWithName:@"scene create after launch" forProvisions:array];
          sceneCreateWatchdogPolicy = self->_sceneCreateWatchdogPolicy;
          self->_sceneCreateWatchdogPolicy = v23;
        }

        v25 = FBLogWatchdog();
        completeCopy = v29;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          [FBProcess _launchDidComplete:? finalizeBlock:?];
        }

        v11 = v28;
      }

      [(FBSProcessWatchdog *)self->_lock_watchdog invalidate];
      lock_watchdog = self->_lock_watchdog;
      self->_lock_watchdog = 0;
    }

    if (completeCopy)
    {
      if (self->_lock_waitForDebugger)
      {
        self->_lock_waitForDebugger = 0;
        [(FBProcess *)self _rebuildState];
      }
    }

    else
    {
      [(FBProcess *)self _notePendingExitForReason:@"launch failed"];
    }

    os_unfair_recursive_lock_unlock();
    v27 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke;
    block[3] = &unk_1E783C470;
    v35 = completeCopy;
    v32 = v11;
    selfCopy = self;
    v34 = blockCopy;
    v8 = v11;
    dispatch_async(v27, block);

    goto LABEL_36;
  }

  os_unfair_recursive_lock_unlock();
  if (blockCopy)
  {
    v8 = +[FBProcess userInitiatedWorkloop];
    dispatch_async(v8, blockCopy);
LABEL_36:
  }
}

void __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v23 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  if (*(a1 + 56) == 1 && [*(a1 + 40) isApplicationProcess])
  {
    *(*(a1 + 40) + 331) = 1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [*(a1 + 40) _observers];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v19 + 1) + 8 * v11++) applicationProcessDidLaunch:*(a1 + 40)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v9);
    }
  }

  if ([*(a1 + 40) isApplicationProcess])
  {
    v12 = 0;
  }

  else
  {
    v12 = [*(*(a1 + 40) + 32) hasConsistentLaunchdJob];
  }

  if ((*(a1 + 56) | v12))
  {
    v13 = 1000000000;
  }

  else
  {
    v13 = 100000000;
  }

  v14 = dispatch_time(0, v13);
  v15 = +[FBProcess userInitiatedWorkloop];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke_2;
  v17[3] = &unk_1E783B328;
  v16 = *(a1 + 48);
  v17[4] = *(a1 + 40);
  v18 = v16;
  dispatch_after(v14, v15, v17);
}

uint64_t __46__FBProcess__launchDidComplete_finalizeBlock___block_invoke_2(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 32);
  if (!v2[208])
  {
    [v2 _updateStateWithBlock:&__block_literal_global_174];
  }

  os_unfair_recursive_lock_unlock();
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_newWatchdogForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  event = [contextCopy event];
  os_unfair_recursive_lock_lock_with_options();
  sceneTransitionContext = [contextCopy sceneTransitionContext];
  v10 = sceneTransitionContext;
  if (event == 2 && ([sceneTransitionContext watchdogTransitionContext], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "runIndependently"), v11, !v12))
  {
    v19 = self->_sceneCreateWatchdogPolicy;
    sceneCreateWatchdogPolicy = self->_sceneCreateWatchdogPolicy;
    self->_sceneCreateWatchdogPolicy = 0;

    if (v19)
    {
LABEL_10:
      v22 = [[FBProcessWatchdog alloc] initWithProcess:self context:contextCopy policy:v19];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __47__FBProcess__newWatchdogForContext_completion___block_invoke;
      v24[3] = &unk_1E783C498;
      v24[4] = self;
      v25 = v22;
      v26 = completionCopy;
      v20 = v22;
      [(FBSProcessWatchdog *)v20 setCompletion:v24];

      goto LABEL_11;
    }
  }

  else
  {
    v13 = self->_sceneCreateWatchdogPolicy;
    self->_sceneCreateWatchdogPolicy = 0;
  }

  watchdogTransitionContext = [v10 watchdogTransitionContext];
  watchdogProvider = [watchdogTransitionContext watchdogProvider];
  v16 = watchdogProvider;
  if (watchdogProvider)
  {
    _watchdogProvider = watchdogProvider;
  }

  else
  {
    _watchdogProvider = [(FBProcess *)self _watchdogProvider];
  }

  v18 = _watchdogProvider;

  v19 = [v18 watchdogPolicyForProcess:self eventContext:contextCopy];

  if (v19)
  {
    goto LABEL_10;
  }

  v20 = 0;
LABEL_11:
  os_unfair_recursive_lock_unlock();

  return v20;
}

uint64_t __47__FBProcess__newWatchdogForContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (a2)
  {
    v6 = [v5 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E699F9B8]];

    if (v7)
    {
      v8 = FBLogWatchdog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v17 = [(FBProcess *)*(a1 + 32) logProem];
        v18 = [*(a1 + 40) name];
        *buf = 138543874;
        v23 = v17;
        v24 = 2114;
        v25 = v18;
        v26 = 2114;
        v27 = v7;
        _os_log_error_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Provision violated for watchdog %{public}@: %{public}@", buf, 0x20u);
      }

      v9 = [v7 copy];
      v10 = *(a1 + 32);
      v11 = *(v10 + 288);
      *(v10 + 288) = v9;
    }
  }

  v12 = *(*(a1 + 32) + 272);
  if (*(a1 + 40) == v12)
  {
    [v12 invalidate];
    v13 = *(a1 + 32);
    v14 = *(v13 + 272);
    *(v13 + 272) = 0;
  }

  os_unfair_recursive_lock_unlock();
  v15 = +[FBProcess calloutQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__FBProcess__newWatchdogForContext_completion___block_invoke_176;
  v19[3] = &unk_1E783C368;
  v21 = *(a1 + 48);
  v20 = *(a1 + 40);
  dispatch_async(v15, v19);

  return 0;
}

uint64_t __47__FBProcess__newWatchdogForContext_completion___block_invoke_176(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)_startWatchdogTimerForContext:(id)context
{
  contextCopy = context;
  pid = self->_pid;
  if (pid == getpid())
  {
    goto LABEL_4;
  }

  os_unfair_recursive_lock_lock_with_options();
  if (self->_lock_didExit)
  {
    os_unfair_recursive_lock_unlock();
LABEL_4:
    v6 = 0;
    goto LABEL_9;
  }

  v7 = [(FBProcess *)self _newWatchdogForContext:contextCopy completion:0];
  v6 = v7 != 0;
  if (v7)
  {
    v8 = self->_lock_watchdog;
    objc_storeStrong(&self->_lock_watchdog, v7);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_recursive_lock_unlock();
  [(FBSProcessWatchdog *)v8 invalidate];
  [v7 activate];

LABEL_9:
  return v6;
}

- (BOOL)_shouldWatchdogWithDeclineReason:(id *)reason
{
  pid = self->_pid;
  if (pid == getpid())
  {
    result = 0;
    v7 = @"current process can't be watchdogged";
LABEL_11:
    *reason = v7;
    return result;
  }

  if ([(FBProcess *)self isBeingDebugged])
  {
    result = 0;
    v7 = @"process is being debugged";
    goto LABEL_11;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"BKNoWatchdogs", *MEMORY[0x1E695E8A8], 0);
  if ([(FBProcessExecutionContext *)self->_executionContext checkForLeaks]|| AppBooleanValue)
  {
    result = 0;
    v7 = @"override default is set";
    goto LABEL_11;
  }

  os_unfair_recursive_lock_lock_with_options();
  tags = [(RBSProcessState *)self->_lock_rbsState tags];
  v10 = [tags containsObject:@"FBDisableWatchdog"];

  os_unfair_recursive_lock_unlock();
  if (v10)
  {
    *reason = @"watchdog is disabled via RB assertion";
  }

  return v10 ^ 1;
}

- (int64_t)_watchdogReportType
{
  if (_watchdogReportType_onceToken != -1)
  {
    [FBProcess _watchdogReportType];
  }

  if (_watchdogReportType___StackshotOverride)
  {
    return 2;
  }

  if ([(FBProcess *)self isPlatformBinary])
  {
    return 2;
  }

  return 1;
}

uint64_t __32__FBProcess__watchdogReportType__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"BKStackshotAppTimeout", *MEMORY[0x1E695E8A8], 0);
  _watchdogReportType___StackshotOverride = result != 0;
  return result;
}

- (void)_terminateWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (!requestCopy)
  {
    [FBProcess _terminateWithRequest:a2 completion:?];
  }

  v9 = completionCopy;
  v10 = os_unfair_recursive_lock_lock_with_options();
  v11 = FBLogProcess(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [FBProcess _terminateWithRequest:completion:];
  }

  if (self->_lock_launchFinalized && !self->_lock_launchSuccess || self->_lock_didExit)
  {
    v12 = os_unfair_recursive_lock_unlock();
    v13 = FBLogProcess(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _terminateWithRequest:? completion:?];
    }

    v14 = +[FBProcess calloutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__FBProcess__terminateWithRequest_completion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v26 = v9;
    dispatch_async(v14, block);
  }

  else
  {
    if (!self->_rbsHandle)
    {
      [FBProcess _terminateWithRequest:a2 completion:?];
    }

    if (v9)
    {
      lock_terminateRequestCompletionBlocks = self->_lock_terminateRequestCompletionBlocks;
      if (lock_terminateRequestCompletionBlocks)
      {
        v16 = [v9 copy];
        v17 = MEMORY[0x1AC572E40]();
        [(NSMutableArray *)lock_terminateRequestCompletionBlocks addObject:v17];
      }

      else
      {
        v18 = MEMORY[0x1E695DF70];
        v16 = [v9 copy];
        v19 = [v18 arrayWithObject:v16];
        v17 = self->_lock_terminateRequestCompletionBlocks;
        self->_lock_terminateRequestCompletionBlocks = v19;
      }
    }

    exceptionCode = [requestCopy exceptionCode];
    lock_terminationRequest = self->_lock_terminationRequest;
    if (!lock_terminationRequest || exceptionCode == 2343432205 && [(FBSProcessTerminationRequest *)lock_terminationRequest exceptionCode]!= 2343432205)
    {
      v24 = [requestCopy copy];

      objc_storeStrong(&self->_lock_terminationRequest, v24);
      if (exceptionCode != 2343432205 && ([v24 options] & 1) != 0)
      {
        if ([(FBProcessState *)self->_lock_state taskState]== 2)
        {
          [(FBProcess *)self _lock_consumeLock_performGracefulKill];
          goto LABEL_23;
        }

        [v24 setOptions:{objc_msgSend(v24, "options") & 0xFFFFFFFFFFFFFFFELL}];
        [v24 setReportType:0];
      }

      [(FBProcess *)self _lock_consumeLock_executeTerminationRequest];
      goto LABEL_23;
    }

    v22 = os_unfair_recursive_lock_unlock();
    v23 = FBLogProcess(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [FBProcess _terminateWithRequest:? completion:?];
    }
  }

  v24 = requestCopy;
LABEL_23:
}

uint64_t __46__FBProcess__terminateWithRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_killForReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion
{
  reportCopy = report;
  descriptionCopy = description;
  completionCopy = completion;
  pid = self->_pid;
  v13 = getpid();
  if (pid == v13)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = FBSApplicationTerminationReasonDescription();
    descriptionCopy = [v20 stringWithFormat:@"The current requested its own termination (for reason %@ with description %@", v21, descriptionCopy];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBProcess _killForReason:andReport:withDescription:completion:];
    }

LABEL_18:
    [descriptionCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A10504);
  }

  if (!descriptionCopy)
  {
    v13 = FBSApplicationTerminationReasonDescription();
    descriptionCopy = v13;
  }

  v14 = FBLogProcess(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [FBProcess _killForReason:andReport:withDescription:completion:];
  }

  [(FBProcess *)self _notePendingExitForReason:@"explicit kill request from client"];
  v15 = reason - 1;
  if ((reason - 1) >= 9)
  {
    descriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"fbReason != FBProcessKillReasonUnknown"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBProcess _killForReason:andReport:withDescription:completion:];
    }

    goto LABEL_18;
  }

  v16 = qword_1A8A71FB8[v15];
  v17 = qword_1A8A72000[v15];
  if (!self->_terminationReason)
  {
    self->_terminationReason = reason;
  }

  if (reportCopy)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = [MEMORY[0x1E699FBB0] requestForProcess:self withLabel:descriptionCopy];
  [v19 setReportType:v18];
  [v19 setExceptionCode:v17];
  [v19 setExplanation:descriptionCopy];
  [v19 setOptions:FBSApplicationTerminationReasonIsGraceful()];
  [(FBProcess *)self _terminateWithRequest:v19 completion:completionCopy];
}

- (void)_lock_consumeLock_executeTerminationRequest
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_rbsHandle != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [MEMORY[0x1E69C7610] predicateMatching:*(*(a1 + 32) + 48)];
  v3 = [objc_alloc(MEMORY[0x1E69C7660]) initWithPredicate:v2 context:*(v1 + 8)];
  v17 = 0;
  v4 = [v3 execute:&v17];
  v5 = v17;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = FBLogProcess(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_cold_1();
    }

    v8 = MEMORY[0x1E696ABC0];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_291;
    v15 = &unk_1E783BC58;
    v16 = v6;
    v9 = [v8 bs_errorWithDomain:@"FBProcessTermination" code:1 configuration:&v12];
    v10 = [FBProcessExitContext alloc];
    v11 = [(FBProcessExitContext *)v10 initWithTerminationError:v9, v12, v13, v14, v15];
    [*v1 _processDidExitWithContext:v11];
  }
}

void __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_291(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFailureDescription:@"Termination request failed"];
  [v3 setFailureReason:@"RunningBoard returned an error"];
  [v3 setCodeDescription:@"request-failed"];
  [v3 setUnderlyingError:*(a1 + 32)];
}

- (void)_lock_consumeLock_performGracefulKill
{
  *a3 = 138543618;
  *(a3 + 4) = self;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_16(&dword_1A89DD000, a4, a3, "%{public}@ Failed to acquire graceful termination assertion: %{public}@", a3);
}

void __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke_cold_1(WeakRetained, a1, v3);
  }
}

void __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke_320(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_recursive_lock_lock_with_options();
    v4 = WeakRetained[20];
    if (v4 == v5)
    {
      WeakRetained[20] = 0;
    }

    os_unfair_recursive_lock_unlock();
  }
}

- (void)_terminateWithRequest:(id)request forWatchdog:(id)watchdog
{
  watchdogCopy = watchdog;
  requestCopy = request;
  os_unfair_recursive_lock_lock_with_options();
  if (!self->_lock_terminationWatchdogContext)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      eventContext = [watchdogCopy eventContext];
      lock_terminationWatchdogContext = self->_lock_terminationWatchdogContext;
      self->_lock_terminationWatchdogContext = eventContext;

      cpuStatistics = [watchdogCopy cpuStatistics];
      lock_watchdogCPUStatistics = self->_lock_watchdogCPUStatistics;
      self->_lock_watchdogCPUStatistics = cpuStatistics;
    }
  }

  os_unfair_recursive_lock_unlock();
  [(FBProcess *)self _terminateWithRequest:requestCopy completion:0];

  [watchdogCopy invalidate];
}

- (id)_watchdog:(id)_watchdog terminationRequestForError:(id)error
{
  _watchdogCopy = _watchdog;
  errorCopy = error;
  _watchdogProvider = [(FBProcess *)self _watchdogProvider];
  if (!_watchdogProvider || (objc_opt_respondsToSelector() & 1) == 0 || ([_watchdogProvider watchdogTerminationRequestForProcess:self error:errorCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [MEMORY[0x1E699FBB0] requestForProcess:self withLabel:@"watchdog provision violated"];
    [v9 setReportType:{-[FBProcess _watchdogReportType](self, "_watchdogReportType")}];
  }

  v10 = MEMORY[0x1E696AEC0];
  name = [_watchdogCopy name];
  localizedFailureReason = [errorCopy localizedFailureReason];
  v13 = localizedFailureReason;
  if (localizedFailureReason)
  {
    v14 = [v10 stringWithFormat:@"%@ watchdog transgression: %@", name, localizedFailureReason];
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
    v14 = [v10 stringWithFormat:@"%@ watchdog transgression: %@", name, localizedDescription];
  }

  explanation = [v9 explanation];
  if (explanation)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v14, explanation];;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;
  [v9 setExplanation:v17];
  [v9 setExceptionCode:2343432205];

  return v9;
}

- (BOOL)_watchdog:(id)_watchdog shouldTerminateWithDeclineReason:(id *)reason
{
  v21 = *MEMORY[0x1E69E9840];
  _watchdogCopy = _watchdog;
  v7 = [(FBProcess *)self _shouldWatchdogWithDeclineReason:reason];
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = FBLogProcess(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logProem = [(FBProcess *)self logProem];
      v13 = [MEMORY[0x1E698E680] succinctDescriptionForObject:_watchdogCopy];
      v14 = *reason;
      v15 = 138543874;
      v16 = logProem;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring %{public}@ for reason: %{public}@", &v15, 0x20u);
    }

    os_unfair_recursive_lock_lock_with_options();
    [(BSAbsoluteMachTimer *)self->_lock_exitTimer invalidate];
    lock_exitTimer = self->_lock_exitTimer;
    self->_lock_exitTimer = 0;

    os_unfair_recursive_lock_unlock();
  }

  return v8;
}

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  v5 = [processCopy pid];
  pid = self->_pid;
  if (pid <= 0 && v5 < 1)
  {
    identity = self->_identity;
    identity = [processCopy identity];
    v8 = [(RBSProcessIdentity *)identity isEqual:identity];
  }

  else
  {
    v8 = pid == v5;
  }

  return v8;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBProcess *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(FBProcess *)self succinctDescriptionBuilder];
  os_unfair_recursive_lock_lock_with_options();
  v5 = NSStringFromFBProcessTaskState([(FBProcessState *)self->_lock_state taskState]);
  v6 = [succinctDescriptionBuilder appendObject:v5 withName:@"taskState" skipIfNil:1];

  v7 = NSStringFromFBProcessVisibility([(FBProcessState *)self->_lock_state visibility]);
  v8 = [succinctDescriptionBuilder appendObject:v7 withName:@"visibility" skipIfNil:1];

  os_unfair_recursive_lock_unlock();

  return succinctDescriptionBuilder;
}

- (void)_initWithProcessManager:identity:handle:executionContext:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_initWithProcessManager:(uint64_t)a1 identity:(char *)a2 handle:executionContext:.cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be initialized with an identity : identity=%@ handle=%@", 0, a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)bootstrapWithDelegate:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_notePendingExitForReason:(void *)a1 .cold.1(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __39__FBProcess__notePendingExitForReason___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = 138543362;
  v5 = v3;
  OUTLINED_FUNCTION_17(&dword_1A89DD000, a2, a3, "No exit notification received for %{public}@ after 5 minutes", &v4);
}

- (void)_updateStateWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v2 = [(FBProcess *)v1 logProem];
  v3 = NSStringFromFBProcessTaskState([*v0 taskState]);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_updateStateWithBlock:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  v2 = [(FBProcess *)v1 logProem];
  v3 = NSStringFromFBProcessVisibility([*v0 visibility]);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_updateStateWithBlock:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  v2 = [(FBProcess *)v1 logProem];
  [*v0 isDebugging];
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_configureIntrinsicsFromHandle:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_configureIntrinsicsFromHandle:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_configureIntrinsicsFromHandle:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_configureIntrinsicsFromHandle:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_configureIntrinsicsFromHandle:.cold.5()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_configureIntrinsicsFromHandle:(char *)a1 .cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handle != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_noteStateDidUpdate:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 process];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_17(v2, v3, v4, v5, v6);
}

- (void)_processDidExitWithContext:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17(&dword_1A89DD000, v0, v1, "No exit context obtained for %{public}@", v2);
}

- (void)_processDidExitWithContext:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  v1 = [(FBProcess *)v0 logProem];
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_rebuildState:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"rbsState != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_launchDidComplete:(void *)a1 finalizeBlock:.cold.1(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_launchDidComplete:(void *)a1 finalizeBlock:.cold.2(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_launchDidComplete:(void *)a1 finalizeBlock:.cold.3(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_7_2();
  _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x16u);
}

- (void)_terminateWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v1 = [(FBProcess *)v0 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_terminateWithRequest:(void *)a1 completion:.cold.2(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_terminateWithRequest:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot terminate a process before it has attempted bootstrapping"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    LODWORD(v10) = 138544642;
    *(&v10 + 4) = a1;
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_terminateWithRequest:(void *)a1 completion:.cold.4(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_terminateWithRequest:(char *)a1 completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"request != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_killForReason:andReport:withDescription:completion:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v1 = [(FBProcess *)v0 logProem];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_killForReason:andReport:withDescription:completion:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

- (void)_killForReason:andReport:withDescription:completion:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_9_0();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8);
}

void __56__FBProcess__lock_consumeLock_executeTerminationRequest__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  v2 = [(FBProcess *)*v1 logProem];
  v3 = [v0 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_16(v4, v5, v6, v7, v8);
}

void __50__FBProcess__lock_consumeLock_performGracefulKill__block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(FBProcess *)a1 logProem];
  v8 = [v6 stringWithFormat:@"%@ Failed to terminate gracefully after %.1fs", v7, *(a2 + 56)];

  v10 = FBLogProcess(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543362;
    v17 = v8;
    OUTLINED_FUNCTION_17(&dword_1A89DD000, v10, v11, "%{public}@!", &v16);
  }

  v12 = [MEMORY[0x1E699FBB0] requestForProcess:a1 withLabel:@"graceful termination failed"];
  [v12 setReportType:{objc_msgSend(a1, "_watchdogReportType")}];
  [v12 setExceptionCode:2343432205];
  [v12 setExplanation:v8];
  os_unfair_recursive_lock_lock_with_options();
  objc_storeStrong((a1 + 224), v12);
  objc_storeStrong((a1 + 232), *(a2 + 32));
  objc_storeStrong((a1 + 216), *(a2 + 40));
  v13 = [MEMORY[0x1E699FBA8] provisionWithResourceType:1 timeInterval:*(a2 + 56)];
  v14 = *(a1 + 288);
  *(a1 + 288) = v13;

  v15 = *(a1 + 160);
  if (v15 == a3)
  {
    *(a1 + 160) = 0;
  }

  [a1 _lock_consumeLock_executeTerminationRequest];
}

@end