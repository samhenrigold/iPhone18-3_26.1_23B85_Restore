@interface BKSMutableHIDEventDeferringPredicate
- (BKSMutableHIDEventDeferringPredicate)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisplay:(id)display;
- (void)setEnvironment:(id)environment;
- (void)setToken:(id)token;
@end

@implementation BKSMutableHIDEventDeferringPredicate

- (BKSMutableHIDEventDeferringPredicate)init
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKSHIDEventDeferringPredicate.m";
      v20 = 1024;
      v21 = 138;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186346FB8);
  }

  v5 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v6 = [BKSHIDEventDeferringPredicate _initWithEnvironment:"_initWithEnvironment:display:token:" display:? token:?];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [BKSHIDEventDeferringPredicate allocWithZone:?];

  return [BKSHIDEventDeferringPredicate _initWithEnvironment:v3 display:"_initWithEnvironment:display:token:" token:?];
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
        v24 = @"BKSHIDEventDeferringPredicate.m";
        v25 = 1024;
        v26 = 156;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186383C78);
    }
  }

  v5 = [tokenCopy copy];
  token = self->super._token;
  self->super._token = v5;
}

- (void)setDisplay:(id)display
{
  v29 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [displayCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"display", v9, v11];

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
        v24 = @"BKSHIDEventDeferringPredicate.m";
        v25 = 1024;
        v26 = 150;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186383E78);
    }
  }

  v5 = [displayCopy copy];
  display = self->super._display;
  self->super._display = v5;
}

- (void)setEnvironment:(id)environment
{
  v36 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (!environmentCopy)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"environment", v9];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v25 = v11;
      v26 = 2114;
      v27 = v13;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringPredicate.m";
      v32 = 1024;
      v33 = 144;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186384054);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    classForCoder = [environmentCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"environment", v16, v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringPredicate.m";
      v32 = 1024;
      v33 = 144;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186384190);
  }

  v5 = [environmentCopy copy];
  environment = self->super._environment;
  self->super._environment = v5;
}

@end