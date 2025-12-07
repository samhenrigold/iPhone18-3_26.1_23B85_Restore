@interface BKSHIDEventKeyCommandsDispatchingRule
+ (id)ruleForDispatchingKeyCommandsMatchingPredicate:(id)predicate toTargets:(id)targets;
- (BKSHIDEventKeyCommandsDispatchingRule)init;
- (BKSHIDEventKeyCommandsDispatchingRule)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPredicate:(id)predicate targets:(id)targets;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventKeyCommandsDispatchingRule

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSHIDEventKeyCommandsDispatchingRule *)self succinctDescriptionBuilder];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __79__BKSHIDEventKeyCommandsDispatchingRule_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12 = &unk_1E6F47C78;
  v5 = succinctDescriptionBuilder;
  v13 = v5;
  selfCopy = self;
  v6 = [v5 modifyBody:{v9, 3221225472, __79__BKSHIDEventKeyCommandsDispatchingRule_descriptionBuilderWithMultilinePrefix___block_invoke, &unk_1E6F47C78}];
  v7 = v5;

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSHIDEventKeyCommandsDispatchingRule *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:?];
  v3 = [v2 appendObject:? withName:? skipIfNil:?];

  return v2;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSHIDEventKeyCommandsDispatchingRule *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && BSEqualObjects())
    {
      v6 = BSEqualObjects();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSHIDEventKeyCommandsDispatchingRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:? forKey:?];
    v10 = MEMORY[0x1E695DFD8];
    objc_opt_class();
    v11 = [v10 setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:? forKey:?];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![v8 bs_containsObjectPassingTest:?])
      {
        self = [BKSHIDEventKeyCommandsDispatchingRule _initWithPredicate:"_initWithPredicate:targets:" targets:?];
        selfCopy = self;
        goto LABEL_10;
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v8];
      v14 = MEMORY[0x1E695DF20];
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, v8];
      v14 = MEMORY[0x1E695DF20];
    }

    v15 = [v14 dictionaryWithObjects:? forKeys:? count:?];
    v16 = [v12 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v9 = [v6 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

BOOL __55__BKSHIDEventKeyCommandsDispatchingRule_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)_initWithPredicate:(id)predicate targets:(id)targets
{
  v33 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  targetsCopy = targets;
  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v22 = v17;
      v23 = 2114;
      v24 = v19;
      v25 = 2048;
      selfCopy = self;
      v27 = 2114;
      v28 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v29 = 1024;
      v30 = 32;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186378F44);
  }

  v20.receiver = self;
  v20.super_class = BKSHIDEventKeyCommandsDispatchingRule;
  v10 = [(BKSHIDEventKeyCommandsDispatchingRule *)&v20 init];
  if (v10)
  {
    v11 = [predicateCopy copy];
    predicate = v10->_predicate;
    v10->_predicate = v11;

    v13 = [targetsCopy copy];
    targets = v10->_targets;
    v10->_targets = v13;
  }

  return v10;
}

- (BKSHIDEventKeyCommandsDispatchingRule)init
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
    v16 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
    v17 = 1024;
    v18 = 27;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)ruleForDispatchingKeyCommandsMatchingPredicate:(id)predicate toTargets:(id)targets
{
  v63 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  targetsCopy = targets;
  v9 = predicateCopy;
  if (!v9)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"predicate", v17];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v52 = v19;
      v53 = 2114;
      v54 = v21;
      v55 = 2048;
      selfCopy5 = self;
      v57 = 2114;
      v58 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v59 = 1024;
      v60 = 43;
      v61 = 2114;
      v62 = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186379290);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v24 = NSStringFromClass(classForCoder);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v22 stringWithFormat:@"predicate", v24, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v52 = v28;
      v53 = 2114;
      v54 = v30;
      v55 = 2048;
      selfCopy5 = self;
      v57 = 2114;
      v58 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v59 = 1024;
      v60 = 43;
      v61 = 2114;
      v62 = v27;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863793CCLL);
  }

  v11 = targetsCopy;
  if (!v11)
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v31 stringWithFormat:@"targets", v33];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138544642;
      v52 = v35;
      v53 = 2114;
      v54 = v37;
      v55 = 2048;
      selfCopy5 = self;
      v57 = 2114;
      v58 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v59 = 1024;
      v60 = 44;
      v61 = 2114;
      v62 = v34;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863794E4);
  }

  v12 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v12 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v40 = NSStringFromClass(classForCoder2);
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = [v38 stringWithFormat:@"targets", v40, v42];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(a2);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138544642;
      v52 = v44;
      v53 = 2114;
      v54 = v46;
      v55 = 2048;
      selfCopy5 = self;
      v57 = 2114;
      v58 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v59 = 1024;
      v60 = 44;
      v61 = 2114;
      v62 = v43;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v43 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186379620);
  }

  if ([v12 bs_containsObjectPassingTest:?])
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:v12];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = NSStringFromSelector(a2);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *buf = 138544642;
      v52 = v48;
      v53 = 2114;
      v54 = v50;
      v55 = 2048;
      selfCopy5 = self;
      v57 = 2114;
      v58 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v59 = 1024;
      v60 = 47;
      v61 = 2114;
      v62 = v47;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v47 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186379710);
  }

  v13 = [BKSHIDEventKeyCommandsDispatchingRule _initWithPredicate:"_initWithPredicate:targets:" targets:?];

  return v13;
}

BOOL __98__BKSHIDEventKeyCommandsDispatchingRule_ruleForDispatchingKeyCommandsMatchingPredicate_toTargets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end