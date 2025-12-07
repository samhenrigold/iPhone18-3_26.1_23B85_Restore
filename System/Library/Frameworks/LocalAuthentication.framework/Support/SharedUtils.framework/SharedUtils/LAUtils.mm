@interface LAUtils
+ (BOOL)callerRunningOnForeground:(id)foreground pid:(int)pid;
+ (BOOL)isSharedIPad;
+ (void)isSharedIPad;
@end

@implementation LAUtils

+ (BOOL)callerRunningOnForeground:(id)foreground pid:(int)pid
{
  v4 = *&pid;
  v33 = *MEMORY[0x1E69E9840];
  foregroundCopy = foreground;
  if (foregroundCopy && objc_opt_class())
  {
    v6 = MEMORY[0x1E69C75C8];
    v7 = [MEMORY[0x1E69C7608] predicateMatchingBundleIdentifier:foregroundCopy];
    v26 = 0;
    v8 = [v6 handleForPredicate:v7 error:&v26];
    v9 = v26;
    if (v8)
    {
    }

    else
    {
      v11 = MEMORY[0x1E69C75C8];
      v12 = [MEMORY[0x1E69C75D8] identifierWithPid:v4];
      v25 = 0;
      v8 = [v11 handleForIdentifier:v12 error:&v25];
      v13 = v25;

      if (!v8)
      {
        v8 = LA_LOG_INTERACTIVE(v14);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v28 = foregroundCopy;
          v29 = 1024;
          v30 = v4;
          v31 = 2114;
          v32 = v13;
          _os_log_error_impl(&dword_1DF403000, v8, OS_LOG_TYPE_ERROR, "Failed to get process handle for %{public}@[%u]: %{public}@", buf, 0x1Cu);
        }

        LOBYTE(v10) = 0;
        v9 = v13;
        goto LABEL_23;
      }

      v9 = v13;
    }

    currentState = [v8 currentState];
    taskState = [currentState taskState];
    if (taskState == 4)
    {
      endowmentNamespaces = [currentState endowmentNamespaces];
      LODWORD(v10) = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

      v19 = LA_LOG_INTERACTIVE(v18);
      v20 = v19;
      if (v10)
      {
        v21 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v21 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v19, v21))
      {
        v22 = "is not";
        *buf = 138543874;
        v28 = foregroundCopy;
        if (v10)
        {
          v22 = "is";
        }

        v29 = 1024;
        v30 = v4;
        v31 = 2080;
        v32 = v22;
        _os_log_impl(&dword_1DF403000, v20, v21, "%{public}@[%u] %s visible", buf, 0x1Cu);
      }
    }

    else
    {
      v10 = LA_LOG_INTERACTIVE(taskState);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        taskState2 = [currentState taskState];
        *buf = 138543874;
        v28 = foregroundCopy;
        v29 = 1024;
        v30 = v4;
        v31 = 1024;
        LODWORD(v32) = taskState2;
        _os_log_error_impl(&dword_1DF403000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%u] is not running scheduled, task state: %u", buf, 0x18u);
      }

      LOBYTE(v10) = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  LOBYTE(v10) = 0;
LABEL_24:

  return v10;
}

+ (BOOL)isSharedIPad
{
  v2 = _isSharedIPad;
  if (_isSharedIPad == -1)
  {
    v3 = MKBUserTypeDeviceMode();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
      _isSharedIPad = [v5 isEqualToString:*MEMORY[0x1E69B1A20]];
    }

    else
    {
      v5 = 0;
      if (LA_LOG_once_1 != -1)
      {
        +[LAUtils isSharedIPad];
      }

      v6 = LA_LOG_log_1;
      if (os_log_type_enabled(LA_LOG_log_1, OS_LOG_TYPE_ERROR))
      {
        +[(LAUtils *)0];
      }
    }

    v2 = _isSharedIPad;
  }

  return v2 == 1;
}

+ (void)isSharedIPad
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1DF403000, a2, OS_LOG_TYPE_ERROR, "MKBUserTypeDeviceMode returned NULL: %{public}@", &v2, 0xCu);
}

@end