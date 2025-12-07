@interface BKSHIDEventDiscreteDispatchingRule
+ (id)ruleForDispatchingDiscreteEventsMatchingPredicate:(id)predicate toTarget:(id)target;
- (BKSHIDEventDiscreteDispatchingRule)init;
- (BKSHIDEventDiscreteDispatchingRule)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPredicate:(id)predicate target:(id)target;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDiscreteDispatchingRule

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v3 = [formatterCopy appendObject:? withName:?];
  [formatterCopy appendRightArrow];
  v4 = [formatterCopy appendObject:? withName:? skipIfNil:?];
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

- (BKSHIDEventDiscreteDispatchingRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    objc_opt_class();
    v11 = [coderCopy decodeObjectOfClass:? forKey:?];
    if (v11)
    {
      v7 = v11;
      objc_opt_class();
      v12 = [coderCopy decodeObjectOfClass:? forKey:?];
      self = [BKSHIDEventDiscreteDispatchingRule _initWithPredicate:"_initWithPredicate:target:" target:?];

      selfCopy = self;
      goto LABEL_6;
    }

    v14 = MEMORY[0x1E696ABC0];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:0];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v16 = [v14 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

    v7 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), *MEMORY[0x1E696A588]];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v9 = [v6 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
  }

  selfCopy = 0;
LABEL_6:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)_initWithPredicate:(id)predicate target:(id)target
{
  v42 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  targetCopy = target;
  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v31 = v22;
      v32 = 2114;
      v33 = v24;
      v34 = 2048;
      selfCopy = self;
      v36 = 2114;
      v37 = @"BKSHIDEventDiscreteDispatchingRule.m";
      v38 = 1024;
      v39 = 36;
      v40 = 2114;
      v41 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635C1B0);
  }

  v29.receiver = self;
  v29.super_class = BKSHIDEventDiscreteDispatchingRule;
  v10 = [(BKSHIDEventDiscreteDispatchingRule *)&v29 init];
  if (v10)
  {
    v11 = [predicateCopy copy];
    predicate = v10->_predicate;
    v10->_predicate = v11;

    v13 = [targetCopy copy];
    target = v10->_target;
    v10->_target = v13;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    descriptors = [predicateCopy descriptors];
    v16 = [descriptors countByEnumeratingWithState:? objects:? count:?];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(descriptors);
          }

          v10->_predicateEventTypeMask |= 1 << [*(*(&v25 + 1) + 8 * v19) hidEventType];
          v19 = (v19 + 1);
        }

        while (v17 != v19);
        v17 = [descriptors countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }
  }

  return v10;
}

- (BKSHIDEventDiscreteDispatchingRule)init
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
    v16 = @"BKSHIDEventDiscreteDispatchingRule.m";
    v17 = 1024;
    v18 = 31;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)ruleForDispatchingDiscreteEventsMatchingPredicate:(id)predicate toTarget:(id)target
{
  v51 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  targetCopy = target;
  v9 = predicateCopy;
  if (!v9)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"predicate", v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v40 = v18;
      v41 = 2114;
      v42 = v20;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BKSHIDEventDiscreteDispatchingRule.m";
      v47 = 1024;
      v48 = 51;
      v49 = 2114;
      v50 = v17;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635C4E8);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v23 = NSStringFromClass(classForCoder);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 stringWithFormat:@"predicate", v23, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v40 = v27;
      v41 = 2114;
      v42 = v29;
      v43 = 2048;
      selfCopy3 = self;
      v45 = 2114;
      v46 = @"BKSHIDEventDiscreteDispatchingRule.m";
      v47 = 1024;
      v48 = 51;
      v49 = 2114;
      v50 = v26;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635C624);
  }

  v11 = targetCopy;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v11 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v32 = NSStringFromClass(classForCoder2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [v30 stringWithFormat:@"target", v32, v34];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = NSStringFromSelector(a2);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138544642;
        v40 = v36;
        v41 = 2114;
        v42 = v38;
        v43 = 2048;
        selfCopy3 = self;
        v45 = 2114;
        v46 = @"BKSHIDEventDiscreteDispatchingRule.m";
        v47 = 1024;
        v48 = 52;
        v49 = 2114;
        v50 = v35;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v35 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635C760);
    }
  }

  v12 = [BKSHIDEventDiscreteDispatchingRule _initWithPredicate:"_initWithPredicate:target:" target:?];

  return v12;
}

@end