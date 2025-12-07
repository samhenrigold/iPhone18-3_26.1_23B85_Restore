@interface BKSMousePointerGlobalContextOptions
+ (BKSMousePointerGlobalContextOptions)new;
+ (id)build:(id)build;
- (BKSMousePointerGlobalContextOptions)init;
- (BKSMousePointerGlobalContextOptions)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)of;
@end

@implementation BKSMousePointerGlobalContextOptions

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableMousePointerGlobalContextOptions alloc];

  return [(BKSMousePointerGlobalContextOptions *)v4 _initWithCopyOf:?];
}

- (void)_initWithCopyOf:(void *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSMousePointerGlobalContextOptions *)of _init];
    of = _init;
    if (_init)
    {
      *(_init + 8) = v3[8];
    }
  }

  return of;
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
          v16 = @"BKSMousePointerGlobalContextOptions.m";
          v17 = 1024;
          v18 = 41;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863B84ECLL);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSMousePointerGlobalContextOptions;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSMousePointerGlobalContextOptions alloc];

  return [(BKSMousePointerGlobalContextOptions *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[8] == self->_pinOnButtonDown;

  return v5;
}

- (unint64_t)hash
{
  v2 = 0x476D1CE4E5B90000;
  if (!self->_pinOnButtonDown)
  {
    v2 = 0;
  }

  return (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
}

- (BKSMousePointerGlobalContextOptions)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BKSMousePointerGlobalContextOptions;
  coderCopy = coder;
  v4 = [(BKSMousePointerGlobalContextOptions *)&v7 init];
  v5 = [coderCopy decodeBoolForKey:{v7.receiver, v7.super_class}];

  v4->_pinOnButtonDown = v5;
  return v4;
}

- (BKSMousePointerGlobalContextOptions)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSMousePointerGlobalContextOptions.m";
    v9 = 1024;
    v10 = 30;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSMousePointerGlobalContextOptions)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSMousePointerGlobalContextOptions.m";
    v9 = 1024;
    v10 = 35;
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
  _init = [(BKSMousePointerGlobalContextOptions *)[BKSMutableMousePointerGlobalContextOptions alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end