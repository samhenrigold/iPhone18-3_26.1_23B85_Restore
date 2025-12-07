@interface FBWorkspaceIncomingConnection
- (id)initWithWorkspace:(id *)workspace;
- (void)workspaceLock_setConnection:(uint64_t)connection;
@end

@implementation FBWorkspaceIncomingConnection

- (void)workspaceLock_setConnection:(uint64_t)connection
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (connection)
  {
    if (!v3)
    {
      [FBWorkspaceIncomingConnection workspaceLock_setConnection:?];
    }

    v5 = *(connection + 8);
    [(FBWorkspace *)v5 _assertLocked];
    process = [(os_unfair_lock *)v5 process];
    _workspaceLock_connection = [(FBWorkspaceConnection *)connection _workspaceLock_connection];
    v8 = _workspaceLock_connection;
    if (_workspaceLock_connection)
    {
      isValid = [_workspaceLock_connection isValid];
      v10 = isValid;
      v11 = FBLogProcessWorkspace(isValid);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (v12)
        {
          [FBWorkspaceIncomingConnection workspaceLock_setConnection:process];
        }

        [v4 invalidate];
        goto LABEL_8;
      }

      if (v12)
      {
        [FBWorkspaceIncomingConnection workspaceLock_setConnection:process];
      }

      queue = [(FBWorkspaceConnection *)connection queue];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke;
      v30[3] = &unk_1E783B580;
      v31 = v4;
      [queue performAfter:v30 withBlock:0.1];

      v24 = v31;
    }

    else
    {
      v13 = FBLogProcessWorkspace(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        logProem = [(FBProcess *)process logProem];
        *buf = 138543362;
        v33 = logProem;
        _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection established.", buf, 0xCu);
      }

      interface = [MEMORY[0x1E699FCF0] interface];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke_52;
      v28[3] = &unk_1E783BBE0;
      v16 = process;
      v29 = v16;
      [(FBWorkspaceConnection *)connection _workspaceLock_setConnection:v4 withInterface:interface activationHandler:0 invalidationHandler:v28];

      _workspaceLock_connection2 = [(FBWorkspaceConnection *)connection _workspaceLock_connection];
      remoteTarget = [_workspaceLock_connection2 remoteTarget];

      v20 = FBLogProcessWorkspace(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        logProem2 = [(FBProcess *)v16 logProem];
        *buf = 138543618;
        v33 = logProem2;
        v34 = 2114;
        v35 = remoteTarget;
        _os_log_impl(&dword_1A89DD000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ created proxy of %{public}@", buf, 0x16u);
      }

      queue2 = [(FBWorkspaceConnection *)connection queue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke_57;
      v26[3] = &unk_1E783B240;
      v26[4] = connection;
      v27 = remoteTarget;
      v23 = remoteTarget;
      [queue2 performAsync:v26];

      v24 = v29;
    }

LABEL_8:
  }
}

uint64_t __61__FBWorkspaceIncomingConnection_workspaceLock_setConnection___block_invoke_52(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FBLogProcessWorkspace(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(FBProcess *)*(a1 + 32) logProem];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A89DD000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Workspace connection invalidated.", &v5, 0xCu);
  }

  return [*(a1 + 32) _notePendingExitForReason:@"workspace client connection invalidated"];
}

- (id)initWithWorkspace:(id *)workspace
{
  if (workspace)
  {
    return [(FBWorkspaceConnection *)workspace _initWithWorkspace:a2];
  }

  return workspace;
}

- (void)workspaceLock_setConnection:(void *)a1 .cold.1(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)workspaceLock_setConnection:(void *)a1 .cold.2(void *a1)
{
  v1 = [(FBProcess *)a1 logProem];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)workspaceLock_setConnection:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"incomingConnection"];
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

@end