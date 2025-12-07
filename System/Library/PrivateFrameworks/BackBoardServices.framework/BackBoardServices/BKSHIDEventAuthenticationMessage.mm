@interface BKSHIDEventAuthenticationMessage
+ (BKSHIDEventAuthenticationMessage)new;
+ (id)protobufSchema;
- (BKSHIDEventAuthenticationMessage)init;
- (BKSHIDEventAuthenticationMessage)initWithBSXPCCoder:(id)coder;
- (BKSHIDEventAuthenticationMessage)initWithCoder:(id)coder;
- (BKSHIDEventAuthenticationMessage)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_calculateSignatureWithHMACContext:(id *)context;
- (id)_init;
- (id)_protobufDecodedMessageFromData:(uint64_t)data;
- (unint64_t)hash;
- (void)_dataProtobufEncoded;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BKSHIDEventAuthenticationMessage

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__BKSHIDEventAuthenticationMessage_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_9349 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_9349, block);
  }

  v2 = protobufSchema_schema_9350;

  return v2;
}

uint64_t __50__BKSHIDEventAuthenticationMessage_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_9350;
  protobufSchema_schema_9350 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __50__BKSHIDEventAuthenticationMessage_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

- (id)_init
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v5 = NSStringFromSelector(sel__init);
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          *buf = 138544642;
          v10 = v5;
          v11 = 2114;
          v12 = v7;
          v13 = 2048;
          v14 = v1;
          v15 = 2114;
          v16 = @"BKSHIDEventAuthenticationMessage.m";
          v17 = 1024;
          v18 = 122;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863964C4);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSHIDEventAuthenticationMessage;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

+ (BKSHIDEventAuthenticationMessage)new
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
    v16 = @"BKSHIDEventAuthenticationMessage.m";
    v17 = 1024;
    v18 = 116;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  _dataProtobufEncoded = [(BKSHIDEventAuthenticationMessage *)self _dataProtobufEncoded];
  [coderCopy encodeObject:? forKey:?];
}

- (void)_dataProtobufEncoded
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [MEMORY[0x1E698E750] encodeObject:? error:?];
    v3 = 0;
    v4 = [v2 copy];

    if (!v4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v3];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel__dataProtobufEncoded);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v11 = v7;
        v12 = 2114;
        v13 = v9;
        v14 = 2048;
        selfCopy = self;
        v16 = 2114;
        v17 = @"BKSHIDEventAuthenticationMessage.m";
        v18 = 1024;
        v19 = 351;
        v20 = 2114;
        v21 = v6;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186396BA4);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BKSHIDEventAuthenticationMessage)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  v6 = [(BKSHIDEventAuthenticationMessage *)self _protobufDecodedMessageFromData:v5];

  return v6;
}

- (id)_protobufDecodedMessageFromData:(uint64_t)data
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (data)
  {
    if (v3)
    {
      v5 = MEMORY[0x1E698E750];
      objc_opt_class();
      v6 = [v5 decodeObjectOfClass:? fromData:? error:?];
      v7 = 0;
      if (v6)
      {
LABEL_10:

        goto LABEL_11;
      }

      v8 = BKLogEventDelivery();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v7;
        _os_log_error_impl(&dword_186345000, v8, OS_LOG_TYPE_ERROR, "auth message protobuf decode failure: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v7 = BKLogEventDelivery();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "auth message data decode failure", buf, 2u);
      }
    }

    v6 = 0;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _dataProtobufEncoded = [(BKSHIDEventAuthenticationMessage *)self _dataProtobufEncoded];
  BSSerializeDataToXPCDictionaryWithKey();
}

- (BKSHIDEventAuthenticationMessage)initWithXPCDictionary:(id)dictionary
{
  v4 = BSDeserializeDataFromXPCDictionaryWithKey();
  v5 = [(BKSHIDEventAuthenticationMessage *)self _protobufDecodedMessageFromData:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _dataProtobufEncoded = [(BKSHIDEventAuthenticationMessage *)self _dataProtobufEncoded];
  [coderCopy encodeObject:? forKey:?];
}

- (BKSHIDEventAuthenticationMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  v6 = [(BKSHIDEventAuthenticationMessage *)self _protobufDecodedMessageFromData:v5];

  return v6;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendUInt64:? withName:? format:?];
  v5 = [formatterCopy appendUInt64:? withName:? format:?];
  v6 = NSStringFromBSVersionedPID();
  [formatterCopy appendString:? withName:?];

  v7 = NSStringFromBKSHIDEventSecureNameStatus(self->_secureNameStatus);
  [formatterCopy appendString:? withName:?];

  v8 = [formatterCopy appendBool:? withName:?];
  IOHIDEventTypeGetName();
  [formatterCopy appendString:? withName:?];
  v9 = [formatterCopy appendUInt64:? withName:? format:?];
  v10 = [formatterCopy appendUInt64:? withName:? format:?];
  v11 = [formatterCopy appendObject:? withName:? skipIfNil:?];
  v12 = [formatterCopy appendObject:? withName:? skipIfNil:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_eventType == equalCopy[4] && self->_targetSlotID == equalCopy[5] && self->_targetContextID == equalCopy[6] && BSEqualObjects() && BSEqualObjects() && self->_timestamp == *(equalCopy + 6) && self->_context == *(equalCopy + 8) && self->_secureNameStatus == *(equalCopy + 9) && self->_registrantEntitled == *(equalCopy + 80) && self->_versionedPID == *(equalCopy + 1) && self->_originIdentifier == *(equalCopy + 7);

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = v3;
  v4 = v3;
  [v4 appendProem:v7 block:{3221225472, __47__BKSHIDEventAuthenticationMessage_description__block_invoke, &unk_1E6F47C78, self}];
  v5 = [v4 description];

  return v5;
}

- (BKSHIDEventAuthenticationMessage)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"BKSHIDEventAuthenticationMessage.m";
    v16 = 1024;
    v17 = 111;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
  JUMPOUT(0x1863974ACLL);
}

- (id)_calculateSignatureWithHMACContext:(id *)context
{
  v6 = *MEMORY[0x1E69E9840];
  if (context)
  {
    contextCopy = context;
    CCHmacUpdate(ctx, context + 6, 8uLL);
    CCHmacUpdate(ctx, contextCopy + 8, 8uLL);
    CCHmacUpdate(ctx, contextCopy + 2, 4uLL);
    CCHmacUpdate(ctx, contextCopy + 20, 4uLL);
    CCHmacUpdate(ctx, contextCopy + 3, 4uLL);
    [contextCopy[4] _updateCCHmacContext:?];
    [contextCopy[5] _updateCCHmacContext:?];
    CCHmacUpdate(ctx, contextCopy + 1, 8uLL);
    CCHmacUpdate(ctx, contextCopy + 9, 8uLL);
    CCHmacUpdate(ctx, contextCopy + 10, 1uLL);
    CCHmacFinal(ctx, macOut);
    context = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  return context;
}

@end