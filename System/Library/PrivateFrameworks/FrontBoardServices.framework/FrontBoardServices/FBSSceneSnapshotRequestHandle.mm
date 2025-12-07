@interface FBSSceneSnapshotRequestHandle
+ (id)handleForRequestType:(unint64_t)type context:(id)context;
- (FBSSceneSnapshotRequestHandle)initWithRequestType:(unint64_t)type context:(id)context;
- (void)_clearAction;
- (void)cancelRequest;
- (void)performRequestForScene:(id)scene;
@end

@implementation FBSSceneSnapshotRequestHandle

+ (id)handleForRequestType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  v7 = [[self alloc] initWithRequestType:type context:contextCopy];

  return v7;
}

- (FBSSceneSnapshotRequestHandle)initWithRequestType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  v8 = [(FBSSceneSnapshotRequestHandle *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

- (void)performRequestForScene:(id)scene
{
  v22 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [(FBSSceneSnapshotRequestHandle *)a2 performRequestForScene:?];
  }

  v6 = sceneCopy;
  identifier = [sceneCopy identifier];
  sceneID = [(FBSSceneSnapshotContext *)self->_context sceneID];
  v9 = [identifier isEqualToString:sceneID];

  if ((v9 & 1) == 0)
  {
    [(FBSSceneSnapshotRequestHandle *)a2 performRequestForScene:?];
  }

  if (self->_responder)
  {
    [(FBSSceneSnapshotRequestHandle *)a2 performRequestForScene:?];
  }

  selfCopy = self;
  v11 = objc_sync_enter(selfCopy);
  if (!selfCopy->_canceled)
  {
    v12 = FBLogCommon(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      type = selfCopy->_type;
      *buf = 134218240;
      v19 = selfCopy;
      v20 = 2048;
      v21 = type;
      _os_log_impl(&dword_1A2DBB000, v12, OS_LOG_TYPE_DEFAULT, "Performing snapshot request %p (type %lu)", buf, 0x16u);
    }

    if (selfCopy->_type == 1)
    {
      v14 = dispatch_semaphore_create(0);
    }

    else
    {
      v14 = 0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke;
    v17[3] = &unk_1E76BF4E8;
    v17[4] = selfCopy;
    v17[5] = v14;
    v15 = [off_1E76BC978 responderWithHandler:v17];
    responder = self->_responder;
    self->_responder = v15;

    BSDispatchQueueCreateSerialWithQoS();
  }

  objc_sync_exit(selfCopy);
}

void __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 _clearAction];
  v6 = [v5 error];

  v8 = FBLogCommon(v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke_cold_1(v4, v6, v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *v4;
    v12 = 134217984;
    v13 = v10;
    _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "Snapshot request %p complete", &v12, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    dispatch_semaphore_signal(v11);
  }
}

- (void)cancelRequest
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (!selfCopy->_canceled)
  {
    v4 = FBLogCommon(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = selfCopy;
      _os_log_impl(&dword_1A2DBB000, v4, OS_LOG_TYPE_DEFAULT, "Snapshot request %p canceled", &v5, 0xCu);
    }

    selfCopy->_canceled = 1;
    [(BSActionResponder *)selfCopy->_responder annul];
    [(FBSSceneSnapshotRequestHandle *)selfCopy _clearAction];
  }

  objc_sync_exit(selfCopy);
}

- (void)_clearAction
{
  obj = self;
  objc_sync_enter(obj);
  responder = obj->_responder;
  obj->_responder = 0;

  objc_sync_exit(obj);
}

- (void)performRequestForScene:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[scene identifier] isEqualToString:[_context sceneID]]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    v10 = @"FBSSceneSnapshotRequestHandle.m";
    v11 = 1024;
    v12 = 35;
    v13 = v7;
    v14 = v3;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)performRequestForScene:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot perform this twice"];
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
    v16 = @"FBSSceneSnapshotRequestHandle.m";
    v17 = 1024;
    v18 = 36;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)performRequestForScene:(const char *)a1 .cold.3(const char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    v10 = @"FBSSceneSnapshotRequestHandle.m";
    v11 = 1024;
    v12 = 34;
    v13 = v7;
    v14 = v3;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

void __56__FBSSceneSnapshotRequestHandle_performRequestForScene___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v6 = 134218242;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "Snapshot request %p complete with error: %{public}@", &v6, 0x16u);
}

@end