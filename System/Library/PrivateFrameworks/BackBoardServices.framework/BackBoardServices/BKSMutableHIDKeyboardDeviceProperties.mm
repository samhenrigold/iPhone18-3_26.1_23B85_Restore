@interface BKSMutableHIDKeyboardDeviceProperties
- (void)setExclusivityIdentifier:(id)identifier;
- (void)setLanguage:(id)language;
- (void)setLayout:(id)layout;
- (void)setPlatformInputModeConfiguration:(id)configuration;
- (void)setTransport:(id)transport;
@end

@implementation BKSMutableHIDKeyboardDeviceProperties

- (void)setPlatformInputModeConfiguration:(id)configuration
{
  v29 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [configurationCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"platformInputModeConfiguration", v9, v11];

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
        v24 = @"BKSHIDKeyboardDeviceProperties.m";
        v25 = 1024;
        v26 = 342;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639EA90);
    }
  }

  v5 = [configurationCopy copy];
  platformInputModeConfiguration = self->super._platformInputModeConfiguration;
  self->super._platformInputModeConfiguration = v5;
}

- (void)setExclusivityIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [identifierCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"exclusivityIdentifier", v9, v11];

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
        v24 = @"BKSHIDKeyboardDeviceProperties.m";
        v25 = 1024;
        v26 = 336;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639EC8CLL);
    }
  }

  v5 = [identifierCopy copy];
  exclusivityIdentifier = self->super._exclusivityIdentifier;
  self->super._exclusivityIdentifier = v5;
}

- (void)setLayout:(id)layout
{
  v29 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  if (layoutCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [layoutCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"layout", v9, v11];

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
        v24 = @"BKSHIDKeyboardDeviceProperties.m";
        v25 = 1024;
        v26 = 330;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639EE88);
    }
  }

  v5 = [layoutCopy copy];
  layout = self->super._layout;
  self->super._layout = v5;
}

- (void)setLanguage:(id)language
{
  v29 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (languageCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [languageCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"language", v9, v11];

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
        v24 = @"BKSHIDKeyboardDeviceProperties.m";
        v25 = 1024;
        v26 = 324;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639F084);
    }
  }

  v5 = [languageCopy copy];
  language = self->super._language;
  self->super._language = v5;
}

- (void)setTransport:(id)transport
{
  v29 = *MEMORY[0x1E69E9840];
  transportCopy = transport;
  if (transportCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [transportCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"transport", v9, v11];

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
        v24 = @"BKSHIDKeyboardDeviceProperties.m";
        v25 = 1024;
        v26 = 318;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639F280);
    }
  }

  v5 = [transportCopy copy];
  transport = self->super._transport;
  self->super._transport = v5;
}

@end