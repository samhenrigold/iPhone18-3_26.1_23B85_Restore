@interface BKSHIDEventDeferringModality
+ (id)activeInputModality;
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringModality)init;
- (BKSHIDEventDeferringModality)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)of;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringModality

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
          v16 = @"BKSHIDEventDeferringModality.m";
          v17 = 1024;
          v18 = 51;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18635DC8CLL);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSHIDEventDeferringModality;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

- (void)_initWithCopyOf:(void *)of
{
  v3 = a2;
  if (of)
  {
    of = [(BKSHIDEventDeferringModality *)of _init];
    if (of)
    {
      v4 = [v3[1] copy];
      v5 = of[1];
      of[1] = v4;
    }
  }

  return of;
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringModality.m";
    v9 = 1024;
    v10 = 45;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventDeferringModality *)[BKSMutableHIDEventDeferringModality alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

+ (id)activeInputModality
{
  if (activeInputModality_onceToken != -1)
  {
    dispatch_once(&activeInputModality_onceToken, &__block_literal_global_1189);
  }

  v3 = activeInputModality_modality;

  return v3;
}

uint64_t __51__BKSHIDEventDeferringModality_activeInputModality__block_invoke()
{
  v0 = [BKSHIDEventDeferringModality build:?];
  v1 = activeInputModality_modality;
  activeInputModality_modality = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringModality alloc];

  return [(BKSHIDEventDeferringModality *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = BSEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  [(NSString *)self->_identifier hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_identifier)
  {
    [coder encodeObject:? forKey:?];
  }
}

- (BKSHIDEventDeferringModality)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = BKSHIDEventDeferringModality;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringModality *)&v8 init];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:v8.receiver forKey:v8.super_class];

  identifier = v4->_identifier;
  v4->_identifier = v5;

  return v4;
}

- (BKSHIDEventDeferringModality)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringModality.m";
    v9 = 1024;
    v10 = 40;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end