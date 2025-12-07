@interface BKSMutableHIDEventDeferringSelectionTarget
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisplay:(id)display;
- (void)setEnvironment:(id)environment;
- (void)setTarget:(id)target;
@end

@implementation BKSMutableHIDEventDeferringSelectionTarget

- (void)setTarget:(id)target
{
  v36 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (!targetCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"target", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringSelectionTarget.m";
      v32 = 1024;
      v33 = 210;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A35C4);
  }

  v6 = targetCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringTarget *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"target", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v25 = v21;
      v26 = 2114;
      v27 = v23;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringSelectionTarget.m";
      v32 = 1024;
      v33 = 210;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A3700);
  }

  target = self->super._target;
  self->super._target = v6;
}

- (void)setDisplay:(id)display
{
  v36 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (!displayCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"display", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringSelectionTarget.m";
      v32 = 1024;
      v33 = 204;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A38C8);
  }

  v6 = displayCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDisplay *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"display", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v25 = v21;
      v26 = 2114;
      v27 = v23;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringSelectionTarget.m";
      v32 = 1024;
      v33 = 204;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A3A04);
  }

  display = self->super._display;
  self->super._display = v6;
}

- (void)setEnvironment:(id)environment
{
  v36 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (!environmentCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"environment", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringSelectionTarget.m";
      v32 = 1024;
      v33 = 198;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A3BCCLL);
  }

  v6 = environmentCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringEnvironment *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"environment", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v25 = v21;
      v26 = 2114;
      v27 = v23;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDeferringSelectionTarget.m";
      v32 = 1024;
      v33 = 198;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A3D08);
  }

  environment = self->super._environment;
  self->super._environment = v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringSelectionTarget alloc];

  return [(BKSHIDEventDeferringSelectionTarget *)&v4->super.isa _initWithCopyOf:?];
}

@end