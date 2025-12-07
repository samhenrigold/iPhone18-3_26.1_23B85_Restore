@interface FCManagedResourceConfiguration
- (FCManagedResourceConfiguration)init;
- (FCManagedResourceConfiguration)initWithResourceID:(id)d refreshRate:(int64_t)rate;
@end

@implementation FCManagedResourceConfiguration

- (FCManagedResourceConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCManagedResourceConfiguration init]";
    v10 = 2080;
    v11 = "FCManagedResourceConfiguration.m";
    v12 = 1024;
    v13 = 15;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCManagedResourceConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCManagedResourceConfiguration)initWithResourceID:(id)d refreshRate:(int64_t)rate
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "resourceID"];
    *buf = 136315906;
    v15 = "[FCManagedResourceConfiguration initWithResourceID:refreshRate:]";
    v16 = 2080;
    v17 = "FCManagedResourceConfiguration.m";
    v18 = 1024;
    v19 = 20;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if ((rate & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((rate & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "refreshRate >= 0"];
    *buf = 136315906;
    v15 = "[FCManagedResourceConfiguration initWithResourceID:refreshRate:]";
    v16 = 2080;
    v17 = "FCManagedResourceConfiguration.m";
    v18 = 1024;
    v19 = 21;
    v20 = 2114;
    v21 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13.receiver = self;
  v13.super_class = FCManagedResourceConfiguration;
  v7 = [(FCManagedResourceConfiguration *)&v13 init];
  if (v7)
  {
    v8 = [dCopy copy];
    resourceID = v7->_resourceID;
    v7->_resourceID = v8;

    v7->_refreshRate = rate;
  }

  return v7;
}

@end