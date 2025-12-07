@interface UICoreMediaOverridePIDManager
@end

@implementation UICoreMediaOverridePIDManager

void __48___UICoreMediaOverridePIDManager_sharedInstance__block_invoke()
{
  v0 = [_UICoreMediaOverridePIDManager alloc];
  if (v0)
  {
    v6.receiver = v0;
    v6.super_class = _UICoreMediaOverridePIDManager;
    v1 = objc_msgSendSuper2(&v6, sel_init);
    v2 = v1;
    if (v1)
    {
      v1[2] = -1;
      v3 = objc_opt_new();
      v4 = *(v2 + 16);
      *(v2 + 16) = v3;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = _MergedGlobals_1054;
  _MergedGlobals_1054 = v2;
}

void __76___UICoreMediaOverridePIDManager_acquireOverrideAssertionWithPID_forReason___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    BSDispatchQueueAssertMain();
    if (!v2)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"token"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = NSStringFromSelector(sel_invalidateAssertionToken_);
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138544642;
        v14 = v5;
        v15 = 2114;
        v16 = v7;
        v17 = 2048;
        v18 = WeakRetained;
        v19 = 2114;
        v20 = @"_UICoreMediaOverridePIDManager.m";
        v21 = 1024;
        v22 = 68;
        v23 = 2114;
        v24 = v4;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v4 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189621658);
    }

    if (([WeakRetained[2] containsObject:v2] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can not invalidate assertion token %@ that is not being tracked", v2];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_invalidateAssertionToken_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        v18 = WeakRetained;
        v19 = 2114;
        v20 = @"_UICoreMediaOverridePIDManager.m";
        v21 = 1024;
        v22 = 69;
        v23 = 2114;
        v24 = v8;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18962174CLL);
    }

    [WeakRetained[2] removeObject:v2];
    [(_UICoreMediaOverridePIDManager *)WeakRetained evaluateActiveOverridePID];
  }
}

@end