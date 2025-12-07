@interface BKSHIDAuthenticatedKeyCommandSpecification
+ (id)protobufSchema;
+ (id)specificationWithKeyCommand:(id)command context:(unint64_t)context;
- (BKSHIDAuthenticatedKeyCommandSpecification)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)initForProtobufDecoding;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDAuthenticatedKeyCommandSpecification

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v3 = [formatterCopy appendUInt64:? withName:? format:?];
  v4 = [formatterCopy appendObject:? withName:?];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDAuthenticatedKeyCommandSpecification;
  return [(BKSHIDAuthenticatedKeyCommandSpecification *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
}

- (BKSHIDAuthenticatedKeyCommandSpecification)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  _init = [[BKSHIDAuthenticatedKeyCommandSpecification alloc] _init];

  if (_init)
  {
    _init->_context = [coderCopy decodeInt64ForKey:?];
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    keyCommand = _init->_keyCommand;
    _init->_keyCommand = v6;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A588];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v10 = [v8 errorWithDomain:? code:? userInfo:?];

      if (v10)
      {
        v11 = BKLogEventDelivery();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v10;
          _os_log_error_impl(&dword_186345000, v11, OS_LOG_TYPE_ERROR, "error decoding authenticated key command spec:%{public}@", buf, 0xCu);
        }

        [coderCopy failWithError:?];
      }
    }
  }

  return _init;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy[1] == self->_context)
  {
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_init
{
  v23 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = BKSHIDAuthenticatedKeyCommandSpecification;
  v3 = [(BKSHIDAuthenticatedKeyCommandSpecification *)&v10 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v12 = v7;
        v13 = 2114;
        v14 = v9;
        v15 = 2048;
        v16 = v3;
        v17 = 2114;
        v18 = @"BKSHIDAuthenticatedKeyCommandSpecification.m";
        v19 = 1024;
        v20 = 28;
        v21 = 2114;
        v22 = v6;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B70F8);
    }
  }

  return v3;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__BKSHIDAuthenticatedKeyCommandSpecification_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_13750 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_13750, block);
  }

  v2 = protobufSchema_schema_13751;

  return v2;
}

uint64_t __60__BKSHIDAuthenticatedKeyCommandSpecification_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698E750];
  objc_opt_class();
  v2 = [v1 buildSchemaForClass:? builder:?];
  v3 = protobufSchema_schema_13751;
  protobufSchema_schema_13751 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __60__BKSHIDAuthenticatedKeyCommandSpecification_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
}

+ (id)specificationWithKeyCommand:(id)command context:(unint64_t)context
{
  commandCopy = command;
  _init = [[BKSHIDAuthenticatedKeyCommandSpecification alloc] _init];
  [_init setContext:?];
  [_init setKeyCommand:?];

  return _init;
}

@end