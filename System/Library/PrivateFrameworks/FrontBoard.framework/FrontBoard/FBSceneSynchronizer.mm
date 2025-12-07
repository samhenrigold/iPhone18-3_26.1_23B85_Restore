@interface FBSceneSynchronizer
+ (id)detachedSynchronizerWithIdentifier:(id)identifier;
+ (id)synchronizerForViewServiceWithProcessIdentifier:(id)identifier;
- (RBSProcessHandle)processHandle;
- (id)_dispatcher;
- (id)_initWithIdentifier:(void *)identifier workspaceQueue:(void *)queue dispatcher:;
- (id)_workspaceQueue;
- (id)description;
- (void)_setProcessHandle:(uint64_t)handle;
- (void)_setWaitingForConnect;
- (void)performAsyncOnSendingQueue:(id)queue;
@end

@implementation FBSceneSynchronizer

- (id)_dispatcher
{
  if (self)
  {
    self = self[4];
    v1 = vars8;
  }

  return self;
}

- (void)_setWaitingForConnect
{
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    if ((*(self + 52) & 1) == 0)
    {
      *(self + 52) = 1;
      v2 = *(self + 40);
      if (v2)
      {
        v3 = [v2 pid];
        if (v3 == getpid())
        {
          domain = [(FBWorkspaceEventDispatcher *)*(self + 32) domain];
          [(FBWorkspaceDomain *)domain injectEndpointToFBSWorkspace];
        }
      }
    }

    os_unfair_lock_unlock((self + 48));
  }
}

- (id)_workspaceQueue
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

- (id)_initWithIdentifier:(void *)identifier workspaceQueue:(void *)queue dispatcher:
{
  v7 = a2;
  identifierCopy = identifier;
  queueCopy = queue;
  if (self)
  {
    v10 = v7;
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (!v10)
    {
      v25 = NSStringFromClass(v12);
      v26 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSceneSynchronizer _initWithIdentifier:self workspaceQueue:? dispatcher:?];
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A40C44);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneSynchronizer _initWithIdentifier:v10 workspaceQueue:sel__initWithIdentifier_workspaceQueue_dispatcher_ dispatcher:?];
    }

    v13 = identifierCopy;
    if (!v13)
    {
      [FBSceneSynchronizer _initWithIdentifier:self workspaceQueue:? dispatcher:?];
    }

    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneSynchronizer _initWithIdentifier:v14 workspaceQueue:sel__initWithIdentifier_workspaceQueue_dispatcher_ dispatcher:?];
    }

    v15 = queueCopy;
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [FBSceneSynchronizer _initWithIdentifier:v15 workspaceQueue:sel__initWithIdentifier_workspaceQueue_dispatcher_ dispatcher:?];
      }
    }

    v27.receiver = self;
    v27.super_class = FBSceneSynchronizer;
    self = objc_msgSendSuper2(&v27, sel_init);
    if (self)
    {
      v16 = [v10 copy];
      v17 = self[1];
      self[1] = v16;

      objc_storeStrong(self + 2, identifier);
      v18 = MEMORY[0x1E698F480];
      v19 = self[2];
      v20 = +[FBWorkspaceEventDispatcher callOutQueue];
      v21 = [v18 queueWithDispatchQueue:v19 targetQueue:v20];
      v22 = self[3];
      self[3] = v21;

      objc_storeStrong(self + 4, queue);
      v23 = self[5];
      self[5] = 0;

      *(self + 12) = 0;
      *(self + 52) = 0;
    }
  }

  return self;
}

- (void)_setProcessHandle:(uint64_t)handle
{
  v4 = a2;
  if (!handle)
  {
LABEL_11:

    return;
  }

  v16 = v4;
  v5 = v4;
  if (!v5)
  {
    [(FBSceneSynchronizer *)sel__setProcessHandle_ _setProcessHandle:handle];
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBSceneSynchronizer *)v6 _setProcessHandle:?];
  }

  os_unfair_lock_lock((handle + 48));
  v7 = *(handle + 40);
  v8 = v7;
  if (!v7)
  {
LABEL_7:
    objc_storeStrong((handle + 40), a2);
    if (*(handle + 52) == 1)
    {
      v13 = [v6 pid];
      if (v13 == getpid())
      {
        domain = [(FBWorkspaceEventDispatcher *)*(handle + 32) domain];
        [(FBWorkspaceDomain *)domain injectEndpointToFBSWorkspace];
      }
    }

    os_unfair_lock_unlock((handle + 48));

    v4 = v16;
    goto LABEL_11;
  }

  identity = [v7 identity];
  identity2 = [v6 identity];
  if ([identity isEqual:identity2])
  {
    v11 = [v8 pid];
    v12 = [v6 pid];

    if (v11 == v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  os_unfair_lock_unlock((handle + 48));
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"new processHandle=%@ mismatches previous=%@", v6, v8];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [(FBSceneSynchronizer *)sel__setProcessHandle_ _setProcessHandle:handle];
  }

  [v15 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (RBSProcessHandle)processHandle
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_process;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)performAsyncOnSendingQueue:(id)queue
{
  if (queue)
  {
    [(BSServiceDispatchQueue *)self->_workspaceQueue performAsync:?];
  }
}

+ (id)synchronizerForViewServiceWithProcessIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(FBSceneSynchronizer *)a2 synchronizerForViewServiceWithProcessIdentifier:self];
  }

  v6 = identifierCopy;
  objc_opt_class();
  v7 = objc_opt_respondsToSelector();
  v8 = MEMORY[0x1E69C75D0];
  if (v7)
  {
    v9 = [MEMORY[0x1E69C75E0] identifierForIdentifier:v6];
    v24 = 0;
    v10 = [v8 forceLookupIdentifer:v9 error:&v24];
    v11 = v24;

    if (v10)
    {
LABEL_4:
      v13 = +[FBProcessManager sharedInstance];
      v22 = 0;
      v14 = [v13 _registerProcessForViewServiceWithProcessHandle:v10 error:&v22];
      v15 = v22;
      v16 = v15;
      if (v14)
      {
        workspace = [v14 workspace];
        synchronizer = [workspace synchronizer];

LABEL_16:
        goto LABEL_17;
      }

      if (v15)
      {
        v20 = FBLogProcessWorkspace(v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *v26 = v10;
          *&v26[8] = 2114;
          *&v26[10] = v16;
          _os_log_impl(&dword_1A89DD000, v20, OS_LOG_TYPE_DEFAULT, "failed to register viewService process %{public}@ : error=%{public}@", buf, 0x16u);
        }
      }

LABEL_15:
      synchronizer = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v23 = 0;
    v10 = [MEMORY[0x1E69C75D0] handleForIdentifier:v6 error:&v23];
    v12 = v23;
    v11 = v12;
    if (v10)
    {
      goto LABEL_4;
    }
  }

  if (v11)
  {
    v13 = FBLogProcessWorkspace(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      rbs_pid = [v6 rbs_pid];
      *buf = 67109378;
      *v26 = rbs_pid;
      *&v26[4] = 2114;
      *&v26[6] = v11;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "failed to lookup viewService process with pid=%i : error=%{public}@", buf, 0x12u);
    }

    goto LABEL_15;
  }

  synchronizer = 0;
LABEL_17:

  return synchronizer;
}

+ (id)detachedSynchronizerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!identifierCopy)
  {
    v14 = NSStringFromClass(v7);
    v15 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v14];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSceneSynchronizer *)a2 detachedSynchronizerWithIdentifier:self];
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A412CCLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBSceneSynchronizer *)identifierCopy detachedSynchronizerWithIdentifier:a2];
  }

  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.frontboard.detached-scene-synchronizer<%@>", identifierCopy];
  v9 = MEMORY[0x1E698F4D0];
  v10 = [MEMORY[0x1E698F500] serviceWithClass:33];
  v11 = [v9 queueWithName:identifierCopy serviceQuality:v10];

  v12 = [[FBSceneSynchronizer alloc] _initWithIdentifier:identifierCopy workspaceQueue:v11 dispatcher:0];

  return v12;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(RBSProcessHandle *)self->_lock_process pid];
  os_unfair_lock_unlock(&self->_lock);
  if (v3 < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBSceneSynchronizer:%p %@>", self, self->_identifier, v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBSceneSynchronizer:%p %@[%i]>", self, self->_identifier, v3];
  }
  v4 = ;

  return v4;
}

- (void)_initWithIdentifier:(void *)a1 workspaceQueue:(const char *)a2 dispatcher:.cold.1(void *a1, const char *a2)
{
  v4 = OUTLINED_FUNCTION_5(a1, a2);
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v2 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v3);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(void *)a1 workspaceQueue:(char *)a2 dispatcher:.cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"workspaceQueue", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(void *)a1 workspaceQueue:(char *)a2 dispatcher:.cold.3(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"dispatcher", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(const char *)a1 workspaceQueue:(uint64_t)a2 dispatcher:.cold.4(const char *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"workspaceQueue", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a1);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_0_1();
    v13 = @"FBSceneSynchronizer.m";
    v14 = 1024;
    v15 = 43;
    v16 = v10;
    v17 = v6;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(const char *)a1 workspaceQueue:(uint64_t)a2 dispatcher:.cold.5(const char *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6);
}

- (void)_setProcessHandle:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"process", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setProcessHandle:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6);
}

- (void)_setProcessHandle:(const char *)a1 .cold.3(const char *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"process", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a1);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_0_1();
    v13 = @"FBSceneSynchronizer.m";
    v14 = 1024;
    v15 = 67;
    v16 = v10;
    v17 = v6;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)synchronizerForViewServiceWithProcessIdentifier:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"processIdentifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"FBSceneSynchronizer.m";
    v17 = 1024;
    v18 = 113;
    v19 = 2114;
    v20 = v4;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)detachedSynchronizerWithIdentifier:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v4 = OUTLINED_FUNCTION_5(a1, a2);
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v2 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v3);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)detachedSynchronizerWithIdentifier:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6);
}

@end