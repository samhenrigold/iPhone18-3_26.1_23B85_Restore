@interface BKSHIDEventDeferringSelectionTarget
+ (BKSHIDEventDeferringSelectionTarget)new;
+ (id)build:(id)build;
- (BKSHIDEventDeferringSelectionTarget)init;
- (BKSHIDEventDeferringSelectionTarget)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringSelectionTarget

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringSelectionTarget *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
      objc_storeStrong(of + 3, v3[3]);
    }
  }

  return of;
}

- (void)_init
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = BKSHIDEventDeferringSelectionTarget;
  v1 = objc_msgSendSuper2(&v11, sel_init);
  if (v1)
  {
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = NSStringFromSelector(sel__init);
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138544642;
          v13 = v8;
          v14 = 2114;
          v15 = v10;
          v16 = 2048;
          v17 = v1;
          v18 = 2114;
          v19 = @"BKSHIDEventDeferringSelectionTarget.m";
          v20 = 1024;
          v21 = 58;
          v22 = 2114;
          v23 = v7;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v7 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863A3F80);
      }
    }

    v4 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
    v5 = v1[1];
    v1[1] = v4;
  }

  return v1;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy appendObject:? withName:?];
  v4 = [streamCopy appendObject:? withName:?];
  v5 = [streamCopy appendObject:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringSelectionTarget alloc];

  return [(BKSHIDEventDeferringSelectionTarget *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = equalCopy;
    if (BSEqualObjects() && BSEqualObjects())
    {
      v5 = BSEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringTarget *)self->_target hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_environment)
  {
    [coderCopy encodeObject:? forKey:?];
    coderCopy = v5;
  }

  if (self->_display)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }

  if (self->_target)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }
}

- (BKSHIDEventDeferringSelectionTarget)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = BKSHIDEventDeferringSelectionTarget;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringSelectionTarget *)&v12 init];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:v12.receiver forKey:v12.super_class];
  environment = v4->_environment;
  v4->_environment = v5;

  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  display = v4->_display;
  v4->_display = v7;

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];

  target = v4->_target;
  v4->_target = v9;

  return v4;
}

- (BKSHIDEventDeferringSelectionTarget)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringSelectionTarget.m";
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

+ (BKSHIDEventDeferringSelectionTarget)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringSelectionTarget.m";
    v9 = 1024;
    v10 = 50;
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
  _init = [(BKSHIDEventDeferringSelectionTarget *)[BKSMutableHIDEventDeferringSelectionTarget alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end