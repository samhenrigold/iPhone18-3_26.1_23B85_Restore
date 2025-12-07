@interface BKSMutableHIDEventDeferringModalityAssertion
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBasis:(id)basis;
- (void)setModality:(id)modality;
- (void)setPathIdentifier:(id)identifier;
- (void)setSelectionTarget:(id)target;
@end

@implementation BKSMutableHIDEventDeferringModalityAssertion

- (void)setBasis:(id)basis
{
  v36 = *MEMORY[0x1E69E9840];
  basisCopy = basis;
  if (!basisCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"basis", v10];

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
      v31 = @"BKSHIDEventDeferringModalityAssertion.m";
      v32 = 1024;
      v33 = 232;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637020CLL);
  }

  v6 = basisCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringChangeBasis *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"basis", v17, v19];

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
      v31 = @"BKSHIDEventDeferringModalityAssertion.m";
      v32 = 1024;
      v33 = 232;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186370348);
  }

  basis = self->super._basis;
  self->super._basis = v6;
}

- (void)setModality:(id)modality
{
  v36 = *MEMORY[0x1E69E9840];
  modalityCopy = modality;
  if (!modalityCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"modality", v10];

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
      v31 = @"BKSHIDEventDeferringModalityAssertion.m";
      v32 = 1024;
      v33 = 226;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186370510);
  }

  v6 = modalityCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringModality *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"modality", v17, v19];

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
      v31 = @"BKSHIDEventDeferringModalityAssertion.m";
      v32 = 1024;
      v33 = 226;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637064CLL);
  }

  modality = self->super._modality;
  self->super._modality = v6;
}

- (void)setSelectionTarget:(id)target
{
  v36 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (!targetCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"selectionTarget", v10];

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
      v31 = @"BKSHIDEventDeferringModalityAssertion.m";
      v32 = 1024;
      v33 = 220;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186370814);
  }

  v6 = targetCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringSelectionTarget *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"selectionTarget", v17, v19];

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
      v31 = @"BKSHIDEventDeferringModalityAssertion.m";
      v32 = 1024;
      v33 = 220;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186370950);
  }

  selectionTarget = self->super._selectionTarget;
  self->super._selectionTarget = v6;
}

- (void)setPathIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v6 = +[BKSHIDEventDeferringSelectionPathIdentifier everySelectionPath];

    if (v6 != identifierCopy)
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
        v19 = @"BKSHIDEventDeferringModalityAssertion.m";
        v20 = 1024;
        v21 = 214;
        v22 = 2114;
        v23 = v8;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186370B04);
    }
  }

  pathIdentifier = self->super._pathIdentifier;
  self->super._pathIdentifier = identifierCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringModalityAssertion alloc];

  return [(BKSHIDEventDeferringModalityAssertion *)&v4->super.isa _initWithCopyOf:?];
}

@end