@interface BKSMutableHIDEventDeferringConstraint
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIdentifier:(id)identifier;
@end

@implementation BKSMutableHIDEventDeferringConstraint

- (void)setIdentifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!identifierCopy)
  {
    v9 = NSStringFromClass(v6);
    v10 = [v5 stringWithFormat:@"identifier", v9];

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
      v31 = @"BKSHIDEventDeferringConstraint.m";
      v32 = 1024;
      v33 = 159;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635D528);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    classForCoder = [identifierCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"identifier", v16, v18];

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
      v31 = @"BKSHIDEventDeferringConstraint.m";
      v32 = 1024;
      v33 = 159;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635D660);
  }

  v7 = [identifierCopy copy];
  identifier = self->super._identifier;
  self->super._identifier = v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringConstraint alloc];

  return [(BKSHIDEventDeferringConstraint *)v4 _initWithCopyOf:?];
}

@end