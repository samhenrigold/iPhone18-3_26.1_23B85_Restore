@interface BKSHIDEventDeferringEnvironment
+ (id)environmentWithIdentifier:(id)identifier;
+ (id)keyboardFocusEnvironment;
+ (id)protobufSchema;
+ (id)systemEnvironment;
- (BKSHIDEventDeferringEnvironment)init;
- (BKSHIDEventDeferringEnvironment)initWithBSXPCCoder:(id)coder;
- (BKSHIDEventDeferringEnvironment)initWithCoder:(id)coder;
- (BKSHIDEventDeferringEnvironment)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)_uniqueEnvironmentForIdentifier;
- (id)initForProtobufDecoding;
- (void)_initWithIdentifier:(void *)identifier;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BKSHIDEventDeferringEnvironment

+ (id)keyboardFocusEnvironment
{
  if (keyboardFocusEnvironment_onceToken != -1)
  {
    dispatch_once(&keyboardFocusEnvironment_onceToken, &__block_literal_global_18);
  }

  v3 = keyboardFocusEnvironment___focusEnvironment;

  return v3;
}

- (id)_uniqueEnvironmentForIdentifier
{
  if (self)
  {
    selfCopy = self;
    if ([self[1] isEqual:?])
    {
      self = +[BKSHIDEventDeferringEnvironment systemEnvironment];
    }

    else if ([selfCopy[1] isEqual:?])
    {
      self = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
    }

    else
    {
      self = 0;
    }

    v1 = vars8;
  }

  return self;
}

+ (id)systemEnvironment
{
  if (systemEnvironment_onceToken != -1)
  {
    dispatch_once(&systemEnvironment_onceToken, &__block_literal_global_246);
  }

  v3 = systemEnvironment___systemEnvironment;

  return v3;
}

uint64_t __59__BKSHIDEventDeferringEnvironment_keyboardFocusEnvironment__block_invoke()
{
  v0 = [[BKSHIDEventDeferringEnvironment alloc] _initWithIdentifier:?];
  v1 = keyboardFocusEnvironment___focusEnvironment;
  keyboardFocusEnvironment___focusEnvironment = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BKSHIDEventDeferringEnvironment_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken != -1)
  {
    dispatch_once(&protobufSchema_onceToken, block);
  }

  v2 = protobufSchema_schema;

  return v2;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeferringEnvironment;
  return [(BKSHIDEventDeferringEnvironment *)&v3 init];
}

uint64_t __49__BKSHIDEventDeferringEnvironment_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema;
  protobufSchema_schema = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
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
      v6 = [(NSString *)self->_identifier isEqual:?];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSHIDEventDeferringEnvironment)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKSHIDEventDeferringEnvironment;
  v5 = [(BKSHIDEventDeferringEnvironment *)&v10 init];
  if (!v5 || ([coderCopy decodeStringForKey:?], v6 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v6, identifier, -[BKSHIDEventDeferringEnvironment _uniqueEnvironmentForIdentifier](&v5->super.isa), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = v5;
  }

  return v8;
}

- (BKSHIDEventDeferringEnvironment)initWithXPCDictionary:(id)dictionary
{
  v12.receiver = self;
  v12.super_class = BKSHIDEventDeferringEnvironment;
  dictionaryCopy = dictionary;
  v4 = [(BKSHIDEventDeferringEnvironment *)&v12 init];
  [@"ident" UTF8String];
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();

  identifier = v4->_identifier;
  v4->_identifier = v5;

  _uniqueEnvironmentForIdentifier = [(BKSHIDEventDeferringEnvironment *)&v4->super.isa _uniqueEnvironmentForIdentifier];
  v8 = _uniqueEnvironmentForIdentifier;
  if (_uniqueEnvironmentForIdentifier)
  {
    v9 = _uniqueEnvironmentForIdentifier;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"ident" UTF8String];
  BSSerializeStringToXPCDictionaryWithKey();
}

- (BKSHIDEventDeferringEnvironment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKSHIDEventDeferringEnvironment;
  v5 = [(BKSHIDEventDeferringEnvironment *)&v10 init];
  if (!v5 || (objc_opt_class(), [coderCopy decodeObjectOfClass:? forKey:?], v6 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v6, identifier, -[BKSHIDEventDeferringEnvironment _uniqueEnvironmentForIdentifier](&v5->super.isa), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = v5;
  }

  return v8;
}

- (BKSHIDEventDeferringEnvironment)init
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
    v16 = @"BKSHIDEventDeferringEnvironment.m";
    v17 = 1024;
    v18 = 27;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)environmentWithIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:?])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v16 = 138544642;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BKSHIDEventDeferringEnvironment.m";
      v24 = 1024;
      v25 = 61;
      v26 = 2114;
      v27 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v16, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186357574);
  }

  if ([identifierCopy isEqualToString:?])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138544642;
      v17 = v13;
      v18 = 2114;
      v19 = v15;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2114;
      v23 = @"BKSHIDEventDeferringEnvironment.m";
      v24 = 1024;
      v25 = 62;
      v26 = 2114;
      v27 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v16, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186357660);
  }

  v6 = [[BKSHIDEventDeferringEnvironment alloc] _initWithIdentifier:identifierCopy];

  return v6;
}

- (void)_initWithIdentifier:(void *)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (identifier)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel__initWithIdentifier_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        identifierCopy = identifier;
        v19 = 2114;
        v20 = @"BKSHIDEventDeferringEnvironment.m";
        v21 = 1024;
        v22 = 32;
        v23 = 2114;
        v24 = v8;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186357818);
    }

    v12.receiver = identifier;
    v12.super_class = BKSHIDEventDeferringEnvironment;
    identifier = objc_msgSendSuper2(&v12, sel_init);
    if (identifier)
    {
      v5 = [v3 copy];
      v6 = identifier[1];
      identifier[1] = v5;
    }
  }

  return identifier;
}

uint64_t __52__BKSHIDEventDeferringEnvironment_systemEnvironment__block_invoke()
{
  v0 = [[BKSHIDEventDeferringEnvironment alloc] _initWithIdentifier:?];
  v1 = systemEnvironment___systemEnvironment;
  systemEnvironment___systemEnvironment = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end