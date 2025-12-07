@interface BKSHIDEventDeferringChangeBasis
+ (BKSHIDEventDeferringChangeBasis)new;
+ (id)constraintBasis;
+ (id)ruleOriginatorBasis;
- (BKSHIDEventDeferringChangeBasis)init;
- (BKSHIDEventDeferringChangeBasis)initWithCoder:(id)coder;
- (BKSHIDEventDeferringChangeBasis)initWithEventProvenance:(id)provenance;
- (id)_initWithIdentifier:(void *)identifier provenance:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringChangeBasis

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (BKSHIDEventDeferringChangeBasis)initWithCoder:(id)coder
{
  v40 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v29 = v22;
      v30 = 2114;
      v31 = v24;
      v32 = 2048;
      selfCopy = self;
      v34 = 2114;
      v35 = @"BKSHIDEventDeferringChangeBasis.m";
      v36 = 1024;
      v37 = 85;
      v38 = 2114;
      v39 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186381998);
  }

  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  if ([v7 isEqualToString:?])
  {
    v8 = +[BKSHIDEventDeferringChangeBasis ruleOriginatorBasis];
  }

  else
  {
    if (![v7 isEqualToString:?])
    {
      v17 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A588];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:v7];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v19 = [v17 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

      v16 = 0;
      goto LABEL_10;
    }

    v25.receiver = self;
    v25.super_class = BKSHIDEventDeferringChangeBasis;
    v9 = [(BKSHIDEventDeferringChangeBasis *)&v25 init];
    if (v9)
    {
      objc_opt_class();
      v10 = [coderCopy decodeObjectOfClass:? forKey:?];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      v12 = MEMORY[0x1E695DFD8];
      objc_opt_class();
      v13 = [v12 setWithObjects:{objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:? forKey:?];
      eventProvenance = v9->_eventProvenance;
      v9->_eventProvenance = v14;
    }

    v8 = v9;
    self = v8;
  }

  v16 = v8;
LABEL_10:

  return v16;
}

- (BKSHIDEventDeferringChangeBasis)initWithEventProvenance:(id)provenance
{
  selfCopy = self;
  if (provenance)
  {
    v4 = [(BKSHIDEventDeferringChangeBasis *)&self->super.isa _initWithIdentifier:provenance provenance:?];
    selfCopy = v4;
  }

  else
  {
    v4 = +[BKSHIDEventDeferringChangeBasis ruleOriginatorBasis];
  }

  v5 = v4;

  return v5;
}

- (id)_initWithIdentifier:(void *)identifier provenance:
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v8 = v6;
    v9 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v10 = objc_opt_class();
    if (!v8)
    {
      v14 = NSStringFromClass(v10);
      v15 = [v9 stringWithFormat:@"identifier", v14];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(sel__initWithIdentifier_provenance_);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v34 = v16;
        v35 = 2114;
        v36 = v18;
        v37 = 2048;
        selfCopy3 = self;
        v39 = 2114;
        v40 = @"BKSHIDEventDeferringChangeBasis.m";
        v41 = 1024;
        v42 = 58;
        v43 = 2114;
        v44 = v15;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186381C34);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      classForCoder = [v8 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v21 = NSStringFromClass(classForCoder);
      objc_opt_class();
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v19 stringWithFormat:@"identifier", v21, v23];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel__initWithIdentifier_provenance_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v34 = v25;
        v35 = 2114;
        v36 = v27;
        v37 = 2048;
        selfCopy3 = self;
        v39 = 2114;
        v40 = @"BKSHIDEventDeferringChangeBasis.m";
        v41 = 1024;
        v42 = 58;
        v43 = 2114;
        v44 = v24;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186381D70);
    }

    v11 = objc_opt_class();
    if (v11 != objc_opt_class())
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel__initWithIdentifier_provenance_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v34 = v29;
        v35 = 2114;
        v36 = v31;
        v37 = 2048;
        selfCopy3 = self;
        v39 = 2114;
        v40 = @"BKSHIDEventDeferringChangeBasis.m";
        v41 = 1024;
        v42 = 61;
        v43 = 2114;
        v44 = v28;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186381E58);
    }

    v32.receiver = self;
    v32.super_class = BKSHIDEventDeferringChangeBasis;
    v12 = objc_msgSendSuper2(&v32, sel_init);
    self = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, a2);
      objc_storeStrong(self + 2, identifier);
    }
  }

  return self;
}

- (BKSHIDEventDeferringChangeBasis)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDeferringChangeBasis.m";
    v17 = 1024;
    v18 = 49;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSHIDEventDeferringChangeBasis)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDeferringChangeBasis.m";
    v17 = 1024;
    v18 = 53;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)constraintBasis
{
  if (constraintBasis_onceToken != -1)
  {
    dispatch_once(&constraintBasis_onceToken, &__block_literal_global_12);
  }

  v3 = constraintBasis_basis;

  return v3;
}

uint64_t __50__BKSHIDEventDeferringChangeBasis_constraintBasis__block_invoke()
{
  v0 = [[BKSHIDEventDeferringChangeBasis alloc] _initWithIdentifier:0 provenance:?];
  v1 = constraintBasis_basis;
  constraintBasis_basis = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)ruleOriginatorBasis
{
  if (ruleOriginatorBasis_onceToken != -1)
  {
    dispatch_once(&ruleOriginatorBasis_onceToken, &__block_literal_global_5530);
  }

  v3 = ruleOriginatorBasis_basis;

  return v3;
}

uint64_t __54__BKSHIDEventDeferringChangeBasis_ruleOriginatorBasis__block_invoke()
{
  v0 = [[BKSHIDEventDeferringChangeBasis alloc] _initWithIdentifier:0 provenance:?];
  v1 = ruleOriginatorBasis_basis;
  ruleOriginatorBasis_basis = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end