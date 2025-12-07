@interface _BKSHIDCGSConnectionIDEventDeferringToken
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (_BKSHIDCGSConnectionIDEventDeferringToken)initWithCoder:(id)coder;
- (id)_initWithCGSConnectionID:(unsigned int)d;
- (id)initForProtobufDecoding;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BKSHIDCGSConnectionIDEventDeferringToken

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  [(_BKSHIDCGSConnectionIDEventDeferringToken *)self _identifierOfCGSConnection];
  v4 = [formatterCopy appendUInt64:? withName:? format:?];
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
    v6 = v5 == objc_opt_class() && self->_CGSConnectionID == equalCopy->_CGSConnectionID;
  }

  return v6;
}

- (_BKSHIDCGSConnectionIDEventDeferringToken)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _BKSHIDCGSConnectionIDEventDeferringToken;
  _init = [(BKSHIDEventDeferringToken *)&v15 _init];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v13 = [coderCopy decodeInt32ForKey:?];
    if (v13)
    {
      _init[2] = v13;
      v12 = _init;
      goto LABEL_6;
    }

    v7 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:0];
    v19 = v8;
    v9 = MEMORY[0x1E695DF20];
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    v17 = v8;
    v9 = MEMORY[0x1E695DF20];
  }

  v10 = [v9 dictionaryWithObjects:? forKeys:? count:?];
  v11 = [v7 errorWithDomain:? code:? userInfo:?];
  [coderCopy failWithError:?];

  v12 = 0;
LABEL_6:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_CGSConnectionID)
  {
    [coder encodeInt32:? forKey:?];
  }
}

- (id)initForProtobufDecoding
{
  v23 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _BKSHIDCGSConnectionIDEventDeferringToken;
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
      v20 = 286;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637E244);
  }

  return _init;
}

- (id)_initWithCGSConnectionID:(unsigned int)d
{
  v5.receiver = self;
  v5.super_class = _BKSHIDCGSConnectionIDEventDeferringToken;
  result = [(BKSHIDEventDeferringToken *)&v5 _init];
  if (result)
  {
    *(result + 2) = d;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___BKSHIDCGSConnectionIDEventDeferringToken_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_79 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_79, block);
  }

  v2 = protobufSchema_schema_78;

  return v2;
}

@end