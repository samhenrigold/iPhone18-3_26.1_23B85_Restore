@interface BKSHIDEventDiscreteDispatchingRoot
- (BKSHIDEventDiscreteDispatchingRoot)initWithReason:(id)reason seed:(unsigned int)seed rules:(id)rules;
- (id)decodePayload:(id)payload;
@end

@implementation BKSHIDEventDiscreteDispatchingRoot

- (BKSHIDEventDiscreteDispatchingRoot)initWithReason:(id)reason seed:(unsigned int)seed rules:(id)rules
{
  v6 = *&seed;
  v70 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  rulesCopy = rules;
  if (!rulesCopy)
  {
    v37 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = [v37 stringWithFormat:@"rules", v39];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138544642;
      v59 = v41;
      v60 = 2114;
      v61 = v43;
      v62 = 2048;
      selfCopy4 = self;
      v64 = 2114;
      v65 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
      v66 = 1024;
      v67 = 168;
      v68 = 2114;
      v69 = v40;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186365FB4);
  }

  v11 = rulesCopy;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = MEMORY[0x1E696AEC0];
    classForCoder = [v11 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v46 = NSStringFromClass(classForCoder);
    objc_opt_class();
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v44 stringWithFormat:@"rules", v46, v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v59 = v50;
      v60 = 2114;
      v61 = v52;
      v62 = 2048;
      selfCopy4 = self;
      v64 = 2114;
      v65 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
      v66 = 1024;
      v67 = 168;
      v68 = 2114;
      v69 = v49;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863660F4);
  }

  objc_opt_class();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
  if (v13)
  {
    v14 = v13;
    v15 = *v55;
    do
    {
      v16 = 0;
      do
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v54 + 1) + 8 * v16);
        if (!v17)
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = [v21 stringWithFormat:@"obj", v23];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromSelector(a2);
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            *buf = 138544642;
            v59 = v25;
            v60 = 2114;
            v61 = v27;
            v62 = 2048;
            selfCopy4 = self;
            v64 = 2114;
            v65 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
            v66 = 1024;
            v67 = 171;
            v68 = 2114;
            v69 = v24;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v24 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x186365D58);
        }

        v18 = v17;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v18 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v30 = NSStringFromClass(classForCoder2);
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = [v28 stringWithFormat:@"obj", v30, v32];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v34 = NSStringFromSelector(a2);
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            *buf = 138544642;
            v59 = v34;
            v60 = 2114;
            v61 = v36;
            v62 = 2048;
            selfCopy4 = self;
            v64 = 2114;
            v65 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
            v66 = 1024;
            v67 = 171;
            v68 = 2114;
            v69 = v33;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v33 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x186365E98);
        }

        v16 = (v16 + 1);
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v14);
  }

  v53.receiver = self;
  v53.super_class = BKSHIDEventDiscreteDispatchingRoot;
  v19 = [(BKSHIDEventDeliveryRuleWrapper *)&v53 initWithReason:reasonCopy seed:v6 payload:v12];

  return v19;
}

- (id)decodePayload:(id)payload
{
  v27 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  error = [payloadCopy error];

  if (error)
  {
    v5 = BKLogEventDelivery();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v6 = 0;
      goto LABEL_4;
    }

    error2 = [payloadCopy error];
    *buf = 138543362;
    v26 = error2;
    v16 = "WTAF sticky error %{public}@";
LABEL_31:
    _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);

    goto LABEL_3;
  }

  v8 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [payloadCopy decodeObjectOfClasses:? forKey:?];

  if (!v11)
  {
    v5 = BKLogEventDelivery();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    error2 = [payloadCopy error];
    *buf = 138543362;
    v26 = error2;
    v16 = "payload is missing %{public}@";
    goto LABEL_31;
  }

  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;

  if (!v17)
  {
    v5 = BKLogEventDelivery();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 138543362;
    v26 = objc_opt_class();
    error2 = v26;
    v16 = "payload is wrong class (got %{public}@)";
    goto LABEL_31;
  }

  v5 = v17;
  v18 = [NSObject countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v18)
  {
    v19 = v18;
    v20 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v19; i = (i + 1))
      {
        if (MEMORY[0] != v20)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = BKLogEventDelivery();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *buf = 138543362;
            v26 = v23;
            v24 = v23;
            _os_log_error_impl(&dword_186345000, v22, OS_LOG_TYPE_ERROR, "payload contains wrong class (got %{public}@)", buf, 0xCu);
          }

          goto LABEL_3;
        }
      }

      v19 = [NSObject countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v6 = v5;
LABEL_4:

  return v6;
}

@end