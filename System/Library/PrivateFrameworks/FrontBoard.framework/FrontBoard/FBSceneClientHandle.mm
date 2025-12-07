@interface FBSceneClientHandle
+ (id)handleForScene:(id)scene clientProcess:(id)process;
- (id)description;
@end

@implementation FBSceneClientHandle

- (id)description
{
  processHandle = [(FBSceneClientHandle *)self processHandle];
  v3 = [processHandle description];

  return v3;
}

+ (id)handleForScene:(id)scene clientProcess:(id)process
{
  sceneCopy = scene;
  processCopy = process;
  if (!sceneCopy)
  {
    [FBSceneClientHandle handleForScene:a2 clientProcess:self];
  }

  v9 = processCopy;
  rbsHandle = [processCopy rbsHandle];
  if (![(FBScene *)sceneCopy _isLegacy]|| rbsHandle)
  {
    NSClassFromString(&cfstr_Rbsprocesshand_1.isa);
    if (!rbsHandle)
    {
      [FBSceneClientHandle handleForScene:a2 clientProcess:self];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneClientHandle handleForScene:a2 clientProcess:self];
    }
  }

  v11 = objc_alloc_init(FBSceneClientHandle);
  if (v11)
  {
    definition = [sceneCopy definition];
    clientIdentity = [definition clientIdentity];
    identity = v11->_identity;
    v11->_identity = clientIdentity;

    objc_storeStrong(&v11->_legacyProcess, process);
  }

  return v11;
}

+ (void)handleForScene:(const char *)a1 clientProcess:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:RBSProcessHandleClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)handleForScene:(const char *)a1 clientProcess:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)handleForScene:(const char *)a1 clientProcess:(uint64_t)a2 .cold.3(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end