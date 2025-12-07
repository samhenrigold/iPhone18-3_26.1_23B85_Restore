@interface BKSMutableHIDEventDeferringTarget
- (BKSMutableHIDEventDeferringTarget)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPid:(int)pid;
- (void)setToken:(id)token;
@end

@implementation BKSMutableHIDEventDeferringTarget

- (BKSMutableHIDEventDeferringTarget)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKSHIDEventDeferringTarget.m";
      v18 = 1024;
      v19 = 154;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186347C08);
  }

  getpid();

  return [BKSHIDEventDeferringTarget _initWithPID:"_initWithPID:token:" token:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [BKSHIDEventDeferringTarget allocWithZone:?];

  return [BKSHIDEventDeferringTarget _initWithPID:v3 token:"_initWithPID:token:"];
}

- (void)setToken:(id)token
{
  v29 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [tokenCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"token", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        selfCopy = self;
        v23 = 2114;
        v24 = @"BKSHIDEventDeferringTarget.m";
        v25 = 1024;
        v26 = 166;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186360254);
    }
  }

  v5 = [tokenCopy copy];
  token = self->super._token;
  self->super._token = v5;
}

- (void)setPid:(int)pid
{
  v21 = *MEMORY[0x1E69E9840];
  if (pid <= 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138544642;
      v10 = v6;
      v11 = 2114;
      v12 = v8;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKSHIDEventDeferringTarget.m";
      v17 = 1024;
      v18 = 160;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863603ACLL);
  }

  self->super._pid = pid;
}

@end