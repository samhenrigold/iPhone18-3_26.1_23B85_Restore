@interface BKSProcess
+ (double)backgroundTimeRemaining;
+ (id)busyExtensionInstances:(id)instances;
+ (id)currentProcess;
- (BKSProcess)initWithBundleIdentifier:(id)identifier;
- (BKSProcess)initWithProcessIdentity:(id)identity;
- (BKSProcessExitContext)lastExitContext;
- (BOOL)_bootstrapWithError:(id *)error;
- (BOOL)bootstrapWithProcessHandle:(id)handle error:(id *)error;
- (double)backgroundTimeRemaining;
- (id)description;
- (void)bootstrapCurrentProcess;
- (void)invalidate;
- (void)setNowPlayingWithAudio:(BOOL)audio;
- (void)setRecordingAudio:(BOOL)audio;
@end

@implementation BKSProcess

+ (id)currentProcess
{
  if (currentProcess_onceToken != -1)
  {
    +[BKSProcess currentProcess];
  }

  v3 = currentProcess___currentProcess;

  return v3;
}

uint64_t __28__BKSProcess_currentProcess__block_invoke()
{
  v0 = [BKSProcess alloc];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [(BKSProcess *)v0 initWithBundleIdentifier:v2];
  v4 = currentProcess___currentProcess;
  currentProcess___currentProcess = v3;

  v5 = currentProcess___currentProcess;

  return [v5 bootstrapCurrentProcess];
}

- (void)bootstrapCurrentProcess
{
  processHandle = [MEMORY[0x277CF0CC8] processHandle];
  handle = self->_handle;
  self->_handle = processHandle;

  currentProcess = [MEMORY[0x277D46F48] currentProcess];
  processHandle = self->_processHandle;
  self->_processHandle = currentProcess;

  self->_bootstrapped = 1;
}

- (BKSProcess)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [BKSProcess initWithBundleIdentifier:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BKSProcess initWithBundleIdentifier:];
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [identifierCopy isEqualToString:bundleIdentifier];

  if (v7)
  {
    [MEMORY[0x277D46F60] identityOfCurrentProcess];
  }

  else
  {
    [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:identifierCopy jobLabel:identifierCopy auid:getuid() platform:6];
  }
  v8 = ;
  v9 = [(BKSProcess *)self initWithProcessIdentity:v8];

  return v9;
}

- (BKSProcess)initWithProcessIdentity:(id)identity
{
  identityCopy = identity;
  NSClassFromString(&cfstr_Rbsprocessiden.isa);
  if (!identityCopy)
  {
    [BKSProcess initWithProcessIdentity:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BKSProcess initWithProcessIdentity:];
  }

  v12.receiver = self;
  v12.super_class = BKSProcess;
  v5 = [(BKSProcess *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [identityCopy copy];
    identity = v6->_identity;
    v6->_identity = v7;

    monitor = [MEMORY[0x277D46F80] monitor];
    monitor = v6->_monitor;
    v6->_monitor = monitor;
  }

  return v6;
}

- (BOOL)bootstrapWithProcessHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  if (self->_handle)
  {
    [BKSProcess bootstrapWithProcessHandle:error:];
  }

  if (objc_opt_class())
  {
    v8 = handleCopy;
    NSClassFromString(&cfstr_Bsprocesshandl.isa);
    if (!v8)
    {
      [BKSProcess bootstrapWithProcessHandle:error:];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BKSProcess bootstrapWithProcessHandle:error:];
    }

    objc_storeStrong(&self->_handle, handle);
    v9 = [(BKSProcess *)self _bootstrapWithError:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = rbs_shim_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    processHandle = self->_processHandle;
    v9 = 134218242;
    selfCopy = self;
    v11 = 2114;
    v12 = processHandle;
    _os_log_impl(&dword_22EEB6000, v3, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] Invalidating BKSProcess for %{public}@", &v9, 0x16u);
  }

  [(RBSAssertion *)self->_assertion invalidate];
  assertion = self->_assertion;
  self->_assertion = 0;

  [(BKSProcessAssertion *)self->_audioAssertion invalidate];
  audioAssertion = self->_audioAssertion;
  self->_audioAssertion = 0;

  [(BKSProcessAssertion *)self->_mediaAssertion invalidate];
  mediaAssertion = self->_mediaAssertion;
  self->_mediaAssertion = 0;

  [(RBSProcessMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;

  os_unfair_lock_unlock(&self->_lock);
}

+ (double)backgroundTimeRemaining
{
  currentProcess = [self currentProcess];
  [currentProcess backgroundTimeRemaining];
  v4 = v3;

  result = 1.79769313e308;
  if (v4 != *MEMORY[0x277D47080])
  {
    return v4;
  }

  return result;
}

- (double)backgroundTimeRemaining
{
  activeLimitations = [(RBSProcessHandle *)self->_processHandle activeLimitations];
  [activeLimitations runTime];
  v4 = v3;

  result = 1.79769313e308;
  if (v4 != *MEMORY[0x277D47080])
  {
    return v4;
  }

  return result;
}

- (BKSProcessExitContext)lastExitContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastExitContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNowPlayingWithAudio:(BOOL)audio
{
  audioCopy = audio;
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_nowPlayingWithAudio != audioCopy)
  {
    self->_nowPlayingWithAudio = audioCopy;
    v5 = rbs_shim_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = self->_processHandle;
      v10 = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = processHandle;
      v14 = 1024;
      v15 = audioCopy;
      _os_log_impl(&dword_22EEB6000, v5, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] %{public}@ now playing with audio: %{BOOL}d", &v10, 0x1Cu);
    }

    if (self->_nowPlayingWithAudio)
    {
      v7 = [[BKSProcessAssertion alloc] initWithPID:[(RBSProcessHandle *)self->_processHandle pid] flags:13 reason:1 name:@"[BKSProcess setNowPlayingWithAudio:YES]"];
      audioAssertion = self->_audioAssertion;
      self->_audioAssertion = v7;

      [(BKSProcessAssertion *)self->_audioAssertion acquire];
    }

    else
    {
      [(BKSProcessAssertion *)self->_audioAssertion invalidate];
      v9 = self->_audioAssertion;
      self->_audioAssertion = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRecordingAudio:(BOOL)audio
{
  audioCopy = audio;
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_recordingAudio != audioCopy)
  {
    self->_recordingAudio = audioCopy;
    v5 = rbs_shim_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = self->_processHandle;
      v10 = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = processHandle;
      v14 = 1024;
      v15 = audioCopy;
      _os_log_impl(&dword_22EEB6000, v5, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] %{public}@ now recording audio: %{BOOL}d", &v10, 0x1Cu);
    }

    if (self->_recordingAudio)
    {
      v7 = [[BKSProcessAssertion alloc] initWithPID:[(RBSProcessHandle *)self->_processHandle pid] flags:13 reason:23 name:@"[BKSProcess setRecordingAudio:YES]"];
      mediaAssertion = self->_mediaAssertion;
      self->_mediaAssertion = v7;

      [(BKSProcessAssertion *)self->_mediaAssertion acquire];
    }

    else
    {
      [(BKSProcessAssertion *)self->_mediaAssertion invalidate];
      v9 = self->_mediaAssertion;
      self->_mediaAssertion = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)busyExtensionInstances:(id)instances
{
  v24 = *MEMORY[0x277D85DE8];
  instancesCopy = instances;
  v4 = [MEMORY[0x277CBEB58] set];
  mEMORY[0x277D46E20] = [MEMORY[0x277D46E20] sharedInstance];
  v20 = 0;
  v6 = [mEMORY[0x277D46E20] busyExtensionInstancesFromSet:instancesCopy error:&v20];
  v7 = v20;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v21 = @"ExtensionBundleID";
        v22 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:{1, v16}];
        [v4 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v10);
  }

  return v4;
}

- (BOOL)_bootstrapWithError:(id *)error
{
  v69[5] = *MEMORY[0x277D85DE8];
  if (!self->_identity)
  {
    [BKSProcess _bootstrapWithError:];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_bootstrapped = 1;
  grant = [MEMORY[0x277D46EF8] grant];
  v69[0] = grant;
  v6 = [MEMORY[0x277D46E48] invalidateAfterInterval:1.0];
  v69[1] = v6;
  grantWithBackgroundPriority = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
  v69[2] = grantWithBackgroundPriority;
  grant2 = [MEMORY[0x277D46DF0] grant];
  v69[3] = grant2;
  v9 = [MEMORY[0x277D46FC0] grantWithResistance:30];
  v69[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:5];

  handle = self->_handle;
  if (handle)
  {
    v12 = [(BSProcessHandle *)handle pid];
    v13 = MEMORY[0x277D46F48];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    v59 = 0;
    v15 = [v13 handleForIdentifier:v14 error:&v59];
    v16 = v59;

    if (v15)
    {
      v17 = objc_alloc(MEMORY[0x277D46DB8]);
      v18 = MEMORY[0x277D47008];
      v19 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v20 = [v18 targetWithProcessIdentifier:v19];
      v21 = [v17 initWithExplanation:@"BKSProcessLaunch" target:v20 attributes:v10];

      [v21 acquireWithError:0];
LABEL_7:
      v25 = rbs_shim_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [(RBSProcessIdentity *)self->_identity shortDescription];
        *buf = 134218498;
        selfCopy2 = self;
        v65 = 2114;
        v66 = v15;
        v67 = 2114;
        v68 = shortDescription;
        _os_log_impl(&dword_22EEB6000, v25, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] %{public}@ bootstrapped successfully as %{public}@", buf, 0x20u);
      }

      objc_storeStrong(&self->_processHandle, v15);
      objc_storeStrong(&self->_assertion, v21);
      if (!self->_handle)
      {
        legacyHandle = [v15 legacyHandle];
        v28 = self->_handle;
        self->_handle = legacyHandle;
      }

      if (self->_assertion)
      {
        v29 = dispatch_time(0, 1000000000);
        mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __34__BKSProcess__bootstrapWithError___block_invoke;
        block[3] = &unk_278871B48;
        block[4] = self;
        dispatch_after(v29, mEMORY[0x277D47028], block);
      }

      v31 = 1;
      goto LABEL_31;
    }

    v21 = 0;
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x277D46EB0]);
    [v22 setIdentity:self->_identity];
    [v22 setExplanation:@"BKSProcessLaunch"];
    [v22 setAttributes:v10];
    v23 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v22];
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v24 = [v23 execute:&v58 assertion:&v57 error:&v56];
    v15 = v58;
    v21 = v57;
    v16 = v56;

    if (v24)
    {
      goto LABEL_7;
    }
  }

  errorCopy = error;
  v50 = v10;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  underlyingErrors = [v16 underlyingErrors];
  v33 = [underlyingErrors countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (!v33)
  {
    goto LABEL_26;
  }

  v34 = v33;
  v35 = *v52;
  v36 = *MEMORY[0x277CCA5B8];
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v52 != v35)
      {
        objc_enumerationMutation(underlyingErrors);
      }

      v38 = *(*(&v51 + 1) + 8 * i);
      lastExitContext = [v38 domain];
      if ([lastExitContext isEqual:v36])
      {
        code = [v38 code];

        if (code != 80)
        {
          continue;
        }

        v41 = objc_alloc_init(BKSProcessExitContext);
        [(BKSProcessExitContext *)v41 setExitReason:?];
        lastExitContext = self->_lastExitContext;
        self->_lastExitContext = v41;
      }
    }

    v34 = [underlyingErrors countByEnumeratingWithState:&v51 objects:v62 count:16];
  }

  while (v34);
LABEL_26:

  v42 = rbs_shim_log();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    shortDescription2 = [(RBSProcessIdentity *)self->_identity shortDescription];
    *buf = 134218498;
    selfCopy2 = self;
    v65 = 2114;
    v66 = shortDescription2;
    v67 = 2114;
    v68 = v16;
    _os_log_error_impl(&dword_22EEB6000, v42, OS_LOG_TYPE_ERROR, "[BKSProcess:%p] Bootstrap failed for %{public}@ with error: <%{public}@>", buf, 0x20u);
  }

  v10 = v50;
  if (errorCopy)
  {
    v43 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA7E8];
    v60[0] = *MEMORY[0x277CCA470];
    v60[1] = v44;
    v61[0] = @"Bootstrap failed";
    v61[1] = v16;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    *errorCopy = [v43 errorWithDomain:@"BKSProcessErrorDomain" code:1 userInfo:v45];
  }

  v31 = 0;
  v21 = v48;
LABEL_31:
  os_unfair_lock_unlock(&self->_lock);

  return v31;
}

void __34__BKSProcess__bootstrapWithError___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v4);
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  shortDescription = [(RBSProcessIdentity *)self->_identity shortDescription];
  v6 = [v3 initWithFormat:@"<%@| %@>", v4, shortDescription];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)initWithBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithBundleIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[object isKindOfClass:NSStringClass]" object:? file:? lineNumber:? description:?];
}

- (void)initWithProcessIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithProcessIdentity:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[object isKindOfClass:RBSProcessIdentityClass]" object:? file:? lineNumber:? description:?];
}

- (void)bootstrapWithProcessHandle:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_handle == nil" object:? file:? lineNumber:? description:?];
}

- (void)bootstrapWithProcessHandle:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

- (void)bootstrapWithProcessHandle:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[object isKindOfClass:BSProcessHandleClass]" object:? file:? lineNumber:? description:?];
}

- (void)_bootstrapWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end