@interface BKSHIDEventKeyCommandDispatchingRoot
- (BKSHIDEventKeyCommandDispatchingRoot)initWithReason:(id)reason seed:(unsigned int)seed rule:(id)rule;
- (id)decodePayload:(id)payload;
@end

@implementation BKSHIDEventKeyCommandDispatchingRoot

- (BKSHIDEventKeyCommandDispatchingRoot)initWithReason:(id)reason seed:(unsigned int)seed rule:(id)rule
{
  v6 = *&seed;
  v43 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  ruleCopy = rule;
  if (!ruleCopy)
  {
    v14 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"rule", v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v32 = v18;
      v33 = 2114;
      v34 = v20;
      v35 = 2048;
      selfCopy2 = self;
      v37 = 2114;
      v38 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
      v39 = 1024;
      v40 = 197;
      v41 = 2114;
      v42 = v17;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186366674);
  }

  v11 = ruleCopy;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    classForCoder = [v11 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v23 = NSStringFromClass(classForCoder);
    objc_opt_class();
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v21 stringWithFormat:@"rule", v23, v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v32 = v27;
      v33 = 2114;
      v34 = v29;
      v35 = 2048;
      selfCopy2 = self;
      v37 = 2114;
      v38 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
      v39 = 1024;
      v40 = 197;
      v41 = 2114;
      v42 = v26;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863667B4);
  }

  v30.receiver = self;
  v30.super_class = BKSHIDEventKeyCommandDispatchingRoot;
  v12 = [(BKSHIDEventDeliveryRuleWrapper *)&v30 initWithReason:reasonCopy seed:v6 payload:v11];

  return v12;
}

- (id)decodePayload:(id)payload
{
  payloadCopy = payload;
  objc_opt_class();
  v4 = [payloadCopy decodeObjectOfClass:? forKey:?];

  return v4;
}

@end