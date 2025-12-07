@interface BKSHIDEventDeferringPredicate
- (BKSHIDEventDeferringPredicate)init;
- (BKSHIDEventDeferringPredicate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithEnvironment:(id)environment display:(id)display token:(id)token;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringPredicate

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  v4 = [(BKSHIDEventDisplay *)self->_display hash];
  return v3 ^ v4 ^ [(BKSHIDEventDeferringToken *)self->_token hash]^ 0x1A737;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = MEMORY[0x1E69E9820];
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:v6 block:{3221225472, __62__BKSHIDEventDeferringPredicate_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78}];
}

id __62__BKSHIDEventDeferringPredicate_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:? withName:?];
  v3 = [*(a1 + 32) appendObject:? withName:? skipIfNil:?];
  return [*(a1 + 32) appendObject:? withName:? skipIfNil:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && BSEqualObjects() && BSEqualObjects())
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BKSHIDEventDeferringPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), *MEMORY[0x1E696A588]];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v10 = [v7 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

LABEL_7:
      selfCopy = 0;
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:? forKey:?];
  if (!v11)
  {
    v15 = MEMORY[0x1E696ABC0];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:0];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v17 = [v15 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

    v8 = 0;
    goto LABEL_7;
  }

  v8 = v11;
  objc_opt_class();
  v12 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v13 = [coderCopy decodeObjectOfClass:? forKey:?];
  self = [BKSHIDEventDeferringPredicate _initWithEnvironment:"_initWithEnvironment:display:token:" display:? token:?];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [BKSMutableHIDEventDeferringPredicate allocWithZone:?];

  return [BKSHIDEventDeferringPredicate _initWithEnvironment:v3 display:"_initWithEnvironment:display:token:" token:?];
}

- (id)_initWithEnvironment:(id)environment display:(id)display token:(id)token
{
  v77 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  displayCopy = display;
  tokenCopy = token;
  v12 = environmentCopy;
  if (!v12)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 stringWithFormat:@"environment", v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v66 = v30;
      v67 = 2114;
      v68 = v32;
      v69 = 2048;
      selfCopy5 = self;
      v71 = 2114;
      v72 = @"BKSHIDEventDeferringPredicate.m";
      v73 = 1024;
      v74 = 33;
      v75 = 2114;
      v76 = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863847E0);
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = MEMORY[0x1E696AEC0];
    classForCoder = [v13 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v35 = NSStringFromClass(classForCoder);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v33 stringWithFormat:@"environment", v35, v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v66 = v39;
      v67 = 2114;
      v68 = v41;
      v69 = 2048;
      selfCopy5 = self;
      v71 = 2114;
      v72 = @"BKSHIDEventDeferringPredicate.m";
      v73 = 1024;
      v74 = 33;
      v75 = 2114;
      v76 = v38;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638491CLL);
  }

  v14 = displayCopy;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v14 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v44 = NSStringFromClass(classForCoder2);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = [v42 stringWithFormat:@"display", v44, v46];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(a2);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        v66 = v48;
        v67 = 2114;
        v68 = v50;
        v69 = 2048;
        selfCopy5 = self;
        v71 = 2114;
        v72 = @"BKSHIDEventDeferringPredicate.m";
        v73 = 1024;
        v74 = 34;
        v75 = 2114;
        v76 = v47;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v47 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186384A58);
    }
  }

  v15 = tokenCopy;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v51 = MEMORY[0x1E696AEC0];
      classForCoder3 = [v15 classForCoder];
      if (!classForCoder3)
      {
        classForCoder3 = objc_opt_class();
      }

      v53 = NSStringFromClass(classForCoder3);
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = [v51 stringWithFormat:@"token", v53, v55];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v57 = NSStringFromSelector(a2);
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        *buf = 138544642;
        v66 = v57;
        v67 = 2114;
        v68 = v59;
        v69 = 2048;
        selfCopy5 = self;
        v71 = 2114;
        v72 = @"BKSHIDEventDeferringPredicate.m";
        v73 = 1024;
        v74 = 35;
        v75 = 2114;
        v76 = v56;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v56 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186384B94);
    }
  }

  v16 = objc_opt_class();
  if (v16 != objc_opt_class())
  {
    v17 = objc_opt_class();
    if (v17 != objc_opt_class())
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v61 = NSStringFromSelector(a2);
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        *buf = 138544642;
        v66 = v61;
        v67 = 2114;
        v68 = v63;
        v69 = 2048;
        selfCopy5 = self;
        v71 = 2114;
        v72 = @"BKSHIDEventDeferringPredicate.m";
        v73 = 1024;
        v74 = 36;
        v75 = 2114;
        v76 = v60;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v60 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186384C80);
    }
  }

  v64.receiver = self;
  v64.super_class = BKSHIDEventDeferringPredicate;
  v18 = [(BKSHIDEventDeferringPredicate *)&v64 init];
  if (v18)
  {
    v19 = [v13 copy];
    environment = v18->_environment;
    v18->_environment = v19;

    v21 = [v14 copy];
    display = v18->_display;
    v18->_display = v21;

    v23 = [v15 copy];
    token = v18->_token;
    v18->_token = v23;
  }

  return v18;
}

- (BKSHIDEventDeferringPredicate)init
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
    v16 = @"BKSHIDEventDeferringPredicate.m";
    v17 = 1024;
    v18 = 28;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end