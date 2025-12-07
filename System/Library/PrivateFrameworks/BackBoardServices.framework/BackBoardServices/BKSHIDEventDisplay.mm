@interface BKSHIDEventDisplay
+ (BKSHIDEventDisplay)displayWithHardwareIdentifier:(id)identifier;
+ (id)builtinDisplay;
+ (id)nullDisplay;
+ (id)protobufSchema;
- (BKSHIDEventDisplay)init;
- (BKSHIDEventDisplay)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithHardwareIdentifier:(id)identifier;
- (id)initForProtobufDecoding;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDisplay

+ (id)builtinDisplay
{
  if (builtinDisplay_onceToken != -1)
  {
    dispatch_once(&builtinDisplay_onceToken, &__block_literal_global_16);
  }

  v3 = builtinDisplay___builtin;

  return v3;
}

- (unint64_t)hash
{
  if (self->_builtin)
  {
    v2 = 102301;
  }

  else
  {
    v2 = 96953;
  }

  return v2 ^ [(NSString *)self->_hardwareIdentifier hash];
}

+ (id)nullDisplay
{
  if (nullDisplay_onceToken != -1)
  {
    dispatch_once(&nullDisplay_onceToken, &__block_literal_global_2520);
  }

  v3 = nullDisplay___null;

  return v3;
}

- (NSString)description
{
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    v4 = hardwareIdentifier;
  }

  else
  {
    if (self->_builtin)
    {
      v4 = @"builtin";
    }

    else
    {
      v4 = @"null";
    }
  }

  return v4;
}

void __33__BKSHIDEventDisplay_nullDisplay__block_invoke()
{
  v0 = [[BKSHIDEventDisplay alloc] _initWithHardwareIdentifier:?];
  v1 = nullDisplay___null;
  nullDisplay___null = v0;

  *(nullDisplay___null + 8) = 0;
}

void __36__BKSHIDEventDisplay_builtinDisplay__block_invoke()
{
  v0 = [[BKSHIDEventDisplay alloc] _initWithHardwareIdentifier:?];
  v1 = builtinDisplay___builtin;
  builtinDisplay___builtin = v0;

  *(builtinDisplay___builtin + 8) = 1;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BKSHIDEventDisplay_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_2510 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_2510, block);
  }

  v2 = protobufSchema_schema_2511;

  return v2;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDisplay;
  return [(BKSHIDEventDisplay *)&v3 init];
}

uint64_t __36__BKSHIDEventDisplay_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_2511;
  protobufSchema_schema_2511 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __36__BKSHIDEventDisplay_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
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
    if (v5 == objc_opt_class() && self->_builtin == equalCopy->_builtin)
    {
      v6 = BSEqualStrings();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSHIDEventDisplay)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:?])
  {
    v5 = +[BKSHIDEventDisplay builtinDisplay];
  }

  else
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    if (v6)
    {
      [BKSHIDEventDisplay displayWithHardwareIdentifier:?];
    }

    else
    {
      +[BKSHIDEventDisplay nullDisplay];
    }
    v5 = ;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_hardwareIdentifier)
  {
    [coder encodeObject:? forKey:?];
  }

  else
  {
    [coder encodeBool:? forKey:?];
  }
}

- (id)_initWithHardwareIdentifier:(id)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = BKSHIDEventDisplay;
  v6 = [(BKSHIDEventDisplay *)&v25 init];
  if (v6)
  {
    v7 = objc_opt_class();
    if (v7 != objc_opt_class())
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v27 = v13;
        v28 = 2114;
        v29 = v15;
        v30 = 2048;
        v31 = v6;
        v32 = 2114;
        v33 = @"BKSHIDEventDisplay.m";
        v34 = 1024;
        v35 = 28;
        v36 = 2114;
        v37 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186368828);
    }

    v8 = identifierCopy;
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = MEMORY[0x1E696AEC0];
        classForCoder = [v8 classForCoder];
        if (!classForCoder)
        {
          classForCoder = objc_opt_class();
        }

        v18 = NSStringFromClass(classForCoder);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v16 stringWithFormat:@"hardwareIdentifier", v18, v20];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = NSStringFromSelector(a2);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138544642;
          v27 = v22;
          v28 = 2114;
          v29 = v24;
          v30 = 2048;
          v31 = v6;
          v32 = 2114;
          v33 = @"BKSHIDEventDisplay.m";
          v34 = 1024;
          v35 = 29;
          v36 = 2114;
          v37 = v21;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v21 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186368960);
      }
    }

    v9 = [v8 copy];
    hardwareIdentifier = v6->_hardwareIdentifier;
    v6->_hardwareIdentifier = v9;
  }

  return v6;
}

- (BKSHIDEventDisplay)init
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
    v16 = @"BKSHIDEventDisplay.m";
    v17 = 1024;
    v18 = 22;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSHIDEventDisplay)displayWithHardwareIdentifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!identifierCopy)
  {
    v10 = NSStringFromClass(v7);
    v11 = [v6 stringWithFormat:@"hardwareIdentifier", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDisplay.m";
      v32 = 1024;
      v33 = 66;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186368C40);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [identifierCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"hardwareIdentifier", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v25 = v21;
      v26 = 2114;
      v27 = v23;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDisplay.m";
      v32 = 1024;
      v33 = 66;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186368D78);
  }

  v8 = [[BKSHIDEventDisplay alloc] _initWithHardwareIdentifier:?];

  return v8;
}

@end