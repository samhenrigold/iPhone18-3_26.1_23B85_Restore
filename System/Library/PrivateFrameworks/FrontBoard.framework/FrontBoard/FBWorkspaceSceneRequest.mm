@interface FBWorkspaceSceneRequest
- (FBWorkspaceSceneRequest)initWithClientIdentity:(id)identity targetIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier;
- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier actions:(id)actions completion:(id)completion;
- (void)_respondWithScene:(id)scene error:(id)error;
- (void)dealloc;
- (void)invalidateWithError:(id)error;
- (void)observeScene:(id)scene;
- (void)respondWithScene:(id)scene;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidInvalidate:(id)invalidate;
@end

@implementation FBWorkspaceSceneRequest

- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest initWithTargetIdentifier:a2];
    }
  }

  v10.receiver = self;
  v10.super_class = FBWorkspaceSceneRequest;
  v6 = [(FBWorkspaceSceneRequest *)&v10 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    targetIdentifier = v6->_targetIdentifier;
    v6->_targetIdentifier = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (FBWorkspaceSceneRequest)initWithClientIdentity:(id)identity targetIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  identityCopy = identity;
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  v15 = identityCopy;
  if (!v15)
  {
    [FBWorkspaceSceneRequest initWithClientIdentity:a2 targetIdentifier:self options:? completion:?];
  }

  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceSceneRequest initWithClientIdentity:v16 targetIdentifier:a2 options:self completion:?];
  }

  v17 = identifierCopy;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest initWithClientIdentity:v17 targetIdentifier:a2 options:self completion:?];
    }
  }

  v18 = optionsCopy;
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest initWithClientIdentity:v18 targetIdentifier:a2 options:self completion:?];
    }
  }

  if (!completionCopy)
  {
    [FBWorkspaceSceneRequest initWithClientIdentity:a2 targetIdentifier:? options:? completion:?];
  }

  v19 = [(FBWorkspaceSceneRequest *)self initWithTargetIdentifier:v17];
  if (v19)
  {
    v20 = [v16 copy];
    clientIdentity = v19->_clientIdentity;
    v19->_clientIdentity = v20;

    objc_storeStrong(&v19->_options, options);
    v22 = [completionCopy copy];
    lock_completion = v19->_lock_completion;
    v19->_lock_completion = v22;
  }

  return v19;
}

- (FBWorkspaceSceneRequest)initWithTargetIdentifier:(id)identifier actions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  v10 = [(FBWorkspaceSceneRequest *)self initWithTargetIdentifier:identifier];
  if (v10)
  {
    v11 = [actionsCopy copy];
    actions = v10->_actions;
    v10->_actions = v11;

    v13 = [completionCopy copy];
    lock_completion = v10->_lock_completion;
    v10->_lock_completion = v13;
  }

  return v10;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBWorkspaceSceneRequest deallocated without firing its completion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    selfCopy = self;
    OUTLINED_FUNCTION_0_0();
    v9 = @"FBWorkspaceSceneRequest.m";
    v10 = 1024;
    v11 = 69;
    v12 = v5;
    v13 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)observeScene:(id)scene
{
  object = scene;
  if ([object isValid] && (objc_msgSend(object, "isActive") & 1) == 0)
  {
    [object addObserver:self];
    v5 = objc_opt_class();
    objc_setAssociatedObject(object, v5, self, 1);
  }

  else if ([object isActive])
  {
    [(FBWorkspaceSceneRequest *)self respondWithScene:object];
  }

  else
  {
    v4 = FBSceneErrorCreate(2uLL, @"scene already invalidated", 0);
    [(FBWorkspaceSceneRequest *)self invalidateWithError:v4];
  }
}

- (void)respondWithScene:(id)scene
{
  sceneCopy = scene;
  actions = self->_actions;
  v7 = sceneCopy;
  if (v7 || !actions)
  {
    NSClassFromString(&cfstr_Fbscene.isa);
    if (!v7)
    {
      [FBWorkspaceSceneRequest respondWithScene:a2];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceSceneRequest respondWithScene:a2];
    }
  }

  [(FBWorkspaceSceneRequest *)self _respondWithScene:v7 error:0];
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  NSClassFromString(&cfstr_Nserror.isa);
  if (!errorCopy)
  {
    [FBWorkspaceSceneRequest invalidateWithError:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceSceneRequest invalidateWithError:a2];
  }

  [(FBWorkspaceSceneRequest *)self _respondWithScene:0 error:errorCopy];
}

- (void)_respondWithScene:(id)scene error:(id)error
{
  sceneCopy = scene;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  lock_responded = self->_lock_responded;
  v10 = MEMORY[0x1AC572E40](self->_lock_completion);
  lock_completion = self->_lock_completion;
  self->_lock_completion = 0;

  self->_lock_responded = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_responded)
  {
    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to respond to previously invalidated request with scene=%@ error=%@", sceneCopy, errorCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBWorkspaceSceneRequest *)a2 _respondWithScene:errorCopy error:?];
    }

    [errorCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    if (errorCopy)
    {
      v12 = FBLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(FBWorkspaceSceneRequest *)self _respondWithScene:errorCopy error:v12];
      }
    }

    if (v10)
    {
      (v10)[2](v10, sceneCopy, errorCopy);
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  object = activate;
  [(FBWorkspaceSceneRequest *)self respondWithScene:object];
  [object removeObserver:self];
  v4 = objc_opt_class();
  objc_setAssociatedObject(object, v4, 0, 1);
}

- (void)sceneDidInvalidate:(id)invalidate
{
  object = invalidate;
  v4 = FBSceneErrorCreate(2uLL, @"scene explicitly invalidated", 0);
  [(FBWorkspaceSceneRequest *)self invalidateWithError:v4];

  [object removeObserver:self];
  v5 = objc_opt_class();
  objc_setAssociatedObject(object, v5, 0, 1);
}

- (void)initWithTargetIdentifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
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

- (void)initWithClientIdentity:(uint64_t)a3 targetIdentifier:options:completion:.cold.1(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 classForCoder];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v4 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"clientIdentity", v6, v8];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    OUTLINED_FUNCTION_1_0();
    v16 = @"FBWorkspaceSceneRequest.m";
    v17 = 1024;
    v18 = 45;
    v19 = v13;
    v20 = v9;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(uint64_t)a3 targetIdentifier:options:completion:.cold.2(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 classForCoder];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v4 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targetIdentifier", v6, v8];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    OUTLINED_FUNCTION_1_0();
    v16 = @"FBWorkspaceSceneRequest.m";
    v17 = 1024;
    v18 = 46;
    v19 = v13;
    v20 = v9;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(uint64_t)a3 targetIdentifier:options:completion:.cold.3(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 classForCoder];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v4 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"options", v6, v8];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    OUTLINED_FUNCTION_1_0();
    v16 = @"FBWorkspaceSceneRequest.m";
    v17 = 1024;
    v18 = 47;
    v19 = v13;
    v20 = v9;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientIdentity:(char *)a1 targetIdentifier:options:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
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

- (void)initWithClientIdentity:(const char *)a1 targetIdentifier:(uint64_t)a2 options:completion:.cold.5(const char *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"clientIdentity", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a1);
    v8 = objc_opt_class();
    v16 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)respondWithScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSceneClass]"];
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

- (void)respondWithScene:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)invalidateWithError:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSErrorClass]"];
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

- (void)invalidateWithError:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)_respondWithScene:(NSObject *)a3 error:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_ERROR, "Request for workspace %{public}@ failed: %{public}@", &v6, 0x16u);
}

- (void)_respondWithScene:(uint64_t)a3 error:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = 138544642;
  v10 = v4;
  OUTLINED_FUNCTION_0_0();
  v11 = @"FBWorkspaceSceneRequest.m";
  v12 = 1024;
  v13 = 121;
  v14 = v7;
  v15 = a3;
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
}

@end