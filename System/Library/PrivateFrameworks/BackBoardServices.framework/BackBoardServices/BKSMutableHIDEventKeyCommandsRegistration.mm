@interface BKSMutableHIDEventKeyCommandsRegistration
- (BKSMutableHIDEventKeyCommandsRegistration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDeferringEnvironment:(id)environment;
- (void)setDeferringToken:(id)token;
- (void)setKeyCommands:(id)commands;
@end

@implementation BKSMutableHIDEventKeyCommandsRegistration

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [BKSHIDEventKeyCommandsRegistration allocWithZone:?];

  return [BKSHIDEventKeyCommandsRegistration _initWithEnvironment:v3 token:"_initWithEnvironment:token:keyCommands:" keyCommands:?];
}

- (void)setKeyCommands:(id)commands
{
  v64 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  if (!commandsCopy)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [v32 stringWithFormat:@"keyCommands", v34];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v53 = v36;
      v54 = 2114;
      v55 = v38;
      v56 = 2048;
      selfCopy4 = self;
      v58 = 2114;
      v59 = @"BKSHIDEventKeyCommandsRegistration.m";
      v60 = 1024;
      v61 = 181;
      v62 = 2114;
      v63 = v35;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638E62CLL);
  }

  v6 = commandsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v41 = NSStringFromClass(classForCoder);
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = [v39 stringWithFormat:@"keyCommands", v41, v43];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v53 = v45;
      v54 = 2114;
      v55 = v47;
      v56 = 2048;
      selfCopy4 = self;
      v58 = 2114;
      v59 = @"BKSHIDEventKeyCommandsRegistration.m";
      v60 = 1024;
      v61 = 181;
      v62 = 2114;
      v63 = v44;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638E768);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      v11 = 0;
      do
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * v11);
        if (!v12)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [v16 stringWithFormat:@"keyCommand", v18];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(a2);
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            *buf = 138544642;
            v53 = v20;
            v54 = 2114;
            v55 = v22;
            v56 = 2048;
            selfCopy4 = self;
            v58 = 2114;
            v59 = @"BKSHIDEventKeyCommandsRegistration.m";
            v60 = 1024;
            v61 = 183;
            v62 = 2114;
            v63 = v19;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v19 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x18638E3D8);
        }

        v13 = v12;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v13 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v25 = NSStringFromClass(classForCoder2);
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = [v23 stringWithFormat:@"keyCommand", v25, v27];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v29 = NSStringFromSelector(a2);
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = 138544642;
            v53 = v29;
            v54 = 2114;
            v55 = v31;
            v56 = 2048;
            selfCopy4 = self;
            v58 = 2114;
            v59 = @"BKSHIDEventKeyCommandsRegistration.m";
            v60 = 1024;
            v61 = 183;
            v62 = 2114;
            v63 = v28;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v28 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x18638E514);
        }

        v11 = (v11 + 1);
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  v14 = [v7 copy];
  keyCommands = self->super._keyCommands;
  self->super._keyCommands = v14;
}

- (void)setDeferringToken:(id)token
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
        v24 = @"BKSHIDEventKeyCommandsRegistration.m";
        v25 = 1024;
        v26 = 175;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638E968);
    }
  }

  v5 = [tokenCopy copy];
  token = self->super._token;
  self->super._token = v5;
}

- (void)setDeferringEnvironment:(id)environment
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
      v31 = @"BKSHIDEventKeyCommandsRegistration.m";
      v32 = 1024;
      v33 = 169;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638EB44);
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
      v31 = @"BKSHIDEventKeyCommandsRegistration.m";
      v32 = 1024;
      v33 = 169;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638EC80);
  }

  v5 = [environmentCopy copy];
  environment = self->super._environment;
  self->super._environment = v5;
}

- (BKSMutableHIDEventKeyCommandsRegistration)init
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
      v20 = @"BKSHIDEventKeyCommandsRegistration.m";
      v21 = 1024;
      v22 = 163;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638EE34);
  }

  v5 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v6 = [MEMORY[0x1E695DFD8] set];
  v7 = [BKSHIDEventKeyCommandsRegistration _initWithEnvironment:"_initWithEnvironment:token:keyCommands:" token:? keyCommands:?];

  return v7;
}

@end