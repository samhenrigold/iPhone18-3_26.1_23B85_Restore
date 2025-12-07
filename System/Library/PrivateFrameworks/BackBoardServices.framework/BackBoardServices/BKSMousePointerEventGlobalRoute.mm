@interface BKSMousePointerEventGlobalRoute
+ (id)build:(id)build;
+ (id)new;
- (BKSMousePointerEventGlobalRoute)init;
- (BKSMousePointerEventGlobalRoute)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSMousePointerEventGlobalRoute

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v3 = [formatterCopy appendUInt64:? withName:? format:?];
  v4 = [formatterCopy appendObject:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableMousePointerEventGlobalRoute alloc];

  return [(BKSMousePointerEventGlobalRoute *)&v4->super.super.isa _initWithCopyOf:?];
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSMousePointerEventGlobalRoute *)of _init];
    of = _init;
    if (_init)
    {
      *(_init + 2) = *(v3 + 2);
      objc_storeStrong(_init + 2, *(v3 + 2));
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
          v16 = @"BKSMousePointerEventGlobalRoute.m";
          v17 = 1024;
          v18 = 42;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18639388CLL);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSMousePointerEventGlobalRoute;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSMousePointerEventGlobalRoute alloc];

  return [(BKSMousePointerEventGlobalRoute *)&v4->super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy[2] == self->_contextID)
  {
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(BKSMousePointerGlobalContextOptions *)self->_options hash];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v4 = [v3 hash] ^ v2;

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  return v5 ^ (v5 >> 31);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:? forKey:?];
  if (self->_options)
  {
    [coderCopy encodeObject:? forKey:?];
  }
}

- (BKSMousePointerEventGlobalRoute)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = BKSMousePointerEventGlobalRoute;
  coderCopy = coder;
  v4 = [(BKSMousePointerEventGlobalRoute *)&v8 init];
  v4->_contextID = [coderCopy decodeInt32ForKey:{v8.receiver, v8.super_class}];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  options = v4->_options;
  v4->_options = v5;

  return v4;
}

- (BKSMousePointerEventGlobalRoute)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSMousePointerEventGlobalRoute.m";
    v9 = 1024;
    v10 = 31;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
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
    v8 = @"BKSMousePointerEventGlobalRoute.m";
    v9 = 1024;
    v10 = 36;
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
  _init = [(BKSMousePointerEventGlobalRoute *)[BKSMutableMousePointerEventGlobalRoute alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end