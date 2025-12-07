@interface BKSHIDEventDeferringTarget
+ (id)build:(id)build;
+ (id)protobufSchema;
- (BKSHIDEventDeferringTarget)init;
- (BKSHIDEventDeferringTarget)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPID:(int)d token:(id)token;
- (id)initForProtobufDecoding;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringTarget

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = MEMORY[0x1E69E9820];
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:v6 block:{3221225472, __59__BKSHIDEventDeferringTarget_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78}];
}

id __59__BKSHIDEventDeferringTarget_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) token];
  v4 = [v2 appendObject:? withName:? skipIfNil:?];

  v5 = *(a1 + 32);
  [*(a1 + 40) pid];
  return [v5 appendInteger:? withName:?];
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
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && self->_pid == equalCopy->_pid)
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

- (BKSHIDEventDeferringTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      v7 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), *MEMORY[0x1E696A588]];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v9 = [v7 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

LABEL_7:
      selfCopy = 0;
      goto LABEL_8;
    }
  }

  v10 = [coderCopy decodeInt32ForKey:?];
  if (v10 < 1)
  {
    v13 = MEMORY[0x1E696ABC0];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:v10];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v15 = [v13 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

    goto LABEL_7;
  }

  objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:? forKey:?];
  self = [BKSHIDEventDeferringTarget _initWithPID:"_initWithPID:token:" token:?];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeferringTarget;
  return [(BKSHIDEventDeferringTarget *)&v3 init];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [BKSMutableHIDEventDeferringTarget allocWithZone:?];

  return [BKSHIDEventDeferringTarget _initWithPID:v3 token:"_initWithPID:token:"];
}

- (id)_initWithPID:(int)d token:(id)token
{
  v46 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (d <= 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v35 = v17;
      v36 = 2114;
      v37 = v19;
      v38 = 2048;
      selfCopy3 = self;
      v40 = 2114;
      v41 = @"BKSHIDEventDeferringTarget.m";
      v42 = 1024;
      v43 = 37;
      v44 = 2114;
      v45 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635FB68);
  }

  v8 = tokenCopy;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x1E696AEC0];
      classForCoder = [v8 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v22 = NSStringFromClass(classForCoder);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v20 stringWithFormat:@"token", v22, v24];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v35 = v26;
        v36 = 2114;
        v37 = v28;
        v38 = 2048;
        selfCopy3 = self;
        v40 = 2114;
        v41 = @"BKSHIDEventDeferringTarget.m";
        v42 = 1024;
        v43 = 38;
        v44 = 2114;
        v45 = v25;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635FCA4);
    }
  }

  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v10 = objc_opt_class();
    if (v10 != objc_opt_class())
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(a2);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v35 = v30;
        v36 = 2114;
        v37 = v32;
        v38 = 2048;
        selfCopy3 = self;
        v40 = 2114;
        v41 = @"BKSHIDEventDeferringTarget.m";
        v42 = 1024;
        v43 = 39;
        v44 = 2114;
        v45 = v29;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635FD90);
    }
  }

  v33.receiver = self;
  v33.super_class = BKSHIDEventDeferringTarget;
  v11 = [(BKSHIDEventDeferringTarget *)&v33 init];
  v12 = v11;
  if (v11)
  {
    v11->_pid = d;
    v13 = [v8 copy];
    token = v12->_token;
    v12->_token = v13;
  }

  return v12;
}

- (BKSHIDEventDeferringTarget)init
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
    v16 = @"BKSHIDEventDeferringTarget.m";
    v17 = 1024;
    v18 = 32;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BKSHIDEventDeferringTarget_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_1538 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_1538, block);
  }

  v2 = protobufSchema_schema_1539;

  return v2;
}

uint64_t __44__BKSHIDEventDeferringTarget_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_1539;
  protobufSchema_schema_1539 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __44__BKSHIDEventDeferringTarget_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
}

+ (id)build:(id)build
{
  buildCopy = build;
  v4 = objc_alloc_init(BKSMutableHIDEventDeferringTarget);
  buildCopy[2](buildCopy, v4);

  v5 = [(BKSMutableHIDEventDeferringTarget *)v4 copy];

  return v5;
}

@end