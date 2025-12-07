@interface FBSWorkspaceService
+ (id)localServiceWithIdentifier:(id)identifier;
- (FBSWorkspaceService)init;
- (id)_initWithTarget:(id)target identifier:(id)identifier;
- (id)createScene:(id)scene;
- (id)createScene:(id)scene completion:(id)completion;
- (id)description;
- (void)requestSceneWithOptions:(id)options completion:(id)completion;
- (void)sendActions:(id)actions completion:(id)completion;
@end

@implementation FBSWorkspaceService

- (FBSWorkspaceService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSWorkspace.m";
    v16 = 1024;
    v17 = 700;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithTarget:(id)target identifier:(id)identifier
{
  targetCopy = target;
  identifierCopy = identifier;
  if (!targetCopy)
  {
    [FBSWorkspaceService _initWithTarget:a2 identifier:?];
  }

  v10 = identifierCopy;
  v16.receiver = self;
  v16.super_class = FBSWorkspaceService;
  v11 = [(FBSWorkspaceService *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_target, target);
    v13 = [v10 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_identifier)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = @"(default)";
  }

  identifier = [(FBSWorkspaceServiceTarget *)self->_target identifier];
  v8 = [v3 stringWithFormat:@"<%@: %p %@; %@>", v5, self, identifier, identifier];;

  return v8;
}

- (void)sendActions:(id)actions completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  completionCopy = completion;
  v9 = actionsCopy;
  if (v9)
  {
    NSClassFromString(&cfstr_Nsset.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSWorkspaceService sendActions:a2 completion:?];
    }
  }

  v10 = [v9 count];
  if (v10)
  {
    v11 = FBLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(FBSWorkspaceServiceTarget *)self->_target identifier];
      if (self->_identifier)
      {
        identifier = self->_identifier;
      }

      else
      {
        identifier = @"(default)";
      }

      fbs_singleLineDescriptionOfBSActions = [v9 fbs_singleLineDescriptionOfBSActions];
      *buf = 138543874;
      v21 = identifier;
      v22 = 2114;
      v23 = identifier;
      v24 = 2114;
      v25 = fbs_singleLineDescriptionOfBSActions;
      _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) to workspace %{public}@: %{public}@", buf, 0x20u);
    }
  }

  target = self->_target;
  v16 = self->_identifier;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__FBSWorkspaceService_sendActions_completion___block_invoke;
  v18[3] = &unk_1E76BDD00;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [(FBSWorkspaceServiceTarget *)target sendActions:v9 toWorkspaceID:v16 completion:v18];
}

void __46__FBSWorkspaceService_sendActions_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = FBLogCommon(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__FBSWorkspaceService_sendActions_completion___block_invoke_cold_1(a1, v6, v7);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v6);
  }
}

- (id)createScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[FBSClientSceneFutureDefinition alloc] initWithWorkspaceID:self->_identifier];
  if (sceneCopy)
  {
    sceneCopy[2](sceneCopy, v5);
  }

  v6 = [(FBSWorkspaceServiceTarget *)self->_target createSceneFutureWithDefinition:v5];

  return v6;
}

- (id)createScene:(id)scene completion:(id)completion
{
  completionCopy = completion;
  v7 = [(FBSWorkspaceService *)self createScene:scene];
  [v7 activateWithCompletion:completionCopy];

  return v7;
}

- (void)requestSceneWithOptions:(id)options completion:(id)completion
{
  identifier = self->_identifier;
  completionCopy = completion;
  optionsCopy = options;
  [optionsCopy setWorkspaceIdentifier:identifier];
  [(FBSWorkspaceServiceTarget *)self->_target requestSceneWithOptions:optionsCopy completion:completionCopy];
}

+ (id)localServiceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = NSClassFromString(&cfstr_Fblocalsynchro.isa);
  if (v4)
  {
    sharedInstance = [(objc_class *)v4 sharedInstance];
    v6 = [[FBSWorkspaceService alloc] _initWithTarget:sharedInstance identifier:identifierCopy];
  }

  else
  {
    v7 = FBLogCommon(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FBSWorkspaceService(SynchronousLocalSupport) *)v7 localServiceWithIdentifier:v8, v9, v10, v11, v12, v13, v14];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_initWithTarget:(char *)a1 identifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"target != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)sendActions:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSSetClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __46__FBSWorkspaceService_sendActions_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "%{public}@ Action(s) failed: %{public}@", &v6, 0x16u);
}

@end