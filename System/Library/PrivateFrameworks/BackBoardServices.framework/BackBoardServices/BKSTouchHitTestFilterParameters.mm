@interface BKSTouchHitTestFilterParameters
+ (id)build:(id)build;
+ (id)new;
- (BKSTouchHitTestFilterParameters)init;
- (BKSTouchHitTestFilterParameters)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)of;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSTouchHitTestFilterParameters

- (void)_initWithCopyOf:(void *)of
{
  v3 = a2;
  if (of)
  {
    of = [(BKSTouchHitTestFilterParameters *)of _init];
    if (of)
    {
      v4 = [v3[1] copy];
      v5 = of[1];
      of[1] = v4;

      v6 = [v3[2] copy];
      v7 = of[2];
      of[2] = v6;
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
          v16 = @"BKSTouchHitTestFilterParameters.m";
          v17 = 1024;
          v18 = 42;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18636FA30);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSTouchHitTestFilterParameters;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy appendObject:? withName:?];
  v4 = [streamCopy appendObject:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableTouchHitTestFilterParameters alloc];

  return [(BKSTouchHitTestFilterParameters *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = equalCopy;
    if (BSEqualObjects())
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
  [(NSArray *)self->_senderDescriptors hash];
  [(NSArray *)self->_contextIDs hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_senderDescriptors)
  {
    [coderCopy encodeObject:? forKey:?];
    coderCopy = v5;
  }

  if (self->_contextIDs)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }
}

- (BKSTouchHitTestFilterParameters)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = BKSTouchHitTestFilterParameters;
  coderCopy = coder;
  v4 = [(BKSTouchHitTestFilterParameters *)&v10 init];
  objc_opt_class();
  v5 = [coderCopy decodeArrayOfObjectsOfClass:v10.receiver forKey:v10.super_class];
  senderDescriptors = v4->_senderDescriptors;
  v4->_senderDescriptors = v5;

  objc_opt_class();
  v7 = [coderCopy decodeArrayOfObjectsOfClass:? forKey:?];

  contextIDs = v4->_contextIDs;
  v4->_contextIDs = v7;

  return v4;
}

- (BKSTouchHitTestFilterParameters)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSTouchHitTestFilterParameters.m";
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

void __49__BKSTouchHitTestFilterParameters_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
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
    v8 = @"BKSTouchHitTestFilterParameters.m";
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
  _init = [(BKSTouchHitTestFilterParameters *)[BKSMutableTouchHitTestFilterParameters alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end