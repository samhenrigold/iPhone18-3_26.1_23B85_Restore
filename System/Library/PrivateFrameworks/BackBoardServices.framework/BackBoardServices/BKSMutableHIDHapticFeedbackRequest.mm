@interface BKSMutableHIDHapticFeedbackRequest
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPattern:(id)pattern;
- (void)setPowerSourceID:(id)d;
@end

@implementation BKSMutableHIDHapticFeedbackRequest

- (void)setPowerSourceID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [(NSNumber *)dCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"powerSourceID", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v17 = v13;
        v18 = 2114;
        v19 = v15;
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = @"BKSHIDHapticFeedbackRequest.m";
        v24 = 1024;
        v25 = 257;
        v26 = 2114;
        v27 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863AED3CLL);
    }
  }

  powerSourceID = self->super._powerSourceID;
  self->super._powerSourceID = dCopy;
}

- (void)setPattern:(id)pattern
{
  v36 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!patternCopy)
  {
    v9 = NSStringFromClass(v6);
    v10 = [v5 stringWithFormat:@"pattern", v9];

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
      v31 = @"BKSHIDHapticFeedbackRequest.m";
      v32 = 1024;
      v33 = 241;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AEF20);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    classForCoder = [patternCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"pattern", v16, v18];

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
      v31 = @"BKSHIDHapticFeedbackRequest.m";
      v32 = 1024;
      v33 = 241;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AF058);
  }

  v7 = [patternCopy copy];
  pattern = self->super._pattern;
  self->super._pattern = v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDHapticFeedbackRequest alloc];

  return [(BKSHIDHapticFeedbackRequest *)&v4->super.isa _initWithCopyOf:?];
}

@end