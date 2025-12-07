@interface BKSHIDEventDeferringToken
+ (BKSHIDEventDeferringToken)new;
+ (id)protobufSchema;
+ (id)tokenForIdentifierOfCAContext:(unsigned int)context;
+ (id)tokenForIdentifierOfCGSConnection:(unsigned int)connection;
+ (id)tokenForIdentifierOfCGSWindow:(unsigned int)window;
+ (id)tokenForString:(id)string;
- (BKSHIDEventDeferringToken)init;
- (BKSHIDEventDeferringToken)initWithCoder:(id)coder;
- (id)_init;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringToken

- (id)_init
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class() && v4 != objc_opt_class() && v4 != objc_opt_class() && v4 != objc_opt_class())
  {
    v6 = a2;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(v6);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKSHIDEventDeferringToken.m";
      v20 = 1024;
      v21 = 479;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186346CFCLL);
  }

  v11.receiver = self;
  v11.super_class = BKSHIDEventDeferringToken;
  return [(BKSHIDEventDeferringToken *)&v11 init];
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__BKSHIDEventDeferringToken_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_137 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_137, block);
  }

  v2 = protobufSchema_schema_136;

  return v2;
}

uint64_t __43__BKSHIDEventDeferringToken_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_136;
  protobufSchema_schema_136 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __43__BKSHIDEventDeferringToken_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  [v2 setAcceptableConcreteSubclasses:?];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BKSHIDEventDeferringToken.m";
    v18 = 1024;
    v19 = 585;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKSHIDEventDeferringToken)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v18 = @"BKSHIDEventDeferringToken.m";
    v19 = 1024;
    v20 = 580;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BKSHIDEventDeferringToken.m";
    v18 = 1024;
    v19 = 576;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (id)tokenForIdentifierOfCGSWindow:(unsigned int)window
{
  if (window)
  {
    v4 = [[_BKSHIDCGSWindowIDEventDeferringToken alloc] _initWithCGSWindowID:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tokenForIdentifierOfCGSConnection:(unsigned int)connection
{
  if (connection)
  {
    v4 = [[_BKSHIDCGSConnectionIDEventDeferringToken alloc] _initWithCGSConnectionID:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tokenForString:(id)string
{
  v24 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (![stringCopy length])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[string length] > 0"];
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
      v19 = @"BKSHIDEventDeferringToken.m";
      v20 = 1024;
      v21 = 499;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637DBECLL);
  }

  v6 = [[_BKSHIDStringIdentifierEventDeferringToken alloc] _initWithString:?];

  return v6;
}

+ (id)tokenForIdentifierOfCAContext:(unsigned int)context
{
  if (context)
  {
    v4 = [[_BKSHIDCAContextEventDeferringToken alloc] _initWithIdentifier:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BKSHIDEventDeferringToken)new
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
    v18 = 465;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BKSHIDEventDeferringToken)init
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
    v18 = 470;
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