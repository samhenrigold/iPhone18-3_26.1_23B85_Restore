@interface BKSMutableTouchHitTestFilterParameters
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContextIDs:(id)ds;
- (void)setSenderDescriptors:(id)descriptors;
@end

@implementation BKSMutableTouchHitTestFilterParameters

- (void)setContextIDs:(id)ds
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"contextIDs", v9];

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
      v31 = @"BKSTouchHitTestFilterParameters.m";
      v32 = 1024;
      v33 = 185;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F388);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    classForCoder = [dsCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"contextIDs", v16, v18];

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
      v31 = @"BKSTouchHitTestFilterParameters.m";
      v32 = 1024;
      v33 = 185;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F4C4);
  }

  v5 = [dsCopy copy];
  contextIDs = self->super._contextIDs;
  self->super._contextIDs = v5;
}

- (void)setSenderDescriptors:(id)descriptors
{
  v36 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if (!descriptorsCopy)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"senderDescriptors", v9];

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
      v31 = @"BKSTouchHitTestFilterParameters.m";
      v32 = 1024;
      v33 = 179;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F6A0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    classForCoder = [descriptorsCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"senderDescriptors", v16, v18];

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
      v31 = @"BKSTouchHitTestFilterParameters.m";
      v32 = 1024;
      v33 = 179;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F7DCLL);
  }

  v5 = [descriptorsCopy copy];
  senderDescriptors = self->super._senderDescriptors;
  self->super._senderDescriptors = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSTouchHitTestFilterParameters alloc];

  return [(BKSTouchHitTestFilterParameters *)v4 _initWithCopyOf:?];
}

@end