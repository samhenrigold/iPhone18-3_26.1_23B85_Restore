@interface BKSHIDEventBaseAttributes
+ (Class)_classForAttributeType:(unsigned __int8)type;
+ (id)baseAttributesFromProvider:(id)provider;
+ (id)deserializeFromBytes:(const char *)bytes byteCount:(int64_t)count;
+ (id)protobufSchema;
- (BKSHIDEventDeferringChangeBasis)changeBasis;
- (BKSHIDEventProvenance)provenance;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)serializedData;
- (id)succinctDescription;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)setProvenance:(id)provenance;
@end

@implementation BKSHIDEventBaseAttributes

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__BKSHIDEventBaseAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_184 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_184, block);
  }

  v2 = protobufSchema_schema_183;

  return v2;
}

void __43__BKSHIDEventBaseAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

uint64_t __43__BKSHIDEventBaseAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_183;
  protobufSchema_schema_183 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v13 = formatterCopy;
  if (self->_authenticationMessage)
  {
    v5 = [formatterCopy appendObject:? withName:?];
    formatterCopy = v13;
  }

  if (self->_simpleProvenance)
  {
    v6 = [v13 appendObject:? withName:?];
    formatterCopy = v13;
  }

  v7 = [formatterCopy appendObject:? withName:?];
  if (self->_display)
  {
    v8 = [v13 appendObject:? withName:?];
  }

  if (self->_token)
  {
    v9 = [v13 appendObject:? withName:?];
  }

  v10 = NSStringFromBKSHIDEventSource(self->_source);
  v11 = [v13 appendObject:? withName:?];

  v12 = NSStringFromBKSHIDEventAttributeOptions(self->_options);
  [v13 appendString:? withName:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSHIDEventBaseAttributes *)self succinctDescriptionBuilder];
  [(BKSHIDEventBaseAttributes *)self appendDescriptionToFormatter:?];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSHIDEventBaseAttributes *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSHIDEventBaseAttributes *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && self->_source == v5[5] && self->_options == *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() "allocWithZone:"init"")];
  objc_storeStrong(v4 + 3, self->_authenticationMessage);
  objc_storeStrong(v4 + 1, self->_simpleProvenance);
  objc_storeStrong(v4 + 4, self->_environment);
  objc_storeStrong(v4 + 5, self->_display);
  objc_storeStrong(v4 + 6, self->_token);
  *(v4 + 5) = self->_source;
  *(v4 + 8) = self->_options;
  return v4;
}

- (id)serializedData
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698E750] encodeObject:? error:?];
  v3 = 0;
  if (v2)
  {
    v4 = [v2 mutableCopy];
    buf[0] = [objc_opt_class() _eventAttributeType];
    buf[1] = [v2 length];
    [v4 replaceBytesInRange:? withBytes:? length:?];
  }

  else
  {
    v5 = BKLogEventDelivery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 138543362;
      *&buf[1] = v3;
      _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "could not encode attribute data:%{public}@", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (void)setProvenance:(id)provenance
{
  v27 = *MEMORY[0x1E69E9840];
  provenanceCopy = provenance;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    authenticationMessage = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    v7 = provenanceCopy;
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = v7;
LABEL_8:

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_authenticationMessage, provenance);
LABEL_7:
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = 0;
    goto LABEL_8;
  }

  if (!provenanceCopy)
  {
    v9 = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    selfCopy = self;
    v21 = 2114;
    v22 = @"BKSHIDEventAttributes.m";
    v23 = 1024;
    v24 = 309;
    v25 = 2114;
    v26 = v10;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKSHIDEventDeferringChangeBasis)changeBasis
{
  v3 = [BKSHIDEventDeferringChangeBasis alloc];
  provenance = [(BKSHIDEventBaseAttributes *)self provenance];
  v5 = [(BKSHIDEventDeferringChangeBasis *)v3 initWithEventProvenance:?];

  return v5;
}

- (BKSHIDEventProvenance)provenance
{
  authenticationMessage = self->_authenticationMessage;
  if (!authenticationMessage)
  {
    authenticationMessage = self->_simpleProvenance;
  }

  return authenticationMessage;
}

+ (id)deserializeFromBytes:(const char *)bytes byteCount:(int64_t)count
{
  v19 = *MEMORY[0x1E69E9840];
  if (count <= 7)
  {
    v4 = BKLogEventDelivery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "attributes data too small";
LABEL_25:
      _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (count - 8 < *(bytes + 1))
  {
    v4 = BKLogEventDelivery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "attributes data corrupt (length overrun)";
      goto LABEL_25;
    }

LABEL_6:
    v6 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v9 = [self _classForAttributeType:?];
  if (v9)
  {
    v10 = v9;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:? length:? freeWhenDone:?];
    v11 = [MEMORY[0x1E698E750] decodeObjectOfClass:? fromData:? error:?];
    v12 = 0;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v11;
LABEL_23:

        goto LABEL_7;
      }

      v14 = BKLogEventDelivery();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v17 = 2114;
        v18 = v10;
        _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "requested attributes from %{public}@, but decoded %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = BKLogEventDelivery();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = v12;
        _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "could not decode attributes:%{public}@", buf, 0xCu);
      }
    }

    v6 = 0;
    goto LABEL_23;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (Class)_classForAttributeType:(unsigned __int8)type
{
  typeCopy = type;
  v8 = *MEMORY[0x1E69E9840];
  if (type <= 3)
  {
    if (type == 1 || type == 2 || type == 3)
    {
      goto LABEL_14;
    }
  }

  else if (type <= 6 || type == 7)
  {
LABEL_14:
    v5 = objc_opt_class();
    goto LABEL_15;
  }

  v4 = BKLogEventDelivery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = typeCopy;
    _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "unsupported type for attribute decode:%d", v7, 8u);
  }

  v5 = 0;
LABEL_15:

  return v5;
}

+ (id)baseAttributesFromProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_alloc_init(objc_opt_class());
  environment = [providerCopy environment];
  [v4 setEnvironment:?];

  display = [providerCopy display];
  [v4 setDisplay:?];

  token = [providerCopy token];

  [v4 setToken:?];

  return v4;
}

@end