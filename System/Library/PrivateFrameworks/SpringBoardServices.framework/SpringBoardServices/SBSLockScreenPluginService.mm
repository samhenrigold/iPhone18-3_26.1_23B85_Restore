@interface SBSLockScreenPluginService
- (id)_serializedDataForContext:(id)context;
- (void)disableLockScreenBundle:(id)bundle withContext:(id)context;
- (void)enableLockScreenBundle:(id)bundle withContext:(id)context;
@end

@implementation SBSLockScreenPluginService

- (id)_serializedDataForContext:(id)context
{
  if (context)
  {
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:context format:200 options:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enableLockScreenBundle:(id)bundle withContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = [(SBSLockScreenPluginService *)self _serializedDataForContext:context];
  v8 = SBSSpringBoardServerPort();
  uTF8String = [bundleCopy UTF8String];
  [v7 bytes];
  [v7 length];
  v10 = SBEnableLockScreenBundle(v8, 1, uTF8String);
  if (v10)
  {
    v11 = v10;
    v12 = SBLogCommon(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      selfCopy = self;
      v15 = 2114;
      v16 = bundleCopy;
      v17 = 2082;
      v18 = mach_error_string(v11);
      _os_log_error_impl(&dword_19169D000, v12, OS_LOG_TYPE_ERROR, "%@: Unable to enable bundle name %{public}@: %{public}s", &v13, 0x20u);
    }
  }
}

- (void)disableLockScreenBundle:(id)bundle withContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = [(SBSLockScreenPluginService *)self _serializedDataForContext:context];
  v8 = SBSSpringBoardServerPort();
  uTF8String = [bundleCopy UTF8String];
  [v7 bytes];
  [v7 length];
  v10 = SBEnableLockScreenBundle(v8, 0, uTF8String);
  if (v10)
  {
    v11 = v10;
    v12 = SBLogCommon(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      selfCopy = self;
      v15 = 2114;
      v16 = bundleCopy;
      v17 = 2082;
      v18 = mach_error_string(v11);
      _os_log_error_impl(&dword_19169D000, v12, OS_LOG_TYPE_ERROR, "%@ Unable to disable bundle name %{public}@: %{public}s", &v13, 0x20u);
    }
  }
}

@end