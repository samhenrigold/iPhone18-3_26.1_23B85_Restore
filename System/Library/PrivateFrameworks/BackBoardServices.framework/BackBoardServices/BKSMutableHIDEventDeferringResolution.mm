@interface BKSMutableHIDEventDeferringResolution
- (BKSMutableHIDEventDeferringResolution)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDispatchingTarget:(id)target;
- (void)setDisplay:(id)display;
- (void)setEnvironment:(id)environment;
- (void)setPid:(int)pid;
- (void)setProcessDescription:(id)description;
- (void)setToken:(id)token;
- (void)setVersionedPID:(int64_t)d;
@end

@implementation BKSMutableHIDEventDeferringResolution

- (BKSMutableHIDEventDeferringResolution)init
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSHIDEventDeferringResolution.m";
      v21 = 1024;
      v22 = 250;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863495E8);
  }

  v5 = +[BKSHIDEventDisplay nullDisplay];
  v6 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v7 = BSGetVersionedPID();
  if (self)
  {
    self = [BKSHIDEventDeferringResolution _initWithDisplay:v5 environment:v6 versionedPID:v7 pid:-1 token:0 dispatchingTarget:?];
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringResolution allocWithZone:?];

  return [(BKSHIDEventDeferringResolution *)&v4->super.isa _initWithCopyOf:?];
}

- (void)setDispatchingTarget:(id)target
{
  v23 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (targetCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:targetCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v12 = v8;
        v13 = 2114;
        v14 = v10;
        v15 = 2048;
        selfCopy = self;
        v17 = 2114;
        v18 = @"BKSHIDEventDeferringResolution.m";
        v19 = 1024;
        v20 = 307;
        v21 = 2114;
        v22 = v7;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387D9CLL);
    }
  }

  dispatchingTarget = self->super._dispatchingTarget;
  self->super._dispatchingTarget = targetCopy;
}

- (void)setProcessDescription:(id)description
{
  v24 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:descriptionCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v13 = v8;
        v14 = 2114;
        v15 = v10;
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"BKSHIDEventDeferringResolution.m";
        v20 = 1024;
        v21 = 299;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387F3CLL);
    }
  }

  v5 = [descriptionCopy copy];
  processDescription = self->super._processDescription;
  self->super._processDescription = v5;
}

- (void)setToken:(id)token
{
  v24 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:tokenCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v13 = v8;
        v14 = 2114;
        v15 = v10;
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"BKSHIDEventDeferringResolution.m";
        v20 = 1024;
        v21 = 291;
        v22 = 2114;
        v23 = v7;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863880E0);
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
      v16 = @"BKSHIDEventDeferringResolution.m";
      v17 = 1024;
      v18 = 283;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186388240);
  }

  self->super._pid = pid;
  self->super._versionedPID = -1;
}

- (void)setVersionedPID:(int64_t)d
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->super._versionedPID != d)
  {
    if (d == -1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"versionedPID != ((BSVersionedPID) -1)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(a2);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138544642;
        v14 = v6;
        v15 = 2114;
        v16 = v8;
        v17 = 2048;
        selfCopy2 = self;
        v19 = 2114;
        v20 = @"BKSHIDEventDeferringResolution.m";
        v21 = 1024;
        v22 = 273;
        v23 = 2114;
        v24 = v5;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863883B8);
    }

    if (!d)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"versionedPID != 0"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v14 = v10;
        v15 = 2114;
        v16 = v12;
        v17 = 2048;
        selfCopy2 = self;
        v19 = 2114;
        v20 = @"BKSHIDEventDeferringResolution.m";
        v21 = 1024;
        v22 = 274;
        v23 = 2114;
        v24 = v9;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863884B0);
    }

    self->super._versionedPID = d;
    self->super._pid = d;
  }
}

- (void)setEnvironment:(id)environment
{
  v28 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (!environmentCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"environment != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BKSHIDEventDeferringResolution.m";
      v24 = 1024;
      v25 = 264;
      v26 = 2114;
      v27 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186388658);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:environmentCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BKSHIDEventDeferringResolution.m";
      v24 = 1024;
      v25 = 265;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638874CLL);
  }

  v5 = [environmentCopy copy];
  environment = self->super._environment;
  self->super._environment = v5;
}

- (void)setDisplay:(id)display
{
  v28 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (!displayCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"display != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BKSHIDEventDeferringResolution.m";
      v24 = 1024;
      v25 = 256;
      v26 = 2114;
      v27 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863888F4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:displayCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BKSHIDEventDeferringResolution.m";
      v24 = 1024;
      v25 = 257;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863889E8);
  }

  v5 = [displayCopy copy];
  display = self->super._display;
  self->super._display = v5;
}

@end