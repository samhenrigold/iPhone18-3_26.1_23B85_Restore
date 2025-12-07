@interface BKSHIDEventDeliveryRuleWrapper
- (BKSHIDEventDeliveryRuleWrapper)initWithCoder:(id)coder;
- (BKSHIDEventDeliveryRuleWrapper)initWithReason:(id)reason seed:(unsigned int)seed payload:(id)payload;
- (BOOL)isEqual:(id)equal;
- (id)decodePayload:(id)payload;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeliveryRuleWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
}

- (BKSHIDEventDeliveryRuleWrapper)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(BKSHIDEventDeliveryRuleWrapper *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [(BKSHIDEventDeliveryRuleWrapper *)v5 decodePayload:?];
  payload = v6->_payload;
  v6->_payload = v7;

  if (!v6->_payload)
  {
    v12 = BKLogEventDelivery();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

      v11 = 0;
      goto LABEL_10;
    }

    error = [coderCopy error];
    v17 = 138543362;
    v18 = error;
    v14 = "payload is nil: %{public}@";
LABEL_12:
    _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0xCu);

    goto LABEL_9;
  }

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  reason = v6->_reason;
  v6->_reason = v9;

  if (!v6->_reason)
  {
    v12 = BKLogEventDelivery();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    error = [coderCopy error];
    v17 = 138543362;
    v18 = error;
    v14 = "reason is nil: %{public}@";
    goto LABEL_12;
  }

  v6->_seed = [coderCopy decodeInt32ForKey:?];
LABEL_5:
  v11 = v6;
LABEL_10:

  return v11;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6 = MEMORY[0x1E69E9820];
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:v6 block:{3221225472, __60__BKSHIDEventDeliveryRuleWrapper_appendDescriptionToStream___block_invoke, &unk_1E6F47C78}];
}

id __60__BKSHIDEventDeliveryRuleWrapper_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:? withName:?];
  v2 = [*(a1 + 32) appendUnsignedInteger:? withName:?];
  return [*(a1 + 32) appendObject:? withName:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && self->_seed == v9->_seed && [(NSString *)self->_reason isEqual:?])
    {
      v8 = [self->_payload isEqual:?];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BKSHIDEventDeliveryRuleWrapper)initWithReason:(id)reason seed:(unsigned int)seed payload:(id)payload
{
  v45 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  payloadCopy = payload;
  v32.receiver = self;
  v32.super_class = BKSHIDEventDeliveryRuleWrapper;
  v11 = [(BKSHIDEventDeliveryRuleWrapper *)&v32 init];
  if (v11)
  {
    v12 = reasonCopy;
    v13 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v14 = objc_opt_class();
    if (!v12)
    {
      v18 = NSStringFromClass(v14);
      v19 = [v13 stringWithFormat:@"reason", v18];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v34 = v20;
        v35 = 2114;
        v36 = v22;
        v37 = 2048;
        v38 = v11;
        v39 = 2114;
        v40 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
        v41 = 1024;
        v42 = 52;
        v43 = 2114;
        v44 = v19;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186365838);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      classForCoder = [v12 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v25 = NSStringFromClass(classForCoder);
      objc_opt_class();
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v23 stringWithFormat:@"reason", v25, v27];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(a2);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v34 = v29;
        v35 = 2114;
        v36 = v31;
        v37 = 2048;
        v38 = v11;
        v39 = 2114;
        v40 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
        v41 = 1024;
        v42 = 52;
        v43 = 2114;
        v44 = v28;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186365974);
    }

    v15 = [v12 copy];
    reason = v11->_reason;
    v11->_reason = v15;

    objc_storeStrong(&v11->_payload, payload);
    v11->_seed = seed;
  }

  return v11;
}

- (id)decodePayload:(id)payload
{
  payloadCopy = payload;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"BKSHIDEventDeliveryRuleChangeTransaction.m";
    v19 = 1024;
    v20 = 45;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end