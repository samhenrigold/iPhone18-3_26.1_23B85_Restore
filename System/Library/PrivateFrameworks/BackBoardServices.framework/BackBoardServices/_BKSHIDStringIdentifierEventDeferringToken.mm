@interface _BKSHIDStringIdentifierEventDeferringToken
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (_BKSHIDStringIdentifierEventDeferringToken)init;
- (_BKSHIDStringIdentifierEventDeferringToken)initWithCoder:(id)coder;
- (id)_initWithString:(id)string;
- (id)initForProtobufDecoding;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSHIDStringIdentifierEventDeferringToken

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  _string = [(_BKSHIDStringIdentifierEventDeferringToken *)self _string];
  v5 = [formatterCopy appendObject:? withName:? skipIfNil:?];
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
    if (v5 == objc_opt_class())
    {
      v6 = [(NSString *)self->_stringIdentifier isEqual:?];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (_BKSHIDStringIdentifierEventDeferringToken)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _BKSHIDStringIdentifierEventDeferringToken;
  _init = [(BKSHIDEventDeferringToken *)&v19 _init];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    objc_opt_class();
    v12 = [coderCopy decodeObjectOfClass:? forKey:?];
    if ([v12 length])
    {
      v13 = _init[1];
      _init[1] = v12;

      v11 = _init;
      goto LABEL_6;
    }

    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A588];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    v23 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v18 = [v15 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A588];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    v21 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v10 = [v7 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(NSString *)self->_stringIdentifier length])
  {
    [coderCopy encodeObject:? forKey:?];
  }
}

- (id)initForProtobufDecoding
{
  v23 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _BKSHIDStringIdentifierEventDeferringToken;
  _init = [(BKSHIDEventDeferringToken *)&v10 _init];
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
      v16 = _init;
      v17 = 2114;
      v18 = @"BKSHIDEventDeferringToken.m";
      v19 = 1024;
      v20 = 179;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637E90CLL);
  }

  return _init;
}

- (id)_initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = _BKSHIDStringIdentifierEventDeferringToken;
  _init = [(BKSHIDEventDeferringToken *)&v9 _init];
  if (_init)
  {
    v6 = [stringCopy copy];
    v7 = _init[1];
    _init[1] = v6;
  }

  return _init;
}

- (_BKSHIDStringIdentifierEventDeferringToken)init
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
    v16 = @"BKSHIDEventDeferringToken.m";
    v17 = 1024;
    v18 = 141;
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
  block[2] = __60___BKSHIDStringIdentifierEventDeferringToken_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_54 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_54, block);
  }

  v2 = protobufSchema_schema_53;

  return v2;
}

@end