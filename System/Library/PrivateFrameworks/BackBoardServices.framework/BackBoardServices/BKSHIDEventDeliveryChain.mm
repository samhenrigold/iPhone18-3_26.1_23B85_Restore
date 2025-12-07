@interface BKSHIDEventDeliveryChain
+ (id)new;
+ (id)protobufSchema;
- (BKSHIDEventDeliveryChain)init;
- (BKSHIDEventDeliveryChain)initWithCoder:(id)coder;
- (BKSHIDEventDeliveryChain)initWithIdentity:(id)identity compatibilityDisplay:(id)display selectionPath:(id)path path:(id)a6 modalities:(id)modalities containsSubset:(BOOL)subset containsEndOfChain:(BOOL)chain;
- (BOOL)isEqual:(id)equal;
- (id)_dataProtobufEncoded;
- (id)_protobufDecodedFromData:(id)data;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)initForProtobufDecoding;
- (id)subsetForPID:(int)d;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeliveryChain

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v8 = __57__BKSHIDEventDeliveryChain_appendDescriptionToFormatter___block_invoke;
  v9 = &unk_1E6F47C78;
  v10 = formatterCopy;
  selfCopy = self;
  [formatterCopy appendProem:MEMORY[0x1E69E9820] block:3221225472];
  v5 = [formatterCopy appendBool:? withName:?];
  if (self->_containsSubset)
  {
    v6 = [formatterCopy appendBool:? withName:?];
  }

  v7 = [formatterCopy appendObject:? withName:?];
}

void __57__BKSHIDEventDeliveryChain_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:? withName:?];
  v3 = *(a1 + 40);
  if (*(v3 + 32))
  {
    v4 = [*(a1 + 32) appendObject:? withName:?];
    v3 = *(a1 + 40);
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = [*(v3 + 8) display];
    v7 = [v5 isEqual:?];

    v3 = *(a1 + 40);
    if ((v7 & 1) == 0)
    {
      v8 = [*(a1 + 32) appendObject:? withName:?];
      v3 = *(a1 + 40);
    }
  }

  if (*(v3 + 48))
  {
    v9 = [*(a1 + 32) appendObject:? withName:?];
  }
}

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  if (self->_identity)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:? code:? userInfo:?];
    v6 = v5;
    selfCopy = 0;
    *error = v5;
  }

  return selfCopy;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeliveryChain;
  return [(BKSHIDEventDeliveryChain *)&v3 init];
}

- (id)subsetForPID:(int)d
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v4 = [(NSArray *)self->_deferringPath bs_filter:?];
  if (self->_containsEndOfChain)
  {
    lastObject = [(NSArray *)self->_deferringPath lastObject];
    lastObject2 = [v4 lastObject];
    v7 = [lastObject isEqual:?];
  }

  else
  {
    v7 = 0;
  }

  LOBYTE(v10) = v7;
  v8 = [BKSHIDEventDeliveryChain initWithIdentity:"initWithIdentity:compatibilityDisplay:selectionPath:path:modalities:containsSubset:containsEndOfChain:" compatibilityDisplay:v10 selectionPath:? path:? modalities:? containsSubset:? containsEndOfChain:?];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);

  return v8;
}

uint64_t __41__BKSHIDEventDeliveryChain_subsetForPID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pid];
  v4 = *(*(a1 + 32) + 8);
  if (v3 == *(a1 + 48))
  {
    result = 1;
    *(v4 + 24) = 1;
  }

  else if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 0;
    return 1;
  }

  else
  {
    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _dataProtobufEncoded = [(BKSHIDEventDeliveryChain *)self _dataProtobufEncoded];
  [coderCopy encodeObject:? forKey:?];
}

- (BKSHIDEventDeliveryChain)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  v6 = [(BKSHIDEventDeliveryChain *)self _protobufDecodedFromData:?];

  return v6;
}

- (id)_dataProtobufEncoded
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698E750] encodeObject:? error:?];
  v5 = 0;
  v6 = [v4 copy];

  if (!v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v5];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKSHIDEventDeliveryChain.m";
      v20 = 1024;
      v21 = 109;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186385948);
  }

  return v6;
}

- (id)_protobufDecodedFromData:(id)data
{
  v11 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v4 = MEMORY[0x1E698E750];
    objc_opt_class();
    v5 = [v4 decodeObjectOfClass:? fromData:? error:?];
    v6 = 0;
    if (v5)
    {
      goto LABEL_9;
    }

    v7 = BKLogEventDelivery();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "delivery chain protobuf decode failure: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v6 = BKLogEventDelivery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, "auth message data decode failure", buf, 2u);
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
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

    v8 = v9 && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && self->_containsEndOfChain == v9[25] && self->_containsSubset == v9[24];
  }

  return v8;
}

- (BKSHIDEventDeliveryChain)initWithIdentity:(id)identity compatibilityDisplay:(id)display selectionPath:(id)path path:(id)a6 modalities:(id)modalities containsSubset:(BOOL)subset containsEndOfChain:(BOOL)chain
{
  identityCopy = identity;
  displayCopy = display;
  pathCopy = path;
  v18 = a6;
  modalitiesCopy = modalities;
  v28.receiver = self;
  v28.super_class = BKSHIDEventDeliveryChain;
  v20 = [(BKSHIDEventDeliveryChain *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identity, identity);
    v22 = [v18 copy];
    deferringPath = v21->_deferringPath;
    v21->_deferringPath = v22;

    if ([modalitiesCopy count])
    {
      v24 = [modalitiesCopy copy];
      modalities = v21->_modalities;
      v21->_modalities = v24;
    }

    objc_storeStrong(&v21->_selectionPath, path);
    objc_storeStrong(&v21->_compatibilityDisplay, display);
    v21->_containsSubset = subset;
    v21->_containsEndOfChain = 1;
  }

  return v21;
}

- (BKSHIDEventDeliveryChain)init
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
    v16 = @"BKSHIDEventDeliveryChain.m";
    v17 = 1024;
    v18 = 29;
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
  block[2] = __42__BKSHIDEventDeliveryChain_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_6262 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_6262, block);
  }

  v2 = protobufSchema_schema_6263;

  return v2;
}

uint64_t __42__BKSHIDEventDeliveryChain_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_6263;
  protobufSchema_schema_6263 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __42__BKSHIDEventDeliveryChain_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
}

+ (id)new
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
    v16 = @"BKSHIDEventDeliveryChain.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end